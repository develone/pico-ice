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
-- Submodules: 13
entity render_pixel_0CLK_e2a68fde is
port(
 pos : in vga_pos_t;
 state : in game_state_t;
 return_output : out pixel_t);
end render_pixel_0CLK_e2a68fde;
architecture arch of render_pixel_0CLK_e2a68fde is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- rect_contains[pong_h_l68_c6_d89e]
signal rect_contains_pong_h_l68_c6_d89e_rect : rect_t;
signal rect_contains_pong_h_l68_c6_d89e_pos : vga_pos_t;
signal rect_contains_pong_h_l68_c6_d89e_return_output : unsigned(0 downto 0);

-- c_g_MUX[pong_h_l68_c3_678b]
signal c_g_MUX_pong_h_l68_c3_678b_cond : unsigned(0 downto 0);
signal c_g_MUX_pong_h_l68_c3_678b_iftrue : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l68_c3_678b_iffalse : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l68_c3_678b_return_output : unsigned(7 downto 0);

-- c_b_MUX[pong_h_l68_c3_678b]
signal c_b_MUX_pong_h_l68_c3_678b_cond : unsigned(0 downto 0);
signal c_b_MUX_pong_h_l68_c3_678b_iftrue : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l68_c3_678b_iffalse : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l68_c3_678b_return_output : unsigned(7 downto 0);

-- c_r_MUX[pong_h_l68_c3_678b]
signal c_r_MUX_pong_h_l68_c3_678b_cond : unsigned(0 downto 0);
signal c_r_MUX_pong_h_l68_c3_678b_iftrue : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l68_c3_678b_iffalse : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l68_c3_678b_return_output : unsigned(7 downto 0);

-- rect_contains[pong_h_l75_c11_4e64]
signal rect_contains_pong_h_l75_c11_4e64_rect : rect_t;
signal rect_contains_pong_h_l75_c11_4e64_pos : vga_pos_t;
signal rect_contains_pong_h_l75_c11_4e64_return_output : unsigned(0 downto 0);

-- c_g_MUX[pong_h_l75_c8_70ec]
signal c_g_MUX_pong_h_l75_c8_70ec_cond : unsigned(0 downto 0);
signal c_g_MUX_pong_h_l75_c8_70ec_iftrue : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l75_c8_70ec_iffalse : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l75_c8_70ec_return_output : unsigned(7 downto 0);

-- c_b_MUX[pong_h_l75_c8_70ec]
signal c_b_MUX_pong_h_l75_c8_70ec_cond : unsigned(0 downto 0);
signal c_b_MUX_pong_h_l75_c8_70ec_iftrue : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l75_c8_70ec_iffalse : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l75_c8_70ec_return_output : unsigned(7 downto 0);

-- c_r_MUX[pong_h_l75_c8_70ec]
signal c_r_MUX_pong_h_l75_c8_70ec_cond : unsigned(0 downto 0);
signal c_r_MUX_pong_h_l75_c8_70ec_iftrue : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l75_c8_70ec_iffalse : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l75_c8_70ec_return_output : unsigned(7 downto 0);

-- rect_contains[pong_h_l82_c11_7482]
signal rect_contains_pong_h_l82_c11_7482_rect : rect_t;
signal rect_contains_pong_h_l82_c11_7482_pos : vga_pos_t;
signal rect_contains_pong_h_l82_c11_7482_return_output : unsigned(0 downto 0);

-- c_g_MUX[pong_h_l82_c8_429c]
signal c_g_MUX_pong_h_l82_c8_429c_cond : unsigned(0 downto 0);
signal c_g_MUX_pong_h_l82_c8_429c_iftrue : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l82_c8_429c_iffalse : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l82_c8_429c_return_output : unsigned(7 downto 0);

-- c_b_MUX[pong_h_l82_c8_429c]
signal c_b_MUX_pong_h_l82_c8_429c_cond : unsigned(0 downto 0);
signal c_b_MUX_pong_h_l82_c8_429c_iftrue : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l82_c8_429c_iffalse : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l82_c8_429c_return_output : unsigned(7 downto 0);

-- c_r_MUX[pong_h_l82_c8_429c]
signal c_r_MUX_pong_h_l82_c8_429c_cond : unsigned(0 downto 0);
signal c_r_MUX_pong_h_l82_c8_429c_iftrue : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l82_c8_429c_iffalse : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l82_c8_429c_return_output : unsigned(7 downto 0);

function CONST_REF_RD_pixel_t_pixel_t_7d85( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned;
 ref_toks_3 : unsigned) return pixel_t is
 
  variable base : pixel_t; 
  variable return_output : pixel_t;
begin
      base.a := ref_toks_0;
      base.g := ref_toks_1;
      base.b := ref_toks_2;
      base.r := ref_toks_3;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- rect_contains_pong_h_l68_c6_d89e : 0 clocks latency
rect_contains_pong_h_l68_c6_d89e : entity work.rect_contains_0CLK_09e6dfce port map (
rect_contains_pong_h_l68_c6_d89e_rect,
rect_contains_pong_h_l68_c6_d89e_pos,
rect_contains_pong_h_l68_c6_d89e_return_output);

-- c_g_MUX_pong_h_l68_c3_678b : 0 clocks latency
c_g_MUX_pong_h_l68_c3_678b : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_g_MUX_pong_h_l68_c3_678b_cond,
c_g_MUX_pong_h_l68_c3_678b_iftrue,
c_g_MUX_pong_h_l68_c3_678b_iffalse,
c_g_MUX_pong_h_l68_c3_678b_return_output);

-- c_b_MUX_pong_h_l68_c3_678b : 0 clocks latency
c_b_MUX_pong_h_l68_c3_678b : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_b_MUX_pong_h_l68_c3_678b_cond,
c_b_MUX_pong_h_l68_c3_678b_iftrue,
c_b_MUX_pong_h_l68_c3_678b_iffalse,
c_b_MUX_pong_h_l68_c3_678b_return_output);

-- c_r_MUX_pong_h_l68_c3_678b : 0 clocks latency
c_r_MUX_pong_h_l68_c3_678b : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_r_MUX_pong_h_l68_c3_678b_cond,
c_r_MUX_pong_h_l68_c3_678b_iftrue,
c_r_MUX_pong_h_l68_c3_678b_iffalse,
c_r_MUX_pong_h_l68_c3_678b_return_output);

-- rect_contains_pong_h_l75_c11_4e64 : 0 clocks latency
rect_contains_pong_h_l75_c11_4e64 : entity work.rect_contains_0CLK_09e6dfce port map (
rect_contains_pong_h_l75_c11_4e64_rect,
rect_contains_pong_h_l75_c11_4e64_pos,
rect_contains_pong_h_l75_c11_4e64_return_output);

-- c_g_MUX_pong_h_l75_c8_70ec : 0 clocks latency
c_g_MUX_pong_h_l75_c8_70ec : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_g_MUX_pong_h_l75_c8_70ec_cond,
c_g_MUX_pong_h_l75_c8_70ec_iftrue,
c_g_MUX_pong_h_l75_c8_70ec_iffalse,
c_g_MUX_pong_h_l75_c8_70ec_return_output);

-- c_b_MUX_pong_h_l75_c8_70ec : 0 clocks latency
c_b_MUX_pong_h_l75_c8_70ec : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_b_MUX_pong_h_l75_c8_70ec_cond,
c_b_MUX_pong_h_l75_c8_70ec_iftrue,
c_b_MUX_pong_h_l75_c8_70ec_iffalse,
c_b_MUX_pong_h_l75_c8_70ec_return_output);

-- c_r_MUX_pong_h_l75_c8_70ec : 0 clocks latency
c_r_MUX_pong_h_l75_c8_70ec : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_r_MUX_pong_h_l75_c8_70ec_cond,
c_r_MUX_pong_h_l75_c8_70ec_iftrue,
c_r_MUX_pong_h_l75_c8_70ec_iffalse,
c_r_MUX_pong_h_l75_c8_70ec_return_output);

-- rect_contains_pong_h_l82_c11_7482 : 0 clocks latency
rect_contains_pong_h_l82_c11_7482 : entity work.rect_contains_0CLK_09e6dfce port map (
rect_contains_pong_h_l82_c11_7482_rect,
rect_contains_pong_h_l82_c11_7482_pos,
rect_contains_pong_h_l82_c11_7482_return_output);

-- c_g_MUX_pong_h_l82_c8_429c : 0 clocks latency
c_g_MUX_pong_h_l82_c8_429c : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_g_MUX_pong_h_l82_c8_429c_cond,
c_g_MUX_pong_h_l82_c8_429c_iftrue,
c_g_MUX_pong_h_l82_c8_429c_iffalse,
c_g_MUX_pong_h_l82_c8_429c_return_output);

-- c_b_MUX_pong_h_l82_c8_429c : 0 clocks latency
c_b_MUX_pong_h_l82_c8_429c : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_b_MUX_pong_h_l82_c8_429c_cond,
c_b_MUX_pong_h_l82_c8_429c_iftrue,
c_b_MUX_pong_h_l82_c8_429c_iffalse,
c_b_MUX_pong_h_l82_c8_429c_return_output);

-- c_r_MUX_pong_h_l82_c8_429c : 0 clocks latency
c_r_MUX_pong_h_l82_c8_429c : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_r_MUX_pong_h_l82_c8_429c_cond,
c_r_MUX_pong_h_l82_c8_429c_iftrue,
c_r_MUX_pong_h_l82_c8_429c_iffalse,
c_r_MUX_pong_h_l82_c8_429c_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 pos,
 state,
 -- All submodule outputs
 rect_contains_pong_h_l68_c6_d89e_return_output,
 c_g_MUX_pong_h_l68_c3_678b_return_output,
 c_b_MUX_pong_h_l68_c3_678b_return_output,
 c_r_MUX_pong_h_l68_c3_678b_return_output,
 rect_contains_pong_h_l75_c11_4e64_return_output,
 c_g_MUX_pong_h_l75_c8_70ec_return_output,
 c_b_MUX_pong_h_l75_c8_70ec_return_output,
 c_r_MUX_pong_h_l75_c8_70ec_return_output,
 rect_contains_pong_h_l82_c11_7482_return_output,
 c_g_MUX_pong_h_l82_c8_429c_return_output,
 c_b_MUX_pong_h_l82_c8_429c_return_output,
 c_r_MUX_pong_h_l82_c8_429c_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : pixel_t;
 variable VAR_pos : vga_pos_t;
 variable VAR_state : game_state_t;
 variable VAR_c : pixel_t;
 variable VAR_c_a_pong_h_l62_c3_e6b5 : unsigned(7 downto 0);
 variable VAR_c_r_pong_h_l63_c3_3d93 : unsigned(7 downto 0);
 variable VAR_c_g_pong_h_l64_c3_ba27 : unsigned(7 downto 0);
 variable VAR_c_b_pong_h_l65_c3_1f75 : unsigned(7 downto 0);
 variable VAR_rect_contains_pong_h_l68_c6_d89e_rect : rect_t;
 variable VAR_rect_contains_pong_h_l68_c6_d89e_pos : vga_pos_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l68_c20_28bd_return_output : rect_t;
 variable VAR_rect_contains_pong_h_l68_c6_d89e_return_output : unsigned(0 downto 0);
 variable VAR_c_g_MUX_pong_h_l68_c3_678b_iftrue : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l68_c3_678b_iffalse : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l75_c8_70ec_return_output : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l68_c3_678b_return_output : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l68_c3_678b_cond : unsigned(0 downto 0);
 variable VAR_c_b_MUX_pong_h_l68_c3_678b_iftrue : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l68_c3_678b_iffalse : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l75_c8_70ec_return_output : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l68_c3_678b_return_output : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l68_c3_678b_cond : unsigned(0 downto 0);
 variable VAR_c_r_MUX_pong_h_l68_c3_678b_iftrue : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l68_c3_678b_iffalse : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l75_c8_70ec_return_output : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l68_c3_678b_return_output : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l68_c3_678b_cond : unsigned(0 downto 0);
 variable VAR_rect_contains_pong_h_l75_c11_4e64_rect : rect_t;
 variable VAR_rect_contains_pong_h_l75_c11_4e64_pos : vga_pos_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l75_c25_27d1_return_output : rect_t;
 variable VAR_rect_contains_pong_h_l75_c11_4e64_return_output : unsigned(0 downto 0);
 variable VAR_c_g_MUX_pong_h_l75_c8_70ec_iftrue : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l75_c8_70ec_iffalse : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l82_c8_429c_return_output : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l75_c8_70ec_cond : unsigned(0 downto 0);
 variable VAR_c_b_MUX_pong_h_l75_c8_70ec_iftrue : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l75_c8_70ec_iffalse : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l82_c8_429c_return_output : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l75_c8_70ec_cond : unsigned(0 downto 0);
 variable VAR_c_r_MUX_pong_h_l75_c8_70ec_iftrue : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l75_c8_70ec_iffalse : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l82_c8_429c_return_output : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l75_c8_70ec_cond : unsigned(0 downto 0);
 variable VAR_rect_contains_pong_h_l82_c11_7482_rect : rect_t;
 variable VAR_rect_contains_pong_h_l82_c11_7482_pos : vga_pos_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l82_c25_9fe9_return_output : rect_t;
 variable VAR_rect_contains_pong_h_l82_c11_7482_return_output : unsigned(0 downto 0);
 variable VAR_c_g_MUX_pong_h_l82_c8_429c_iftrue : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l82_c8_429c_iffalse : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l82_c8_429c_cond : unsigned(0 downto 0);
 variable VAR_c_b_MUX_pong_h_l82_c8_429c_iftrue : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l82_c8_429c_iffalse : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l82_c8_429c_cond : unsigned(0 downto 0);
 variable VAR_c_r_MUX_pong_h_l82_c8_429c_iftrue : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l82_c8_429c_iffalse : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l82_c8_429c_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_pixel_t_pixel_t_7d85_pong_h_l89_c10_0d65_return_output : pixel_t;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_c_r_pong_h_l63_c3_3d93 := resize(to_unsigned(0, 1), 8);
     VAR_c_r_MUX_pong_h_l82_c8_429c_iffalse := VAR_c_r_pong_h_l63_c3_3d93;
     VAR_c_r_MUX_pong_h_l68_c3_678b_iftrue := to_unsigned(255, 8);
     VAR_c_b_MUX_pong_h_l82_c8_429c_iftrue := to_unsigned(255, 8);
     VAR_c_r_MUX_pong_h_l75_c8_70ec_iftrue := to_unsigned(255, 8);
     VAR_c_b_MUX_pong_h_l75_c8_70ec_iftrue := to_unsigned(255, 8);
     VAR_c_b_pong_h_l65_c3_1f75 := resize(to_unsigned(0, 1), 8);
     VAR_c_b_MUX_pong_h_l82_c8_429c_iffalse := VAR_c_b_pong_h_l65_c3_1f75;
     VAR_c_r_MUX_pong_h_l82_c8_429c_iftrue := to_unsigned(255, 8);
     VAR_c_b_MUX_pong_h_l68_c3_678b_iftrue := to_unsigned(255, 8);
     VAR_c_g_MUX_pong_h_l68_c3_678b_iftrue := to_unsigned(255, 8);
     VAR_c_g_MUX_pong_h_l75_c8_70ec_iftrue := to_unsigned(255, 8);
     VAR_c_a_pong_h_l62_c3_e6b5 := resize(to_unsigned(0, 1), 8);
     VAR_c_g_MUX_pong_h_l82_c8_429c_iftrue := to_unsigned(255, 8);
     VAR_c_g_pong_h_l64_c3_ba27 := resize(to_unsigned(0, 1), 8);
     VAR_c_g_MUX_pong_h_l82_c8_429c_iffalse := VAR_c_g_pong_h_l64_c3_ba27;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_pos := pos;
     VAR_state := state;

     -- Submodule level 0
     VAR_rect_contains_pong_h_l68_c6_d89e_pos := VAR_pos;
     VAR_rect_contains_pong_h_l75_c11_4e64_pos := VAR_pos;
     VAR_rect_contains_pong_h_l82_c11_7482_pos := VAR_pos;
     -- CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d[pong_h_l82_c25_9fe9] LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l82_c25_9fe9_return_output := VAR_state.ball.rect;

     -- CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d[pong_h_l75_c25_27d1] LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l75_c25_27d1_return_output := VAR_state.rpaddle.rect;

     -- CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d[pong_h_l68_c20_28bd] LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l68_c20_28bd_return_output := VAR_state.lpaddle.rect;

     -- Submodule level 1
     VAR_rect_contains_pong_h_l82_c11_7482_rect := VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l82_c25_9fe9_return_output;
     VAR_rect_contains_pong_h_l68_c6_d89e_rect := VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l68_c20_28bd_return_output;
     VAR_rect_contains_pong_h_l75_c11_4e64_rect := VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l75_c25_27d1_return_output;
     -- rect_contains[pong_h_l75_c11_4e64] LATENCY=0
     -- Inputs
     rect_contains_pong_h_l75_c11_4e64_rect <= VAR_rect_contains_pong_h_l75_c11_4e64_rect;
     rect_contains_pong_h_l75_c11_4e64_pos <= VAR_rect_contains_pong_h_l75_c11_4e64_pos;
     -- Outputs
     VAR_rect_contains_pong_h_l75_c11_4e64_return_output := rect_contains_pong_h_l75_c11_4e64_return_output;

     -- rect_contains[pong_h_l82_c11_7482] LATENCY=0
     -- Inputs
     rect_contains_pong_h_l82_c11_7482_rect <= VAR_rect_contains_pong_h_l82_c11_7482_rect;
     rect_contains_pong_h_l82_c11_7482_pos <= VAR_rect_contains_pong_h_l82_c11_7482_pos;
     -- Outputs
     VAR_rect_contains_pong_h_l82_c11_7482_return_output := rect_contains_pong_h_l82_c11_7482_return_output;

     -- rect_contains[pong_h_l68_c6_d89e] LATENCY=0
     -- Inputs
     rect_contains_pong_h_l68_c6_d89e_rect <= VAR_rect_contains_pong_h_l68_c6_d89e_rect;
     rect_contains_pong_h_l68_c6_d89e_pos <= VAR_rect_contains_pong_h_l68_c6_d89e_pos;
     -- Outputs
     VAR_rect_contains_pong_h_l68_c6_d89e_return_output := rect_contains_pong_h_l68_c6_d89e_return_output;

     -- Submodule level 2
     VAR_c_b_MUX_pong_h_l68_c3_678b_cond := VAR_rect_contains_pong_h_l68_c6_d89e_return_output;
     VAR_c_g_MUX_pong_h_l68_c3_678b_cond := VAR_rect_contains_pong_h_l68_c6_d89e_return_output;
     VAR_c_r_MUX_pong_h_l68_c3_678b_cond := VAR_rect_contains_pong_h_l68_c6_d89e_return_output;
     VAR_c_b_MUX_pong_h_l75_c8_70ec_cond := VAR_rect_contains_pong_h_l75_c11_4e64_return_output;
     VAR_c_g_MUX_pong_h_l75_c8_70ec_cond := VAR_rect_contains_pong_h_l75_c11_4e64_return_output;
     VAR_c_r_MUX_pong_h_l75_c8_70ec_cond := VAR_rect_contains_pong_h_l75_c11_4e64_return_output;
     VAR_c_b_MUX_pong_h_l82_c8_429c_cond := VAR_rect_contains_pong_h_l82_c11_7482_return_output;
     VAR_c_g_MUX_pong_h_l82_c8_429c_cond := VAR_rect_contains_pong_h_l82_c11_7482_return_output;
     VAR_c_r_MUX_pong_h_l82_c8_429c_cond := VAR_rect_contains_pong_h_l82_c11_7482_return_output;
     -- c_r_MUX[pong_h_l82_c8_429c] LATENCY=0
     -- Inputs
     c_r_MUX_pong_h_l82_c8_429c_cond <= VAR_c_r_MUX_pong_h_l82_c8_429c_cond;
     c_r_MUX_pong_h_l82_c8_429c_iftrue <= VAR_c_r_MUX_pong_h_l82_c8_429c_iftrue;
     c_r_MUX_pong_h_l82_c8_429c_iffalse <= VAR_c_r_MUX_pong_h_l82_c8_429c_iffalse;
     -- Outputs
     VAR_c_r_MUX_pong_h_l82_c8_429c_return_output := c_r_MUX_pong_h_l82_c8_429c_return_output;

     -- c_b_MUX[pong_h_l82_c8_429c] LATENCY=0
     -- Inputs
     c_b_MUX_pong_h_l82_c8_429c_cond <= VAR_c_b_MUX_pong_h_l82_c8_429c_cond;
     c_b_MUX_pong_h_l82_c8_429c_iftrue <= VAR_c_b_MUX_pong_h_l82_c8_429c_iftrue;
     c_b_MUX_pong_h_l82_c8_429c_iffalse <= VAR_c_b_MUX_pong_h_l82_c8_429c_iffalse;
     -- Outputs
     VAR_c_b_MUX_pong_h_l82_c8_429c_return_output := c_b_MUX_pong_h_l82_c8_429c_return_output;

     -- c_g_MUX[pong_h_l82_c8_429c] LATENCY=0
     -- Inputs
     c_g_MUX_pong_h_l82_c8_429c_cond <= VAR_c_g_MUX_pong_h_l82_c8_429c_cond;
     c_g_MUX_pong_h_l82_c8_429c_iftrue <= VAR_c_g_MUX_pong_h_l82_c8_429c_iftrue;
     c_g_MUX_pong_h_l82_c8_429c_iffalse <= VAR_c_g_MUX_pong_h_l82_c8_429c_iffalse;
     -- Outputs
     VAR_c_g_MUX_pong_h_l82_c8_429c_return_output := c_g_MUX_pong_h_l82_c8_429c_return_output;

     -- Submodule level 3
     VAR_c_b_MUX_pong_h_l75_c8_70ec_iffalse := VAR_c_b_MUX_pong_h_l82_c8_429c_return_output;
     VAR_c_g_MUX_pong_h_l75_c8_70ec_iffalse := VAR_c_g_MUX_pong_h_l82_c8_429c_return_output;
     VAR_c_r_MUX_pong_h_l75_c8_70ec_iffalse := VAR_c_r_MUX_pong_h_l82_c8_429c_return_output;
     -- c_b_MUX[pong_h_l75_c8_70ec] LATENCY=0
     -- Inputs
     c_b_MUX_pong_h_l75_c8_70ec_cond <= VAR_c_b_MUX_pong_h_l75_c8_70ec_cond;
     c_b_MUX_pong_h_l75_c8_70ec_iftrue <= VAR_c_b_MUX_pong_h_l75_c8_70ec_iftrue;
     c_b_MUX_pong_h_l75_c8_70ec_iffalse <= VAR_c_b_MUX_pong_h_l75_c8_70ec_iffalse;
     -- Outputs
     VAR_c_b_MUX_pong_h_l75_c8_70ec_return_output := c_b_MUX_pong_h_l75_c8_70ec_return_output;

     -- c_r_MUX[pong_h_l75_c8_70ec] LATENCY=0
     -- Inputs
     c_r_MUX_pong_h_l75_c8_70ec_cond <= VAR_c_r_MUX_pong_h_l75_c8_70ec_cond;
     c_r_MUX_pong_h_l75_c8_70ec_iftrue <= VAR_c_r_MUX_pong_h_l75_c8_70ec_iftrue;
     c_r_MUX_pong_h_l75_c8_70ec_iffalse <= VAR_c_r_MUX_pong_h_l75_c8_70ec_iffalse;
     -- Outputs
     VAR_c_r_MUX_pong_h_l75_c8_70ec_return_output := c_r_MUX_pong_h_l75_c8_70ec_return_output;

     -- c_g_MUX[pong_h_l75_c8_70ec] LATENCY=0
     -- Inputs
     c_g_MUX_pong_h_l75_c8_70ec_cond <= VAR_c_g_MUX_pong_h_l75_c8_70ec_cond;
     c_g_MUX_pong_h_l75_c8_70ec_iftrue <= VAR_c_g_MUX_pong_h_l75_c8_70ec_iftrue;
     c_g_MUX_pong_h_l75_c8_70ec_iffalse <= VAR_c_g_MUX_pong_h_l75_c8_70ec_iffalse;
     -- Outputs
     VAR_c_g_MUX_pong_h_l75_c8_70ec_return_output := c_g_MUX_pong_h_l75_c8_70ec_return_output;

     -- Submodule level 4
     VAR_c_b_MUX_pong_h_l68_c3_678b_iffalse := VAR_c_b_MUX_pong_h_l75_c8_70ec_return_output;
     VAR_c_g_MUX_pong_h_l68_c3_678b_iffalse := VAR_c_g_MUX_pong_h_l75_c8_70ec_return_output;
     VAR_c_r_MUX_pong_h_l68_c3_678b_iffalse := VAR_c_r_MUX_pong_h_l75_c8_70ec_return_output;
     -- c_b_MUX[pong_h_l68_c3_678b] LATENCY=0
     -- Inputs
     c_b_MUX_pong_h_l68_c3_678b_cond <= VAR_c_b_MUX_pong_h_l68_c3_678b_cond;
     c_b_MUX_pong_h_l68_c3_678b_iftrue <= VAR_c_b_MUX_pong_h_l68_c3_678b_iftrue;
     c_b_MUX_pong_h_l68_c3_678b_iffalse <= VAR_c_b_MUX_pong_h_l68_c3_678b_iffalse;
     -- Outputs
     VAR_c_b_MUX_pong_h_l68_c3_678b_return_output := c_b_MUX_pong_h_l68_c3_678b_return_output;

     -- c_g_MUX[pong_h_l68_c3_678b] LATENCY=0
     -- Inputs
     c_g_MUX_pong_h_l68_c3_678b_cond <= VAR_c_g_MUX_pong_h_l68_c3_678b_cond;
     c_g_MUX_pong_h_l68_c3_678b_iftrue <= VAR_c_g_MUX_pong_h_l68_c3_678b_iftrue;
     c_g_MUX_pong_h_l68_c3_678b_iffalse <= VAR_c_g_MUX_pong_h_l68_c3_678b_iffalse;
     -- Outputs
     VAR_c_g_MUX_pong_h_l68_c3_678b_return_output := c_g_MUX_pong_h_l68_c3_678b_return_output;

     -- c_r_MUX[pong_h_l68_c3_678b] LATENCY=0
     -- Inputs
     c_r_MUX_pong_h_l68_c3_678b_cond <= VAR_c_r_MUX_pong_h_l68_c3_678b_cond;
     c_r_MUX_pong_h_l68_c3_678b_iftrue <= VAR_c_r_MUX_pong_h_l68_c3_678b_iftrue;
     c_r_MUX_pong_h_l68_c3_678b_iffalse <= VAR_c_r_MUX_pong_h_l68_c3_678b_iffalse;
     -- Outputs
     VAR_c_r_MUX_pong_h_l68_c3_678b_return_output := c_r_MUX_pong_h_l68_c3_678b_return_output;

     -- Submodule level 5
     -- CONST_REF_RD_pixel_t_pixel_t_7d85[pong_h_l89_c10_0d65] LATENCY=0
     VAR_CONST_REF_RD_pixel_t_pixel_t_7d85_pong_h_l89_c10_0d65_return_output := CONST_REF_RD_pixel_t_pixel_t_7d85(
     VAR_c_a_pong_h_l62_c3_e6b5,
     VAR_c_g_MUX_pong_h_l68_c3_678b_return_output,
     VAR_c_b_MUX_pong_h_l68_c3_678b_return_output,
     VAR_c_r_MUX_pong_h_l68_c3_678b_return_output);

     -- Submodule level 6
     VAR_return_output := VAR_CONST_REF_RD_pixel_t_pixel_t_7d85_pong_h_l89_c10_0d65_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
