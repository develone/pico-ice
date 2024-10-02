#include <ice_fpga.h>
#include <ice_led.h>
#include <ice_usb.h>
#include <ice_spi.h>
#include <tusb.h>
#include <boards/pico_ice.h>
#include <bsp/board_api.h>
#include <hardware/clocks.h>
#include <hardware/uart.h>
#include <pico/stdio.h>

#include "fpga.pio.h"

static const PIO pio = pio0;
static uint sm;

static uint8_t frame_buffer[FRAME_WIDTH * FRAME_HEIGHT * 2] = { };
static uint8_t command_buffer[256] = { };

static void video_task();
static void start_next_frame();

static bool finished = false;

int main()
{
	tusb_init();
	stdio_init_all();

	ice_led_init();
	ice_usb_init();

	ice_fpga_init(8);
	ice_fpga_start();

	gpio_pull_up(DIR_PIN);
	gpio_pull_up(REQ_PIN);
	gpio_init(FIN_PIN);
	gpio_pull_up(FIN_PIN);

	const uint offset = pio_add_program(pio, &fpga_program);
	sm = pio_claim_unused_sm(pio, true);
	fpga_program_init(pio, sm, offset, 0, DIR_PIN, FIN_PIN);
	pio_sm_set_enabled(pio, sm, true);

	tud_init(0);

	if (board_init_after_tusb)
	{
		board_init_after_tusb();
	}

	start_next_frame();

	while (true)
	{
		printf("%d %d |", command_buffer[0], command_buffer[1]);
		for (int i = 0; i < 8; i++) { printf(" %d", gpio_get(i)); }
		printf("\n");
		tud_task();
		video_task();
	}
	return 0;
}

static unsigned int interval_ms = 1000 / FRAME_RATE;
static bool tx_busy = false;
static bool rendering = false;

static bool is_rendering() { return rendering || !pio_interrupt_get(pio, 0); }

void video_task()
{
	static bool already_sent = false;
	static unsigned int start_ms = 0;

	if (!tud_video_n_streaming(0, 0))
	{
		already_sent = false;
		return;
	}

	if (!already_sent)
	{
		already_sent = true;
		tx_busy = true;
		start_ms = board_millis();

		tud_video_n_frame_xfer(0, 0, frame_buffer, FRAME_WIDTH * FRAME_HEIGHT * 2);

		return;
	}

	const unsigned int cur = board_millis();
	if (cur - start_ms < interval_ms) { return; }
	if (tx_busy) { return; }
	if (is_rendering()) { return; }
	start_ms += interval_ms;
	tx_busy = true;

	tud_video_n_frame_xfer(0, 0, frame_buffer, FRAME_WIDTH * FRAME_HEIGHT * 2);
}

void start_next_frame()
{
	if (is_rendering()) { return; }
	rendering = true;

	command_buffer[0] = (command_buffer[0] + 4) % 256;
	if (command_buffer[0] == 0)
	{
		command_buffer[1] = (command_buffer[1] + 16) % 256;
	}

	dma_channel_set_trans_count(frame_dma_channel, FRAME_WIDTH * FRAME_HEIGHT * 2, false);
	dma_channel_set_write_addr(frame_dma_channel, frame_buffer, false);

	dma_channel_set_trans_count(command_dma_channel, 2, false);
	dma_channel_set_read_addr(command_dma_channel, command_buffer, true);

	// clear irq to indicate ready
	while (pio_interrupt_get(pio, 0))
	{
		pio_interrupt_clear(pio, 0);
	}

	rendering = false;
}

void tud_video_frame_xfer_complete_cb(uint_fast8_t ctl_idx, uint_fast8_t stm_idx)
{
	tx_busy = false;
	start_next_frame();
}

int tud_video_commit_cb(uint_fast8_t ctl_idx, uint_fast8_t stm_idx, const video_probe_and_commit_control_t* parameters)
{
	interval_ms = parameters->dwFrameInterval / 10000;
	return VIDEO_ERROR_NONE;
}