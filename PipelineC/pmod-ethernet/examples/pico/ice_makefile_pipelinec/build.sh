#!/bin/bash
make clean
make pipelinec TOP_NAME=ethernet_top  NEXTPNR_ARGS="--pre-pack eth_clocks.py"
make gateware.bin TOP_NAME=ethernet_top  NEXTPNR_ARGS="--pre-pack eth_clocks.py"
