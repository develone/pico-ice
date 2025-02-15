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
-- state_rect_pos_x_MUX[rect_h_l60_c3_037f]
signal state_rect_pos_x_MUX_rect_h_l60_c3_037f_cond : unsigned(0 downto 0);
signal state_rect_pos_x_MUX_rect_h_l60_c3_037f_iftrue : unsigned(11 downto 0);
signal state_rect_pos_x_MUX_rect_h_l60_c3_037f_iffalse : unsigned(11 downto 0);
signal state_rect_pos_x_MUX_rect_h_l60_c3_037f_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[rect_h_l62_c24_8750]
signal BIN_OP_PLUS_rect_h_l62_c24_8750_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l62_c24_8750_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l62_c24_8750_return_output : unsigned(12 downto 0);

-- BIN_OP_GT[rect_h_l66_c8_cefc]
signal BIN_OP_GT_rect_h_l66_c8_cefc_left : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l66_c8_cefc_right : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l66_c8_cefc_return_output : unsigned(0 downto 0);

-- state_rect_pos_x_MUX[rect_h_l66_c5_ee9a]
signal state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_cond : unsigned(0 downto 0);
signal state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_iftrue : unsigned(11 downto 0);
signal state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_iffalse : unsigned(11 downto 0);
signal state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_return_output : unsigned(11 downto 0);

-- BIN_OP_MINUS[rect_h_l68_c26_4777]
signal BIN_OP_MINUS_rect_h_l68_c26_4777_left : unsigned(11 downto 0);
signal BIN_OP_MINUS_rect_h_l68_c26_4777_right : unsigned(11 downto 0);
signal BIN_OP_MINUS_rect_h_l68_c26_4777_return_output : unsigned(11 downto 0);

-- state_rect_pos_y_MUX[rect_h_l75_c3_5d47]
signal state_rect_pos_y_MUX_rect_h_l75_c3_5d47_cond : unsigned(0 downto 0);
signal state_rect_pos_y_MUX_rect_h_l75_c3_5d47_iftrue : unsigned(11 downto 0);
signal state_rect_pos_y_MUX_rect_h_l75_c3_5d47_iffalse : unsigned(11 downto 0);
signal state_rect_pos_y_MUX_rect_h_l75_c3_5d47_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[rect_h_l77_c24_7c84]
signal BIN_OP_PLUS_rect_h_l77_c24_7c84_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l77_c24_7c84_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l77_c24_7c84_return_output : unsigned(12 downto 0);

-- BIN_OP_GT[rect_h_l81_c8_4f48]
signal BIN_OP_GT_rect_h_l81_c8_4f48_left : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l81_c8_4f48_right : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l81_c8_4f48_return_output : unsigned(0 downto 0);

-- state_rect_pos_y_MUX[rect_h_l81_c5_6ab2]
signal state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_cond : unsigned(0 downto 0);
signal state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_iftrue : unsigned(11 downto 0);
signal state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_iffalse : unsigned(11 downto 0);
signal state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_return_output : unsigned(11 downto 0);

-- BIN_OP_MINUS[rect_h_l83_c26_8179]
signal BIN_OP_MINUS_rect_h_l83_c26_8179_left : unsigned(11 downto 0);
signal BIN_OP_MINUS_rect_h_l83_c26_8179_right : unsigned(11 downto 0);
signal BIN_OP_MINUS_rect_h_l83_c26_8179_return_output : unsigned(11 downto 0);

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
-- state_rect_pos_x_MUX_rect_h_l60_c3_037f : 0 clocks latency
state_rect_pos_x_MUX_rect_h_l60_c3_037f : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
state_rect_pos_x_MUX_rect_h_l60_c3_037f_cond,
state_rect_pos_x_MUX_rect_h_l60_c3_037f_iftrue,
state_rect_pos_x_MUX_rect_h_l60_c3_037f_iffalse,
state_rect_pos_x_MUX_rect_h_l60_c3_037f_return_output);

-- BIN_OP_PLUS_rect_h_l62_c24_8750 : 0 clocks latency
BIN_OP_PLUS_rect_h_l62_c24_8750 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l62_c24_8750_left,
BIN_OP_PLUS_rect_h_l62_c24_8750_right,
BIN_OP_PLUS_rect_h_l62_c24_8750_return_output);

-- BIN_OP_GT_rect_h_l66_c8_cefc : 0 clocks latency
BIN_OP_GT_rect_h_l66_c8_cefc : entity work.BIN_OP_GT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_GT_rect_h_l66_c8_cefc_left,
BIN_OP_GT_rect_h_l66_c8_cefc_right,
BIN_OP_GT_rect_h_l66_c8_cefc_return_output);

-- state_rect_pos_x_MUX_rect_h_l66_c5_ee9a : 0 clocks latency
state_rect_pos_x_MUX_rect_h_l66_c5_ee9a : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_cond,
state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_iftrue,
state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_iffalse,
state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_return_output);

-- BIN_OP_MINUS_rect_h_l68_c26_4777 : 0 clocks latency
BIN_OP_MINUS_rect_h_l68_c26_4777 : entity work.BIN_OP_MINUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_MINUS_rect_h_l68_c26_4777_left,
BIN_OP_MINUS_rect_h_l68_c26_4777_right,
BIN_OP_MINUS_rect_h_l68_c26_4777_return_output);

-- state_rect_pos_y_MUX_rect_h_l75_c3_5d47 : 0 clocks latency
state_rect_pos_y_MUX_rect_h_l75_c3_5d47 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
state_rect_pos_y_MUX_rect_h_l75_c3_5d47_cond,
state_rect_pos_y_MUX_rect_h_l75_c3_5d47_iftrue,
state_rect_pos_y_MUX_rect_h_l75_c3_5d47_iffalse,
state_rect_pos_y_MUX_rect_h_l75_c3_5d47_return_output);

-- BIN_OP_PLUS_rect_h_l77_c24_7c84 : 0 clocks latency
BIN_OP_PLUS_rect_h_l77_c24_7c84 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l77_c24_7c84_left,
BIN_OP_PLUS_rect_h_l77_c24_7c84_right,
BIN_OP_PLUS_rect_h_l77_c24_7c84_return_output);

-- BIN_OP_GT_rect_h_l81_c8_4f48 : 0 clocks latency
BIN_OP_GT_rect_h_l81_c8_4f48 : entity work.BIN_OP_GT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_GT_rect_h_l81_c8_4f48_left,
BIN_OP_GT_rect_h_l81_c8_4f48_right,
BIN_OP_GT_rect_h_l81_c8_4f48_return_output);

-- state_rect_pos_y_MUX_rect_h_l81_c5_6ab2 : 0 clocks latency
state_rect_pos_y_MUX_rect_h_l81_c5_6ab2 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_cond,
state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_iftrue,
state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_iffalse,
state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_return_output);

-- BIN_OP_MINUS_rect_h_l83_c26_8179 : 0 clocks latency
BIN_OP_MINUS_rect_h_l83_c26_8179 : entity work.BIN_OP_MINUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_MINUS_rect_h_l83_c26_8179_left,
BIN_OP_MINUS_rect_h_l83_c26_8179_right,
BIN_OP_MINUS_rect_h_l83_c26_8179_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 state,
 -- All submodule outputs
 state_rect_pos_x_MUX_rect_h_l60_c3_037f_return_output,
 BIN_OP_PLUS_rect_h_l62_c24_8750_return_output,
 BIN_OP_GT_rect_h_l66_c8_cefc_return_output,
 state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_return_output,
 BIN_OP_MINUS_rect_h_l68_c26_4777_return_output,
 state_rect_pos_y_MUX_rect_h_l75_c3_5d47_return_output,
 BIN_OP_PLUS_rect_h_l77_c24_7c84_return_output,
 BIN_OP_GT_rect_h_l81_c8_4f48_return_output,
 state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_return_output,
 BIN_OP_MINUS_rect_h_l83_c26_8179_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : rect_animated_t;
 variable VAR_state : rect_animated_t;
 variable VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d_rect_h_l60_c6_56e7_return_output : unsigned(0 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l60_c3_037f_iftrue : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_rect_h_l62_c5_db1a : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l60_c3_037f_iffalse : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_return_output : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l60_c3_037f_return_output : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l60_c3_037f_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l62_c24_8750_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l62_c24_8750_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l62_c24_8750_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l66_c8_cefc_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l66_c8_cefc_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l66_c8_cefc_return_output : unsigned(0 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_iftrue : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_iffalse : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_rect_h_l72_c7_b67a : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l68_c26_4777_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l68_c26_4777_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l68_c26_4777_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d_rect_h_l75_c6_01b6_return_output : unsigned(0 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l75_c3_5d47_iftrue : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_rect_h_l77_c5_72b5 : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l75_c3_5d47_iffalse : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_return_output : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l75_c3_5d47_return_output : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l75_c3_5d47_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l77_c24_7c84_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l77_c24_7c84_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l77_c24_7c84_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l81_c8_4f48_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l81_c8_4f48_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l81_c8_4f48_return_output : unsigned(0 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_iftrue : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_iffalse : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_rect_h_l87_c7_e083 : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l83_c26_8179_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l83_c26_8179_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l83_c26_8179_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_rect_animated_t_rect_animated_t_3222_rect_h_l90_c10_5eb3_return_output : rect_animated_t;
 variable VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l66_l62_l68_DUPLICATE_c1a2_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l62_l68_l66_DUPLICATE_a07e_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l81_l83_l77_DUPLICATE_6fa2_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l83_l81_DUPLICATE_e62c_return_output : unsigned(11 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_state_rect_pos_y_rect_h_l87_c7_e083 := resize(to_unsigned(0, 1), 12);
     VAR_state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_iffalse := VAR_state_rect_pos_y_rect_h_l87_c7_e083;
     VAR_state_rect_pos_x_rect_h_l72_c7_b67a := resize(to_unsigned(0, 1), 12);
     VAR_state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_iffalse := VAR_state_rect_pos_x_rect_h_l72_c7_b67a;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_state := state;

     -- Submodule level 0
     -- CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l62_l68_l66_DUPLICATE_a07e LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l62_l68_l66_DUPLICATE_a07e_return_output := VAR_state.vel.x;

     -- CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d[rect_h_l75_c6_01b6] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d_rect_h_l75_c6_01b6_return_output := VAR_state.vel_y_dir;

     -- CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l81_l83_l77_DUPLICATE_6fa2 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l81_l83_l77_DUPLICATE_6fa2_return_output := VAR_state.rect.pos.y;

     -- CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l66_l62_l68_DUPLICATE_c1a2 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l66_l62_l68_DUPLICATE_c1a2_return_output := VAR_state.rect.pos.x;

     -- CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l83_l81_DUPLICATE_e62c LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l83_l81_DUPLICATE_e62c_return_output := VAR_state.vel.y;

     -- CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d[rect_h_l60_c6_56e7] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d_rect_h_l60_c6_56e7_return_output := VAR_state.vel_x_dir;

     -- Submodule level 1
     VAR_BIN_OP_GT_rect_h_l66_c8_cefc_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l66_l62_l68_DUPLICATE_c1a2_return_output;
     VAR_BIN_OP_MINUS_rect_h_l68_c26_4777_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l66_l62_l68_DUPLICATE_c1a2_return_output;
     VAR_BIN_OP_PLUS_rect_h_l62_c24_8750_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l66_l62_l68_DUPLICATE_c1a2_return_output;
     VAR_BIN_OP_GT_rect_h_l81_c8_4f48_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l81_l83_l77_DUPLICATE_6fa2_return_output;
     VAR_BIN_OP_MINUS_rect_h_l83_c26_8179_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l81_l83_l77_DUPLICATE_6fa2_return_output;
     VAR_BIN_OP_PLUS_rect_h_l77_c24_7c84_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l81_l83_l77_DUPLICATE_6fa2_return_output;
     VAR_BIN_OP_GT_rect_h_l66_c8_cefc_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l62_l68_l66_DUPLICATE_a07e_return_output;
     VAR_BIN_OP_MINUS_rect_h_l68_c26_4777_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l62_l68_l66_DUPLICATE_a07e_return_output;
     VAR_BIN_OP_PLUS_rect_h_l62_c24_8750_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l62_l68_l66_DUPLICATE_a07e_return_output;
     VAR_BIN_OP_GT_rect_h_l81_c8_4f48_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l83_l81_DUPLICATE_e62c_return_output;
     VAR_BIN_OP_MINUS_rect_h_l83_c26_8179_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l83_l81_DUPLICATE_e62c_return_output;
     VAR_BIN_OP_PLUS_rect_h_l77_c24_7c84_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l83_l81_DUPLICATE_e62c_return_output;
     VAR_state_rect_pos_x_MUX_rect_h_l60_c3_037f_cond := VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d_rect_h_l60_c6_56e7_return_output;
     VAR_state_rect_pos_y_MUX_rect_h_l75_c3_5d47_cond := VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d_rect_h_l75_c6_01b6_return_output;
     -- BIN_OP_PLUS[rect_h_l62_c24_8750] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l62_c24_8750_left <= VAR_BIN_OP_PLUS_rect_h_l62_c24_8750_left;
     BIN_OP_PLUS_rect_h_l62_c24_8750_right <= VAR_BIN_OP_PLUS_rect_h_l62_c24_8750_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l62_c24_8750_return_output := BIN_OP_PLUS_rect_h_l62_c24_8750_return_output;

     -- BIN_OP_GT[rect_h_l81_c8_4f48] LATENCY=0
     -- Inputs
     BIN_OP_GT_rect_h_l81_c8_4f48_left <= VAR_BIN_OP_GT_rect_h_l81_c8_4f48_left;
     BIN_OP_GT_rect_h_l81_c8_4f48_right <= VAR_BIN_OP_GT_rect_h_l81_c8_4f48_right;
     -- Outputs
     VAR_BIN_OP_GT_rect_h_l81_c8_4f48_return_output := BIN_OP_GT_rect_h_l81_c8_4f48_return_output;

     -- BIN_OP_GT[rect_h_l66_c8_cefc] LATENCY=0
     -- Inputs
     BIN_OP_GT_rect_h_l66_c8_cefc_left <= VAR_BIN_OP_GT_rect_h_l66_c8_cefc_left;
     BIN_OP_GT_rect_h_l66_c8_cefc_right <= VAR_BIN_OP_GT_rect_h_l66_c8_cefc_right;
     -- Outputs
     VAR_BIN_OP_GT_rect_h_l66_c8_cefc_return_output := BIN_OP_GT_rect_h_l66_c8_cefc_return_output;

     -- BIN_OP_PLUS[rect_h_l77_c24_7c84] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l77_c24_7c84_left <= VAR_BIN_OP_PLUS_rect_h_l77_c24_7c84_left;
     BIN_OP_PLUS_rect_h_l77_c24_7c84_right <= VAR_BIN_OP_PLUS_rect_h_l77_c24_7c84_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l77_c24_7c84_return_output := BIN_OP_PLUS_rect_h_l77_c24_7c84_return_output;

     -- BIN_OP_MINUS[rect_h_l68_c26_4777] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_rect_h_l68_c26_4777_left <= VAR_BIN_OP_MINUS_rect_h_l68_c26_4777_left;
     BIN_OP_MINUS_rect_h_l68_c26_4777_right <= VAR_BIN_OP_MINUS_rect_h_l68_c26_4777_right;
     -- Outputs
     VAR_BIN_OP_MINUS_rect_h_l68_c26_4777_return_output := BIN_OP_MINUS_rect_h_l68_c26_4777_return_output;

     -- BIN_OP_MINUS[rect_h_l83_c26_8179] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_rect_h_l83_c26_8179_left <= VAR_BIN_OP_MINUS_rect_h_l83_c26_8179_left;
     BIN_OP_MINUS_rect_h_l83_c26_8179_right <= VAR_BIN_OP_MINUS_rect_h_l83_c26_8179_right;
     -- Outputs
     VAR_BIN_OP_MINUS_rect_h_l83_c26_8179_return_output := BIN_OP_MINUS_rect_h_l83_c26_8179_return_output;

     -- Submodule level 2
     VAR_state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_cond := VAR_BIN_OP_GT_rect_h_l66_c8_cefc_return_output;
     VAR_state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_cond := VAR_BIN_OP_GT_rect_h_l81_c8_4f48_return_output;
     VAR_state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_iftrue := VAR_BIN_OP_MINUS_rect_h_l68_c26_4777_return_output;
     VAR_state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_iftrue := VAR_BIN_OP_MINUS_rect_h_l83_c26_8179_return_output;
     VAR_state_rect_pos_x_rect_h_l62_c5_db1a := resize(VAR_BIN_OP_PLUS_rect_h_l62_c24_8750_return_output, 12);
     VAR_state_rect_pos_y_rect_h_l77_c5_72b5 := resize(VAR_BIN_OP_PLUS_rect_h_l77_c24_7c84_return_output, 12);
     VAR_state_rect_pos_x_MUX_rect_h_l60_c3_037f_iftrue := VAR_state_rect_pos_x_rect_h_l62_c5_db1a;
     VAR_state_rect_pos_y_MUX_rect_h_l75_c3_5d47_iftrue := VAR_state_rect_pos_y_rect_h_l77_c5_72b5;
     -- state_rect_pos_x_MUX[rect_h_l66_c5_ee9a] LATENCY=0
     -- Inputs
     state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_cond <= VAR_state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_cond;
     state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_iftrue <= VAR_state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_iftrue;
     state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_iffalse <= VAR_state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_iffalse;
     -- Outputs
     VAR_state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_return_output := state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_return_output;

     -- state_rect_pos_y_MUX[rect_h_l81_c5_6ab2] LATENCY=0
     -- Inputs
     state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_cond <= VAR_state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_cond;
     state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_iftrue <= VAR_state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_iftrue;
     state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_iffalse <= VAR_state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_iffalse;
     -- Outputs
     VAR_state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_return_output := state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_return_output;

     -- Submodule level 3
     VAR_state_rect_pos_x_MUX_rect_h_l60_c3_037f_iffalse := VAR_state_rect_pos_x_MUX_rect_h_l66_c5_ee9a_return_output;
     VAR_state_rect_pos_y_MUX_rect_h_l75_c3_5d47_iffalse := VAR_state_rect_pos_y_MUX_rect_h_l81_c5_6ab2_return_output;
     -- state_rect_pos_x_MUX[rect_h_l60_c3_037f] LATENCY=0
     -- Inputs
     state_rect_pos_x_MUX_rect_h_l60_c3_037f_cond <= VAR_state_rect_pos_x_MUX_rect_h_l60_c3_037f_cond;
     state_rect_pos_x_MUX_rect_h_l60_c3_037f_iftrue <= VAR_state_rect_pos_x_MUX_rect_h_l60_c3_037f_iftrue;
     state_rect_pos_x_MUX_rect_h_l60_c3_037f_iffalse <= VAR_state_rect_pos_x_MUX_rect_h_l60_c3_037f_iffalse;
     -- Outputs
     VAR_state_rect_pos_x_MUX_rect_h_l60_c3_037f_return_output := state_rect_pos_x_MUX_rect_h_l60_c3_037f_return_output;

     -- state_rect_pos_y_MUX[rect_h_l75_c3_5d47] LATENCY=0
     -- Inputs
     state_rect_pos_y_MUX_rect_h_l75_c3_5d47_cond <= VAR_state_rect_pos_y_MUX_rect_h_l75_c3_5d47_cond;
     state_rect_pos_y_MUX_rect_h_l75_c3_5d47_iftrue <= VAR_state_rect_pos_y_MUX_rect_h_l75_c3_5d47_iftrue;
     state_rect_pos_y_MUX_rect_h_l75_c3_5d47_iffalse <= VAR_state_rect_pos_y_MUX_rect_h_l75_c3_5d47_iffalse;
     -- Outputs
     VAR_state_rect_pos_y_MUX_rect_h_l75_c3_5d47_return_output := state_rect_pos_y_MUX_rect_h_l75_c3_5d47_return_output;

     -- Submodule level 4
     -- CONST_REF_RD_rect_animated_t_rect_animated_t_3222[rect_h_l90_c10_5eb3] LATENCY=0
     VAR_CONST_REF_RD_rect_animated_t_rect_animated_t_3222_rect_h_l90_c10_5eb3_return_output := CONST_REF_RD_rect_animated_t_rect_animated_t_3222(
     VAR_state,
     VAR_state_rect_pos_x_MUX_rect_h_l60_c3_037f_return_output,
     VAR_state_rect_pos_y_MUX_rect_h_l75_c3_5d47_return_output);

     -- Submodule level 5
     VAR_return_output := VAR_CONST_REF_RD_rect_animated_t_rect_animated_t_3222_rect_h_l90_c10_5eb3_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
