# ice_makefile_pipelinec

Example project using a standard [Makefile](https://en.wikipedia.org/wiki/Make_%28software%29)
to build a project that can be loaded onto the board.

It needs [oss-cad-suite](https://github.com/YosysHQ/oss-cad-suite-build) installed.
See the [doc](https://pico-ice.tinyvision.ai/using_oss_cad_suite.html) for more.

Build with `make` and deploy it to the pico-ice with `make prog`, and `make gateware.uf2` to generate an
[uf2 image](https://pico-ice.tinyvision.ai/programming_the_fpga.html#using-a-drag-drop-or-file-copy-scheme)
to program with drag-and-drop.

If your design does not meet the default 12MHz timing, `nextpnr` will fail with an error like:
`ERROR: Max frequency for clock 'clk_12p0$SB_IO_IN_$glb_clk': XX.XX MHz (FAIL at 12.00 MHz)`.

A very complete `Makefile` example is provided for the UPduino v3 by Xark:
<https://github.com/XarkLabs/upduino-example/>

# PipelineC Specific

Linux only for now.

Clone the PipelineC repo:
`git clone https://github.com/JulianKemmerer/PipelineC.git`

Set `PIPELINEC_REPO` environment variable expected by make flow.

For now top level IO configuration needs to match across three files:
1) `top.h` (for PipelineC)
2) `top.sv` (for yosys)
3) `ice40.pcf` (for nextpnr)

When changing the top level pinout in `top.h`, need to manually update wrapper `top.sv` and `ice40.pcf` to match.

## TODO
* PLL Config Info: https://z80.ro/post/using_pll/
  * Make sure nextpnr constraints working
  * Create 'pll clock' port not named ex clk_25p0 in pipelinec
    * Fewest changes possible if rate changes
* Create 25MHz for 480p demo
  * Get basic vga working on pico-ice
  * VGA Info: https://github.com/XarkLabs/upduino-video
* RECREATE UART ON ARTY w usb uart dongle
  * Messages + work compute?
    * needs software refresh too
  * Some basic control of graphics on screen?
* Document UART+VGA walk through both boards on wiki
  * as skeleton for intro talk?
* Autopipelining mostly not working?
  * only works for small pipelines fit into IO pins?
  * pipeline work for uart demo? or VGA graphics compute pipeline?




