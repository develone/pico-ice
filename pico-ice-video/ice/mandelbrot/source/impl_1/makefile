VFLAGS = -O3 -x-assign fasta --x-initial fast --noassert
SDL_CFLAGS = `sdl2-config --cflags`
SDL_LDFLAGS = `sdl2-config --libs`

run: build
	cd obj_dir && ./Vtop

wave: run
	gtkwave obj_dir/waveform.vcd

build:
	verilator --cc top.sv --trace --exe tb_top.cpp -I../../.. -CFLAGS "${SDL_CFLAGS}" -LDFLAGS "${SDL_LDFLAGS}"
	make -C obj_dir -f Vtop.mk Vtop

clean:
	rm -rf ./obj_dir

.PHONY: run wave build clean
