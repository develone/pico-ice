#!/bin/bash
make clean
make pipelinec TOP_NAME=ethernet_top  PLL_CLK_MHZ=25.0: NEXTPNR_ARGS="--pre-pack eth_clocks.py"
