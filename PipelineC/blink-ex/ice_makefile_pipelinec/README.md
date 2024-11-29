# ice_makefile_pipelinec

Example project using a standard [Makefile](https://en.wikipedia.org/wiki/Make_%28software%29)
to build a project that can be loaded onto the board.

It needs [oss-cad-suite](https://github.com/YosysHQ/oss-cad-suite-build) installed.
See the [doc](https://pico-ice.tinyvision.ai/using_oss_cad_suite.html) for more.

Build with `make` and deploy it to the pico-ice with `make prog`, and `make gateware.uf2` to generate an
[uf2 image](https://pico-ice.tinyvision.ai/programming_the_fpga.html#using-a-drag-drop-or-file-copy-scheme)
to program with drag-and-drop.

A very complete `Makefile` example is provided for the UPduino v3 by Xark:
<https://github.com/XarkLabs/upduino-example/>

# PipelineC Specific

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
* VGA Info: https://github.com/XarkLabs/upduino-video


