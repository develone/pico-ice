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
-- Submodules: 4
entity render_state_machine_0CLK_81c08e7b is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 user_input : in user_input_t;
 vga_signals : in vga_signals_t;
 return_output : out pixel_t);
end render_state_machine_0CLK_81c08e7b;
architecture arch of render_state_machine_0CLK_81c08e7b is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal reset : unsigned(0 downto 0) := to_unsigned(1, 1);
signal state : game_state_t := game_state_t_NULL;
signal REG_COMB_reset : unsigned(0 downto 0);
signal REG_COMB_state : game_state_t;

-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- render_pixel[pong_h_l270_c19_e6d6]
signal render_pixel_pong_h_l270_c19_e6d6_pos : vga_pos_t;
signal render_pixel_pong_h_l270_c19_e6d6_state : game_state_t;
signal render_pixel_pong_h_l270_c19_e6d6_return_output : pixel_t;

-- reset_MUX[pong_h_l272_c3_5190]
signal reset_MUX_pong_h_l272_c3_5190_cond : unsigned(0 downto 0);
signal reset_MUX_pong_h_l272_c3_5190_iftrue : unsigned(0 downto 0);
signal reset_MUX_pong_h_l272_c3_5190_iffalse : unsigned(0 downto 0);
signal reset_MUX_pong_h_l272_c3_5190_return_output : unsigned(0 downto 0);

-- state_MUX[pong_h_l272_c3_5190]
signal state_MUX_pong_h_l272_c3_5190_cond : unsigned(0 downto 0);
signal state_MUX_pong_h_l272_c3_5190_iftrue : game_state_t;
signal state_MUX_pong_h_l272_c3_5190_iffalse : game_state_t;
signal state_MUX_pong_h_l272_c3_5190_return_output : game_state_t;

-- next_state_func[pong_h_l274_c13_3b77]
signal next_state_func_pong_h_l274_c13_3b77_reset : unsigned(0 downto 0);
signal next_state_func_pong_h_l274_c13_3b77_state : game_state_t;
signal next_state_func_pong_h_l274_c13_3b77_user_input : user_input_t;
signal next_state_func_pong_h_l274_c13_3b77_return_output : game_state_t;


begin

-- SUBMODULE INSTANCES 
-- render_pixel_pong_h_l270_c19_e6d6 : 0 clocks latency
render_pixel_pong_h_l270_c19_e6d6 : entity work.render_pixel_0CLK_e2a68fde port map (
render_pixel_pong_h_l270_c19_e6d6_pos,
render_pixel_pong_h_l270_c19_e6d6_state,
render_pixel_pong_h_l270_c19_e6d6_return_output);

-- reset_MUX_pong_h_l272_c3_5190 : 0 clocks latency
reset_MUX_pong_h_l272_c3_5190 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
reset_MUX_pong_h_l272_c3_5190_cond,
reset_MUX_pong_h_l272_c3_5190_iftrue,
reset_MUX_pong_h_l272_c3_5190_iffalse,
reset_MUX_pong_h_l272_c3_5190_return_output);

-- state_MUX_pong_h_l272_c3_5190 : 0 clocks latency
state_MUX_pong_h_l272_c3_5190 : entity work.MUX_uint1_t_game_state_t_game_state_t_0CLK_de264c78 port map (
state_MUX_pong_h_l272_c3_5190_cond,
state_MUX_pong_h_l272_c3_5190_iftrue,
state_MUX_pong_h_l272_c3_5190_iffalse,
state_MUX_pong_h_l272_c3_5190_return_output);

-- next_state_func_pong_h_l274_c13_3b77 : 0 clocks latency
next_state_func_pong_h_l274_c13_3b77 : entity work.next_state_func_0CLK_e66e0998 port map (
next_state_func_pong_h_l274_c13_3b77_reset,
next_state_func_pong_h_l274_c13_3b77_state,
next_state_func_pong_h_l274_c13_3b77_user_input,
next_state_func_pong_h_l274_c13_3b77_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Inputs
 user_input,
 vga_signals,
 -- Registers
 reset,
 state,
 -- All submodule outputs
 render_pixel_pong_h_l270_c19_e6d6_return_output,
 reset_MUX_pong_h_l272_c3_5190_return_output,
 state_MUX_pong_h_l272_c3_5190_return_output,
 next_state_func_pong_h_l274_c13_3b77_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : pixel_t;
 variable VAR_user_input : user_input_t;
 variable VAR_vga_signals : vga_signals_t;
 variable VAR_color : pixel_t;
 variable VAR_render_pixel_pong_h_l270_c19_e6d6_pos : vga_pos_t;
 variable VAR_render_pixel_pong_h_l270_c19_e6d6_state : game_state_t;
 variable VAR_CONST_REF_RD_vga_pos_t_vga_signals_t_pos_d41d_pong_h_l270_c32_2b2b_return_output : vga_pos_t;
 variable VAR_render_pixel_pong_h_l270_c19_e6d6_return_output : pixel_t;
 variable VAR_CONST_REF_RD_uint1_t_vga_signals_t_end_of_frame_d41d_pong_h_l272_c6_e210_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l272_c3_5190_iftrue : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l272_c3_5190_iffalse : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l272_c3_5190_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l272_c3_5190_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_pong_h_l272_c3_5190_iftrue : game_state_t;
 variable VAR_state_MUX_pong_h_l272_c3_5190_iffalse : game_state_t;
 variable VAR_state_MUX_pong_h_l272_c3_5190_return_output : game_state_t;
 variable VAR_state_MUX_pong_h_l272_c3_5190_cond : unsigned(0 downto 0);
 variable VAR_next_state_func_pong_h_l274_c13_3b77_reset : unsigned(0 downto 0);
 variable VAR_next_state_func_pong_h_l274_c13_3b77_state : game_state_t;
 variable VAR_next_state_func_pong_h_l274_c13_3b77_user_input : user_input_t;
 variable VAR_next_state_func_pong_h_l274_c13_3b77_return_output : game_state_t;
 -- State registers comb logic variables
variable REG_VAR_reset : unsigned(0 downto 0);
variable REG_VAR_state : game_state_t;
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_reset := reset;
  REG_VAR_state := state;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_reset_MUX_pong_h_l272_c3_5190_iftrue := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;
     -- Mux in inputs
     VAR_user_input := user_input;
     VAR_vga_signals := vga_signals;

     -- Submodule level 0
     VAR_next_state_func_pong_h_l274_c13_3b77_reset := reset;
     VAR_reset_MUX_pong_h_l272_c3_5190_iffalse := reset;
     VAR_next_state_func_pong_h_l274_c13_3b77_state := state;
     VAR_render_pixel_pong_h_l270_c19_e6d6_state := state;
     VAR_state_MUX_pong_h_l272_c3_5190_iffalse := state;
     VAR_next_state_func_pong_h_l274_c13_3b77_user_input := VAR_user_input;
     -- CONST_REF_RD_vga_pos_t_vga_signals_t_pos_d41d[pong_h_l270_c32_2b2b] LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_vga_signals_t_pos_d41d_pong_h_l270_c32_2b2b_return_output := VAR_vga_signals.pos;

     -- next_state_func[pong_h_l274_c13_3b77] LATENCY=0
     -- Inputs
     next_state_func_pong_h_l274_c13_3b77_reset <= VAR_next_state_func_pong_h_l274_c13_3b77_reset;
     next_state_func_pong_h_l274_c13_3b77_state <= VAR_next_state_func_pong_h_l274_c13_3b77_state;
     next_state_func_pong_h_l274_c13_3b77_user_input <= VAR_next_state_func_pong_h_l274_c13_3b77_user_input;
     -- Outputs
     VAR_next_state_func_pong_h_l274_c13_3b77_return_output := next_state_func_pong_h_l274_c13_3b77_return_output;

     -- CONST_REF_RD_uint1_t_vga_signals_t_end_of_frame_d41d[pong_h_l272_c6_e210] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_vga_signals_t_end_of_frame_d41d_pong_h_l272_c6_e210_return_output := VAR_vga_signals.end_of_frame;

     -- Submodule level 1
     VAR_reset_MUX_pong_h_l272_c3_5190_cond := VAR_CONST_REF_RD_uint1_t_vga_signals_t_end_of_frame_d41d_pong_h_l272_c6_e210_return_output;
     VAR_state_MUX_pong_h_l272_c3_5190_cond := VAR_CONST_REF_RD_uint1_t_vga_signals_t_end_of_frame_d41d_pong_h_l272_c6_e210_return_output;
     VAR_render_pixel_pong_h_l270_c19_e6d6_pos := VAR_CONST_REF_RD_vga_pos_t_vga_signals_t_pos_d41d_pong_h_l270_c32_2b2b_return_output;
     VAR_state_MUX_pong_h_l272_c3_5190_iftrue := VAR_next_state_func_pong_h_l274_c13_3b77_return_output;
     -- state_MUX[pong_h_l272_c3_5190] LATENCY=0
     -- Inputs
     state_MUX_pong_h_l272_c3_5190_cond <= VAR_state_MUX_pong_h_l272_c3_5190_cond;
     state_MUX_pong_h_l272_c3_5190_iftrue <= VAR_state_MUX_pong_h_l272_c3_5190_iftrue;
     state_MUX_pong_h_l272_c3_5190_iffalse <= VAR_state_MUX_pong_h_l272_c3_5190_iffalse;
     -- Outputs
     VAR_state_MUX_pong_h_l272_c3_5190_return_output := state_MUX_pong_h_l272_c3_5190_return_output;

     -- reset_MUX[pong_h_l272_c3_5190] LATENCY=0
     -- Inputs
     reset_MUX_pong_h_l272_c3_5190_cond <= VAR_reset_MUX_pong_h_l272_c3_5190_cond;
     reset_MUX_pong_h_l272_c3_5190_iftrue <= VAR_reset_MUX_pong_h_l272_c3_5190_iftrue;
     reset_MUX_pong_h_l272_c3_5190_iffalse <= VAR_reset_MUX_pong_h_l272_c3_5190_iffalse;
     -- Outputs
     VAR_reset_MUX_pong_h_l272_c3_5190_return_output := reset_MUX_pong_h_l272_c3_5190_return_output;

     -- render_pixel[pong_h_l270_c19_e6d6] LATENCY=0
     -- Inputs
     render_pixel_pong_h_l270_c19_e6d6_pos <= VAR_render_pixel_pong_h_l270_c19_e6d6_pos;
     render_pixel_pong_h_l270_c19_e6d6_state <= VAR_render_pixel_pong_h_l270_c19_e6d6_state;
     -- Outputs
     VAR_render_pixel_pong_h_l270_c19_e6d6_return_output := render_pixel_pong_h_l270_c19_e6d6_return_output;

     -- Submodule level 2
     VAR_return_output := VAR_render_pixel_pong_h_l270_c19_e6d6_return_output;
     REG_VAR_reset := VAR_reset_MUX_pong_h_l272_c3_5190_return_output;
     REG_VAR_state := VAR_state_MUX_pong_h_l272_c3_5190_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_reset <= REG_VAR_reset;
REG_COMB_state <= REG_VAR_state;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if clk_en_internal='1' then
     reset <= REG_COMB_reset;
     state <= REG_COMB_state;
 end if;
 end if;
end process;

end arch;
