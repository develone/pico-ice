filename = top
pcf_file = leddigits.pcf

build:
	yosys -p "synth_ice40 -top top  -json $(filename).json" $(filename).v
	nextpnr-ice40 --up5k --package sg48 --json $(filename).json --pcf $(pcf_file) --asc $(filename).asc
	icepack $(filename).asc $(filename).bin
	bin2uf2 -o test-top.uf2 top.bin

prog:
	iceprog -S $(filename).bin

prog_flash:
	iceprog $(filename).bin

clean:
	rm -rf $(filename).blif $(filename).asc $(filename).bin $(filename).uf2
