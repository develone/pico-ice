// -------------------------------------------------- //
// This file is autogenerated by pioasm; do not edit! //
// -------------------------------------------------- //

#pragma once

#if !PICO_NO_HARDWARE
#include "hardware/pio.h"
#endif

#define DIR_PIN 12
#define REQ_PIN 13
#define FIN_PIN 15
#define CLK_PIN 24

// ---- //
// fpga //
// ---- //

#define fpga_wrap_target 26
#define fpga_wrap 30
#define fpga_pio_version 0

static const uint16_t fpga_program_instructions[] = {
    0xe020, //  0: set    x, 0                       
    0xa029, //  1: mov    x, !x                      
    0xa0e1, //  2: mov    osr, x                     
    0x6088, //  3: out    pindirs, 8                 
    0xe083, //  4: set    pindirs, 3                 
    0xe001, //  5: set    pins, 1                    
    0xc020, //  6: irq    wait 0                     
    0x2098, //  7: wait   1 gpio, 24                 
    0x2018, //  8: wait   0 gpio, 24                 
    0xe003, //  9: set    pins, 3                    
    0xe020, // 10: set    x, 0                       
    0xa029, // 11: mov    x, !x                      
    0x8080, // 12: pull   noblock                    
    0xa02f, // 13: mov    x, !osr                    
    0x0034, // 14: jmp    !x, 20                     
    0xa0e9, // 15: mov    osr, !x                    
    0x2098, // 16: wait   1 gpio, 24                 
    0x2018, // 17: wait   0 gpio, 24                 
    0x6008, // 18: out    pins, 8                    
    0x000a, // 19: jmp    10                         
    0xe000, // 20: set    pins, 0                    
    0xe020, // 21: set    x, 0                       
    0xa0e1, // 22: mov    osr, x                     
    0x6088, // 23: out    pindirs, 8                 
    0xe081, // 24: set    pindirs, 1                 
    0x208d, // 25: wait   1 gpio, 13                 
            //     .wrap_target
    0x4008, // 26: in     pins, 8                    
    0x8000, // 27: push   noblock                    
    0x2018, // 28: wait   0 gpio, 24                 
    0x00c0, // 29: jmp    pin, 0                     
    0x2098, // 30: wait   1 gpio, 24                 
            //     .wrap
};

#if !PICO_NO_HARDWARE
static const struct pio_program fpga_program = {
    .instructions = fpga_program_instructions,
    .length = 31,
    .origin = -1,
    .pio_version = 0,
#if PICO_PIO_VERSION > 0
    .used_gpio_ranges = 0x3
#endif
};

static inline pio_sm_config fpga_program_get_default_config(uint offset) {
    pio_sm_config c = pio_get_default_sm_config();
    sm_config_set_wrap(&c, offset + fpga_wrap_target, offset + fpga_wrap);
    return c;
}

#include <hardware/dma.h>
static int command_dma_channel;
static int frame_dma_channel;
static void fpga_program_init(PIO pio, uint sm, uint offset, uint bus_base, uint status_base, uint fin_pin)
{
    {
        pio_sm_config c = fpga_program_get_default_config(offset);
        sm_config_set_in_pins(&c, bus_base);
        sm_config_set_out_pins(&c, bus_base, 8);
        sm_config_set_set_pins(&c, status_base, 2);
        sm_config_set_jmp_pin(&c, fin_pin);
        sm_config_set_in_shift(&c, false, false, 8);
        sm_config_set_out_shift(&c, false, false, 8);
        pio_sm_init(pio, sm, offset, &c);
        for (int i = 0; i < 8; i++) { pio_gpio_init(pio, bus_base + i); }
        for (int i = 0; i < 2; i++) { pio_gpio_init(pio, status_base + i); }
    }
    command_dma_channel = dma_claim_unused_channel(true);
    frame_dma_channel = dma_claim_unused_channel(true);
    {
        dma_channel_config c = dma_channel_get_default_config(command_dma_channel);
        channel_config_set_read_increment(&c, true);
        channel_config_set_write_increment(&c, false);
        channel_config_set_transfer_data_size(&c, DMA_SIZE_8);
        channel_config_set_dreq(&c, pio_get_dreq(pio, sm, true));
        channel_config_set_chain_to(&c, frame_dma_channel);
        dma_channel_configure(command_dma_channel, &c, &pio->txf[sm], NULL, 0, false);
    }
    {
        dma_channel_config c = dma_channel_get_default_config(frame_dma_channel);
        channel_config_set_read_increment(&c, false);
        channel_config_set_write_increment(&c, true);
        channel_config_set_transfer_data_size(&c, DMA_SIZE_8);
        channel_config_set_dreq(&c, pio_get_dreq(pio, sm, false));
        dma_channel_configure(frame_dma_channel, &c, NULL, &pio->rxf[sm], FRAME_WIDTH * FRAME_HEIGHT * 2, false);
    }
}

#endif
