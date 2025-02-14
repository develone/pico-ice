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
-- rect_contains[pong_h_l68_c6_2b53]
signal rect_contains_pong_h_l68_c6_2b53_rect : rect_t;
signal rect_contains_pong_h_l68_c6_2b53_pos : vga_pos_t;
signal rect_contains_pong_h_l68_c6_2b53_return_output : unsigned(0 downto 0);

-- c_r_MUX[pong_h_l68_c3_9a8c]
signal c_r_MUX_pong_h_l68_c3_9a8c_cond : unsigned(0 downto 0);
signal c_r_MUX_pong_h_l68_c3_9a8c_iftrue : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l68_c3_9a8c_iffalse : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l68_c3_9a8c_return_output : unsigned(7 downto 0);

-- c_b_MUX[pong_h_l68_c3_9a8c]
signal c_b_MUX_pong_h_l68_c3_9a8c_cond : unsigned(0 downto 0);
signal c_b_MUX_pong_h_l68_c3_9a8c_iftrue : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l68_c3_9a8c_iffalse : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l68_c3_9a8c_return_output : unsigned(7 downto 0);

-- c_g_MUX[pong_h_l68_c3_9a8c]
signal c_g_MUX_pong_h_l68_c3_9a8c_cond : unsigned(0 downto 0);
signal c_g_MUX_pong_h_l68_c3_9a8c_iftrue : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l68_c3_9a8c_iffalse : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l68_c3_9a8c_return_output : unsigned(7 downto 0);

-- rect_contains[pong_h_l75_c11_4cc1]
signal rect_contains_pong_h_l75_c11_4cc1_rect : rect_t;
signal rect_contains_pong_h_l75_c11_4cc1_pos : vga_pos_t;
signal rect_contains_pong_h_l75_c11_4cc1_return_output : unsigned(0 downto 0);

-- c_r_MUX[pong_h_l75_c8_e86c]
signal c_r_MUX_pong_h_l75_c8_e86c_cond : unsigned(0 downto 0);
signal c_r_MUX_pong_h_l75_c8_e86c_iftrue : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l75_c8_e86c_iffalse : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l75_c8_e86c_return_output : unsigned(7 downto 0);

-- c_b_MUX[pong_h_l75_c8_e86c]
signal c_b_MUX_pong_h_l75_c8_e86c_cond : unsigned(0 downto 0);
signal c_b_MUX_pong_h_l75_c8_e86c_iftrue : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l75_c8_e86c_iffalse : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l75_c8_e86c_return_output : unsigned(7 downto 0);

-- c_g_MUX[pong_h_l75_c8_e86c]
signal c_g_MUX_pong_h_l75_c8_e86c_cond : unsigned(0 downto 0);
signal c_g_MUX_pong_h_l75_c8_e86c_iftrue : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l75_c8_e86c_iffalse : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l75_c8_e86c_return_output : unsigned(7 downto 0);

-- rect_contains[pong_h_l82_c11_fdfa]
signal rect_contains_pong_h_l82_c11_fdfa_rect : rect_t;
signal rect_contains_pong_h_l82_c11_fdfa_pos : vga_pos_t;
signal rect_contains_pong_h_l82_c11_fdfa_return_output : unsigned(0 downto 0);

-- c_r_MUX[pong_h_l82_c8_5001]
signal c_r_MUX_pong_h_l82_c8_5001_cond : unsigned(0 downto 0);
signal c_r_MUX_pong_h_l82_c8_5001_iftrue : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l82_c8_5001_iffalse : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l82_c8_5001_return_output : unsigned(7 downto 0);

-- c_b_MUX[pong_h_l82_c8_5001]
signal c_b_MUX_pong_h_l82_c8_5001_cond : unsigned(0 downto 0);
signal c_b_MUX_pong_h_l82_c8_5001_iftrue : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l82_c8_5001_iffalse : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l82_c8_5001_return_output : unsigned(7 downto 0);

-- c_g_MUX[pong_h_l82_c8_5001]
signal c_g_MUX_pong_h_l82_c8_5001_cond : unsigned(0 downto 0);
signal c_g_MUX_pong_h_l82_c8_5001_iftrue : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l82_c8_5001_iffalse : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l82_c8_5001_return_output : unsigned(7 downto 0);

function CONST_REF_RD_pixel_t_pixel_t_c36d( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned;
 ref_toks_3 : unsigned) return pixel_t is
 
  variable base : pixel_t; 
  variable return_output : pixel_t;
begin
      base.a := ref_toks_0;
      base.r := ref_toks_1;
      base.b := ref_toks_2;
      base.g := ref_toks_3;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- rect_contains_pong_h_l68_c6_2b53 : 0 clocks latency
rect_contains_pong_h_l68_c6_2b53 : entity work.rect_contains_0CLK_09e6dfce port map (
rect_contains_pong_h_l68_c6_2b53_rect,
rect_contains_pong_h_l68_c6_2b53_pos,
rect_contains_pong_h_l68_c6_2b53_return_output);

-- c_r_MUX_pong_h_l68_c3_9a8c : 0 clocks latency
c_r_MUX_pong_h_l68_c3_9a8c : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_r_MUX_pong_h_l68_c3_9a8c_cond,
c_r_MUX_pong_h_l68_c3_9a8c_iftrue,
c_r_MUX_pong_h_l68_c3_9a8c_iffalse,
c_r_MUX_pong_h_l68_c3_9a8c_return_output);

-- c_b_MUX_pong_h_l68_c3_9a8c : 0 clocks latency
c_b_MUX_pong_h_l68_c3_9a8c : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_b_MUX_pong_h_l68_c3_9a8c_cond,
c_b_MUX_pong_h_l68_c3_9a8c_iftrue,
c_b_MUX_pong_h_l68_c3_9a8c_iffalse,
c_b_MUX_pong_h_l68_c3_9a8c_return_output);

-- c_g_MUX_pong_h_l68_c3_9a8c : 0 clocks latency
c_g_MUX_pong_h_l68_c3_9a8c : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_g_MUX_pong_h_l68_c3_9a8c_cond,
c_g_MUX_pong_h_l68_c3_9a8c_iftrue,
c_g_MUX_pong_h_l68_c3_9a8c_iffalse,
c_g_MUX_pong_h_l68_c3_9a8c_return_output);

-- rect_contains_pong_h_l75_c11_4cc1 : 0 clocks latency
rect_contains_pong_h_l75_c11_4cc1 : entity work.rect_contains_0CLK_09e6dfce port map (
rect_contains_pong_h_l75_c11_4cc1_rect,
rect_contains_pong_h_l75_c11_4cc1_pos,
rect_contains_pong_h_l75_c11_4cc1_return_output);

-- c_r_MUX_pong_h_l75_c8_e86c : 0 clocks latency
c_r_MUX_pong_h_l75_c8_e86c : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_r_MUX_pong_h_l75_c8_e86c_cond,
c_r_MUX_pong_h_l75_c8_e86c_iftrue,
c_r_MUX_pong_h_l75_c8_e86c_iffalse,
c_r_MUX_pong_h_l75_c8_e86c_return_output);

-- c_b_MUX_pong_h_l75_c8_e86c : 0 clocks latency
c_b_MUX_pong_h_l75_c8_e86c : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_b_MUX_pong_h_l75_c8_e86c_cond,
c_b_MUX_pong_h_l75_c8_e86c_iftrue,
c_b_MUX_pong_h_l75_c8_e86c_iffalse,
c_b_MUX_pong_h_l75_c8_e86c_return_output);

-- c_g_MUX_pong_h_l75_c8_e86c : 0 clocks latency
c_g_MUX_pong_h_l75_c8_e86c : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_g_MUX_pong_h_l75_c8_e86c_cond,
c_g_MUX_pong_h_l75_c8_e86c_iftrue,
c_g_MUX_pong_h_l75_c8_e86c_iffalse,
c_g_MUX_pong_h_l75_c8_e86c_return_output);

-- rect_contains_pong_h_l82_c11_fdfa : 0 clocks latency
rect_contains_pong_h_l82_c11_fdfa : entity work.rect_contains_0CLK_09e6dfce port map (
rect_contains_pong_h_l82_c11_fdfa_rect,
rect_contains_pong_h_l82_c11_fdfa_pos,
rect_contains_pong_h_l82_c11_fdfa_return_output);

-- c_r_MUX_pong_h_l82_c8_5001 : 0 clocks latency
c_r_MUX_pong_h_l82_c8_5001 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_r_MUX_pong_h_l82_c8_5001_cond,
c_r_MUX_pong_h_l82_c8_5001_iftrue,
c_r_MUX_pong_h_l82_c8_5001_iffalse,
c_r_MUX_pong_h_l82_c8_5001_return_output);

-- c_b_MUX_pong_h_l82_c8_5001 : 0 clocks latency
c_b_MUX_pong_h_l82_c8_5001 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_b_MUX_pong_h_l82_c8_5001_cond,
c_b_MUX_pong_h_l82_c8_5001_iftrue,
c_b_MUX_pong_h_l82_c8_5001_iffalse,
c_b_MUX_pong_h_l82_c8_5001_return_output);

-- c_g_MUX_pong_h_l82_c8_5001 : 0 clocks latency
c_g_MUX_pong_h_l82_c8_5001 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_g_MUX_pong_h_l82_c8_5001_cond,
c_g_MUX_pong_h_l82_c8_5001_iftrue,
c_g_MUX_pong_h_l82_c8_5001_iffalse,
c_g_MUX_pong_h_l82_c8_5001_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 pos,
 state,
 -- All submodule outputs
 rect_contains_pong_h_l68_c6_2b53_return_output,
 c_r_MUX_pong_h_l68_c3_9a8c_return_output,
 c_b_MUX_pong_h_l68_c3_9a8c_return_output,
 c_g_MUX_pong_h_l68_c3_9a8c_return_output,
 rect_contains_pong_h_l75_c11_4cc1_return_output,
 c_r_MUX_pong_h_l75_c8_e86c_return_output,
 c_b_MUX_pong_h_l75_c8_e86c_return_output,
 c_g_MUX_pong_h_l75_c8_e86c_return_output,
 rect_contains_pong_h_l82_c11_fdfa_return_output,
 c_r_MUX_pong_h_l82_c8_5001_return_output,
 c_b_MUX_pong_h_l82_c8_5001_return_output,
 c_g_MUX_pong_h_l82_c8_5001_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : pixel_t;
 variable VAR_pos : vga_pos_t;
 variable VAR_state : game_state_t;
 variable VAR_c : pixel_t;
 variable VAR_c_a_pong_h_l62_c3_95cf : unsigned(7 downto 0);
 variable VAR_c_r_pong_h_l63_c3_0c99 : unsigned(7 downto 0);
 variable VAR_c_g_pong_h_l64_c3_1659 : unsigned(7 downto 0);
 variable VAR_c_b_pong_h_l65_c3_3d1c : unsigned(7 downto 0);
 variable VAR_rect_contains_pong_h_l68_c6_2b53_rect : rect_t;
 variable VAR_rect_contains_pong_h_l68_c6_2b53_pos : vga_pos_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l68_c20_fb85_return_output : rect_t;
 variable VAR_rect_contains_pong_h_l68_c6_2b53_return_output : unsigned(0 downto 0);
 variable VAR_c_r_MUX_pong_h_l68_c3_9a8c_iftrue : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l68_c3_9a8c_iffalse : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l75_c8_e86c_return_output : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l68_c3_9a8c_return_output : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l68_c3_9a8c_cond : unsigned(0 downto 0);
 variable VAR_c_b_MUX_pong_h_l68_c3_9a8c_iftrue : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l68_c3_9a8c_iffalse : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l75_c8_e86c_return_output : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l68_c3_9a8c_return_output : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l68_c3_9a8c_cond : unsigned(0 downto 0);
 variable VAR_c_g_MUX_pong_h_l68_c3_9a8c_iftrue : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l68_c3_9a8c_iffalse : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l75_c8_e86c_return_output : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l68_c3_9a8c_return_output : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l68_c3_9a8c_cond : unsigned(0 downto 0);
 variable VAR_rect_contains_pong_h_l75_c11_4cc1_rect : rect_t;
 variable VAR_rect_contains_pong_h_l75_c11_4cc1_pos : vga_pos_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l75_c25_29b1_return_output : rect_t;
 variable VAR_rect_contains_pong_h_l75_c11_4cc1_return_output : unsigned(0 downto 0);
 variable VAR_c_r_MUX_pong_h_l75_c8_e86c_iftrue : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l75_c8_e86c_iffalse : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l82_c8_5001_return_output : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l75_c8_e86c_cond : unsigned(0 downto 0);
 variable VAR_c_b_MUX_pong_h_l75_c8_e86c_iftrue : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l75_c8_e86c_iffalse : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l82_c8_5001_return_output : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l75_c8_e86c_cond : unsigned(0 downto 0);
 variable VAR_c_g_MUX_pong_h_l75_c8_e86c_iftrue : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l75_c8_e86c_iffalse : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l82_c8_5001_return_output : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l75_c8_e86c_cond : unsigned(0 downto 0);
 variable VAR_rect_contains_pong_h_l82_c11_fdfa_rect : rect_t;
 variable VAR_rect_contains_pong_h_l82_c11_fdfa_pos : vga_pos_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l82_c25_4cd7_return_output : rect_t;
 variable VAR_rect_contains_pong_h_l82_c11_fdfa_return_output : unsigned(0 downto 0);
 variable VAR_c_r_MUX_pong_h_l82_c8_5001_iftrue : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l82_c8_5001_iffalse : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l82_c8_5001_cond : unsigned(0 downto 0);
 variable VAR_c_b_MUX_pong_h_l82_c8_5001_iftrue : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l82_c8_5001_iffalse : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l82_c8_5001_cond : unsigned(0 downto 0);
 variable VAR_c_g_MUX_pong_h_l82_c8_5001_iftrue : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l82_c8_5001_iffalse : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l82_c8_5001_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_pixel_t_pixel_t_c36d_pong_h_l89_c10_40ab_return_output : pixel_t;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_c_b_pong_h_l65_c3_3d1c := resize(to_unsigned(0, 1), 8);
     VAR_c_b_MUX_pong_h_l82_c8_5001_iffalse := VAR_c_b_pong_h_l65_c3_3d1c;
     VAR_c_g_MUX_pong_h_l75_c8_e86c_iftrue := to_unsigned(255, 8);
     VAR_c_b_MUX_pong_h_l75_c8_e86c_iftrue := to_unsigned(255, 8);
     VAR_c_g_pong_h_l64_c3_1659 := resize(to_unsigned(0, 1), 8);
     VAR_c_g_MUX_pong_h_l82_c8_5001_iffalse := VAR_c_g_pong_h_l64_c3_1659;
     VAR_c_g_MUX_pong_h_l68_c3_9a8c_iftrue := to_unsigned(255, 8);
     VAR_c_g_MUX_pong_h_l82_c8_5001_iftrue := to_unsigned(255, 8);
     VAR_c_r_pong_h_l63_c3_0c99 := resize(to_unsigned(0, 1), 8);
     VAR_c_r_MUX_pong_h_l82_c8_5001_iffalse := VAR_c_r_pong_h_l63_c3_0c99;
     VAR_c_b_MUX_pong_h_l68_c3_9a8c_iftrue := to_unsigned(255, 8);
     VAR_c_r_MUX_pong_h_l68_c3_9a8c_iftrue := to_unsigned(255, 8);
     VAR_c_a_pong_h_l62_c3_95cf := resize(to_unsigned(0, 1), 8);
     VAR_c_r_MUX_pong_h_l75_c8_e86c_iftrue := to_unsigned(255, 8);
     VAR_c_b_MUX_pong_h_l82_c8_5001_iftrue := to_unsigned(255, 8);
     VAR_c_r_MUX_pong_h_l82_c8_5001_iftrue := to_unsigned(255, 8);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_pos := pos;
     VAR_state := state;

     -- Submodule level 0
     VAR_rect_contains_pong_h_l68_c6_2b53_pos := VAR_pos;
     VAR_rect_contains_pong_h_l75_c11_4cc1_pos := VAR_pos;
     VAR_rect_contains_pong_h_l82_c11_fdfa_pos := VAR_pos;
     -- CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d[pong_h_l68_c20_fb85] LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l68_c20_fb85_return_output := VAR_state.lpaddle.rect;

     -- CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d[pong_h_l75_c25_29b1] LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l75_c25_29b1_return_output := VAR_state.rpaddle.rect;

     -- CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d[pong_h_l82_c25_4cd7] LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l82_c25_4cd7_return_output := VAR_state.ball.rect;

     -- Submodule level 1
     VAR_rect_contains_pong_h_l82_c11_fdfa_rect := VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l82_c25_4cd7_return_output;
     VAR_rect_contains_pong_h_l68_c6_2b53_rect := VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l68_c20_fb85_return_output;
     VAR_rect_contains_pong_h_l75_c11_4cc1_rect := VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l75_c25_29b1_return_output;
     -- rect_contains[pong_h_l68_c6_2b53] LATENCY=0
     -- Inputs
     rect_contains_pong_h_l68_c6_2b53_rect <= VAR_rect_contains_pong_h_l68_c6_2b53_rect;
     rect_contains_pong_h_l68_c6_2b53_pos <= VAR_rect_contains_pong_h_l68_c6_2b53_pos;
     -- Outputs
     VAR_rect_contains_pong_h_l68_c6_2b53_return_output := rect_contains_pong_h_l68_c6_2b53_return_output;

     -- rect_contains[pong_h_l82_c11_fdfa] LATENCY=0
     -- Inputs
     rect_contains_pong_h_l82_c11_fdfa_rect <= VAR_rect_contains_pong_h_l82_c11_fdfa_rect;
     rect_contains_pong_h_l82_c11_fdfa_pos <= VAR_rect_contains_pong_h_l82_c11_fdfa_pos;
     -- Outputs
     VAR_rect_contains_pong_h_l82_c11_fdfa_return_output := rect_contains_pong_h_l82_c11_fdfa_return_output;

     -- rect_contains[pong_h_l75_c11_4cc1] LATENCY=0
     -- Inputs
     rect_contains_pong_h_l75_c11_4cc1_rect <= VAR_rect_contains_pong_h_l75_c11_4cc1_rect;
     rect_contains_pong_h_l75_c11_4cc1_pos <= VAR_rect_contains_pong_h_l75_c11_4cc1_pos;
     -- Outputs
     VAR_rect_contains_pong_h_l75_c11_4cc1_return_output := rect_contains_pong_h_l75_c11_4cc1_return_output;

     -- Submodule level 2
     VAR_c_b_MUX_pong_h_l68_c3_9a8c_cond := VAR_rect_contains_pong_h_l68_c6_2b53_return_output;
     VAR_c_g_MUX_pong_h_l68_c3_9a8c_cond := VAR_rect_contains_pong_h_l68_c6_2b53_return_output;
     VAR_c_r_MUX_pong_h_l68_c3_9a8c_cond := VAR_rect_contains_pong_h_l68_c6_2b53_return_output;
     VAR_c_b_MUX_pong_h_l75_c8_e86c_cond := VAR_rect_contains_pong_h_l75_c11_4cc1_return_output;
     VAR_c_g_MUX_pong_h_l75_c8_e86c_cond := VAR_rect_contains_pong_h_l75_c11_4cc1_return_output;
     VAR_c_r_MUX_pong_h_l75_c8_e86c_cond := VAR_rect_contains_pong_h_l75_c11_4cc1_return_output;
     VAR_c_b_MUX_pong_h_l82_c8_5001_cond := VAR_rect_contains_pong_h_l82_c11_fdfa_return_output;
     VAR_c_g_MUX_pong_h_l82_c8_5001_cond := VAR_rect_contains_pong_h_l82_c11_fdfa_return_output;
     VAR_c_r_MUX_pong_h_l82_c8_5001_cond := VAR_rect_contains_pong_h_l82_c11_fdfa_return_output;
     -- c_r_MUX[pong_h_l82_c8_5001] LATENCY=0
     -- Inputs
     c_r_MUX_pong_h_l82_c8_5001_cond <= VAR_c_r_MUX_pong_h_l82_c8_5001_cond;
     c_r_MUX_pong_h_l82_c8_5001_iftrue <= VAR_c_r_MUX_pong_h_l82_c8_5001_iftrue;
     c_r_MUX_pong_h_l82_c8_5001_iffalse <= VAR_c_r_MUX_pong_h_l82_c8_5001_iffalse;
     -- Outputs
     VAR_c_r_MUX_pong_h_l82_c8_5001_return_output := c_r_MUX_pong_h_l82_c8_5001_return_output;

     -- c_g_MUX[pong_h_l82_c8_5001] LATENCY=0
     -- Inputs
     c_g_MUX_pong_h_l82_c8_5001_cond <= VAR_c_g_MUX_pong_h_l82_c8_5001_cond;
     c_g_MUX_pong_h_l82_c8_5001_iftrue <= VAR_c_g_MUX_pong_h_l82_c8_5001_iftrue;
     c_g_MUX_pong_h_l82_c8_5001_iffalse <= VAR_c_g_MUX_pong_h_l82_c8_5001_iffalse;
     -- Outputs
     VAR_c_g_MUX_pong_h_l82_c8_5001_return_output := c_g_MUX_pong_h_l82_c8_5001_return_output;

     -- c_b_MUX[pong_h_l82_c8_5001] LATENCY=0
     -- Inputs
     c_b_MUX_pong_h_l82_c8_5001_cond <= VAR_c_b_MUX_pong_h_l82_c8_5001_cond;
     c_b_MUX_pong_h_l82_c8_5001_iftrue <= VAR_c_b_MUX_pong_h_l82_c8_5001_iftrue;
     c_b_MUX_pong_h_l82_c8_5001_iffalse <= VAR_c_b_MUX_pong_h_l82_c8_5001_iffalse;
     -- Outputs
     VAR_c_b_MUX_pong_h_l82_c8_5001_return_output := c_b_MUX_pong_h_l82_c8_5001_return_output;

     -- Submodule level 3
     VAR_c_b_MUX_pong_h_l75_c8_e86c_iffalse := VAR_c_b_MUX_pong_h_l82_c8_5001_return_output;
     VAR_c_g_MUX_pong_h_l75_c8_e86c_iffalse := VAR_c_g_MUX_pong_h_l82_c8_5001_return_output;
     VAR_c_r_MUX_pong_h_l75_c8_e86c_iffalse := VAR_c_r_MUX_pong_h_l82_c8_5001_return_output;
     -- c_b_MUX[pong_h_l75_c8_e86c] LATENCY=0
     -- Inputs
     c_b_MUX_pong_h_l75_c8_e86c_cond <= VAR_c_b_MUX_pong_h_l75_c8_e86c_cond;
     c_b_MUX_pong_h_l75_c8_e86c_iftrue <= VAR_c_b_MUX_pong_h_l75_c8_e86c_iftrue;
     c_b_MUX_pong_h_l75_c8_e86c_iffalse <= VAR_c_b_MUX_pong_h_l75_c8_e86c_iffalse;
     -- Outputs
     VAR_c_b_MUX_pong_h_l75_c8_e86c_return_output := c_b_MUX_pong_h_l75_c8_e86c_return_output;

     -- c_r_MUX[pong_h_l75_c8_e86c] LATENCY=0
     -- Inputs
     c_r_MUX_pong_h_l75_c8_e86c_cond <= VAR_c_r_MUX_pong_h_l75_c8_e86c_cond;
     c_r_MUX_pong_h_l75_c8_e86c_iftrue <= VAR_c_r_MUX_pong_h_l75_c8_e86c_iftrue;
     c_r_MUX_pong_h_l75_c8_e86c_iffalse <= VAR_c_r_MUX_pong_h_l75_c8_e86c_iffalse;
     -- Outputs
     VAR_c_r_MUX_pong_h_l75_c8_e86c_return_output := c_r_MUX_pong_h_l75_c8_e86c_return_output;

     -- c_g_MUX[pong_h_l75_c8_e86c] LATENCY=0
     -- Inputs
     c_g_MUX_pong_h_l75_c8_e86c_cond <= VAR_c_g_MUX_pong_h_l75_c8_e86c_cond;
     c_g_MUX_pong_h_l75_c8_e86c_iftrue <= VAR_c_g_MUX_pong_h_l75_c8_e86c_iftrue;
     c_g_MUX_pong_h_l75_c8_e86c_iffalse <= VAR_c_g_MUX_pong_h_l75_c8_e86c_iffalse;
     -- Outputs
     VAR_c_g_MUX_pong_h_l75_c8_e86c_return_output := c_g_MUX_pong_h_l75_c8_e86c_return_output;

     -- Submodule level 4
     VAR_c_b_MUX_pong_h_l68_c3_9a8c_iffalse := VAR_c_b_MUX_pong_h_l75_c8_e86c_return_output;
     VAR_c_g_MUX_pong_h_l68_c3_9a8c_iffalse := VAR_c_g_MUX_pong_h_l75_c8_e86c_return_output;
     VAR_c_r_MUX_pong_h_l68_c3_9a8c_iffalse := VAR_c_r_MUX_pong_h_l75_c8_e86c_return_output;
     -- c_r_MUX[pong_h_l68_c3_9a8c] LATENCY=0
     -- Inputs
     c_r_MUX_pong_h_l68_c3_9a8c_cond <= VAR_c_r_MUX_pong_h_l68_c3_9a8c_cond;
     c_r_MUX_pong_h_l68_c3_9a8c_iftrue <= VAR_c_r_MUX_pong_h_l68_c3_9a8c_iftrue;
     c_r_MUX_pong_h_l68_c3_9a8c_iffalse <= VAR_c_r_MUX_pong_h_l68_c3_9a8c_iffalse;
     -- Outputs
     VAR_c_r_MUX_pong_h_l68_c3_9a8c_return_output := c_r_MUX_pong_h_l68_c3_9a8c_return_output;

     -- c_g_MUX[pong_h_l68_c3_9a8c] LATENCY=0
     -- Inputs
     c_g_MUX_pong_h_l68_c3_9a8c_cond <= VAR_c_g_MUX_pong_h_l68_c3_9a8c_cond;
     c_g_MUX_pong_h_l68_c3_9a8c_iftrue <= VAR_c_g_MUX_pong_h_l68_c3_9a8c_iftrue;
     c_g_MUX_pong_h_l68_c3_9a8c_iffalse <= VAR_c_g_MUX_pong_h_l68_c3_9a8c_iffalse;
     -- Outputs
     VAR_c_g_MUX_pong_h_l68_c3_9a8c_return_output := c_g_MUX_pong_h_l68_c3_9a8c_return_output;

     -- c_b_MUX[pong_h_l68_c3_9a8c] LATENCY=0
     -- Inputs
     c_b_MUX_pong_h_l68_c3_9a8c_cond <= VAR_c_b_MUX_pong_h_l68_c3_9a8c_cond;
     c_b_MUX_pong_h_l68_c3_9a8c_iftrue <= VAR_c_b_MUX_pong_h_l68_c3_9a8c_iftrue;
     c_b_MUX_pong_h_l68_c3_9a8c_iffalse <= VAR_c_b_MUX_pong_h_l68_c3_9a8c_iffalse;
     -- Outputs
     VAR_c_b_MUX_pong_h_l68_c3_9a8c_return_output := c_b_MUX_pong_h_l68_c3_9a8c_return_output;

     -- Submodule level 5
     -- CONST_REF_RD_pixel_t_pixel_t_c36d[pong_h_l89_c10_40ab] LATENCY=0
     VAR_CONST_REF_RD_pixel_t_pixel_t_c36d_pong_h_l89_c10_40ab_return_output := CONST_REF_RD_pixel_t_pixel_t_c36d(
     VAR_c_a_pong_h_l62_c3_95cf,
     VAR_c_r_MUX_pong_h_l68_c3_9a8c_return_output,
     VAR_c_b_MUX_pong_h_l68_c3_9a8c_return_output,
     VAR_c_g_MUX_pong_h_l68_c3_9a8c_return_output);

     -- Submodule level 6
     VAR_return_output := VAR_CONST_REF_RD_pixel_t_pixel_t_c36d_pong_h_l89_c10_40ab_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
