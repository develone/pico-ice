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
-- Submodules: 11
entity rect_move_0CLK_0810338e is
port(
 state : in rect_animated_t;
 return_output : out rect_animated_t);
end rect_move_0CLK_0810338e;
architecture arch of rect_move_0CLK_0810338e is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- state_rect_pos_x_MUX[rect_h_l60_c3_7f4b]
signal state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_cond : unsigned(0 downto 0);
signal state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_iftrue : unsigned(11 downto 0);
signal state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_iffalse : unsigned(11 downto 0);
signal state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[rect_h_l62_c24_c0e7]
signal BIN_OP_PLUS_rect_h_l62_c24_c0e7_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l62_c24_c0e7_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l62_c24_c0e7_return_output : unsigned(12 downto 0);

-- BIN_OP_GT[rect_h_l66_c8_40a5]
signal BIN_OP_GT_rect_h_l66_c8_40a5_left : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l66_c8_40a5_right : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l66_c8_40a5_return_output : unsigned(0 downto 0);

-- state_rect_pos_x_MUX[rect_h_l66_c5_8aae]
signal state_rect_pos_x_MUX_rect_h_l66_c5_8aae_cond : unsigned(0 downto 0);
signal state_rect_pos_x_MUX_rect_h_l66_c5_8aae_iftrue : unsigned(11 downto 0);
signal state_rect_pos_x_MUX_rect_h_l66_c5_8aae_iffalse : unsigned(11 downto 0);
signal state_rect_pos_x_MUX_rect_h_l66_c5_8aae_return_output : unsigned(11 downto 0);

-- BIN_OP_MINUS[rect_h_l68_c26_707c]
signal BIN_OP_MINUS_rect_h_l68_c26_707c_left : unsigned(11 downto 0);
signal BIN_OP_MINUS_rect_h_l68_c26_707c_right : unsigned(11 downto 0);
signal BIN_OP_MINUS_rect_h_l68_c26_707c_return_output : unsigned(11 downto 0);

-- state_rect_pos_y_MUX[rect_h_l75_c3_fbe3]
signal state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_cond : unsigned(0 downto 0);
signal state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_iftrue : unsigned(11 downto 0);
signal state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_iffalse : unsigned(11 downto 0);
signal state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[rect_h_l77_c24_8c55]
signal BIN_OP_PLUS_rect_h_l77_c24_8c55_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l77_c24_8c55_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l77_c24_8c55_return_output : unsigned(12 downto 0);

-- BIN_OP_GT[rect_h_l81_c8_ab25]
signal BIN_OP_GT_rect_h_l81_c8_ab25_left : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l81_c8_ab25_right : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l81_c8_ab25_return_output : unsigned(0 downto 0);

-- state_rect_pos_y_MUX[rect_h_l81_c5_88d7]
signal state_rect_pos_y_MUX_rect_h_l81_c5_88d7_cond : unsigned(0 downto 0);
signal state_rect_pos_y_MUX_rect_h_l81_c5_88d7_iftrue : unsigned(11 downto 0);
signal state_rect_pos_y_MUX_rect_h_l81_c5_88d7_iffalse : unsigned(11 downto 0);
signal state_rect_pos_y_MUX_rect_h_l81_c5_88d7_return_output : unsigned(11 downto 0);

-- BIN_OP_MINUS[rect_h_l83_c26_743b]
signal BIN_OP_MINUS_rect_h_l83_c26_743b_left : unsigned(11 downto 0);
signal BIN_OP_MINUS_rect_h_l83_c26_743b_right : unsigned(11 downto 0);
signal BIN_OP_MINUS_rect_h_l83_c26_743b_return_output : unsigned(11 downto 0);

function CONST_REF_RD_rect_animated_t_rect_animated_t_3222( ref_toks_0 : rect_animated_t;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned) return rect_animated_t is
 
  variable base : rect_animated_t; 
  variable return_output : rect_animated_t;
begin
      base := ref_toks_0;
      base.rect.pos.x := ref_toks_1;
      base.rect.pos.y := ref_toks_2;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- state_rect_pos_x_MUX_rect_h_l60_c3_7f4b : 0 clocks latency
state_rect_pos_x_MUX_rect_h_l60_c3_7f4b : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_cond,
state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_iftrue,
state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_iffalse,
state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_return_output);

-- BIN_OP_PLUS_rect_h_l62_c24_c0e7 : 0 clocks latency
BIN_OP_PLUS_rect_h_l62_c24_c0e7 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l62_c24_c0e7_left,
BIN_OP_PLUS_rect_h_l62_c24_c0e7_right,
BIN_OP_PLUS_rect_h_l62_c24_c0e7_return_output);

-- BIN_OP_GT_rect_h_l66_c8_40a5 : 0 clocks latency
BIN_OP_GT_rect_h_l66_c8_40a5 : entity work.BIN_OP_GT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_GT_rect_h_l66_c8_40a5_left,
BIN_OP_GT_rect_h_l66_c8_40a5_right,
BIN_OP_GT_rect_h_l66_c8_40a5_return_output);

-- state_rect_pos_x_MUX_rect_h_l66_c5_8aae : 0 clocks latency
state_rect_pos_x_MUX_rect_h_l66_c5_8aae : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
state_rect_pos_x_MUX_rect_h_l66_c5_8aae_cond,
state_rect_pos_x_MUX_rect_h_l66_c5_8aae_iftrue,
state_rect_pos_x_MUX_rect_h_l66_c5_8aae_iffalse,
state_rect_pos_x_MUX_rect_h_l66_c5_8aae_return_output);

-- BIN_OP_MINUS_rect_h_l68_c26_707c : 0 clocks latency
BIN_OP_MINUS_rect_h_l68_c26_707c : entity work.BIN_OP_MINUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_MINUS_rect_h_l68_c26_707c_left,
BIN_OP_MINUS_rect_h_l68_c26_707c_right,
BIN_OP_MINUS_rect_h_l68_c26_707c_return_output);

-- state_rect_pos_y_MUX_rect_h_l75_c3_fbe3 : 0 clocks latency
state_rect_pos_y_MUX_rect_h_l75_c3_fbe3 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_cond,
state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_iftrue,
state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_iffalse,
state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_return_output);

-- BIN_OP_PLUS_rect_h_l77_c24_8c55 : 0 clocks latency
BIN_OP_PLUS_rect_h_l77_c24_8c55 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l77_c24_8c55_left,
BIN_OP_PLUS_rect_h_l77_c24_8c55_right,
BIN_OP_PLUS_rect_h_l77_c24_8c55_return_output);

-- BIN_OP_GT_rect_h_l81_c8_ab25 : 0 clocks latency
BIN_OP_GT_rect_h_l81_c8_ab25 : entity work.BIN_OP_GT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_GT_rect_h_l81_c8_ab25_left,
BIN_OP_GT_rect_h_l81_c8_ab25_right,
BIN_OP_GT_rect_h_l81_c8_ab25_return_output);

-- state_rect_pos_y_MUX_rect_h_l81_c5_88d7 : 0 clocks latency
state_rect_pos_y_MUX_rect_h_l81_c5_88d7 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
state_rect_pos_y_MUX_rect_h_l81_c5_88d7_cond,
state_rect_pos_y_MUX_rect_h_l81_c5_88d7_iftrue,
state_rect_pos_y_MUX_rect_h_l81_c5_88d7_iffalse,
state_rect_pos_y_MUX_rect_h_l81_c5_88d7_return_output);

-- BIN_OP_MINUS_rect_h_l83_c26_743b : 0 clocks latency
BIN_OP_MINUS_rect_h_l83_c26_743b : entity work.BIN_OP_MINUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_MINUS_rect_h_l83_c26_743b_left,
BIN_OP_MINUS_rect_h_l83_c26_743b_right,
BIN_OP_MINUS_rect_h_l83_c26_743b_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 state,
 -- All submodule outputs
 state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_return_output,
 BIN_OP_PLUS_rect_h_l62_c24_c0e7_return_output,
 BIN_OP_GT_rect_h_l66_c8_40a5_return_output,
 state_rect_pos_x_MUX_rect_h_l66_c5_8aae_return_output,
 BIN_OP_MINUS_rect_h_l68_c26_707c_return_output,
 state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_return_output,
 BIN_OP_PLUS_rect_h_l77_c24_8c55_return_output,
 BIN_OP_GT_rect_h_l81_c8_ab25_return_output,
 state_rect_pos_y_MUX_rect_h_l81_c5_88d7_return_output,
 BIN_OP_MINUS_rect_h_l83_c26_743b_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : rect_animated_t;
 variable VAR_state : rect_animated_t;
 variable VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d_rect_h_l60_c6_5293_return_output : unsigned(0 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_iftrue : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_rect_h_l62_c5_2e3a : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_iffalse : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l66_c5_8aae_return_output : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_return_output : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l62_c24_c0e7_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l62_c24_c0e7_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l62_c24_c0e7_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l66_c8_40a5_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l66_c8_40a5_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l66_c8_40a5_return_output : unsigned(0 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l66_c5_8aae_iftrue : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l66_c5_8aae_iffalse : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_rect_h_l72_c7_f00d : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l66_c5_8aae_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l68_c26_707c_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l68_c26_707c_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l68_c26_707c_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d_rect_h_l75_c6_c55e_return_output : unsigned(0 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_iftrue : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_rect_h_l77_c5_b3ab : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_iffalse : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l81_c5_88d7_return_output : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_return_output : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l77_c24_8c55_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l77_c24_8c55_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l77_c24_8c55_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l81_c8_ab25_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l81_c8_ab25_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l81_c8_ab25_return_output : unsigned(0 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l81_c5_88d7_iftrue : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l81_c5_88d7_iffalse : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_rect_h_l87_c7_a234 : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l81_c5_88d7_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l83_c26_743b_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l83_c26_743b_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l83_c26_743b_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_rect_animated_t_rect_animated_t_3222_rect_h_l90_c10_782b_return_output : rect_animated_t;
 variable VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l68_l66_l62_DUPLICATE_07cc_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l66_l62_l68_DUPLICATE_97fc_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l83_l81_l77_DUPLICATE_49e1_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l81_l83_DUPLICATE_5aeb_return_output : unsigned(11 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_state_rect_pos_y_rect_h_l87_c7_a234 := resize(to_unsigned(0, 1), 12);
     VAR_state_rect_pos_y_MUX_rect_h_l81_c5_88d7_iffalse := VAR_state_rect_pos_y_rect_h_l87_c7_a234;
     VAR_state_rect_pos_x_rect_h_l72_c7_f00d := resize(to_unsigned(0, 1), 12);
     VAR_state_rect_pos_x_MUX_rect_h_l66_c5_8aae_iffalse := VAR_state_rect_pos_x_rect_h_l72_c7_f00d;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_state := state;

     -- Submodule level 0
     -- CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l68_l66_l62_DUPLICATE_07cc LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l68_l66_l62_DUPLICATE_07cc_return_output := VAR_state.rect.pos.x;

     -- CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l66_l62_l68_DUPLICATE_97fc LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l66_l62_l68_DUPLICATE_97fc_return_output := VAR_state.vel.x;

     -- CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l83_l81_l77_DUPLICATE_49e1 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l83_l81_l77_DUPLICATE_49e1_return_output := VAR_state.rect.pos.y;

     -- CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d[rect_h_l60_c6_5293] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d_rect_h_l60_c6_5293_return_output := VAR_state.vel_x_dir;

     -- CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d[rect_h_l75_c6_c55e] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d_rect_h_l75_c6_c55e_return_output := VAR_state.vel_y_dir;

     -- CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l81_l83_DUPLICATE_5aeb LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l81_l83_DUPLICATE_5aeb_return_output := VAR_state.vel.y;

     -- Submodule level 1
     VAR_BIN_OP_GT_rect_h_l66_c8_40a5_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l68_l66_l62_DUPLICATE_07cc_return_output;
     VAR_BIN_OP_MINUS_rect_h_l68_c26_707c_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l68_l66_l62_DUPLICATE_07cc_return_output;
     VAR_BIN_OP_PLUS_rect_h_l62_c24_c0e7_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l68_l66_l62_DUPLICATE_07cc_return_output;
     VAR_BIN_OP_GT_rect_h_l81_c8_ab25_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l83_l81_l77_DUPLICATE_49e1_return_output;
     VAR_BIN_OP_MINUS_rect_h_l83_c26_743b_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l83_l81_l77_DUPLICATE_49e1_return_output;
     VAR_BIN_OP_PLUS_rect_h_l77_c24_8c55_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l83_l81_l77_DUPLICATE_49e1_return_output;
     VAR_BIN_OP_GT_rect_h_l66_c8_40a5_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l66_l62_l68_DUPLICATE_97fc_return_output;
     VAR_BIN_OP_MINUS_rect_h_l68_c26_707c_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l66_l62_l68_DUPLICATE_97fc_return_output;
     VAR_BIN_OP_PLUS_rect_h_l62_c24_c0e7_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l66_l62_l68_DUPLICATE_97fc_return_output;
     VAR_BIN_OP_GT_rect_h_l81_c8_ab25_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l81_l83_DUPLICATE_5aeb_return_output;
     VAR_BIN_OP_MINUS_rect_h_l83_c26_743b_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l81_l83_DUPLICATE_5aeb_return_output;
     VAR_BIN_OP_PLUS_rect_h_l77_c24_8c55_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l81_l83_DUPLICATE_5aeb_return_output;
     VAR_state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_cond := VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d_rect_h_l60_c6_5293_return_output;
     VAR_state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_cond := VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d_rect_h_l75_c6_c55e_return_output;
     -- BIN_OP_GT[rect_h_l66_c8_40a5] LATENCY=0
     -- Inputs
     BIN_OP_GT_rect_h_l66_c8_40a5_left <= VAR_BIN_OP_GT_rect_h_l66_c8_40a5_left;
     BIN_OP_GT_rect_h_l66_c8_40a5_right <= VAR_BIN_OP_GT_rect_h_l66_c8_40a5_right;
     -- Outputs
     VAR_BIN_OP_GT_rect_h_l66_c8_40a5_return_output := BIN_OP_GT_rect_h_l66_c8_40a5_return_output;

     -- BIN_OP_GT[rect_h_l81_c8_ab25] LATENCY=0
     -- Inputs
     BIN_OP_GT_rect_h_l81_c8_ab25_left <= VAR_BIN_OP_GT_rect_h_l81_c8_ab25_left;
     BIN_OP_GT_rect_h_l81_c8_ab25_right <= VAR_BIN_OP_GT_rect_h_l81_c8_ab25_right;
     -- Outputs
     VAR_BIN_OP_GT_rect_h_l81_c8_ab25_return_output := BIN_OP_GT_rect_h_l81_c8_ab25_return_output;

     -- BIN_OP_PLUS[rect_h_l62_c24_c0e7] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l62_c24_c0e7_left <= VAR_BIN_OP_PLUS_rect_h_l62_c24_c0e7_left;
     BIN_OP_PLUS_rect_h_l62_c24_c0e7_right <= VAR_BIN_OP_PLUS_rect_h_l62_c24_c0e7_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l62_c24_c0e7_return_output := BIN_OP_PLUS_rect_h_l62_c24_c0e7_return_output;

     -- BIN_OP_MINUS[rect_h_l68_c26_707c] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_rect_h_l68_c26_707c_left <= VAR_BIN_OP_MINUS_rect_h_l68_c26_707c_left;
     BIN_OP_MINUS_rect_h_l68_c26_707c_right <= VAR_BIN_OP_MINUS_rect_h_l68_c26_707c_right;
     -- Outputs
     VAR_BIN_OP_MINUS_rect_h_l68_c26_707c_return_output := BIN_OP_MINUS_rect_h_l68_c26_707c_return_output;

     -- BIN_OP_PLUS[rect_h_l77_c24_8c55] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l77_c24_8c55_left <= VAR_BIN_OP_PLUS_rect_h_l77_c24_8c55_left;
     BIN_OP_PLUS_rect_h_l77_c24_8c55_right <= VAR_BIN_OP_PLUS_rect_h_l77_c24_8c55_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l77_c24_8c55_return_output := BIN_OP_PLUS_rect_h_l77_c24_8c55_return_output;

     -- BIN_OP_MINUS[rect_h_l83_c26_743b] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_rect_h_l83_c26_743b_left <= VAR_BIN_OP_MINUS_rect_h_l83_c26_743b_left;
     BIN_OP_MINUS_rect_h_l83_c26_743b_right <= VAR_BIN_OP_MINUS_rect_h_l83_c26_743b_right;
     -- Outputs
     VAR_BIN_OP_MINUS_rect_h_l83_c26_743b_return_output := BIN_OP_MINUS_rect_h_l83_c26_743b_return_output;

     -- Submodule level 2
     VAR_state_rect_pos_x_MUX_rect_h_l66_c5_8aae_cond := VAR_BIN_OP_GT_rect_h_l66_c8_40a5_return_output;
     VAR_state_rect_pos_y_MUX_rect_h_l81_c5_88d7_cond := VAR_BIN_OP_GT_rect_h_l81_c8_ab25_return_output;
     VAR_state_rect_pos_x_MUX_rect_h_l66_c5_8aae_iftrue := VAR_BIN_OP_MINUS_rect_h_l68_c26_707c_return_output;
     VAR_state_rect_pos_y_MUX_rect_h_l81_c5_88d7_iftrue := VAR_BIN_OP_MINUS_rect_h_l83_c26_743b_return_output;
     VAR_state_rect_pos_x_rect_h_l62_c5_2e3a := resize(VAR_BIN_OP_PLUS_rect_h_l62_c24_c0e7_return_output, 12);
     VAR_state_rect_pos_y_rect_h_l77_c5_b3ab := resize(VAR_BIN_OP_PLUS_rect_h_l77_c24_8c55_return_output, 12);
     VAR_state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_iftrue := VAR_state_rect_pos_x_rect_h_l62_c5_2e3a;
     VAR_state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_iftrue := VAR_state_rect_pos_y_rect_h_l77_c5_b3ab;
     -- state_rect_pos_x_MUX[rect_h_l66_c5_8aae] LATENCY=0
     -- Inputs
     state_rect_pos_x_MUX_rect_h_l66_c5_8aae_cond <= VAR_state_rect_pos_x_MUX_rect_h_l66_c5_8aae_cond;
     state_rect_pos_x_MUX_rect_h_l66_c5_8aae_iftrue <= VAR_state_rect_pos_x_MUX_rect_h_l66_c5_8aae_iftrue;
     state_rect_pos_x_MUX_rect_h_l66_c5_8aae_iffalse <= VAR_state_rect_pos_x_MUX_rect_h_l66_c5_8aae_iffalse;
     -- Outputs
     VAR_state_rect_pos_x_MUX_rect_h_l66_c5_8aae_return_output := state_rect_pos_x_MUX_rect_h_l66_c5_8aae_return_output;

     -- state_rect_pos_y_MUX[rect_h_l81_c5_88d7] LATENCY=0
     -- Inputs
     state_rect_pos_y_MUX_rect_h_l81_c5_88d7_cond <= VAR_state_rect_pos_y_MUX_rect_h_l81_c5_88d7_cond;
     state_rect_pos_y_MUX_rect_h_l81_c5_88d7_iftrue <= VAR_state_rect_pos_y_MUX_rect_h_l81_c5_88d7_iftrue;
     state_rect_pos_y_MUX_rect_h_l81_c5_88d7_iffalse <= VAR_state_rect_pos_y_MUX_rect_h_l81_c5_88d7_iffalse;
     -- Outputs
     VAR_state_rect_pos_y_MUX_rect_h_l81_c5_88d7_return_output := state_rect_pos_y_MUX_rect_h_l81_c5_88d7_return_output;

     -- Submodule level 3
     VAR_state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_iffalse := VAR_state_rect_pos_x_MUX_rect_h_l66_c5_8aae_return_output;
     VAR_state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_iffalse := VAR_state_rect_pos_y_MUX_rect_h_l81_c5_88d7_return_output;
     -- state_rect_pos_y_MUX[rect_h_l75_c3_fbe3] LATENCY=0
     -- Inputs
     state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_cond <= VAR_state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_cond;
     state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_iftrue <= VAR_state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_iftrue;
     state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_iffalse <= VAR_state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_iffalse;
     -- Outputs
     VAR_state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_return_output := state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_return_output;

     -- state_rect_pos_x_MUX[rect_h_l60_c3_7f4b] LATENCY=0
     -- Inputs
     state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_cond <= VAR_state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_cond;
     state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_iftrue <= VAR_state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_iftrue;
     state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_iffalse <= VAR_state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_iffalse;
     -- Outputs
     VAR_state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_return_output := state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_return_output;

     -- Submodule level 4
     -- CONST_REF_RD_rect_animated_t_rect_animated_t_3222[rect_h_l90_c10_782b] LATENCY=0
     VAR_CONST_REF_RD_rect_animated_t_rect_animated_t_3222_rect_h_l90_c10_782b_return_output := CONST_REF_RD_rect_animated_t_rect_animated_t_3222(
     VAR_state,
     VAR_state_rect_pos_x_MUX_rect_h_l60_c3_7f4b_return_output,
     VAR_state_rect_pos_y_MUX_rect_h_l75_c3_fbe3_return_output);

     -- Submodule level 5
     VAR_return_output := VAR_CONST_REF_RD_rect_animated_t_rect_animated_t_3222_rect_h_l90_c10_782b_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
