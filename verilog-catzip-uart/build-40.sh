#!/bin/bash
rm top.asc top.bin top.json
yosys -l simple.log -p 'synth_ice40 -blif top-40.blif -json top-40.json -top top' top-40.v uart.v
nextpnr-ice40 --seed 8 --freq 40 --hx8k --pcf-allow-unconstrained --pcf 2uarts.pcf --json top-40.json --asc top-40.asc -l place_and_route.log
icetime -d hx8k -c 40 top-40.asc
icepack top-40.asc top-40.bin
