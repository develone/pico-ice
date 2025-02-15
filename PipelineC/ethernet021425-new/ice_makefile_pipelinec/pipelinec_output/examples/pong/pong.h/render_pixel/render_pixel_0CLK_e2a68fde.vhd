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
-- rect_contains[pong_h_l68_c6_2a22]
signal rect_contains_pong_h_l68_c6_2a22_rect : rect_t;
signal rect_contains_pong_h_l68_c6_2a22_pos : vga_pos_t;
signal rect_contains_pong_h_l68_c6_2a22_return_output : unsigned(0 downto 0);

-- c_r_MUX[pong_h_l68_c3_a555]
signal c_r_MUX_pong_h_l68_c3_a555_cond : unsigned(0 downto 0);
signal c_r_MUX_pong_h_l68_c3_a555_iftrue : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l68_c3_a555_iffalse : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l68_c3_a555_return_output : unsigned(7 downto 0);

-- c_g_MUX[pong_h_l68_c3_a555]
signal c_g_MUX_pong_h_l68_c3_a555_cond : unsigned(0 downto 0);
signal c_g_MUX_pong_h_l68_c3_a555_iftrue : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l68_c3_a555_iffalse : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l68_c3_a555_return_output : unsigned(7 downto 0);

-- c_b_MUX[pong_h_l68_c3_a555]
signal c_b_MUX_pong_h_l68_c3_a555_cond : unsigned(0 downto 0);
signal c_b_MUX_pong_h_l68_c3_a555_iftrue : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l68_c3_a555_iffalse : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l68_c3_a555_return_output : unsigned(7 downto 0);

-- rect_contains[pong_h_l75_c11_dda7]
signal rect_contains_pong_h_l75_c11_dda7_rect : rect_t;
signal rect_contains_pong_h_l75_c11_dda7_pos : vga_pos_t;
signal rect_contains_pong_h_l75_c11_dda7_return_output : unsigned(0 downto 0);

-- c_r_MUX[pong_h_l75_c8_ef65]
signal c_r_MUX_pong_h_l75_c8_ef65_cond : unsigned(0 downto 0);
signal c_r_MUX_pong_h_l75_c8_ef65_iftrue : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l75_c8_ef65_iffalse : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l75_c8_ef65_return_output : unsigned(7 downto 0);

-- c_g_MUX[pong_h_l75_c8_ef65]
signal c_g_MUX_pong_h_l75_c8_ef65_cond : unsigned(0 downto 0);
signal c_g_MUX_pong_h_l75_c8_ef65_iftrue : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l75_c8_ef65_iffalse : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l75_c8_ef65_return_output : unsigned(7 downto 0);

-- c_b_MUX[pong_h_l75_c8_ef65]
signal c_b_MUX_pong_h_l75_c8_ef65_cond : unsigned(0 downto 0);
signal c_b_MUX_pong_h_l75_c8_ef65_iftrue : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l75_c8_ef65_iffalse : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l75_c8_ef65_return_output : unsigned(7 downto 0);

-- rect_contains[pong_h_l82_c11_ee0c]
signal rect_contains_pong_h_l82_c11_ee0c_rect : rect_t;
signal rect_contains_pong_h_l82_c11_ee0c_pos : vga_pos_t;
signal rect_contains_pong_h_l82_c11_ee0c_return_output : unsigned(0 downto 0);

-- c_r_MUX[pong_h_l82_c8_5537]
signal c_r_MUX_pong_h_l82_c8_5537_cond : unsigned(0 downto 0);
signal c_r_MUX_pong_h_l82_c8_5537_iftrue : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l82_c8_5537_iffalse : unsigned(7 downto 0);
signal c_r_MUX_pong_h_l82_c8_5537_return_output : unsigned(7 downto 0);

-- c_g_MUX[pong_h_l82_c8_5537]
signal c_g_MUX_pong_h_l82_c8_5537_cond : unsigned(0 downto 0);
signal c_g_MUX_pong_h_l82_c8_5537_iftrue : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l82_c8_5537_iffalse : unsigned(7 downto 0);
signal c_g_MUX_pong_h_l82_c8_5537_return_output : unsigned(7 downto 0);

-- c_b_MUX[pong_h_l82_c8_5537]
signal c_b_MUX_pong_h_l82_c8_5537_cond : unsigned(0 downto 0);
signal c_b_MUX_pong_h_l82_c8_5537_iftrue : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l82_c8_5537_iffalse : unsigned(7 downto 0);
signal c_b_MUX_pong_h_l82_c8_5537_return_output : unsigned(7 downto 0);

function CONST_REF_RD_pixel_t_pixel_t_f6e2( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned;
 ref_toks_3 : unsigned) return pixel_t is
 
  variable base : pixel_t; 
  variable return_output : pixel_t;
begin
      base.a := ref_toks_0;
      base.r := ref_toks_1;
      base.g := ref_toks_2;
      base.b := ref_toks_3;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- rect_contains_pong_h_l68_c6_2a22 : 0 clocks latency
rect_contains_pong_h_l68_c6_2a22 : entity work.rect_contains_0CLK_09e6dfce port map (
rect_contains_pong_h_l68_c6_2a22_rect,
rect_contains_pong_h_l68_c6_2a22_pos,
rect_contains_pong_h_l68_c6_2a22_return_output);

-- c_r_MUX_pong_h_l68_c3_a555 : 0 clocks latency
c_r_MUX_pong_h_l68_c3_a555 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_r_MUX_pong_h_l68_c3_a555_cond,
c_r_MUX_pong_h_l68_c3_a555_iftrue,
c_r_MUX_pong_h_l68_c3_a555_iffalse,
c_r_MUX_pong_h_l68_c3_a555_return_output);

-- c_g_MUX_pong_h_l68_c3_a555 : 0 clocks latency
c_g_MUX_pong_h_l68_c3_a555 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_g_MUX_pong_h_l68_c3_a555_cond,
c_g_MUX_pong_h_l68_c3_a555_iftrue,
c_g_MUX_pong_h_l68_c3_a555_iffalse,
c_g_MUX_pong_h_l68_c3_a555_return_output);

-- c_b_MUX_pong_h_l68_c3_a555 : 0 clocks latency
c_b_MUX_pong_h_l68_c3_a555 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_b_MUX_pong_h_l68_c3_a555_cond,
c_b_MUX_pong_h_l68_c3_a555_iftrue,
c_b_MUX_pong_h_l68_c3_a555_iffalse,
c_b_MUX_pong_h_l68_c3_a555_return_output);

-- rect_contains_pong_h_l75_c11_dda7 : 0 clocks latency
rect_contains_pong_h_l75_c11_dda7 : entity work.rect_contains_0CLK_09e6dfce port map (
rect_contains_pong_h_l75_c11_dda7_rect,
rect_contains_pong_h_l75_c11_dda7_pos,
rect_contains_pong_h_l75_c11_dda7_return_output);

-- c_r_MUX_pong_h_l75_c8_ef65 : 0 clocks latency
c_r_MUX_pong_h_l75_c8_ef65 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_r_MUX_pong_h_l75_c8_ef65_cond,
c_r_MUX_pong_h_l75_c8_ef65_iftrue,
c_r_MUX_pong_h_l75_c8_ef65_iffalse,
c_r_MUX_pong_h_l75_c8_ef65_return_output);

-- c_g_MUX_pong_h_l75_c8_ef65 : 0 clocks latency
c_g_MUX_pong_h_l75_c8_ef65 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_g_MUX_pong_h_l75_c8_ef65_cond,
c_g_MUX_pong_h_l75_c8_ef65_iftrue,
c_g_MUX_pong_h_l75_c8_ef65_iffalse,
c_g_MUX_pong_h_l75_c8_ef65_return_output);

-- c_b_MUX_pong_h_l75_c8_ef65 : 0 clocks latency
c_b_MUX_pong_h_l75_c8_ef65 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_b_MUX_pong_h_l75_c8_ef65_cond,
c_b_MUX_pong_h_l75_c8_ef65_iftrue,
c_b_MUX_pong_h_l75_c8_ef65_iffalse,
c_b_MUX_pong_h_l75_c8_ef65_return_output);

-- rect_contains_pong_h_l82_c11_ee0c : 0 clocks latency
rect_contains_pong_h_l82_c11_ee0c : entity work.rect_contains_0CLK_09e6dfce port map (
rect_contains_pong_h_l82_c11_ee0c_rect,
rect_contains_pong_h_l82_c11_ee0c_pos,
rect_contains_pong_h_l82_c11_ee0c_return_output);

-- c_r_MUX_pong_h_l82_c8_5537 : 0 clocks latency
c_r_MUX_pong_h_l82_c8_5537 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_r_MUX_pong_h_l82_c8_5537_cond,
c_r_MUX_pong_h_l82_c8_5537_iftrue,
c_r_MUX_pong_h_l82_c8_5537_iffalse,
c_r_MUX_pong_h_l82_c8_5537_return_output);

-- c_g_MUX_pong_h_l82_c8_5537 : 0 clocks latency
c_g_MUX_pong_h_l82_c8_5537 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_g_MUX_pong_h_l82_c8_5537_cond,
c_g_MUX_pong_h_l82_c8_5537_iftrue,
c_g_MUX_pong_h_l82_c8_5537_iffalse,
c_g_MUX_pong_h_l82_c8_5537_return_output);

-- c_b_MUX_pong_h_l82_c8_5537 : 0 clocks latency
c_b_MUX_pong_h_l82_c8_5537 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
c_b_MUX_pong_h_l82_c8_5537_cond,
c_b_MUX_pong_h_l82_c8_5537_iftrue,
c_b_MUX_pong_h_l82_c8_5537_iffalse,
c_b_MUX_pong_h_l82_c8_5537_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 pos,
 state,
 -- All submodule outputs
 rect_contains_pong_h_l68_c6_2a22_return_output,
 c_r_MUX_pong_h_l68_c3_a555_return_output,
 c_g_MUX_pong_h_l68_c3_a555_return_output,
 c_b_MUX_pong_h_l68_c3_a555_return_output,
 rect_contains_pong_h_l75_c11_dda7_return_output,
 c_r_MUX_pong_h_l75_c8_ef65_return_output,
 c_g_MUX_pong_h_l75_c8_ef65_return_output,
 c_b_MUX_pong_h_l75_c8_ef65_return_output,
 rect_contains_pong_h_l82_c11_ee0c_return_output,
 c_r_MUX_pong_h_l82_c8_5537_return_output,
 c_g_MUX_pong_h_l82_c8_5537_return_output,
 c_b_MUX_pong_h_l82_c8_5537_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : pixel_t;
 variable VAR_pos : vga_pos_t;
 variable VAR_state : game_state_t;
 variable VAR_c : pixel_t;
 variable VAR_c_a_pong_h_l62_c3_923a : unsigned(7 downto 0);
 variable VAR_c_r_pong_h_l63_c3_89e3 : unsigned(7 downto 0);
 variable VAR_c_g_pong_h_l64_c3_0e63 : unsigned(7 downto 0);
 variable VAR_c_b_pong_h_l65_c3_deb7 : unsigned(7 downto 0);
 variable VAR_rect_contains_pong_h_l68_c6_2a22_rect : rect_t;
 variable VAR_rect_contains_pong_h_l68_c6_2a22_pos : vga_pos_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l68_c20_cc1e_return_output : rect_t;
 variable VAR_rect_contains_pong_h_l68_c6_2a22_return_output : unsigned(0 downto 0);
 variable VAR_c_r_MUX_pong_h_l68_c3_a555_iftrue : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l68_c3_a555_iffalse : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l75_c8_ef65_return_output : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l68_c3_a555_return_output : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l68_c3_a555_cond : unsigned(0 downto 0);
 variable VAR_c_g_MUX_pong_h_l68_c3_a555_iftrue : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l68_c3_a555_iffalse : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l75_c8_ef65_return_output : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l68_c3_a555_return_output : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l68_c3_a555_cond : unsigned(0 downto 0);
 variable VAR_c_b_MUX_pong_h_l68_c3_a555_iftrue : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l68_c3_a555_iffalse : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l75_c8_ef65_return_output : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l68_c3_a555_return_output : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l68_c3_a555_cond : unsigned(0 downto 0);
 variable VAR_rect_contains_pong_h_l75_c11_dda7_rect : rect_t;
 variable VAR_rect_contains_pong_h_l75_c11_dda7_pos : vga_pos_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l75_c25_4c1b_return_output : rect_t;
 variable VAR_rect_contains_pong_h_l75_c11_dda7_return_output : unsigned(0 downto 0);
 variable VAR_c_r_MUX_pong_h_l75_c8_ef65_iftrue : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l75_c8_ef65_iffalse : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l82_c8_5537_return_output : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l75_c8_ef65_cond : unsigned(0 downto 0);
 variable VAR_c_g_MUX_pong_h_l75_c8_ef65_iftrue : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l75_c8_ef65_iffalse : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l82_c8_5537_return_output : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l75_c8_ef65_cond : unsigned(0 downto 0);
 variable VAR_c_b_MUX_pong_h_l75_c8_ef65_iftrue : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l75_c8_ef65_iffalse : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l82_c8_5537_return_output : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l75_c8_ef65_cond : unsigned(0 downto 0);
 variable VAR_rect_contains_pong_h_l82_c11_ee0c_rect : rect_t;
 variable VAR_rect_contains_pong_h_l82_c11_ee0c_pos : vga_pos_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l82_c25_0143_return_output : rect_t;
 variable VAR_rect_contains_pong_h_l82_c11_ee0c_return_output : unsigned(0 downto 0);
 variable VAR_c_r_MUX_pong_h_l82_c8_5537_iftrue : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l82_c8_5537_iffalse : unsigned(7 downto 0);
 variable VAR_c_r_MUX_pong_h_l82_c8_5537_cond : unsigned(0 downto 0);
 variable VAR_c_g_MUX_pong_h_l82_c8_5537_iftrue : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l82_c8_5537_iffalse : unsigned(7 downto 0);
 variable VAR_c_g_MUX_pong_h_l82_c8_5537_cond : unsigned(0 downto 0);
 variable VAR_c_b_MUX_pong_h_l82_c8_5537_iftrue : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l82_c8_5537_iffalse : unsigned(7 downto 0);
 variable VAR_c_b_MUX_pong_h_l82_c8_5537_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_pixel_t_pixel_t_f6e2_pong_h_l89_c10_cda6_return_output : pixel_t;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_c_r_MUX_pong_h_l75_c8_ef65_iftrue := to_unsigned(255, 8);
     VAR_c_g_MUX_pong_h_l82_c8_5537_iftrue := to_unsigned(255, 8);
     VAR_c_b_MUX_pong_h_l75_c8_ef65_iftrue := to_unsigned(255, 8);
     VAR_c_a_pong_h_l62_c3_923a := resize(to_unsigned(0, 1), 8);
     VAR_c_b_MUX_pong_h_l68_c3_a555_iftrue := to_unsigned(255, 8);
     VAR_c_b_pong_h_l65_c3_deb7 := resize(to_unsigned(0, 1), 8);
     VAR_c_b_MUX_pong_h_l82_c8_5537_iffalse := VAR_c_b_pong_h_l65_c3_deb7;
     VAR_c_g_MUX_pong_h_l75_c8_ef65_iftrue := to_unsigned(255, 8);
     VAR_c_r_MUX_pong_h_l82_c8_5537_iftrue := to_unsigned(255, 8);
     VAR_c_g_MUX_pong_h_l68_c3_a555_iftrue := to_unsigned(255, 8);
     VAR_c_g_pong_h_l64_c3_0e63 := resize(to_unsigned(0, 1), 8);
     VAR_c_g_MUX_pong_h_l82_c8_5537_iffalse := VAR_c_g_pong_h_l64_c3_0e63;
     VAR_c_r_MUX_pong_h_l68_c3_a555_iftrue := to_unsigned(255, 8);
     VAR_c_b_MUX_pong_h_l82_c8_5537_iftrue := to_unsigned(255, 8);
     VAR_c_r_pong_h_l63_c3_89e3 := resize(to_unsigned(0, 1), 8);
     VAR_c_r_MUX_pong_h_l82_c8_5537_iffalse := VAR_c_r_pong_h_l63_c3_89e3;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_pos := pos;
     VAR_state := state;

     -- Submodule level 0
     VAR_rect_contains_pong_h_l68_c6_2a22_pos := VAR_pos;
     VAR_rect_contains_pong_h_l75_c11_dda7_pos := VAR_pos;
     VAR_rect_contains_pong_h_l82_c11_ee0c_pos := VAR_pos;
     -- CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d[pong_h_l82_c25_0143] LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l82_c25_0143_return_output := VAR_state.ball.rect;

     -- CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d[pong_h_l75_c25_4c1b] LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l75_c25_4c1b_return_output := VAR_state.rpaddle.rect;

     -- CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d[pong_h_l68_c20_cc1e] LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l68_c20_cc1e_return_output := VAR_state.lpaddle.rect;

     -- Submodule level 1
     VAR_rect_contains_pong_h_l82_c11_ee0c_rect := VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l82_c25_0143_return_output;
     VAR_rect_contains_pong_h_l68_c6_2a22_rect := VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l68_c20_cc1e_return_output;
     VAR_rect_contains_pong_h_l75_c11_dda7_rect := VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l75_c25_4c1b_return_output;
     -- rect_contains[pong_h_l82_c11_ee0c] LATENCY=0
     -- Inputs
     rect_contains_pong_h_l82_c11_ee0c_rect <= VAR_rect_contains_pong_h_l82_c11_ee0c_rect;
     rect_contains_pong_h_l82_c11_ee0c_pos <= VAR_rect_contains_pong_h_l82_c11_ee0c_pos;
     -- Outputs
     VAR_rect_contains_pong_h_l82_c11_ee0c_return_output := rect_contains_pong_h_l82_c11_ee0c_return_output;

     -- rect_contains[pong_h_l75_c11_dda7] LATENCY=0
     -- Inputs
     rect_contains_pong_h_l75_c11_dda7_rect <= VAR_rect_contains_pong_h_l75_c11_dda7_rect;
     rect_contains_pong_h_l75_c11_dda7_pos <= VAR_rect_contains_pong_h_l75_c11_dda7_pos;
     -- Outputs
     VAR_rect_contains_pong_h_l75_c11_dda7_return_output := rect_contains_pong_h_l75_c11_dda7_return_output;

     -- rect_contains[pong_h_l68_c6_2a22] LATENCY=0
     -- Inputs
     rect_contains_pong_h_l68_c6_2a22_rect <= VAR_rect_contains_pong_h_l68_c6_2a22_rect;
     rect_contains_pong_h_l68_c6_2a22_pos <= VAR_rect_contains_pong_h_l68_c6_2a22_pos;
     -- Outputs
     VAR_rect_contains_pong_h_l68_c6_2a22_return_output := rect_contains_pong_h_l68_c6_2a22_return_output;

     -- Submodule level 2
     VAR_c_b_MUX_pong_h_l68_c3_a555_cond := VAR_rect_contains_pong_h_l68_c6_2a22_return_output;
     VAR_c_g_MUX_pong_h_l68_c3_a555_cond := VAR_rect_contains_pong_h_l68_c6_2a22_return_output;
     VAR_c_r_MUX_pong_h_l68_c3_a555_cond := VAR_rect_contains_pong_h_l68_c6_2a22_return_output;
     VAR_c_b_MUX_pong_h_l75_c8_ef65_cond := VAR_rect_contains_pong_h_l75_c11_dda7_return_output;
     VAR_c_g_MUX_pong_h_l75_c8_ef65_cond := VAR_rect_contains_pong_h_l75_c11_dda7_return_output;
     VAR_c_r_MUX_pong_h_l75_c8_ef65_cond := VAR_rect_contains_pong_h_l75_c11_dda7_return_output;
     VAR_c_b_MUX_pong_h_l82_c8_5537_cond := VAR_rect_contains_pong_h_l82_c11_ee0c_return_output;
     VAR_c_g_MUX_pong_h_l82_c8_5537_cond := VAR_rect_contains_pong_h_l82_c11_ee0c_return_output;
     VAR_c_r_MUX_pong_h_l82_c8_5537_cond := VAR_rect_contains_pong_h_l82_c11_ee0c_return_output;
     -- c_b_MUX[pong_h_l82_c8_5537] LATENCY=0
     -- Inputs
     c_b_MUX_pong_h_l82_c8_5537_cond <= VAR_c_b_MUX_pong_h_l82_c8_5537_cond;
     c_b_MUX_pong_h_l82_c8_5537_iftrue <= VAR_c_b_MUX_pong_h_l82_c8_5537_iftrue;
     c_b_MUX_pong_h_l82_c8_5537_iffalse <= VAR_c_b_MUX_pong_h_l82_c8_5537_iffalse;
     -- Outputs
     VAR_c_b_MUX_pong_h_l82_c8_5537_return_output := c_b_MUX_pong_h_l82_c8_5537_return_output;

     -- c_r_MUX[pong_h_l82_c8_5537] LATENCY=0
     -- Inputs
     c_r_MUX_pong_h_l82_c8_5537_cond <= VAR_c_r_MUX_pong_h_l82_c8_5537_cond;
     c_r_MUX_pong_h_l82_c8_5537_iftrue <= VAR_c_r_MUX_pong_h_l82_c8_5537_iftrue;
     c_r_MUX_pong_h_l82_c8_5537_iffalse <= VAR_c_r_MUX_pong_h_l82_c8_5537_iffalse;
     -- Outputs
     VAR_c_r_MUX_pong_h_l82_c8_5537_return_output := c_r_MUX_pong_h_l82_c8_5537_return_output;

     -- c_g_MUX[pong_h_l82_c8_5537] LATENCY=0
     -- Inputs
     c_g_MUX_pong_h_l82_c8_5537_cond <= VAR_c_g_MUX_pong_h_l82_c8_5537_cond;
     c_g_MUX_pong_h_l82_c8_5537_iftrue <= VAR_c_g_MUX_pong_h_l82_c8_5537_iftrue;
     c_g_MUX_pong_h_l82_c8_5537_iffalse <= VAR_c_g_MUX_pong_h_l82_c8_5537_iffalse;
     -- Outputs
     VAR_c_g_MUX_pong_h_l82_c8_5537_return_output := c_g_MUX_pong_h_l82_c8_5537_return_output;

     -- Submodule level 3
     VAR_c_b_MUX_pong_h_l75_c8_ef65_iffalse := VAR_c_b_MUX_pong_h_l82_c8_5537_return_output;
     VAR_c_g_MUX_pong_h_l75_c8_ef65_iffalse := VAR_c_g_MUX_pong_h_l82_c8_5537_return_output;
     VAR_c_r_MUX_pong_h_l75_c8_ef65_iffalse := VAR_c_r_MUX_pong_h_l82_c8_5537_return_output;
     -- c_g_MUX[pong_h_l75_c8_ef65] LATENCY=0
     -- Inputs
     c_g_MUX_pong_h_l75_c8_ef65_cond <= VAR_c_g_MUX_pong_h_l75_c8_ef65_cond;
     c_g_MUX_pong_h_l75_c8_ef65_iftrue <= VAR_c_g_MUX_pong_h_l75_c8_ef65_iftrue;
     c_g_MUX_pong_h_l75_c8_ef65_iffalse <= VAR_c_g_MUX_pong_h_l75_c8_ef65_iffalse;
     -- Outputs
     VAR_c_g_MUX_pong_h_l75_c8_ef65_return_output := c_g_MUX_pong_h_l75_c8_ef65_return_output;

     -- c_b_MUX[pong_h_l75_c8_ef65] LATENCY=0
     -- Inputs
     c_b_MUX_pong_h_l75_c8_ef65_cond <= VAR_c_b_MUX_pong_h_l75_c8_ef65_cond;
     c_b_MUX_pong_h_l75_c8_ef65_iftrue <= VAR_c_b_MUX_pong_h_l75_c8_ef65_iftrue;
     c_b_MUX_pong_h_l75_c8_ef65_iffalse <= VAR_c_b_MUX_pong_h_l75_c8_ef65_iffalse;
     -- Outputs
     VAR_c_b_MUX_pong_h_l75_c8_ef65_return_output := c_b_MUX_pong_h_l75_c8_ef65_return_output;

     -- c_r_MUX[pong_h_l75_c8_ef65] LATENCY=0
     -- Inputs
     c_r_MUX_pong_h_l75_c8_ef65_cond <= VAR_c_r_MUX_pong_h_l75_c8_ef65_cond;
     c_r_MUX_pong_h_l75_c8_ef65_iftrue <= VAR_c_r_MUX_pong_h_l75_c8_ef65_iftrue;
     c_r_MUX_pong_h_l75_c8_ef65_iffalse <= VAR_c_r_MUX_pong_h_l75_c8_ef65_iffalse;
     -- Outputs
     VAR_c_r_MUX_pong_h_l75_c8_ef65_return_output := c_r_MUX_pong_h_l75_c8_ef65_return_output;

     -- Submodule level 4
     VAR_c_b_MUX_pong_h_l68_c3_a555_iffalse := VAR_c_b_MUX_pong_h_l75_c8_ef65_return_output;
     VAR_c_g_MUX_pong_h_l68_c3_a555_iffalse := VAR_c_g_MUX_pong_h_l75_c8_ef65_return_output;
     VAR_c_r_MUX_pong_h_l68_c3_a555_iffalse := VAR_c_r_MUX_pong_h_l75_c8_ef65_return_output;
     -- c_g_MUX[pong_h_l68_c3_a555] LATENCY=0
     -- Inputs
     c_g_MUX_pong_h_l68_c3_a555_cond <= VAR_c_g_MUX_pong_h_l68_c3_a555_cond;
     c_g_MUX_pong_h_l68_c3_a555_iftrue <= VAR_c_g_MUX_pong_h_l68_c3_a555_iftrue;
     c_g_MUX_pong_h_l68_c3_a555_iffalse <= VAR_c_g_MUX_pong_h_l68_c3_a555_iffalse;
     -- Outputs
     VAR_c_g_MUX_pong_h_l68_c3_a555_return_output := c_g_MUX_pong_h_l68_c3_a555_return_output;

     -- c_b_MUX[pong_h_l68_c3_a555] LATENCY=0
     -- Inputs
     c_b_MUX_pong_h_l68_c3_a555_cond <= VAR_c_b_MUX_pong_h_l68_c3_a555_cond;
     c_b_MUX_pong_h_l68_c3_a555_iftrue <= VAR_c_b_MUX_pong_h_l68_c3_a555_iftrue;
     c_b_MUX_pong_h_l68_c3_a555_iffalse <= VAR_c_b_MUX_pong_h_l68_c3_a555_iffalse;
     -- Outputs
     VAR_c_b_MUX_pong_h_l68_c3_a555_return_output := c_b_MUX_pong_h_l68_c3_a555_return_output;

     -- c_r_MUX[pong_h_l68_c3_a555] LATENCY=0
     -- Inputs
     c_r_MUX_pong_h_l68_c3_a555_cond <= VAR_c_r_MUX_pong_h_l68_c3_a555_cond;
     c_r_MUX_pong_h_l68_c3_a555_iftrue <= VAR_c_r_MUX_pong_h_l68_c3_a555_iftrue;
     c_r_MUX_pong_h_l68_c3_a555_iffalse <= VAR_c_r_MUX_pong_h_l68_c3_a555_iffalse;
     -- Outputs
     VAR_c_r_MUX_pong_h_l68_c3_a555_return_output := c_r_MUX_pong_h_l68_c3_a555_return_output;

     -- Submodule level 5
     -- CONST_REF_RD_pixel_t_pixel_t_f6e2[pong_h_l89_c10_cda6] LATENCY=0
     VAR_CONST_REF_RD_pixel_t_pixel_t_f6e2_pong_h_l89_c10_cda6_return_output := CONST_REF_RD_pixel_t_pixel_t_f6e2(
     VAR_c_a_pong_h_l62_c3_923a,
     VAR_c_r_MUX_pong_h_l68_c3_a555_return_output,
     VAR_c_g_MUX_pong_h_l68_c3_a555_return_output,
     VAR_c_b_MUX_pong_h_l68_c3_a555_return_output);

     -- Submodule level 6
     VAR_return_output := VAR_CONST_REF_RD_pixel_t_pixel_t_f6e2_pong_h_l89_c10_cda6_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
