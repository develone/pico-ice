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
-- state_rect_pos_x_MUX[rect_h_l60_c3_380b]
signal state_rect_pos_x_MUX_rect_h_l60_c3_380b_cond : unsigned(0 downto 0);
signal state_rect_pos_x_MUX_rect_h_l60_c3_380b_iftrue : unsigned(11 downto 0);
signal state_rect_pos_x_MUX_rect_h_l60_c3_380b_iffalse : unsigned(11 downto 0);
signal state_rect_pos_x_MUX_rect_h_l60_c3_380b_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[rect_h_l62_c24_2d40]
signal BIN_OP_PLUS_rect_h_l62_c24_2d40_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l62_c24_2d40_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l62_c24_2d40_return_output : unsigned(12 downto 0);

-- BIN_OP_GT[rect_h_l66_c8_1835]
signal BIN_OP_GT_rect_h_l66_c8_1835_left : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l66_c8_1835_right : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l66_c8_1835_return_output : unsigned(0 downto 0);

-- state_rect_pos_x_MUX[rect_h_l66_c5_3642]
signal state_rect_pos_x_MUX_rect_h_l66_c5_3642_cond : unsigned(0 downto 0);
signal state_rect_pos_x_MUX_rect_h_l66_c5_3642_iftrue : unsigned(11 downto 0);
signal state_rect_pos_x_MUX_rect_h_l66_c5_3642_iffalse : unsigned(11 downto 0);
signal state_rect_pos_x_MUX_rect_h_l66_c5_3642_return_output : unsigned(11 downto 0);

-- BIN_OP_MINUS[rect_h_l68_c26_fc74]
signal BIN_OP_MINUS_rect_h_l68_c26_fc74_left : unsigned(11 downto 0);
signal BIN_OP_MINUS_rect_h_l68_c26_fc74_right : unsigned(11 downto 0);
signal BIN_OP_MINUS_rect_h_l68_c26_fc74_return_output : unsigned(11 downto 0);

-- state_rect_pos_y_MUX[rect_h_l75_c3_1ef6]
signal state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_cond : unsigned(0 downto 0);
signal state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_iftrue : unsigned(11 downto 0);
signal state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_iffalse : unsigned(11 downto 0);
signal state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[rect_h_l77_c24_a30a]
signal BIN_OP_PLUS_rect_h_l77_c24_a30a_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l77_c24_a30a_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l77_c24_a30a_return_output : unsigned(12 downto 0);

-- BIN_OP_GT[rect_h_l81_c8_ae06]
signal BIN_OP_GT_rect_h_l81_c8_ae06_left : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l81_c8_ae06_right : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l81_c8_ae06_return_output : unsigned(0 downto 0);

-- state_rect_pos_y_MUX[rect_h_l81_c5_c4be]
signal state_rect_pos_y_MUX_rect_h_l81_c5_c4be_cond : unsigned(0 downto 0);
signal state_rect_pos_y_MUX_rect_h_l81_c5_c4be_iftrue : unsigned(11 downto 0);
signal state_rect_pos_y_MUX_rect_h_l81_c5_c4be_iffalse : unsigned(11 downto 0);
signal state_rect_pos_y_MUX_rect_h_l81_c5_c4be_return_output : unsigned(11 downto 0);

-- BIN_OP_MINUS[rect_h_l83_c26_b559]
signal BIN_OP_MINUS_rect_h_l83_c26_b559_left : unsigned(11 downto 0);
signal BIN_OP_MINUS_rect_h_l83_c26_b559_right : unsigned(11 downto 0);
signal BIN_OP_MINUS_rect_h_l83_c26_b559_return_output : unsigned(11 downto 0);

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
-- state_rect_pos_x_MUX_rect_h_l60_c3_380b : 0 clocks latency
state_rect_pos_x_MUX_rect_h_l60_c3_380b : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
state_rect_pos_x_MUX_rect_h_l60_c3_380b_cond,
state_rect_pos_x_MUX_rect_h_l60_c3_380b_iftrue,
state_rect_pos_x_MUX_rect_h_l60_c3_380b_iffalse,
state_rect_pos_x_MUX_rect_h_l60_c3_380b_return_output);

-- BIN_OP_PLUS_rect_h_l62_c24_2d40 : 0 clocks latency
BIN_OP_PLUS_rect_h_l62_c24_2d40 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l62_c24_2d40_left,
BIN_OP_PLUS_rect_h_l62_c24_2d40_right,
BIN_OP_PLUS_rect_h_l62_c24_2d40_return_output);

-- BIN_OP_GT_rect_h_l66_c8_1835 : 0 clocks latency
BIN_OP_GT_rect_h_l66_c8_1835 : entity work.BIN_OP_GT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_GT_rect_h_l66_c8_1835_left,
BIN_OP_GT_rect_h_l66_c8_1835_right,
BIN_OP_GT_rect_h_l66_c8_1835_return_output);

-- state_rect_pos_x_MUX_rect_h_l66_c5_3642 : 0 clocks latency
state_rect_pos_x_MUX_rect_h_l66_c5_3642 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
state_rect_pos_x_MUX_rect_h_l66_c5_3642_cond,
state_rect_pos_x_MUX_rect_h_l66_c5_3642_iftrue,
state_rect_pos_x_MUX_rect_h_l66_c5_3642_iffalse,
state_rect_pos_x_MUX_rect_h_l66_c5_3642_return_output);

-- BIN_OP_MINUS_rect_h_l68_c26_fc74 : 0 clocks latency
BIN_OP_MINUS_rect_h_l68_c26_fc74 : entity work.BIN_OP_MINUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_MINUS_rect_h_l68_c26_fc74_left,
BIN_OP_MINUS_rect_h_l68_c26_fc74_right,
BIN_OP_MINUS_rect_h_l68_c26_fc74_return_output);

-- state_rect_pos_y_MUX_rect_h_l75_c3_1ef6 : 0 clocks latency
state_rect_pos_y_MUX_rect_h_l75_c3_1ef6 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_cond,
state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_iftrue,
state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_iffalse,
state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_return_output);

-- BIN_OP_PLUS_rect_h_l77_c24_a30a : 0 clocks latency
BIN_OP_PLUS_rect_h_l77_c24_a30a : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l77_c24_a30a_left,
BIN_OP_PLUS_rect_h_l77_c24_a30a_right,
BIN_OP_PLUS_rect_h_l77_c24_a30a_return_output);

-- BIN_OP_GT_rect_h_l81_c8_ae06 : 0 clocks latency
BIN_OP_GT_rect_h_l81_c8_ae06 : entity work.BIN_OP_GT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_GT_rect_h_l81_c8_ae06_left,
BIN_OP_GT_rect_h_l81_c8_ae06_right,
BIN_OP_GT_rect_h_l81_c8_ae06_return_output);

-- state_rect_pos_y_MUX_rect_h_l81_c5_c4be : 0 clocks latency
state_rect_pos_y_MUX_rect_h_l81_c5_c4be : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
state_rect_pos_y_MUX_rect_h_l81_c5_c4be_cond,
state_rect_pos_y_MUX_rect_h_l81_c5_c4be_iftrue,
state_rect_pos_y_MUX_rect_h_l81_c5_c4be_iffalse,
state_rect_pos_y_MUX_rect_h_l81_c5_c4be_return_output);

-- BIN_OP_MINUS_rect_h_l83_c26_b559 : 0 clocks latency
BIN_OP_MINUS_rect_h_l83_c26_b559 : entity work.BIN_OP_MINUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_MINUS_rect_h_l83_c26_b559_left,
BIN_OP_MINUS_rect_h_l83_c26_b559_right,
BIN_OP_MINUS_rect_h_l83_c26_b559_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 state,
 -- All submodule outputs
 state_rect_pos_x_MUX_rect_h_l60_c3_380b_return_output,
 BIN_OP_PLUS_rect_h_l62_c24_2d40_return_output,
 BIN_OP_GT_rect_h_l66_c8_1835_return_output,
 state_rect_pos_x_MUX_rect_h_l66_c5_3642_return_output,
 BIN_OP_MINUS_rect_h_l68_c26_fc74_return_output,
 state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_return_output,
 BIN_OP_PLUS_rect_h_l77_c24_a30a_return_output,
 BIN_OP_GT_rect_h_l81_c8_ae06_return_output,
 state_rect_pos_y_MUX_rect_h_l81_c5_c4be_return_output,
 BIN_OP_MINUS_rect_h_l83_c26_b559_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : rect_animated_t;
 variable VAR_state : rect_animated_t;
 variable VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d_rect_h_l60_c6_8cc3_return_output : unsigned(0 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l60_c3_380b_iftrue : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_rect_h_l62_c5_048f : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l60_c3_380b_iffalse : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l66_c5_3642_return_output : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l60_c3_380b_return_output : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l60_c3_380b_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l62_c24_2d40_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l62_c24_2d40_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l62_c24_2d40_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l66_c8_1835_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l66_c8_1835_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l66_c8_1835_return_output : unsigned(0 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l66_c5_3642_iftrue : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l66_c5_3642_iffalse : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_rect_h_l72_c7_49a7 : unsigned(11 downto 0);
 variable VAR_state_rect_pos_x_MUX_rect_h_l66_c5_3642_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l68_c26_fc74_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l68_c26_fc74_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l68_c26_fc74_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d_rect_h_l75_c6_fd11_return_output : unsigned(0 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_iftrue : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_rect_h_l77_c5_a90d : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_iffalse : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l81_c5_c4be_return_output : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_return_output : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l77_c24_a30a_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l77_c24_a30a_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l77_c24_a30a_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l81_c8_ae06_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l81_c8_ae06_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l81_c8_ae06_return_output : unsigned(0 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l81_c5_c4be_iftrue : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l81_c5_c4be_iffalse : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_rect_h_l87_c7_fae6 : unsigned(11 downto 0);
 variable VAR_state_rect_pos_y_MUX_rect_h_l81_c5_c4be_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l83_c26_b559_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l83_c26_b559_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_MINUS_rect_h_l83_c26_b559_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_rect_animated_t_rect_animated_t_3222_rect_h_l90_c10_27cb_return_output : rect_animated_t;
 variable VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l66_l62_l68_DUPLICATE_63ba_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l62_l68_l66_DUPLICATE_f97c_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l81_l83_l77_DUPLICATE_a9e7_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l83_l81_DUPLICATE_66f0_return_output : unsigned(11 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_state_rect_pos_x_rect_h_l72_c7_49a7 := resize(to_unsigned(0, 1), 12);
     VAR_state_rect_pos_x_MUX_rect_h_l66_c5_3642_iffalse := VAR_state_rect_pos_x_rect_h_l72_c7_49a7;
     VAR_state_rect_pos_y_rect_h_l87_c7_fae6 := resize(to_unsigned(0, 1), 12);
     VAR_state_rect_pos_y_MUX_rect_h_l81_c5_c4be_iffalse := VAR_state_rect_pos_y_rect_h_l87_c7_fae6;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_state := state;

     -- Submodule level 0
     -- CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d[rect_h_l60_c6_8cc3] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d_rect_h_l60_c6_8cc3_return_output := VAR_state.vel_x_dir;

     -- CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d[rect_h_l75_c6_fd11] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d_rect_h_l75_c6_fd11_return_output := VAR_state.vel_y_dir;

     -- CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l81_l83_l77_DUPLICATE_a9e7 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l81_l83_l77_DUPLICATE_a9e7_return_output := VAR_state.rect.pos.y;

     -- CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l62_l68_l66_DUPLICATE_f97c LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l62_l68_l66_DUPLICATE_f97c_return_output := VAR_state.vel.x;

     -- CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l66_l62_l68_DUPLICATE_63ba LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l66_l62_l68_DUPLICATE_63ba_return_output := VAR_state.rect.pos.x;

     -- CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l83_l81_DUPLICATE_66f0 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l83_l81_DUPLICATE_66f0_return_output := VAR_state.vel.y;

     -- Submodule level 1
     VAR_BIN_OP_GT_rect_h_l66_c8_1835_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l66_l62_l68_DUPLICATE_63ba_return_output;
     VAR_BIN_OP_MINUS_rect_h_l68_c26_fc74_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l66_l62_l68_DUPLICATE_63ba_return_output;
     VAR_BIN_OP_PLUS_rect_h_l62_c24_2d40_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_rect_h_l66_l62_l68_DUPLICATE_63ba_return_output;
     VAR_BIN_OP_GT_rect_h_l81_c8_ae06_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l81_l83_l77_DUPLICATE_a9e7_return_output;
     VAR_BIN_OP_MINUS_rect_h_l83_c26_b559_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l81_l83_l77_DUPLICATE_a9e7_return_output;
     VAR_BIN_OP_PLUS_rect_h_l77_c24_a30a_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_rect_h_l81_l83_l77_DUPLICATE_a9e7_return_output;
     VAR_BIN_OP_GT_rect_h_l66_c8_1835_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l62_l68_l66_DUPLICATE_f97c_return_output;
     VAR_BIN_OP_MINUS_rect_h_l68_c26_fc74_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l62_l68_l66_DUPLICATE_f97c_return_output;
     VAR_BIN_OP_PLUS_rect_h_l62_c24_2d40_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_x_d41d_rect_h_l62_l68_l66_DUPLICATE_f97c_return_output;
     VAR_BIN_OP_GT_rect_h_l81_c8_ae06_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l83_l81_DUPLICATE_66f0_return_output;
     VAR_BIN_OP_MINUS_rect_h_l83_c26_b559_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l83_l81_DUPLICATE_66f0_return_output;
     VAR_BIN_OP_PLUS_rect_h_l77_c24_a30a_right := VAR_CONST_REF_RD_uint12_t_rect_animated_t_vel_y_d41d_rect_h_l77_l83_l81_DUPLICATE_66f0_return_output;
     VAR_state_rect_pos_x_MUX_rect_h_l60_c3_380b_cond := VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d_rect_h_l60_c6_8cc3_return_output;
     VAR_state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_cond := VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d_rect_h_l75_c6_fd11_return_output;
     -- BIN_OP_PLUS[rect_h_l62_c24_2d40] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l62_c24_2d40_left <= VAR_BIN_OP_PLUS_rect_h_l62_c24_2d40_left;
     BIN_OP_PLUS_rect_h_l62_c24_2d40_right <= VAR_BIN_OP_PLUS_rect_h_l62_c24_2d40_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l62_c24_2d40_return_output := BIN_OP_PLUS_rect_h_l62_c24_2d40_return_output;

     -- BIN_OP_PLUS[rect_h_l77_c24_a30a] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l77_c24_a30a_left <= VAR_BIN_OP_PLUS_rect_h_l77_c24_a30a_left;
     BIN_OP_PLUS_rect_h_l77_c24_a30a_right <= VAR_BIN_OP_PLUS_rect_h_l77_c24_a30a_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l77_c24_a30a_return_output := BIN_OP_PLUS_rect_h_l77_c24_a30a_return_output;

     -- BIN_OP_GT[rect_h_l66_c8_1835] LATENCY=0
     -- Inputs
     BIN_OP_GT_rect_h_l66_c8_1835_left <= VAR_BIN_OP_GT_rect_h_l66_c8_1835_left;
     BIN_OP_GT_rect_h_l66_c8_1835_right <= VAR_BIN_OP_GT_rect_h_l66_c8_1835_right;
     -- Outputs
     VAR_BIN_OP_GT_rect_h_l66_c8_1835_return_output := BIN_OP_GT_rect_h_l66_c8_1835_return_output;

     -- BIN_OP_GT[rect_h_l81_c8_ae06] LATENCY=0
     -- Inputs
     BIN_OP_GT_rect_h_l81_c8_ae06_left <= VAR_BIN_OP_GT_rect_h_l81_c8_ae06_left;
     BIN_OP_GT_rect_h_l81_c8_ae06_right <= VAR_BIN_OP_GT_rect_h_l81_c8_ae06_right;
     -- Outputs
     VAR_BIN_OP_GT_rect_h_l81_c8_ae06_return_output := BIN_OP_GT_rect_h_l81_c8_ae06_return_output;

     -- BIN_OP_MINUS[rect_h_l68_c26_fc74] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_rect_h_l68_c26_fc74_left <= VAR_BIN_OP_MINUS_rect_h_l68_c26_fc74_left;
     BIN_OP_MINUS_rect_h_l68_c26_fc74_right <= VAR_BIN_OP_MINUS_rect_h_l68_c26_fc74_right;
     -- Outputs
     VAR_BIN_OP_MINUS_rect_h_l68_c26_fc74_return_output := BIN_OP_MINUS_rect_h_l68_c26_fc74_return_output;

     -- BIN_OP_MINUS[rect_h_l83_c26_b559] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_rect_h_l83_c26_b559_left <= VAR_BIN_OP_MINUS_rect_h_l83_c26_b559_left;
     BIN_OP_MINUS_rect_h_l83_c26_b559_right <= VAR_BIN_OP_MINUS_rect_h_l83_c26_b559_right;
     -- Outputs
     VAR_BIN_OP_MINUS_rect_h_l83_c26_b559_return_output := BIN_OP_MINUS_rect_h_l83_c26_b559_return_output;

     -- Submodule level 2
     VAR_state_rect_pos_x_MUX_rect_h_l66_c5_3642_cond := VAR_BIN_OP_GT_rect_h_l66_c8_1835_return_output;
     VAR_state_rect_pos_y_MUX_rect_h_l81_c5_c4be_cond := VAR_BIN_OP_GT_rect_h_l81_c8_ae06_return_output;
     VAR_state_rect_pos_x_MUX_rect_h_l66_c5_3642_iftrue := VAR_BIN_OP_MINUS_rect_h_l68_c26_fc74_return_output;
     VAR_state_rect_pos_y_MUX_rect_h_l81_c5_c4be_iftrue := VAR_BIN_OP_MINUS_rect_h_l83_c26_b559_return_output;
     VAR_state_rect_pos_x_rect_h_l62_c5_048f := resize(VAR_BIN_OP_PLUS_rect_h_l62_c24_2d40_return_output, 12);
     VAR_state_rect_pos_y_rect_h_l77_c5_a90d := resize(VAR_BIN_OP_PLUS_rect_h_l77_c24_a30a_return_output, 12);
     VAR_state_rect_pos_x_MUX_rect_h_l60_c3_380b_iftrue := VAR_state_rect_pos_x_rect_h_l62_c5_048f;
     VAR_state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_iftrue := VAR_state_rect_pos_y_rect_h_l77_c5_a90d;
     -- state_rect_pos_x_MUX[rect_h_l66_c5_3642] LATENCY=0
     -- Inputs
     state_rect_pos_x_MUX_rect_h_l66_c5_3642_cond <= VAR_state_rect_pos_x_MUX_rect_h_l66_c5_3642_cond;
     state_rect_pos_x_MUX_rect_h_l66_c5_3642_iftrue <= VAR_state_rect_pos_x_MUX_rect_h_l66_c5_3642_iftrue;
     state_rect_pos_x_MUX_rect_h_l66_c5_3642_iffalse <= VAR_state_rect_pos_x_MUX_rect_h_l66_c5_3642_iffalse;
     -- Outputs
     VAR_state_rect_pos_x_MUX_rect_h_l66_c5_3642_return_output := state_rect_pos_x_MUX_rect_h_l66_c5_3642_return_output;

     -- state_rect_pos_y_MUX[rect_h_l81_c5_c4be] LATENCY=0
     -- Inputs
     state_rect_pos_y_MUX_rect_h_l81_c5_c4be_cond <= VAR_state_rect_pos_y_MUX_rect_h_l81_c5_c4be_cond;
     state_rect_pos_y_MUX_rect_h_l81_c5_c4be_iftrue <= VAR_state_rect_pos_y_MUX_rect_h_l81_c5_c4be_iftrue;
     state_rect_pos_y_MUX_rect_h_l81_c5_c4be_iffalse <= VAR_state_rect_pos_y_MUX_rect_h_l81_c5_c4be_iffalse;
     -- Outputs
     VAR_state_rect_pos_y_MUX_rect_h_l81_c5_c4be_return_output := state_rect_pos_y_MUX_rect_h_l81_c5_c4be_return_output;

     -- Submodule level 3
     VAR_state_rect_pos_x_MUX_rect_h_l60_c3_380b_iffalse := VAR_state_rect_pos_x_MUX_rect_h_l66_c5_3642_return_output;
     VAR_state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_iffalse := VAR_state_rect_pos_y_MUX_rect_h_l81_c5_c4be_return_output;
     -- state_rect_pos_y_MUX[rect_h_l75_c3_1ef6] LATENCY=0
     -- Inputs
     state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_cond <= VAR_state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_cond;
     state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_iftrue <= VAR_state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_iftrue;
     state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_iffalse <= VAR_state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_iffalse;
     -- Outputs
     VAR_state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_return_output := state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_return_output;

     -- state_rect_pos_x_MUX[rect_h_l60_c3_380b] LATENCY=0
     -- Inputs
     state_rect_pos_x_MUX_rect_h_l60_c3_380b_cond <= VAR_state_rect_pos_x_MUX_rect_h_l60_c3_380b_cond;
     state_rect_pos_x_MUX_rect_h_l60_c3_380b_iftrue <= VAR_state_rect_pos_x_MUX_rect_h_l60_c3_380b_iftrue;
     state_rect_pos_x_MUX_rect_h_l60_c3_380b_iffalse <= VAR_state_rect_pos_x_MUX_rect_h_l60_c3_380b_iffalse;
     -- Outputs
     VAR_state_rect_pos_x_MUX_rect_h_l60_c3_380b_return_output := state_rect_pos_x_MUX_rect_h_l60_c3_380b_return_output;

     -- Submodule level 4
     -- CONST_REF_RD_rect_animated_t_rect_animated_t_3222[rect_h_l90_c10_27cb] LATENCY=0
     VAR_CONST_REF_RD_rect_animated_t_rect_animated_t_3222_rect_h_l90_c10_27cb_return_output := CONST_REF_RD_rect_animated_t_rect_animated_t_3222(
     VAR_state,
     VAR_state_rect_pos_x_MUX_rect_h_l60_c3_380b_return_output,
     VAR_state_rect_pos_y_MUX_rect_h_l75_c3_1ef6_return_output);

     -- Submodule level 5
     VAR_return_output := VAR_CONST_REF_RD_rect_animated_t_rect_animated_t_3222_rect_h_l90_c10_27cb_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
