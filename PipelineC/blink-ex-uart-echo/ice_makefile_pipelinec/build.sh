#!/bin/bash
make clean
make pipelinec
make gateware.bin
bin2uf2 -o gateware.uf2 gateware.bin
