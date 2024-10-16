#include <cstdlib>
#include <cmath>
#include <iostream>
#include <SDL.h>
#include <verilated.h>
#include <verilated_vcd_c.h>
#include "Vtop.h"

constexpr int H_RES = 256;
constexpr int V_RES = 256;

constexpr int S_SCALE = 3;

int main(int argc, char** argv, char** env)
{
	if (SDL_Init(SDL_INIT_VIDEO) < 0)
	{
		std::cout << "SDL init failed." << std::endl;
		return 1;
	}

	uint8_t framebuffer[H_RES * V_RES * 2];
	unsigned int current = 0;

	SDL_Window* sdl_window = nullptr;
	SDL_Renderer* sdl_renderer = nullptr;
	SDL_Texture* sdl_texture = nullptr;

	sdl_window = SDL_CreateWindow("mandelbrot", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
		H_RES * S_SCALE, V_RES * S_SCALE, SDL_WINDOW_SHOWN);
	if (!sdl_window)
	{
		std::cout << "Window creation failed: " << SDL_GetError() << std::endl;
		return 1;
	}

	sdl_renderer = SDL_CreateRenderer(sdl_window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
	if (!sdl_renderer)
	{
		std::cout << "Renderer creation failed: " << SDL_GetError() << std::endl;
		return 1;
	}
	SDL_RenderSetLogicalSize(sdl_renderer, V_RES, H_RES);

	sdl_texture = SDL_CreateTexture(sdl_renderer, SDL_PIXELFORMAT_YUY2, SDL_TEXTUREACCESS_TARGET, H_RES, V_RES);
	if (!sdl_texture)
	{
		std::cout << "Texture creation failed: " << SDL_GetError() << std::endl;
		return 1;
	}

	const Uint8* keyb_state = SDL_GetKeyboardState(nullptr);

	Vtop* dut = new Vtop;

	bool done = false;

	vluint64_t sim_time = 0;

	Verilated::traceEverOn(true);
	VerilatedVcdC* trace = new VerilatedVcdC;
	dut->trace(trace, 5);
	trace->open("waveform.vcd");

	dut->dir = 1;
	dut->clk = 1;
	dut->eval();
	trace->dump(sim_time++);
	dut->clk = 0;
	dut->eval();
	trace->dump(sim_time++);
	for (int i = 0; i < 5; i++)
	{
		dut->clk = 1;
		dut->eval();
		trace->dump(sim_time++);
		dut->clk = 0;
		dut->eval();
		trace->dump(sim_time++);
	}
	dut->clk = 1;
	dut->eval();
	trace->dump(sim_time++);
	dut->dir = 0;
	dut->clk = 0;
	dut->eval();
	trace->dump(sim_time++);

	bool swapped = false;
	bool last = false;

	while (true)
	{
		SDL_Event e;
		if (SDL_PollEvent(&e)) { if (e.type == SDL_QUIT) { break; } }

		if (keyb_state[SDL_SCANCODE_Q]) { break; }

		if (!done || !dut->fin)
		{
			dut->clk = 1;
			dut->eval();
			trace->dump(sim_time++);
			dut->clk = 0;
			dut->eval();
			trace->dump(sim_time++);

			if (!dut->req || done) { continue; }

			framebuffer[current] = dut->data;

			if (++current == H_RES * V_RES * 2)
			{
				current = 0;
				SDL_UpdateTexture(sdl_texture, nullptr, framebuffer, H_RES * 2);
				SDL_RenderClear(sdl_renderer);
				SDL_RenderCopy(sdl_renderer, sdl_texture, nullptr, nullptr);
				SDL_RenderPresent(sdl_renderer);

				done = true;
			}
		}
		else if (keyb_state[SDL_SCANCODE_N] && !last)
		{
			if (swapped)
			{
				SDL_UpdateTexture(sdl_texture, nullptr, framebuffer, H_RES * 2);
				SDL_RenderClear(sdl_renderer);
				SDL_RenderCopy(sdl_renderer, sdl_texture, nullptr, nullptr);
				SDL_RenderPresent(sdl_renderer);
				swapped = false;
			}
			else
			{
				uint8_t fb2[V_RES * H_RES * 2];
				for (int i = 0; i < V_RES * H_RES * 2; i += 2)
				{
					float zr = 0, zi = 0;
					const float cr = (i % (H_RES * 2)) / 192.0f - 2.1f;
					const float ci = (i / (H_RES * 2)) / 96.0f - 1.5f;

					fb2[i] = 62;
					fb2[i + 1] = 128;

					for (int iter = 0; iter < 64; iter++)
					{
						if (zr * zr + zi * zi >= 4)
						{
							fb2[i] = 16.0f * sqrt(iter) + 62;
							break;
						}
						float tzr = zr * zr - zi * zi + cr;
						zi = 2 * zr * zi + ci;
						zr = tzr;
					}
				}
				SDL_UpdateTexture(sdl_texture, nullptr, fb2, H_RES * 2);
				SDL_RenderClear(sdl_renderer);
				SDL_RenderCopy(sdl_renderer, sdl_texture, nullptr, nullptr);
				SDL_RenderPresent(sdl_renderer);	
				
				swapped = true;	
			}
		}
		last = keyb_state[SDL_SCANCODE_N];
	}

	trace->close();
	delete trace;
	delete dut;
	return 0;
}
