# Pico Ice Video

This repository displays a video signal from the Pico Ice FPGA on the
desktop computer, over USB, using the USB Video Device Class (UVC).
You can then take screenshots, record the video, or use it as a demo
during a Zoom call.

Here is the [FPGA
interface](https://git.shylie.info/shylie/pico-ice-video/src/branch/main/ice/mandelbrot/source/impl_1/top.sv). There
is a start wire, really that is the vertical sync signal.  There are 8
bits of data that get sent to the RP2040.  The RP2040 reads the data
using PIO, writes the data to the inactive frame buffer using direct
memory access.  Meanwhile the TinyUSB library is writing uncompressed
data to the desktop over USB using the active frame buffer.  The
RP2040 sysclk runs at120 MHz, the clkdiv for the pio is 2.5 and the
FPGA runs at 48Mhz.  The image size is 320 * 180.  The next version of
the Pico-Ice will have the RP2350 Chip which will also support a
higher resolution HDMI output. 

This software is based on the [Tiny video USB Capture example](
https://github.com/hathach/tinyusb/tree/master/examples/device/video_capture).
UVC does not need to be fully synchronous: there is no timing to
keep-up with: if you send the frame sometimes slow sometimes fast, it
is fine.  In particular if using BULK (throw data in like it's a
truck) endpoint rather than ISOCHRONOUS (always same time
interval...)

## Contact

If you have questions, first please search the Pico Ice discord
server, and then ask.  This is a private repository, to make
contributions, please post your branch somewhere and notify the author
@shylie on the Pico Ice Discord server.

## INSTALLATION

To install it on linux , [put the Pico-Ice into install mode](
https://pico-ice.tinyvision.ai/md_programming_the_mcu.html )

Using the command

picocom) --baud 1200 /dev/ttyACM0

Then drag the executable onto the RP2040 drive on the desktop. 

## TO DO

**Implement compression**.  There are lower complexity compression
  techniques,PEG-XS seems to be one of the newer standards thats meant
  for low latency and reasonable compression. This may be doable with
  the RPi in FW. Doubt MJPG is possible for larger frames as that
  requires multiple frames to be in memory.

**Free UP SPI and UART pins** The interface requires 9 pins.  There
  are 8 RP2040<->FPGA pins, so one of the spi pins is also used. One
  could solder a pin between the FPGA and RP2040 and preserve the SPI
  bus.  Better yet, solder 3 pins and preserve both the SPI bus, and
  the default part. 

## Special Thanks

Christopher Lozinski (@clozinski) - wrote this README file. Thank you!
josuah (@josuah.demangeon) - helped answer questions during the development of this project
venkat_tv (@venkat_tv) - developed the pico-ice hardware