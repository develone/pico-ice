YOSYS = $(OSS_CAD_SUITE)/bin/yosys
NEXTPNR = $(OSS_CAD_SUITE)/bin/nextpnr-ice40
ICEPACK = $(OSS_CAD_SUITE)/bin/icepack
DFU_UTIL = $(OSS_CAD_SUITE)/bin/dfu-util
BIN2UF2 = bin2uf2
PIPELINEC = $(PIPELINEC_REPO)/src/pipelinec

all: pipelinec gateware.bin

clean:
	$(RM) *.json *.asc *.bin *.uf2
	$(RM) yosys_stderr.log
	$(RM) pipelinec.log
	$(RM) -r pipelinec_output
	$(RM) lextab.py
	$(RM) yacctab.py
	$(RM) dfu_util.log

prog: gateware.bin
	$(RM) dfu_util.log
	sudo $(DFU_UTIL) -d 1209:b1c0 -a 1 -D gateware.bin -R > dfu_util.log

gateware.bin: top.sv
	$(YOSYS) -q -m ghdl -p "ghdl --std=08 -frelaxed `cat pipelinec_output/vhdl_files.txt` -e pipelinec_top; read_verilog -sv top.sv; synth_ice40 -top top -json $*.json" 2> yosys_stderr.log
	$(NEXTPNR) -q --randomize-seed --up5k --package sg48 --pcf ice40.pcf --json $*.json --asc $*.asc
	$(ICEPACK) $*.asc $@

.bin.uf2:
	$(BIN2UF2) -o $@ $<

pipelinec:
	$(PIPELINEC) top.c --top pipelinec_top --out_dir pipelinec_output --comb --no_synth > pipelinec.log

.SUFFIXES: .v .sv .asc .bin .uf2
