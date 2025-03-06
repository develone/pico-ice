-- Timing params:
--   Fixed?: False
--   Pipeline Slices: []
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
use work.global_wires_pkg.all;
-- Submodules: 3
entity pong_vga_datapath_0CLK_79f6ca61 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in pong_vga_datapath_global_to_module_t;
 module_to_global : out pong_vga_datapath_module_to_global_t);
end pong_vga_datapath_0CLK_79f6ca61;
architecture arch of pong_vga_datapath_0CLK_79f6ca61 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- vga_timing[pong_top_c_l54_c31_ace5]
signal vga_timing_pong_top_c_l54_c31_ace5_CLOCK_ENABLE : unsigned(0 downto 0);
signal vga_timing_pong_top_c_l54_c31_ace5_return_output : vga_signals_t;

-- uart_rx_to_buttons[pong_top_c_l58_c29_361a]
signal uart_rx_to_buttons_pong_top_c_l58_c29_361a_CLOCK_ENABLE : unsigned(0 downto 0);
signal uart_rx_to_buttons_pong_top_c_l58_c29_361a_return_output : user_input_t;

-- render_state_machine[pong_top_c_l59_c19_67d4]
signal render_state_machine_pong_top_c_l59_c19_67d4_CLOCK_ENABLE : unsigned(0 downto 0);
signal render_state_machine_pong_top_c_l59_c19_67d4_user_input : user_input_t;
signal render_state_machine_pong_top_c_l59_c19_67d4_vga_signals : vga_signals_t;
signal render_state_machine_pong_top_c_l59_c19_67d4_return_output : pixel_t;


begin

-- SUBMODULE INSTANCES 
-- vga_timing_pong_top_c_l54_c31_ace5 : 0 clocks latency
vga_timing_pong_top_c_l54_c31_ace5 : entity work.vga_timing_0CLK_0360cf5e port map (
clk,
vga_timing_pong_top_c_l54_c31_ace5_CLOCK_ENABLE,
vga_timing_pong_top_c_l54_c31_ace5_return_output);

-- uart_rx_to_buttons_pong_top_c_l58_c29_361a : 0 clocks latency
uart_rx_to_buttons_pong_top_c_l58_c29_361a : entity work.uart_rx_to_buttons_0CLK_9cd14dcf port map (
clk,
uart_rx_to_buttons_pong_top_c_l58_c29_361a_CLOCK_ENABLE,
global_to_module.uart_rx_to_buttons_pong_top_c_l58_c29_361a,
module_to_global.uart_rx_to_buttons_pong_top_c_l58_c29_361a,
uart_rx_to_buttons_pong_top_c_l58_c29_361a_return_output);

-- render_state_machine_pong_top_c_l59_c19_67d4 : 0 clocks latency
render_state_machine_pong_top_c_l59_c19_67d4 : entity work.render_state_machine_0CLK_81c08e7b port map (
clk,
render_state_machine_pong_top_c_l59_c19_67d4_CLOCK_ENABLE,
render_state_machine_pong_top_c_l59_c19_67d4_user_input,
render_state_machine_pong_top_c_l59_c19_67d4_vga_signals,
render_state_machine_pong_top_c_l59_c19_67d4_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 vga_timing_pong_top_c_l54_c31_ace5_return_output,
 uart_rx_to_buttons_pong_top_c_l58_c29_361a_return_output,
 render_state_machine_pong_top_c_l59_c19_67d4_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_vga_r : unsigned(7 downto 0);
 variable VAR_vga_g : unsigned(7 downto 0);
 variable VAR_vga_b : unsigned(7 downto 0);
 variable VAR_vga_hs : unsigned(0 downto 0);
 variable VAR_vga_vs : unsigned(0 downto 0);
 variable VAR_vga_signals : vga_signals_t;
 variable VAR_vga_timing_pong_top_c_l54_c31_ace5_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_vga_timing_pong_top_c_l54_c31_ace5_return_output : vga_signals_t;
 variable VAR_user_input : user_input_t;
 variable VAR_uart_rx_to_buttons_pong_top_c_l58_c29_361a_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_uart_rx_to_buttons_pong_top_c_l58_c29_361a_return_output : user_input_t;
 variable VAR_color : pixel_t;
 variable VAR_render_state_machine_pong_top_c_l59_c19_67d4_user_input : user_input_t;
 variable VAR_render_state_machine_pong_top_c_l59_c19_67d4_vga_signals : vga_signals_t;
 variable VAR_render_state_machine_pong_top_c_l59_c19_67d4_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_render_state_machine_pong_top_c_l59_c19_67d4_return_output : pixel_t;
 variable VAR_CONST_REF_RD_uint8_t_pixel_t_r_d41d_pong_top_c_l62_c11_2d5c_return_output : unsigned(7 downto 0);
 variable VAR_CONST_REF_RD_uint8_t_pixel_t_g_d41d_pong_top_c_l63_c11_d91e_return_output : unsigned(7 downto 0);
 variable VAR_CONST_REF_RD_uint8_t_pixel_t_b_d41d_pong_top_c_l64_c11_af40_return_output : unsigned(7 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_vga_signals_t_hsync_d41d_pong_top_c_l65_c12_b0c9_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_vga_signals_t_vsync_d41d_pong_top_c_l66_c12_79c3_return_output : unsigned(0 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

     -- Submodule level 0
     VAR_render_state_machine_pong_top_c_l59_c19_67d4_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     VAR_uart_rx_to_buttons_pong_top_c_l58_c29_361a_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     VAR_vga_timing_pong_top_c_l54_c31_ace5_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     -- uart_rx_to_buttons[pong_top_c_l58_c29_361a] LATENCY=0
     -- Clock enable
     uart_rx_to_buttons_pong_top_c_l58_c29_361a_CLOCK_ENABLE <= VAR_uart_rx_to_buttons_pong_top_c_l58_c29_361a_CLOCK_ENABLE;
     -- Inputs
     -- Outputs
     VAR_uart_rx_to_buttons_pong_top_c_l58_c29_361a_return_output := uart_rx_to_buttons_pong_top_c_l58_c29_361a_return_output;

     -- vga_timing[pong_top_c_l54_c31_ace5] LATENCY=0
     -- Clock enable
     vga_timing_pong_top_c_l54_c31_ace5_CLOCK_ENABLE <= VAR_vga_timing_pong_top_c_l54_c31_ace5_CLOCK_ENABLE;
     -- Inputs
     -- Outputs
     VAR_vga_timing_pong_top_c_l54_c31_ace5_return_output := vga_timing_pong_top_c_l54_c31_ace5_return_output;

     -- Submodule level 1
     VAR_render_state_machine_pong_top_c_l59_c19_67d4_user_input := VAR_uart_rx_to_buttons_pong_top_c_l58_c29_361a_return_output;
     VAR_render_state_machine_pong_top_c_l59_c19_67d4_vga_signals := VAR_vga_timing_pong_top_c_l54_c31_ace5_return_output;
     -- render_state_machine[pong_top_c_l59_c19_67d4] LATENCY=0
     -- Clock enable
     render_state_machine_pong_top_c_l59_c19_67d4_CLOCK_ENABLE <= VAR_render_state_machine_pong_top_c_l59_c19_67d4_CLOCK_ENABLE;
     -- Inputs
     render_state_machine_pong_top_c_l59_c19_67d4_user_input <= VAR_render_state_machine_pong_top_c_l59_c19_67d4_user_input;
     render_state_machine_pong_top_c_l59_c19_67d4_vga_signals <= VAR_render_state_machine_pong_top_c_l59_c19_67d4_vga_signals;
     -- Outputs
     VAR_render_state_machine_pong_top_c_l59_c19_67d4_return_output := render_state_machine_pong_top_c_l59_c19_67d4_return_output;

     -- CONST_REF_RD_uint1_t_vga_signals_t_vsync_d41d[pong_top_c_l66_c12_79c3] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_vga_signals_t_vsync_d41d_pong_top_c_l66_c12_79c3_return_output := VAR_vga_timing_pong_top_c_l54_c31_ace5_return_output.vsync;

     -- CONST_REF_RD_uint1_t_vga_signals_t_hsync_d41d[pong_top_c_l65_c12_b0c9] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_vga_signals_t_hsync_d41d_pong_top_c_l65_c12_b0c9_return_output := VAR_vga_timing_pong_top_c_l54_c31_ace5_return_output.hsync;

     -- Submodule level 2
     VAR_vga_hs := VAR_CONST_REF_RD_uint1_t_vga_signals_t_hsync_d41d_pong_top_c_l65_c12_b0c9_return_output;
     VAR_vga_vs := VAR_CONST_REF_RD_uint1_t_vga_signals_t_vsync_d41d_pong_top_c_l66_c12_79c3_return_output;
     -- CONST_REF_RD_uint8_t_pixel_t_b_d41d[pong_top_c_l64_c11_af40] LATENCY=0
     VAR_CONST_REF_RD_uint8_t_pixel_t_b_d41d_pong_top_c_l64_c11_af40_return_output := VAR_render_state_machine_pong_top_c_l59_c19_67d4_return_output.b;

     -- CONST_REF_RD_uint8_t_pixel_t_r_d41d[pong_top_c_l62_c11_2d5c] LATENCY=0
     VAR_CONST_REF_RD_uint8_t_pixel_t_r_d41d_pong_top_c_l62_c11_2d5c_return_output := VAR_render_state_machine_pong_top_c_l59_c19_67d4_return_output.r;

     -- CONST_REF_RD_uint8_t_pixel_t_g_d41d[pong_top_c_l63_c11_d91e] LATENCY=0
     VAR_CONST_REF_RD_uint8_t_pixel_t_g_d41d_pong_top_c_l63_c11_d91e_return_output := VAR_render_state_machine_pong_top_c_l59_c19_67d4_return_output.g;

     -- Submodule level 3
     VAR_vga_b := VAR_CONST_REF_RD_uint8_t_pixel_t_b_d41d_pong_top_c_l64_c11_af40_return_output;
     VAR_vga_g := VAR_CONST_REF_RD_uint8_t_pixel_t_g_d41d_pong_top_c_l63_c11_d91e_return_output;
     VAR_vga_r := VAR_CONST_REF_RD_uint8_t_pixel_t_r_d41d_pong_top_c_l62_c11_2d5c_return_output;
   end if;
 end loop;

-- Global wires driven various places in pipeline
if clk_en_internal='1' then
  module_to_global.vga_r <= VAR_vga_r;
else
  module_to_global.vga_r <= to_unsigned(0, 8);
end if;
if clk_en_internal='1' then
  module_to_global.vga_g <= VAR_vga_g;
else
  module_to_global.vga_g <= to_unsigned(0, 8);
end if;
if clk_en_internal='1' then
  module_to_global.vga_b <= VAR_vga_b;
else
  module_to_global.vga_b <= to_unsigned(0, 8);
end if;
if clk_en_internal='1' then
  module_to_global.vga_hs <= VAR_vga_hs;
else
  module_to_global.vga_hs <= to_unsigned(0, 1);
end if;
if clk_en_internal='1' then
  module_to_global.vga_vs <= VAR_vga_vs;
else
  module_to_global.vga_vs <= to_unsigned(0, 1);
end if;
end process;

end arch;
