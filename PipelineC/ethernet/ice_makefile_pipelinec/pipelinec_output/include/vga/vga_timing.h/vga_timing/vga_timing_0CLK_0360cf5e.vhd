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
-- Submodules: 37
entity vga_timing_0CLK_0360cf5e is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 return_output : out vga_signals_t);
end vga_timing_0CLK_0360cf5e;
architecture arch of vga_timing_0CLK_0360cf5e is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal h_cntr_reg : unsigned(11 downto 0) := to_unsigned(0, 12);
signal v_cntr_reg : unsigned(11 downto 0) := to_unsigned(0, 12);
signal h_sync_reg : unsigned(0 downto 0) := to_unsigned(1, 1);
signal v_sync_reg : unsigned(0 downto 0) := to_unsigned(1, 1);
signal valid_reg : unsigned(0 downto 0) := to_unsigned(1, 1);
signal overclock_counter_out_reg : unsigned(7 downto 0) := to_unsigned(0, 8);
signal overclock_counter : unsigned(7 downto 0) := to_unsigned(0, 8);
signal REG_COMB_h_cntr_reg : unsigned(11 downto 0);
signal REG_COMB_v_cntr_reg : unsigned(11 downto 0);
signal REG_COMB_h_sync_reg : unsigned(0 downto 0);
signal REG_COMB_v_sync_reg : unsigned(0 downto 0);
signal REG_COMB_valid_reg : unsigned(0 downto 0);
signal REG_COMB_overclock_counter_out_reg : unsigned(7 downto 0);
signal REG_COMB_overclock_counter : unsigned(7 downto 0);

-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- BIN_OP_LT[vga_timing_h_l189_c7_65ed]
signal BIN_OP_LT_vga_timing_h_l189_c7_65ed_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l189_c7_65ed_right : unsigned(9 downto 0);
signal BIN_OP_LT_vga_timing_h_l189_c7_65ed_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[vga_timing_h_l189_c28_708d]
signal BIN_OP_LT_vga_timing_h_l189_c28_708d_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l189_c28_708d_right : unsigned(8 downto 0);
signal BIN_OP_LT_vga_timing_h_l189_c28_708d_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l189_c7_94f5]
signal BIN_OP_AND_vga_timing_h_l189_c7_94f5_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l189_c7_94f5_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l189_c7_94f5_return_output : unsigned(0 downto 0);

-- o_active_MUX[vga_timing_h_l189_c3_6703]
signal o_active_MUX_vga_timing_h_l189_c3_6703_cond : unsigned(0 downto 0);
signal o_active_MUX_vga_timing_h_l189_c3_6703_iftrue : unsigned(0 downto 0);
signal o_active_MUX_vga_timing_h_l189_c3_6703_iffalse : unsigned(0 downto 0);
signal o_active_MUX_vga_timing_h_l189_c3_6703_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l193_c23_705b]
signal BIN_OP_EQ_vga_timing_h_l193_c23_705b_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l193_c23_705b_right : unsigned(0 downto 0);
signal BIN_OP_EQ_vga_timing_h_l193_c23_705b_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l193_c41_8c35]
signal BIN_OP_EQ_vga_timing_h_l193_c41_8c35_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l193_c41_8c35_right : unsigned(0 downto 0);
signal BIN_OP_EQ_vga_timing_h_l193_c41_8c35_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l193_c23_44d9]
signal BIN_OP_AND_vga_timing_h_l193_c23_44d9_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l193_c23_44d9_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l193_c23_44d9_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l194_c21_7eca]
signal BIN_OP_EQ_vga_timing_h_l194_c21_7eca_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l194_c21_7eca_right : unsigned(9 downto 0);
signal BIN_OP_EQ_vga_timing_h_l194_c21_7eca_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l194_c46_5134]
signal BIN_OP_EQ_vga_timing_h_l194_c46_5134_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l194_c46_5134_right : unsigned(8 downto 0);
signal BIN_OP_EQ_vga_timing_h_l194_c46_5134_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l194_c21_e22d]
signal BIN_OP_AND_vga_timing_h_l194_c21_e22d_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l194_c21_e22d_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l194_c21_e22d_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l205_c20_c4dd]
signal BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_left : unsigned(7 downto 0);
signal BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_right : unsigned(0 downto 0);
signal BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l206_c3_3b5d]
signal BIN_OP_AND_vga_timing_h_l206_c3_3b5d_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l206_c3_3b5d_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l206_c3_3b5d_return_output : unsigned(0 downto 0);

-- overclock_counter_MUX[vga_timing_h_l207_c3_1511]
signal overclock_counter_MUX_vga_timing_h_l207_c3_1511_cond : unsigned(0 downto 0);
signal overclock_counter_MUX_vga_timing_h_l207_c3_1511_iftrue : unsigned(7 downto 0);
signal overclock_counter_MUX_vga_timing_h_l207_c3_1511_iffalse : unsigned(7 downto 0);
signal overclock_counter_MUX_vga_timing_h_l207_c3_1511_return_output : unsigned(7 downto 0);

-- BIN_OP_PLUS[vga_timing_h_l210_c5_ff35]
signal BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_left : unsigned(7 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_return_output : unsigned(8 downto 0);

-- h_sync_reg_MUX[vga_timing_h_l213_c3_c65e]
signal h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_cond : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_return_output : unsigned(0 downto 0);

-- v_cntr_reg_MUX[vga_timing_h_l213_c3_c65e]
signal v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_cond : unsigned(0 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_return_output : unsigned(11 downto 0);

-- v_sync_reg_MUX[vga_timing_h_l213_c3_c65e]
signal v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_cond : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_return_output : unsigned(0 downto 0);

-- h_cntr_reg_MUX[vga_timing_h_l213_c3_c65e]
signal h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_cond : unsigned(0 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_return_output : unsigned(11 downto 0);

-- BIN_OP_GTE[vga_timing_h_l215_c9_4f7c]
signal BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_left : unsigned(11 downto 0);
signal BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_right : unsigned(9 downto 0);
signal BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[vga_timing_h_l215_c42_5c23]
signal BIN_OP_LT_vga_timing_h_l215_c42_5c23_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l215_c42_5c23_right : unsigned(9 downto 0);
signal BIN_OP_LT_vga_timing_h_l215_c42_5c23_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l215_c9_7395]
signal BIN_OP_AND_vga_timing_h_l215_c9_7395_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l215_c9_7395_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l215_c9_7395_return_output : unsigned(0 downto 0);

-- h_sync_reg_MUX[vga_timing_h_l215_c5_2859]
signal h_sync_reg_MUX_vga_timing_h_l215_c5_2859_cond : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l215_c5_2859_iftrue : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l215_c5_2859_iffalse : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l215_c5_2859_return_output : unsigned(0 downto 0);

-- BIN_OP_GTE[vga_timing_h_l224_c9_d2a9]
signal BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_left : unsigned(11 downto 0);
signal BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_right : unsigned(8 downto 0);
signal BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[vga_timing_h_l224_c42_90a9]
signal BIN_OP_LT_vga_timing_h_l224_c42_90a9_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l224_c42_90a9_right : unsigned(8 downto 0);
signal BIN_OP_LT_vga_timing_h_l224_c42_90a9_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l224_c9_5f2c]
signal BIN_OP_AND_vga_timing_h_l224_c9_5f2c_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l224_c9_5f2c_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l224_c9_5f2c_return_output : unsigned(0 downto 0);

-- v_sync_reg_MUX[vga_timing_h_l224_c5_2f67]
signal v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_cond : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_iftrue : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_iffalse : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l233_c9_1c6a]
signal BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_right : unsigned(9 downto 0);
signal BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l233_c37_487a]
signal BIN_OP_EQ_vga_timing_h_l233_c37_487a_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l233_c37_487a_right : unsigned(9 downto 0);
signal BIN_OP_EQ_vga_timing_h_l233_c37_487a_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l233_c9_3df6]
signal BIN_OP_AND_vga_timing_h_l233_c9_3df6_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l233_c9_3df6_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l233_c9_3df6_return_output : unsigned(0 downto 0);

-- v_cntr_reg_MUX[vga_timing_h_l233_c5_5e7b]
signal v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_cond : unsigned(0 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_iftrue : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_iffalse : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_return_output : unsigned(11 downto 0);

-- BIN_OP_EQ[vga_timing_h_l237_c13_df8c]
signal BIN_OP_EQ_vga_timing_h_l237_c13_df8c_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l237_c13_df8c_right : unsigned(9 downto 0);
signal BIN_OP_EQ_vga_timing_h_l237_c13_df8c_return_output : unsigned(0 downto 0);

-- v_cntr_reg_MUX[vga_timing_h_l237_c10_3833]
signal v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_cond : unsigned(0 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_iftrue : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_iffalse : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[vga_timing_h_l239_c20_7c73]
signal BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_return_output : unsigned(12 downto 0);

-- BIN_OP_EQ[vga_timing_h_l242_c8_5a27]
signal BIN_OP_EQ_vga_timing_h_l242_c8_5a27_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l242_c8_5a27_right : unsigned(9 downto 0);
signal BIN_OP_EQ_vga_timing_h_l242_c8_5a27_return_output : unsigned(0 downto 0);

-- h_cntr_reg_MUX[vga_timing_h_l242_c5_517e]
signal h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_cond : unsigned(0 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_iftrue : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_iffalse : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[vga_timing_h_l248_c20_fe25]
signal BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_return_output : unsigned(12 downto 0);

function CONST_REF_RD_vga_signals_t_vga_signals_t_17af( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned;
 ref_toks_3 : unsigned;
 ref_toks_4 : unsigned;
 ref_toks_5 : unsigned;
 ref_toks_6 : unsigned;
 ref_toks_7 : unsigned;
 ref_toks_8 : unsigned) return vga_signals_t is
 
  variable base : vga_signals_t; 
  variable return_output : vga_signals_t;
begin
      base.hsync := ref_toks_0;
      base.vsync := ref_toks_1;
      base.pos.x := ref_toks_2;
      base.pos.y := ref_toks_3;
      base.overclock_counter := ref_toks_4;
      base.valid := ref_toks_5;
      base.active := ref_toks_6;
      base.start_of_frame := ref_toks_7;
      base.end_of_frame := ref_toks_8;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_LT_vga_timing_h_l189_c7_65ed : 0 clocks latency
BIN_OP_LT_vga_timing_h_l189_c7_65ed : entity work.BIN_OP_LT_uint12_t_uint10_t_0CLK_5af1a430 port map (
BIN_OP_LT_vga_timing_h_l189_c7_65ed_left,
BIN_OP_LT_vga_timing_h_l189_c7_65ed_right,
BIN_OP_LT_vga_timing_h_l189_c7_65ed_return_output);

-- BIN_OP_LT_vga_timing_h_l189_c28_708d : 0 clocks latency
BIN_OP_LT_vga_timing_h_l189_c28_708d : entity work.BIN_OP_LT_uint12_t_uint9_t_0CLK_5af1a430 port map (
BIN_OP_LT_vga_timing_h_l189_c28_708d_left,
BIN_OP_LT_vga_timing_h_l189_c28_708d_right,
BIN_OP_LT_vga_timing_h_l189_c28_708d_return_output);

-- BIN_OP_AND_vga_timing_h_l189_c7_94f5 : 0 clocks latency
BIN_OP_AND_vga_timing_h_l189_c7_94f5 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l189_c7_94f5_left,
BIN_OP_AND_vga_timing_h_l189_c7_94f5_right,
BIN_OP_AND_vga_timing_h_l189_c7_94f5_return_output);

-- o_active_MUX_vga_timing_h_l189_c3_6703 : 0 clocks latency
o_active_MUX_vga_timing_h_l189_c3_6703 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_active_MUX_vga_timing_h_l189_c3_6703_cond,
o_active_MUX_vga_timing_h_l189_c3_6703_iftrue,
o_active_MUX_vga_timing_h_l189_c3_6703_iffalse,
o_active_MUX_vga_timing_h_l189_c3_6703_return_output);

-- BIN_OP_EQ_vga_timing_h_l193_c23_705b : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l193_c23_705b : entity work.BIN_OP_EQ_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l193_c23_705b_left,
BIN_OP_EQ_vga_timing_h_l193_c23_705b_right,
BIN_OP_EQ_vga_timing_h_l193_c23_705b_return_output);

-- BIN_OP_EQ_vga_timing_h_l193_c41_8c35 : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l193_c41_8c35 : entity work.BIN_OP_EQ_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l193_c41_8c35_left,
BIN_OP_EQ_vga_timing_h_l193_c41_8c35_right,
BIN_OP_EQ_vga_timing_h_l193_c41_8c35_return_output);

-- BIN_OP_AND_vga_timing_h_l193_c23_44d9 : 0 clocks latency
BIN_OP_AND_vga_timing_h_l193_c23_44d9 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l193_c23_44d9_left,
BIN_OP_AND_vga_timing_h_l193_c23_44d9_right,
BIN_OP_AND_vga_timing_h_l193_c23_44d9_return_output);

-- BIN_OP_EQ_vga_timing_h_l194_c21_7eca : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l194_c21_7eca : entity work.BIN_OP_EQ_uint12_t_uint10_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l194_c21_7eca_left,
BIN_OP_EQ_vga_timing_h_l194_c21_7eca_right,
BIN_OP_EQ_vga_timing_h_l194_c21_7eca_return_output);

-- BIN_OP_EQ_vga_timing_h_l194_c46_5134 : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l194_c46_5134 : entity work.BIN_OP_EQ_uint12_t_uint9_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l194_c46_5134_left,
BIN_OP_EQ_vga_timing_h_l194_c46_5134_right,
BIN_OP_EQ_vga_timing_h_l194_c46_5134_return_output);

-- BIN_OP_AND_vga_timing_h_l194_c21_e22d : 0 clocks latency
BIN_OP_AND_vga_timing_h_l194_c21_e22d : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l194_c21_e22d_left,
BIN_OP_AND_vga_timing_h_l194_c21_e22d_right,
BIN_OP_AND_vga_timing_h_l194_c21_e22d_return_output);

-- BIN_OP_EQ_vga_timing_h_l205_c20_c4dd : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l205_c20_c4dd : entity work.BIN_OP_EQ_uint8_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_left,
BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_right,
BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_return_output);

-- BIN_OP_AND_vga_timing_h_l206_c3_3b5d : 0 clocks latency
BIN_OP_AND_vga_timing_h_l206_c3_3b5d : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l206_c3_3b5d_left,
BIN_OP_AND_vga_timing_h_l206_c3_3b5d_right,
BIN_OP_AND_vga_timing_h_l206_c3_3b5d_return_output);

-- overclock_counter_MUX_vga_timing_h_l207_c3_1511 : 0 clocks latency
overclock_counter_MUX_vga_timing_h_l207_c3_1511 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
overclock_counter_MUX_vga_timing_h_l207_c3_1511_cond,
overclock_counter_MUX_vga_timing_h_l207_c3_1511_iftrue,
overclock_counter_MUX_vga_timing_h_l207_c3_1511_iffalse,
overclock_counter_MUX_vga_timing_h_l207_c3_1511_return_output);

-- BIN_OP_PLUS_vga_timing_h_l210_c5_ff35 : 0 clocks latency
BIN_OP_PLUS_vga_timing_h_l210_c5_ff35 : entity work.BIN_OP_PLUS_uint8_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_left,
BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_right,
BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_return_output);

-- h_sync_reg_MUX_vga_timing_h_l213_c3_c65e : 0 clocks latency
h_sync_reg_MUX_vga_timing_h_l213_c3_c65e : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_cond,
h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue,
h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse,
h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_return_output);

-- v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e : 0 clocks latency
v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_cond,
v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue,
v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse,
v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_return_output);

-- v_sync_reg_MUX_vga_timing_h_l213_c3_c65e : 0 clocks latency
v_sync_reg_MUX_vga_timing_h_l213_c3_c65e : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_cond,
v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue,
v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse,
v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_return_output);

-- h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e : 0 clocks latency
h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_cond,
h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue,
h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse,
h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_return_output);

-- BIN_OP_GTE_vga_timing_h_l215_c9_4f7c : 0 clocks latency
BIN_OP_GTE_vga_timing_h_l215_c9_4f7c : entity work.BIN_OP_GTE_uint12_t_uint10_t_0CLK_e595f783 port map (
BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_left,
BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_right,
BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_return_output);

-- BIN_OP_LT_vga_timing_h_l215_c42_5c23 : 0 clocks latency
BIN_OP_LT_vga_timing_h_l215_c42_5c23 : entity work.BIN_OP_LT_uint12_t_uint10_t_0CLK_5af1a430 port map (
BIN_OP_LT_vga_timing_h_l215_c42_5c23_left,
BIN_OP_LT_vga_timing_h_l215_c42_5c23_right,
BIN_OP_LT_vga_timing_h_l215_c42_5c23_return_output);

-- BIN_OP_AND_vga_timing_h_l215_c9_7395 : 0 clocks latency
BIN_OP_AND_vga_timing_h_l215_c9_7395 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l215_c9_7395_left,
BIN_OP_AND_vga_timing_h_l215_c9_7395_right,
BIN_OP_AND_vga_timing_h_l215_c9_7395_return_output);

-- h_sync_reg_MUX_vga_timing_h_l215_c5_2859 : 0 clocks latency
h_sync_reg_MUX_vga_timing_h_l215_c5_2859 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
h_sync_reg_MUX_vga_timing_h_l215_c5_2859_cond,
h_sync_reg_MUX_vga_timing_h_l215_c5_2859_iftrue,
h_sync_reg_MUX_vga_timing_h_l215_c5_2859_iffalse,
h_sync_reg_MUX_vga_timing_h_l215_c5_2859_return_output);

-- BIN_OP_GTE_vga_timing_h_l224_c9_d2a9 : 0 clocks latency
BIN_OP_GTE_vga_timing_h_l224_c9_d2a9 : entity work.BIN_OP_GTE_uint12_t_uint9_t_0CLK_e595f783 port map (
BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_left,
BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_right,
BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_return_output);

-- BIN_OP_LT_vga_timing_h_l224_c42_90a9 : 0 clocks latency
BIN_OP_LT_vga_timing_h_l224_c42_90a9 : entity work.BIN_OP_LT_uint12_t_uint9_t_0CLK_5af1a430 port map (
BIN_OP_LT_vga_timing_h_l224_c42_90a9_left,
BIN_OP_LT_vga_timing_h_l224_c42_90a9_right,
BIN_OP_LT_vga_timing_h_l224_c42_90a9_return_output);

-- BIN_OP_AND_vga_timing_h_l224_c9_5f2c : 0 clocks latency
BIN_OP_AND_vga_timing_h_l224_c9_5f2c : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l224_c9_5f2c_left,
BIN_OP_AND_vga_timing_h_l224_c9_5f2c_right,
BIN_OP_AND_vga_timing_h_l224_c9_5f2c_return_output);

-- v_sync_reg_MUX_vga_timing_h_l224_c5_2f67 : 0 clocks latency
v_sync_reg_MUX_vga_timing_h_l224_c5_2f67 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_cond,
v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_iftrue,
v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_iffalse,
v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_return_output);

-- BIN_OP_EQ_vga_timing_h_l233_c9_1c6a : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l233_c9_1c6a : entity work.BIN_OP_EQ_uint12_t_uint10_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_left,
BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_right,
BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_return_output);

-- BIN_OP_EQ_vga_timing_h_l233_c37_487a : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l233_c37_487a : entity work.BIN_OP_EQ_uint12_t_uint10_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l233_c37_487a_left,
BIN_OP_EQ_vga_timing_h_l233_c37_487a_right,
BIN_OP_EQ_vga_timing_h_l233_c37_487a_return_output);

-- BIN_OP_AND_vga_timing_h_l233_c9_3df6 : 0 clocks latency
BIN_OP_AND_vga_timing_h_l233_c9_3df6 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l233_c9_3df6_left,
BIN_OP_AND_vga_timing_h_l233_c9_3df6_right,
BIN_OP_AND_vga_timing_h_l233_c9_3df6_return_output);

-- v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b : 0 clocks latency
v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_cond,
v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_iftrue,
v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_iffalse,
v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_return_output);

-- BIN_OP_EQ_vga_timing_h_l237_c13_df8c : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l237_c13_df8c : entity work.BIN_OP_EQ_uint12_t_uint10_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l237_c13_df8c_left,
BIN_OP_EQ_vga_timing_h_l237_c13_df8c_right,
BIN_OP_EQ_vga_timing_h_l237_c13_df8c_return_output);

-- v_cntr_reg_MUX_vga_timing_h_l237_c10_3833 : 0 clocks latency
v_cntr_reg_MUX_vga_timing_h_l237_c10_3833 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_cond,
v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_iftrue,
v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_iffalse,
v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_return_output);

-- BIN_OP_PLUS_vga_timing_h_l239_c20_7c73 : 0 clocks latency
BIN_OP_PLUS_vga_timing_h_l239_c20_7c73 : entity work.BIN_OP_PLUS_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_left,
BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_right,
BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_return_output);

-- BIN_OP_EQ_vga_timing_h_l242_c8_5a27 : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l242_c8_5a27 : entity work.BIN_OP_EQ_uint12_t_uint10_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l242_c8_5a27_left,
BIN_OP_EQ_vga_timing_h_l242_c8_5a27_right,
BIN_OP_EQ_vga_timing_h_l242_c8_5a27_return_output);

-- h_cntr_reg_MUX_vga_timing_h_l242_c5_517e : 0 clocks latency
h_cntr_reg_MUX_vga_timing_h_l242_c5_517e : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_cond,
h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_iftrue,
h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_iffalse,
h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_return_output);

-- BIN_OP_PLUS_vga_timing_h_l248_c20_fe25 : 0 clocks latency
BIN_OP_PLUS_vga_timing_h_l248_c20_fe25 : entity work.BIN_OP_PLUS_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_left,
BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_right,
BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Registers
 h_cntr_reg,
 v_cntr_reg,
 h_sync_reg,
 v_sync_reg,
 valid_reg,
 overclock_counter_out_reg,
 overclock_counter,
 -- All submodule outputs
 BIN_OP_LT_vga_timing_h_l189_c7_65ed_return_output,
 BIN_OP_LT_vga_timing_h_l189_c28_708d_return_output,
 BIN_OP_AND_vga_timing_h_l189_c7_94f5_return_output,
 o_active_MUX_vga_timing_h_l189_c3_6703_return_output,
 BIN_OP_EQ_vga_timing_h_l193_c23_705b_return_output,
 BIN_OP_EQ_vga_timing_h_l193_c41_8c35_return_output,
 BIN_OP_AND_vga_timing_h_l193_c23_44d9_return_output,
 BIN_OP_EQ_vga_timing_h_l194_c21_7eca_return_output,
 BIN_OP_EQ_vga_timing_h_l194_c46_5134_return_output,
 BIN_OP_AND_vga_timing_h_l194_c21_e22d_return_output,
 BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_return_output,
 BIN_OP_AND_vga_timing_h_l206_c3_3b5d_return_output,
 overclock_counter_MUX_vga_timing_h_l207_c3_1511_return_output,
 BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_return_output,
 h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_return_output,
 v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_return_output,
 v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_return_output,
 h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_return_output,
 BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_return_output,
 BIN_OP_LT_vga_timing_h_l215_c42_5c23_return_output,
 BIN_OP_AND_vga_timing_h_l215_c9_7395_return_output,
 h_sync_reg_MUX_vga_timing_h_l215_c5_2859_return_output,
 BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_return_output,
 BIN_OP_LT_vga_timing_h_l224_c42_90a9_return_output,
 BIN_OP_AND_vga_timing_h_l224_c9_5f2c_return_output,
 v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_return_output,
 BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_return_output,
 BIN_OP_EQ_vga_timing_h_l233_c37_487a_return_output,
 BIN_OP_AND_vga_timing_h_l233_c9_3df6_return_output,
 v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_return_output,
 BIN_OP_EQ_vga_timing_h_l237_c13_df8c_return_output,
 v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_return_output,
 BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_return_output,
 BIN_OP_EQ_vga_timing_h_l242_c8_5a27_return_output,
 h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_return_output,
 BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : vga_signals_t;
 variable VAR_o : vga_signals_t;
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c7_65ed_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c7_65ed_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c7_65ed_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l189_c7_94f5_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c28_708d_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c28_708d_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c28_708d_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l189_c7_94f5_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l189_c7_94f5_return_output : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l189_c3_6703_iftrue : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l189_c3_6703_iffalse : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l189_c3_6703_return_output : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l189_c3_6703_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c23_705b_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c23_705b_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c23_705b_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l193_c23_44d9_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c41_8c35_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c41_8c35_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c41_8c35_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l193_c23_44d9_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l193_c23_44d9_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c21_7eca_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c21_7eca_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c21_7eca_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l194_c21_e22d_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c46_5134_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c46_5134_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c46_5134_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l194_c21_e22d_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l194_c21_e22d_return_output : unsigned(0 downto 0);
 variable VAR_stall_req : unsigned(0 downto 0);
 variable VAR_valid : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l206_c3_3b5d_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l206_c3_3b5d_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l206_c3_3b5d_return_output : unsigned(0 downto 0);
 variable VAR_overclock_counter_MUX_vga_timing_h_l207_c3_1511_iftrue : unsigned(7 downto 0);
 variable VAR_overclock_counter_vga_timing_h_l208_c5_18a0 : unsigned(7 downto 0);
 variable VAR_overclock_counter_MUX_vga_timing_h_l207_c3_1511_iffalse : unsigned(7 downto 0);
 variable VAR_overclock_counter_vga_timing_h_l210_c5_3d70 : unsigned(7 downto 0);
 variable VAR_overclock_counter_MUX_vga_timing_h_l207_c3_1511_return_output : unsigned(7 downto 0);
 variable VAR_overclock_counter_MUX_vga_timing_h_l207_c3_1511_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_return_output : unsigned(8 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_2859_return_output : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_return_output : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_cond : unsigned(0 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_return_output : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_return_output : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_cond : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_return_output : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_return_output : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_cond : unsigned(0 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_return_output : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_return_output : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l215_c9_7395_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l215_c42_5c23_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l215_c42_5c23_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l215_c42_5c23_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l215_c9_7395_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l215_c9_7395_return_output : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_2859_iftrue : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_2859_iffalse : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_2859_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l224_c9_5f2c_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l224_c42_90a9_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l224_c42_90a9_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l224_c42_90a9_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l224_c9_5f2c_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l224_c9_5f2c_return_output : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_iftrue : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_iffalse : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l233_c9_3df6_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c37_487a_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c37_487a_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c37_487a_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l233_c9_3df6_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l233_c9_3df6_return_output : unsigned(0 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_iftrue : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_vga_timing_h_l235_c7_6f00 : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_iffalse : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_return_output : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l237_c13_df8c_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l237_c13_df8c_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l237_c13_df8c_return_output : unsigned(0 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_iftrue : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_vga_timing_h_l239_c7_9793 : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_iffalse : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l242_c8_5a27_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l242_c8_5a27_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l242_c8_5a27_return_output : unsigned(0 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_iftrue : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_vga_timing_h_l244_c7_287f : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_iffalse : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_vga_timing_h_l248_c7_72ac : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_return_output : unsigned(12 downto 0);
 variable VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_17af_vga_timing_h_l253_c10_68b3_return_output : vga_signals_t;
 -- State registers comb logic variables
variable REG_VAR_h_cntr_reg : unsigned(11 downto 0);
variable REG_VAR_v_cntr_reg : unsigned(11 downto 0);
variable REG_VAR_h_sync_reg : unsigned(0 downto 0);
variable REG_VAR_v_sync_reg : unsigned(0 downto 0);
variable REG_VAR_valid_reg : unsigned(0 downto 0);
variable REG_VAR_overclock_counter_out_reg : unsigned(7 downto 0);
variable REG_VAR_overclock_counter : unsigned(7 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_h_cntr_reg := h_cntr_reg;
  REG_VAR_v_cntr_reg := v_cntr_reg;
  REG_VAR_h_sync_reg := h_sync_reg;
  REG_VAR_v_sync_reg := v_sync_reg;
  REG_VAR_valid_reg := valid_reg;
  REG_VAR_overclock_counter_out_reg := overclock_counter_out_reg;
  REG_VAR_overclock_counter := overclock_counter;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_LT_vga_timing_h_l189_c28_708d_right := to_unsigned(480, 9);
     VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_right := to_unsigned(1, 1);
     VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_2859_iftrue := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_vga_timing_h_l194_c46_5134_right := to_unsigned(479, 9);
     VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_2859_iffalse := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_vga_timing_h_l233_c37_487a_right := to_unsigned(524, 10);
     VAR_v_cntr_reg_vga_timing_h_l235_c7_6f00 := resize(to_unsigned(0, 1), 12);
     VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_iftrue := VAR_v_cntr_reg_vga_timing_h_l235_c7_6f00;
     VAR_o_active_MUX_vga_timing_h_l189_c3_6703_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_right := to_unsigned(799, 10);
     VAR_BIN_OP_EQ_vga_timing_h_l194_c21_7eca_right := to_unsigned(639, 10);
     VAR_BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_right := to_unsigned(489, 9);
     VAR_overclock_counter_vga_timing_h_l208_c5_18a0 := resize(to_unsigned(0, 1), 8);
     VAR_overclock_counter_MUX_vga_timing_h_l207_c3_1511_iftrue := VAR_overclock_counter_vga_timing_h_l208_c5_18a0;
     VAR_BIN_OP_EQ_vga_timing_h_l193_c41_8c35_right := to_unsigned(0, 1);
     VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_right := to_unsigned(1, 1);
     VAR_BIN_OP_LT_vga_timing_h_l189_c7_65ed_right := to_unsigned(640, 10);
     VAR_h_cntr_reg_vga_timing_h_l244_c7_287f := resize(to_unsigned(0, 1), 12);
     VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_iftrue := VAR_h_cntr_reg_vga_timing_h_l244_c7_287f;
     VAR_BIN_OP_EQ_vga_timing_h_l193_c23_705b_right := to_unsigned(0, 1);
     VAR_BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_right := to_unsigned(655, 10);
     VAR_BIN_OP_LT_vga_timing_h_l224_c42_90a9_right := to_unsigned(491, 9);
     VAR_BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_right := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_vga_timing_h_l237_c13_df8c_right := to_unsigned(799, 10);
     VAR_BIN_OP_LT_vga_timing_h_l215_c42_5c23_right := to_unsigned(751, 10);
     VAR_BIN_OP_EQ_vga_timing_h_l242_c8_5a27_right := to_unsigned(799, 10);
     VAR_BIN_OP_AND_vga_timing_h_l206_c3_3b5d_right := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_right := to_unsigned(1, 1);
     VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_iftrue := to_unsigned(0, 1);
     VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_iffalse := to_unsigned(1, 1);
     VAR_o_active_MUX_vga_timing_h_l189_c3_6703_iffalse := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

     -- Submodule level 0
     VAR_BIN_OP_EQ_vga_timing_h_l193_c23_705b_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l194_c21_7eca_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l237_c13_df8c_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l242_c8_5a27_left := h_cntr_reg;
     VAR_BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_left := h_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l189_c7_65ed_left := h_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l215_c42_5c23_left := h_cntr_reg;
     VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_left := h_cntr_reg;
     VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse := h_cntr_reg;
     VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse := h_sync_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_left := overclock_counter;
     VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_left := overclock_counter;
     REG_VAR_overclock_counter_out_reg := overclock_counter;
     VAR_BIN_OP_EQ_vga_timing_h_l193_c41_8c35_left := v_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l194_c46_5134_left := v_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l233_c37_487a_left := v_cntr_reg;
     VAR_BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_left := v_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l189_c28_708d_left := v_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l224_c42_90a9_left := v_cntr_reg;
     VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_left := v_cntr_reg;
     VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse := v_cntr_reg;
     VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_iffalse := v_cntr_reg;
     VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse := v_sync_reg;
     -- BIN_OP_EQ[vga_timing_h_l194_c21_7eca] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l194_c21_7eca_left <= VAR_BIN_OP_EQ_vga_timing_h_l194_c21_7eca_left;
     BIN_OP_EQ_vga_timing_h_l194_c21_7eca_right <= VAR_BIN_OP_EQ_vga_timing_h_l194_c21_7eca_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l194_c21_7eca_return_output := BIN_OP_EQ_vga_timing_h_l194_c21_7eca_return_output;

     -- BIN_OP_EQ[vga_timing_h_l233_c37_487a] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l233_c37_487a_left <= VAR_BIN_OP_EQ_vga_timing_h_l233_c37_487a_left;
     BIN_OP_EQ_vga_timing_h_l233_c37_487a_right <= VAR_BIN_OP_EQ_vga_timing_h_l233_c37_487a_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l233_c37_487a_return_output := BIN_OP_EQ_vga_timing_h_l233_c37_487a_return_output;

     -- BIN_OP_LT[vga_timing_h_l189_c28_708d] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l189_c28_708d_left <= VAR_BIN_OP_LT_vga_timing_h_l189_c28_708d_left;
     BIN_OP_LT_vga_timing_h_l189_c28_708d_right <= VAR_BIN_OP_LT_vga_timing_h_l189_c28_708d_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l189_c28_708d_return_output := BIN_OP_LT_vga_timing_h_l189_c28_708d_return_output;

     -- BIN_OP_EQ[vga_timing_h_l194_c46_5134] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l194_c46_5134_left <= VAR_BIN_OP_EQ_vga_timing_h_l194_c46_5134_left;
     BIN_OP_EQ_vga_timing_h_l194_c46_5134_right <= VAR_BIN_OP_EQ_vga_timing_h_l194_c46_5134_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l194_c46_5134_return_output := BIN_OP_EQ_vga_timing_h_l194_c46_5134_return_output;

     -- BIN_OP_EQ[vga_timing_h_l242_c8_5a27] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l242_c8_5a27_left <= VAR_BIN_OP_EQ_vga_timing_h_l242_c8_5a27_left;
     BIN_OP_EQ_vga_timing_h_l242_c8_5a27_right <= VAR_BIN_OP_EQ_vga_timing_h_l242_c8_5a27_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l242_c8_5a27_return_output := BIN_OP_EQ_vga_timing_h_l242_c8_5a27_return_output;

     -- BIN_OP_GTE[vga_timing_h_l224_c9_d2a9] LATENCY=0
     -- Inputs
     BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_left <= VAR_BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_left;
     BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_right <= VAR_BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_right;
     -- Outputs
     VAR_BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_return_output := BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_return_output;

     -- BIN_OP_EQ[vga_timing_h_l205_c20_c4dd] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_left <= VAR_BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_left;
     BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_right <= VAR_BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_return_output := BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_return_output;

     -- BIN_OP_LT[vga_timing_h_l224_c42_90a9] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l224_c42_90a9_left <= VAR_BIN_OP_LT_vga_timing_h_l224_c42_90a9_left;
     BIN_OP_LT_vga_timing_h_l224_c42_90a9_right <= VAR_BIN_OP_LT_vga_timing_h_l224_c42_90a9_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l224_c42_90a9_return_output := BIN_OP_LT_vga_timing_h_l224_c42_90a9_return_output;

     -- BIN_OP_PLUS[vga_timing_h_l248_c20_fe25] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_left <= VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_left;
     BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_right <= VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_right;
     -- Outputs
     VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_return_output := BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_return_output;

     -- BIN_OP_EQ[vga_timing_h_l237_c13_df8c] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l237_c13_df8c_left <= VAR_BIN_OP_EQ_vga_timing_h_l237_c13_df8c_left;
     BIN_OP_EQ_vga_timing_h_l237_c13_df8c_right <= VAR_BIN_OP_EQ_vga_timing_h_l237_c13_df8c_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l237_c13_df8c_return_output := BIN_OP_EQ_vga_timing_h_l237_c13_df8c_return_output;

     -- BIN_OP_EQ[vga_timing_h_l193_c41_8c35] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l193_c41_8c35_left <= VAR_BIN_OP_EQ_vga_timing_h_l193_c41_8c35_left;
     BIN_OP_EQ_vga_timing_h_l193_c41_8c35_right <= VAR_BIN_OP_EQ_vga_timing_h_l193_c41_8c35_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l193_c41_8c35_return_output := BIN_OP_EQ_vga_timing_h_l193_c41_8c35_return_output;

     -- BIN_OP_GTE[vga_timing_h_l215_c9_4f7c] LATENCY=0
     -- Inputs
     BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_left <= VAR_BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_left;
     BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_right <= VAR_BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_right;
     -- Outputs
     VAR_BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_return_output := BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_return_output;

     -- BIN_OP_EQ[vga_timing_h_l233_c9_1c6a] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_left <= VAR_BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_left;
     BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_right <= VAR_BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_return_output := BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_return_output;

     -- BIN_OP_EQ[vga_timing_h_l193_c23_705b] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l193_c23_705b_left <= VAR_BIN_OP_EQ_vga_timing_h_l193_c23_705b_left;
     BIN_OP_EQ_vga_timing_h_l193_c23_705b_right <= VAR_BIN_OP_EQ_vga_timing_h_l193_c23_705b_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l193_c23_705b_return_output := BIN_OP_EQ_vga_timing_h_l193_c23_705b_return_output;

     -- BIN_OP_LT[vga_timing_h_l189_c7_65ed] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l189_c7_65ed_left <= VAR_BIN_OP_LT_vga_timing_h_l189_c7_65ed_left;
     BIN_OP_LT_vga_timing_h_l189_c7_65ed_right <= VAR_BIN_OP_LT_vga_timing_h_l189_c7_65ed_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l189_c7_65ed_return_output := BIN_OP_LT_vga_timing_h_l189_c7_65ed_return_output;

     -- BIN_OP_LT[vga_timing_h_l215_c42_5c23] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l215_c42_5c23_left <= VAR_BIN_OP_LT_vga_timing_h_l215_c42_5c23_left;
     BIN_OP_LT_vga_timing_h_l215_c42_5c23_right <= VAR_BIN_OP_LT_vga_timing_h_l215_c42_5c23_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l215_c42_5c23_return_output := BIN_OP_LT_vga_timing_h_l215_c42_5c23_return_output;

     -- BIN_OP_PLUS[vga_timing_h_l239_c20_7c73] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_left <= VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_left;
     BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_right <= VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_right;
     -- Outputs
     VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_return_output := BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_return_output;

     -- BIN_OP_PLUS[vga_timing_h_l210_c5_ff35] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_left <= VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_left;
     BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_right <= VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_right;
     -- Outputs
     VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_return_output := BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_return_output;

     -- Submodule level 1
     VAR_BIN_OP_AND_vga_timing_h_l193_c23_44d9_left := VAR_BIN_OP_EQ_vga_timing_h_l193_c23_705b_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l193_c23_44d9_right := VAR_BIN_OP_EQ_vga_timing_h_l193_c41_8c35_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l194_c21_e22d_left := VAR_BIN_OP_EQ_vga_timing_h_l194_c21_7eca_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l194_c21_e22d_right := VAR_BIN_OP_EQ_vga_timing_h_l194_c46_5134_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l206_c3_3b5d_left := VAR_BIN_OP_EQ_vga_timing_h_l205_c20_c4dd_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l233_c9_3df6_right := VAR_BIN_OP_EQ_vga_timing_h_l233_c37_487a_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l233_c9_3df6_left := VAR_BIN_OP_EQ_vga_timing_h_l233_c9_1c6a_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_cond := VAR_BIN_OP_EQ_vga_timing_h_l237_c13_df8c_return_output;
     VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_cond := VAR_BIN_OP_EQ_vga_timing_h_l242_c8_5a27_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l215_c9_7395_left := VAR_BIN_OP_GTE_vga_timing_h_l215_c9_4f7c_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l224_c9_5f2c_left := VAR_BIN_OP_GTE_vga_timing_h_l224_c9_d2a9_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l189_c7_94f5_right := VAR_BIN_OP_LT_vga_timing_h_l189_c28_708d_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l189_c7_94f5_left := VAR_BIN_OP_LT_vga_timing_h_l189_c7_65ed_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l215_c9_7395_right := VAR_BIN_OP_LT_vga_timing_h_l215_c42_5c23_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l224_c9_5f2c_right := VAR_BIN_OP_LT_vga_timing_h_l224_c42_90a9_return_output;
     VAR_overclock_counter_vga_timing_h_l210_c5_3d70 := resize(VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_ff35_return_output, 8);
     VAR_v_cntr_reg_vga_timing_h_l239_c7_9793 := resize(VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_7c73_return_output, 12);
     VAR_h_cntr_reg_vga_timing_h_l248_c7_72ac := resize(VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_fe25_return_output, 12);
     VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_iffalse := VAR_h_cntr_reg_vga_timing_h_l248_c7_72ac;
     VAR_overclock_counter_MUX_vga_timing_h_l207_c3_1511_iffalse := VAR_overclock_counter_vga_timing_h_l210_c5_3d70;
     VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_iftrue := VAR_v_cntr_reg_vga_timing_h_l239_c7_9793;
     -- BIN_OP_AND[vga_timing_h_l215_c9_7395] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l215_c9_7395_left <= VAR_BIN_OP_AND_vga_timing_h_l215_c9_7395_left;
     BIN_OP_AND_vga_timing_h_l215_c9_7395_right <= VAR_BIN_OP_AND_vga_timing_h_l215_c9_7395_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l215_c9_7395_return_output := BIN_OP_AND_vga_timing_h_l215_c9_7395_return_output;

     -- BIN_OP_AND[vga_timing_h_l233_c9_3df6] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l233_c9_3df6_left <= VAR_BIN_OP_AND_vga_timing_h_l233_c9_3df6_left;
     BIN_OP_AND_vga_timing_h_l233_c9_3df6_right <= VAR_BIN_OP_AND_vga_timing_h_l233_c9_3df6_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l233_c9_3df6_return_output := BIN_OP_AND_vga_timing_h_l233_c9_3df6_return_output;

     -- BIN_OP_AND[vga_timing_h_l189_c7_94f5] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l189_c7_94f5_left <= VAR_BIN_OP_AND_vga_timing_h_l189_c7_94f5_left;
     BIN_OP_AND_vga_timing_h_l189_c7_94f5_right <= VAR_BIN_OP_AND_vga_timing_h_l189_c7_94f5_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l189_c7_94f5_return_output := BIN_OP_AND_vga_timing_h_l189_c7_94f5_return_output;

     -- BIN_OP_AND[vga_timing_h_l206_c3_3b5d] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l206_c3_3b5d_left <= VAR_BIN_OP_AND_vga_timing_h_l206_c3_3b5d_left;
     BIN_OP_AND_vga_timing_h_l206_c3_3b5d_right <= VAR_BIN_OP_AND_vga_timing_h_l206_c3_3b5d_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l206_c3_3b5d_return_output := BIN_OP_AND_vga_timing_h_l206_c3_3b5d_return_output;

     -- BIN_OP_AND[vga_timing_h_l224_c9_5f2c] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l224_c9_5f2c_left <= VAR_BIN_OP_AND_vga_timing_h_l224_c9_5f2c_left;
     BIN_OP_AND_vga_timing_h_l224_c9_5f2c_right <= VAR_BIN_OP_AND_vga_timing_h_l224_c9_5f2c_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l224_c9_5f2c_return_output := BIN_OP_AND_vga_timing_h_l224_c9_5f2c_return_output;

     -- BIN_OP_AND[vga_timing_h_l194_c21_e22d] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l194_c21_e22d_left <= VAR_BIN_OP_AND_vga_timing_h_l194_c21_e22d_left;
     BIN_OP_AND_vga_timing_h_l194_c21_e22d_right <= VAR_BIN_OP_AND_vga_timing_h_l194_c21_e22d_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l194_c21_e22d_return_output := BIN_OP_AND_vga_timing_h_l194_c21_e22d_return_output;

     -- h_cntr_reg_MUX[vga_timing_h_l242_c5_517e] LATENCY=0
     -- Inputs
     h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_cond <= VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_cond;
     h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_iftrue <= VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_iftrue;
     h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_iffalse <= VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_iffalse;
     -- Outputs
     VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_return_output := h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_return_output;

     -- v_cntr_reg_MUX[vga_timing_h_l237_c10_3833] LATENCY=0
     -- Inputs
     v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_cond <= VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_cond;
     v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_iftrue <= VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_iftrue;
     v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_iffalse <= VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_iffalse;
     -- Outputs
     VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_return_output := v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_return_output;

     -- BIN_OP_AND[vga_timing_h_l193_c23_44d9] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l193_c23_44d9_left <= VAR_BIN_OP_AND_vga_timing_h_l193_c23_44d9_left;
     BIN_OP_AND_vga_timing_h_l193_c23_44d9_right <= VAR_BIN_OP_AND_vga_timing_h_l193_c23_44d9_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l193_c23_44d9_return_output := BIN_OP_AND_vga_timing_h_l193_c23_44d9_return_output;

     -- Submodule level 2
     VAR_o_active_MUX_vga_timing_h_l189_c3_6703_cond := VAR_BIN_OP_AND_vga_timing_h_l189_c7_94f5_return_output;
     VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_cond := VAR_BIN_OP_AND_vga_timing_h_l206_c3_3b5d_return_output;
     VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_cond := VAR_BIN_OP_AND_vga_timing_h_l206_c3_3b5d_return_output;
     VAR_overclock_counter_MUX_vga_timing_h_l207_c3_1511_cond := VAR_BIN_OP_AND_vga_timing_h_l206_c3_3b5d_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_cond := VAR_BIN_OP_AND_vga_timing_h_l206_c3_3b5d_return_output;
     VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_cond := VAR_BIN_OP_AND_vga_timing_h_l206_c3_3b5d_return_output;
     REG_VAR_valid_reg := VAR_BIN_OP_AND_vga_timing_h_l206_c3_3b5d_return_output;
     VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_2859_cond := VAR_BIN_OP_AND_vga_timing_h_l215_c9_7395_return_output;
     VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_cond := VAR_BIN_OP_AND_vga_timing_h_l224_c9_5f2c_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_cond := VAR_BIN_OP_AND_vga_timing_h_l233_c9_3df6_return_output;
     VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue := VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_517e_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_iffalse := VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3833_return_output;
     -- v_sync_reg_MUX[vga_timing_h_l224_c5_2f67] LATENCY=0
     -- Inputs
     v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_cond <= VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_cond;
     v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_iftrue <= VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_iftrue;
     v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_iffalse <= VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_iffalse;
     -- Outputs
     VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_return_output := v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_return_output;

     -- o_active_MUX[vga_timing_h_l189_c3_6703] LATENCY=0
     -- Inputs
     o_active_MUX_vga_timing_h_l189_c3_6703_cond <= VAR_o_active_MUX_vga_timing_h_l189_c3_6703_cond;
     o_active_MUX_vga_timing_h_l189_c3_6703_iftrue <= VAR_o_active_MUX_vga_timing_h_l189_c3_6703_iftrue;
     o_active_MUX_vga_timing_h_l189_c3_6703_iffalse <= VAR_o_active_MUX_vga_timing_h_l189_c3_6703_iffalse;
     -- Outputs
     VAR_o_active_MUX_vga_timing_h_l189_c3_6703_return_output := o_active_MUX_vga_timing_h_l189_c3_6703_return_output;

     -- v_cntr_reg_MUX[vga_timing_h_l233_c5_5e7b] LATENCY=0
     -- Inputs
     v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_cond <= VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_cond;
     v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_iftrue <= VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_iftrue;
     v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_iffalse <= VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_iffalse;
     -- Outputs
     VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_return_output := v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_return_output;

     -- overclock_counter_MUX[vga_timing_h_l207_c3_1511] LATENCY=0
     -- Inputs
     overclock_counter_MUX_vga_timing_h_l207_c3_1511_cond <= VAR_overclock_counter_MUX_vga_timing_h_l207_c3_1511_cond;
     overclock_counter_MUX_vga_timing_h_l207_c3_1511_iftrue <= VAR_overclock_counter_MUX_vga_timing_h_l207_c3_1511_iftrue;
     overclock_counter_MUX_vga_timing_h_l207_c3_1511_iffalse <= VAR_overclock_counter_MUX_vga_timing_h_l207_c3_1511_iffalse;
     -- Outputs
     VAR_overclock_counter_MUX_vga_timing_h_l207_c3_1511_return_output := overclock_counter_MUX_vga_timing_h_l207_c3_1511_return_output;

     -- h_cntr_reg_MUX[vga_timing_h_l213_c3_c65e] LATENCY=0
     -- Inputs
     h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_cond <= VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_cond;
     h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue <= VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue;
     h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse <= VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse;
     -- Outputs
     VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_return_output := h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_return_output;

     -- h_sync_reg_MUX[vga_timing_h_l215_c5_2859] LATENCY=0
     -- Inputs
     h_sync_reg_MUX_vga_timing_h_l215_c5_2859_cond <= VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_2859_cond;
     h_sync_reg_MUX_vga_timing_h_l215_c5_2859_iftrue <= VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_2859_iftrue;
     h_sync_reg_MUX_vga_timing_h_l215_c5_2859_iffalse <= VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_2859_iffalse;
     -- Outputs
     VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_2859_return_output := h_sync_reg_MUX_vga_timing_h_l215_c5_2859_return_output;

     -- Submodule level 3
     REG_VAR_h_cntr_reg := VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_return_output;
     VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue := VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_2859_return_output;
     REG_VAR_overclock_counter := VAR_overclock_counter_MUX_vga_timing_h_l207_c3_1511_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue := VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_5e7b_return_output;
     VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue := VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_2f67_return_output;
     -- v_cntr_reg_MUX[vga_timing_h_l213_c3_c65e] LATENCY=0
     -- Inputs
     v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_cond <= VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_cond;
     v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue <= VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue;
     v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse <= VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse;
     -- Outputs
     VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_return_output := v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_return_output;

     -- v_sync_reg_MUX[vga_timing_h_l213_c3_c65e] LATENCY=0
     -- Inputs
     v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_cond <= VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_cond;
     v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue <= VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue;
     v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse <= VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse;
     -- Outputs
     VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_return_output := v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_return_output;

     -- h_sync_reg_MUX[vga_timing_h_l213_c3_c65e] LATENCY=0
     -- Inputs
     h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_cond <= VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_cond;
     h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue <= VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iftrue;
     h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse <= VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_iffalse;
     -- Outputs
     VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_return_output := h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_return_output;

     -- CONST_REF_RD_vga_signals_t_vga_signals_t_17af[vga_timing_h_l253_c10_68b3] LATENCY=0
     VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_17af_vga_timing_h_l253_c10_68b3_return_output := CONST_REF_RD_vga_signals_t_vga_signals_t_17af(
     h_sync_reg,
     v_sync_reg,
     h_cntr_reg,
     v_cntr_reg,
     overclock_counter_out_reg,
     valid_reg,
     VAR_o_active_MUX_vga_timing_h_l189_c3_6703_return_output,
     VAR_BIN_OP_AND_vga_timing_h_l193_c23_44d9_return_output,
     VAR_BIN_OP_AND_vga_timing_h_l194_c21_e22d_return_output);

     -- Submodule level 4
     VAR_return_output := VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_17af_vga_timing_h_l253_c10_68b3_return_output;
     REG_VAR_h_sync_reg := VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_c65e_return_output;
     REG_VAR_v_cntr_reg := VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_c65e_return_output;
     REG_VAR_v_sync_reg := VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_c65e_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_h_cntr_reg <= REG_VAR_h_cntr_reg;
REG_COMB_v_cntr_reg <= REG_VAR_v_cntr_reg;
REG_COMB_h_sync_reg <= REG_VAR_h_sync_reg;
REG_COMB_v_sync_reg <= REG_VAR_v_sync_reg;
REG_COMB_valid_reg <= REG_VAR_valid_reg;
REG_COMB_overclock_counter_out_reg <= REG_VAR_overclock_counter_out_reg;
REG_COMB_overclock_counter <= REG_VAR_overclock_counter;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if clk_en_internal='1' then
     h_cntr_reg <= REG_COMB_h_cntr_reg;
     v_cntr_reg <= REG_COMB_v_cntr_reg;
     h_sync_reg <= REG_COMB_h_sync_reg;
     v_sync_reg <= REG_COMB_v_sync_reg;
     valid_reg <= REG_COMB_valid_reg;
     overclock_counter_out_reg <= REG_COMB_overclock_counter_out_reg;
     overclock_counter <= REG_COMB_overclock_counter;
 end if;
 end if;
end process;

end arch;
