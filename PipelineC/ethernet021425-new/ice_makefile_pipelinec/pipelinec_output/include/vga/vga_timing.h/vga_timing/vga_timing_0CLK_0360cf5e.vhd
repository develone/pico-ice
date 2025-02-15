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
-- BIN_OP_LT[vga_timing_h_l189_c7_cd1b]
signal BIN_OP_LT_vga_timing_h_l189_c7_cd1b_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l189_c7_cd1b_right : unsigned(9 downto 0);
signal BIN_OP_LT_vga_timing_h_l189_c7_cd1b_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[vga_timing_h_l189_c28_8e14]
signal BIN_OP_LT_vga_timing_h_l189_c28_8e14_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l189_c28_8e14_right : unsigned(8 downto 0);
signal BIN_OP_LT_vga_timing_h_l189_c28_8e14_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l189_c7_b2d1]
signal BIN_OP_AND_vga_timing_h_l189_c7_b2d1_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l189_c7_b2d1_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l189_c7_b2d1_return_output : unsigned(0 downto 0);

-- o_active_MUX[vga_timing_h_l189_c3_be23]
signal o_active_MUX_vga_timing_h_l189_c3_be23_cond : unsigned(0 downto 0);
signal o_active_MUX_vga_timing_h_l189_c3_be23_iftrue : unsigned(0 downto 0);
signal o_active_MUX_vga_timing_h_l189_c3_be23_iffalse : unsigned(0 downto 0);
signal o_active_MUX_vga_timing_h_l189_c3_be23_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l193_c23_f138]
signal BIN_OP_EQ_vga_timing_h_l193_c23_f138_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l193_c23_f138_right : unsigned(0 downto 0);
signal BIN_OP_EQ_vga_timing_h_l193_c23_f138_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l193_c41_0f5a]
signal BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_right : unsigned(0 downto 0);
signal BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l193_c23_d7cd]
signal BIN_OP_AND_vga_timing_h_l193_c23_d7cd_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l193_c23_d7cd_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l193_c23_d7cd_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l194_c21_31ab]
signal BIN_OP_EQ_vga_timing_h_l194_c21_31ab_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l194_c21_31ab_right : unsigned(9 downto 0);
signal BIN_OP_EQ_vga_timing_h_l194_c21_31ab_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l194_c46_a22d]
signal BIN_OP_EQ_vga_timing_h_l194_c46_a22d_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l194_c46_a22d_right : unsigned(8 downto 0);
signal BIN_OP_EQ_vga_timing_h_l194_c46_a22d_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l194_c21_8c16]
signal BIN_OP_AND_vga_timing_h_l194_c21_8c16_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l194_c21_8c16_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l194_c21_8c16_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l205_c20_df4d]
signal BIN_OP_EQ_vga_timing_h_l205_c20_df4d_left : unsigned(7 downto 0);
signal BIN_OP_EQ_vga_timing_h_l205_c20_df4d_right : unsigned(0 downto 0);
signal BIN_OP_EQ_vga_timing_h_l205_c20_df4d_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l206_c3_47bd]
signal BIN_OP_AND_vga_timing_h_l206_c3_47bd_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l206_c3_47bd_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l206_c3_47bd_return_output : unsigned(0 downto 0);

-- overclock_counter_MUX[vga_timing_h_l207_c3_9563]
signal overclock_counter_MUX_vga_timing_h_l207_c3_9563_cond : unsigned(0 downto 0);
signal overclock_counter_MUX_vga_timing_h_l207_c3_9563_iftrue : unsigned(7 downto 0);
signal overclock_counter_MUX_vga_timing_h_l207_c3_9563_iffalse : unsigned(7 downto 0);
signal overclock_counter_MUX_vga_timing_h_l207_c3_9563_return_output : unsigned(7 downto 0);

-- BIN_OP_PLUS[vga_timing_h_l210_c5_d72e]
signal BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_left : unsigned(7 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_return_output : unsigned(8 downto 0);

-- h_sync_reg_MUX[vga_timing_h_l213_c3_8690]
signal h_sync_reg_MUX_vga_timing_h_l213_c3_8690_cond : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l213_c3_8690_iftrue : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l213_c3_8690_iffalse : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l213_c3_8690_return_output : unsigned(0 downto 0);

-- v_sync_reg_MUX[vga_timing_h_l213_c3_8690]
signal v_sync_reg_MUX_vga_timing_h_l213_c3_8690_cond : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l213_c3_8690_iftrue : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l213_c3_8690_iffalse : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l213_c3_8690_return_output : unsigned(0 downto 0);

-- v_cntr_reg_MUX[vga_timing_h_l213_c3_8690]
signal v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_cond : unsigned(0 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iftrue : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iffalse : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_return_output : unsigned(11 downto 0);

-- h_cntr_reg_MUX[vga_timing_h_l213_c3_8690]
signal h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_cond : unsigned(0 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iftrue : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iffalse : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_return_output : unsigned(11 downto 0);

-- BIN_OP_GTE[vga_timing_h_l215_c9_6d73]
signal BIN_OP_GTE_vga_timing_h_l215_c9_6d73_left : unsigned(11 downto 0);
signal BIN_OP_GTE_vga_timing_h_l215_c9_6d73_right : unsigned(9 downto 0);
signal BIN_OP_GTE_vga_timing_h_l215_c9_6d73_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[vga_timing_h_l215_c42_c65b]
signal BIN_OP_LT_vga_timing_h_l215_c42_c65b_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l215_c42_c65b_right : unsigned(9 downto 0);
signal BIN_OP_LT_vga_timing_h_l215_c42_c65b_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l215_c9_7478]
signal BIN_OP_AND_vga_timing_h_l215_c9_7478_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l215_c9_7478_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l215_c9_7478_return_output : unsigned(0 downto 0);

-- h_sync_reg_MUX[vga_timing_h_l215_c5_bb26]
signal h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_cond : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_iftrue : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_iffalse : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_return_output : unsigned(0 downto 0);

-- BIN_OP_GTE[vga_timing_h_l224_c9_9763]
signal BIN_OP_GTE_vga_timing_h_l224_c9_9763_left : unsigned(11 downto 0);
signal BIN_OP_GTE_vga_timing_h_l224_c9_9763_right : unsigned(8 downto 0);
signal BIN_OP_GTE_vga_timing_h_l224_c9_9763_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[vga_timing_h_l224_c42_e8fb]
signal BIN_OP_LT_vga_timing_h_l224_c42_e8fb_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l224_c42_e8fb_right : unsigned(8 downto 0);
signal BIN_OP_LT_vga_timing_h_l224_c42_e8fb_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l224_c9_7c4b]
signal BIN_OP_AND_vga_timing_h_l224_c9_7c4b_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l224_c9_7c4b_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l224_c9_7c4b_return_output : unsigned(0 downto 0);

-- v_sync_reg_MUX[vga_timing_h_l224_c5_a8c0]
signal v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_cond : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_iftrue : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_iffalse : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l233_c9_dea4]
signal BIN_OP_EQ_vga_timing_h_l233_c9_dea4_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l233_c9_dea4_right : unsigned(9 downto 0);
signal BIN_OP_EQ_vga_timing_h_l233_c9_dea4_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l233_c37_8363]
signal BIN_OP_EQ_vga_timing_h_l233_c37_8363_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l233_c37_8363_right : unsigned(9 downto 0);
signal BIN_OP_EQ_vga_timing_h_l233_c37_8363_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l233_c9_019a]
signal BIN_OP_AND_vga_timing_h_l233_c9_019a_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l233_c9_019a_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l233_c9_019a_return_output : unsigned(0 downto 0);

-- v_cntr_reg_MUX[vga_timing_h_l233_c5_1899]
signal v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_cond : unsigned(0 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_iftrue : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_iffalse : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_return_output : unsigned(11 downto 0);

-- BIN_OP_EQ[vga_timing_h_l237_c13_ffde]
signal BIN_OP_EQ_vga_timing_h_l237_c13_ffde_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l237_c13_ffde_right : unsigned(9 downto 0);
signal BIN_OP_EQ_vga_timing_h_l237_c13_ffde_return_output : unsigned(0 downto 0);

-- v_cntr_reg_MUX[vga_timing_h_l237_c10_6289]
signal v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_cond : unsigned(0 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_iftrue : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_iffalse : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[vga_timing_h_l239_c20_c07e]
signal BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_return_output : unsigned(12 downto 0);

-- BIN_OP_EQ[vga_timing_h_l242_c8_a20f]
signal BIN_OP_EQ_vga_timing_h_l242_c8_a20f_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l242_c8_a20f_right : unsigned(9 downto 0);
signal BIN_OP_EQ_vga_timing_h_l242_c8_a20f_return_output : unsigned(0 downto 0);

-- h_cntr_reg_MUX[vga_timing_h_l242_c5_66d4]
signal h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_cond : unsigned(0 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_iftrue : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_iffalse : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[vga_timing_h_l248_c20_11af]
signal BIN_OP_PLUS_vga_timing_h_l248_c20_11af_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l248_c20_11af_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l248_c20_11af_return_output : unsigned(12 downto 0);

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
-- BIN_OP_LT_vga_timing_h_l189_c7_cd1b : 0 clocks latency
BIN_OP_LT_vga_timing_h_l189_c7_cd1b : entity work.BIN_OP_LT_uint12_t_uint10_t_0CLK_5af1a430 port map (
BIN_OP_LT_vga_timing_h_l189_c7_cd1b_left,
BIN_OP_LT_vga_timing_h_l189_c7_cd1b_right,
BIN_OP_LT_vga_timing_h_l189_c7_cd1b_return_output);

-- BIN_OP_LT_vga_timing_h_l189_c28_8e14 : 0 clocks latency
BIN_OP_LT_vga_timing_h_l189_c28_8e14 : entity work.BIN_OP_LT_uint12_t_uint9_t_0CLK_5af1a430 port map (
BIN_OP_LT_vga_timing_h_l189_c28_8e14_left,
BIN_OP_LT_vga_timing_h_l189_c28_8e14_right,
BIN_OP_LT_vga_timing_h_l189_c28_8e14_return_output);

-- BIN_OP_AND_vga_timing_h_l189_c7_b2d1 : 0 clocks latency
BIN_OP_AND_vga_timing_h_l189_c7_b2d1 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l189_c7_b2d1_left,
BIN_OP_AND_vga_timing_h_l189_c7_b2d1_right,
BIN_OP_AND_vga_timing_h_l189_c7_b2d1_return_output);

-- o_active_MUX_vga_timing_h_l189_c3_be23 : 0 clocks latency
o_active_MUX_vga_timing_h_l189_c3_be23 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_active_MUX_vga_timing_h_l189_c3_be23_cond,
o_active_MUX_vga_timing_h_l189_c3_be23_iftrue,
o_active_MUX_vga_timing_h_l189_c3_be23_iffalse,
o_active_MUX_vga_timing_h_l189_c3_be23_return_output);

-- BIN_OP_EQ_vga_timing_h_l193_c23_f138 : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l193_c23_f138 : entity work.BIN_OP_EQ_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l193_c23_f138_left,
BIN_OP_EQ_vga_timing_h_l193_c23_f138_right,
BIN_OP_EQ_vga_timing_h_l193_c23_f138_return_output);

-- BIN_OP_EQ_vga_timing_h_l193_c41_0f5a : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l193_c41_0f5a : entity work.BIN_OP_EQ_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_left,
BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_right,
BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_return_output);

-- BIN_OP_AND_vga_timing_h_l193_c23_d7cd : 0 clocks latency
BIN_OP_AND_vga_timing_h_l193_c23_d7cd : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l193_c23_d7cd_left,
BIN_OP_AND_vga_timing_h_l193_c23_d7cd_right,
BIN_OP_AND_vga_timing_h_l193_c23_d7cd_return_output);

-- BIN_OP_EQ_vga_timing_h_l194_c21_31ab : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l194_c21_31ab : entity work.BIN_OP_EQ_uint12_t_uint10_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l194_c21_31ab_left,
BIN_OP_EQ_vga_timing_h_l194_c21_31ab_right,
BIN_OP_EQ_vga_timing_h_l194_c21_31ab_return_output);

-- BIN_OP_EQ_vga_timing_h_l194_c46_a22d : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l194_c46_a22d : entity work.BIN_OP_EQ_uint12_t_uint9_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l194_c46_a22d_left,
BIN_OP_EQ_vga_timing_h_l194_c46_a22d_right,
BIN_OP_EQ_vga_timing_h_l194_c46_a22d_return_output);

-- BIN_OP_AND_vga_timing_h_l194_c21_8c16 : 0 clocks latency
BIN_OP_AND_vga_timing_h_l194_c21_8c16 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l194_c21_8c16_left,
BIN_OP_AND_vga_timing_h_l194_c21_8c16_right,
BIN_OP_AND_vga_timing_h_l194_c21_8c16_return_output);

-- BIN_OP_EQ_vga_timing_h_l205_c20_df4d : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l205_c20_df4d : entity work.BIN_OP_EQ_uint8_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l205_c20_df4d_left,
BIN_OP_EQ_vga_timing_h_l205_c20_df4d_right,
BIN_OP_EQ_vga_timing_h_l205_c20_df4d_return_output);

-- BIN_OP_AND_vga_timing_h_l206_c3_47bd : 0 clocks latency
BIN_OP_AND_vga_timing_h_l206_c3_47bd : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l206_c3_47bd_left,
BIN_OP_AND_vga_timing_h_l206_c3_47bd_right,
BIN_OP_AND_vga_timing_h_l206_c3_47bd_return_output);

-- overclock_counter_MUX_vga_timing_h_l207_c3_9563 : 0 clocks latency
overclock_counter_MUX_vga_timing_h_l207_c3_9563 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
overclock_counter_MUX_vga_timing_h_l207_c3_9563_cond,
overclock_counter_MUX_vga_timing_h_l207_c3_9563_iftrue,
overclock_counter_MUX_vga_timing_h_l207_c3_9563_iffalse,
overclock_counter_MUX_vga_timing_h_l207_c3_9563_return_output);

-- BIN_OP_PLUS_vga_timing_h_l210_c5_d72e : 0 clocks latency
BIN_OP_PLUS_vga_timing_h_l210_c5_d72e : entity work.BIN_OP_PLUS_uint8_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_left,
BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_right,
BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_return_output);

-- h_sync_reg_MUX_vga_timing_h_l213_c3_8690 : 0 clocks latency
h_sync_reg_MUX_vga_timing_h_l213_c3_8690 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
h_sync_reg_MUX_vga_timing_h_l213_c3_8690_cond,
h_sync_reg_MUX_vga_timing_h_l213_c3_8690_iftrue,
h_sync_reg_MUX_vga_timing_h_l213_c3_8690_iffalse,
h_sync_reg_MUX_vga_timing_h_l213_c3_8690_return_output);

-- v_sync_reg_MUX_vga_timing_h_l213_c3_8690 : 0 clocks latency
v_sync_reg_MUX_vga_timing_h_l213_c3_8690 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
v_sync_reg_MUX_vga_timing_h_l213_c3_8690_cond,
v_sync_reg_MUX_vga_timing_h_l213_c3_8690_iftrue,
v_sync_reg_MUX_vga_timing_h_l213_c3_8690_iffalse,
v_sync_reg_MUX_vga_timing_h_l213_c3_8690_return_output);

-- v_cntr_reg_MUX_vga_timing_h_l213_c3_8690 : 0 clocks latency
v_cntr_reg_MUX_vga_timing_h_l213_c3_8690 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_cond,
v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iftrue,
v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iffalse,
v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_return_output);

-- h_cntr_reg_MUX_vga_timing_h_l213_c3_8690 : 0 clocks latency
h_cntr_reg_MUX_vga_timing_h_l213_c3_8690 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_cond,
h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iftrue,
h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iffalse,
h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_return_output);

-- BIN_OP_GTE_vga_timing_h_l215_c9_6d73 : 0 clocks latency
BIN_OP_GTE_vga_timing_h_l215_c9_6d73 : entity work.BIN_OP_GTE_uint12_t_uint10_t_0CLK_e595f783 port map (
BIN_OP_GTE_vga_timing_h_l215_c9_6d73_left,
BIN_OP_GTE_vga_timing_h_l215_c9_6d73_right,
BIN_OP_GTE_vga_timing_h_l215_c9_6d73_return_output);

-- BIN_OP_LT_vga_timing_h_l215_c42_c65b : 0 clocks latency
BIN_OP_LT_vga_timing_h_l215_c42_c65b : entity work.BIN_OP_LT_uint12_t_uint10_t_0CLK_5af1a430 port map (
BIN_OP_LT_vga_timing_h_l215_c42_c65b_left,
BIN_OP_LT_vga_timing_h_l215_c42_c65b_right,
BIN_OP_LT_vga_timing_h_l215_c42_c65b_return_output);

-- BIN_OP_AND_vga_timing_h_l215_c9_7478 : 0 clocks latency
BIN_OP_AND_vga_timing_h_l215_c9_7478 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l215_c9_7478_left,
BIN_OP_AND_vga_timing_h_l215_c9_7478_right,
BIN_OP_AND_vga_timing_h_l215_c9_7478_return_output);

-- h_sync_reg_MUX_vga_timing_h_l215_c5_bb26 : 0 clocks latency
h_sync_reg_MUX_vga_timing_h_l215_c5_bb26 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_cond,
h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_iftrue,
h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_iffalse,
h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_return_output);

-- BIN_OP_GTE_vga_timing_h_l224_c9_9763 : 0 clocks latency
BIN_OP_GTE_vga_timing_h_l224_c9_9763 : entity work.BIN_OP_GTE_uint12_t_uint9_t_0CLK_e595f783 port map (
BIN_OP_GTE_vga_timing_h_l224_c9_9763_left,
BIN_OP_GTE_vga_timing_h_l224_c9_9763_right,
BIN_OP_GTE_vga_timing_h_l224_c9_9763_return_output);

-- BIN_OP_LT_vga_timing_h_l224_c42_e8fb : 0 clocks latency
BIN_OP_LT_vga_timing_h_l224_c42_e8fb : entity work.BIN_OP_LT_uint12_t_uint9_t_0CLK_5af1a430 port map (
BIN_OP_LT_vga_timing_h_l224_c42_e8fb_left,
BIN_OP_LT_vga_timing_h_l224_c42_e8fb_right,
BIN_OP_LT_vga_timing_h_l224_c42_e8fb_return_output);

-- BIN_OP_AND_vga_timing_h_l224_c9_7c4b : 0 clocks latency
BIN_OP_AND_vga_timing_h_l224_c9_7c4b : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l224_c9_7c4b_left,
BIN_OP_AND_vga_timing_h_l224_c9_7c4b_right,
BIN_OP_AND_vga_timing_h_l224_c9_7c4b_return_output);

-- v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0 : 0 clocks latency
v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_cond,
v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_iftrue,
v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_iffalse,
v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_return_output);

-- BIN_OP_EQ_vga_timing_h_l233_c9_dea4 : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l233_c9_dea4 : entity work.BIN_OP_EQ_uint12_t_uint10_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l233_c9_dea4_left,
BIN_OP_EQ_vga_timing_h_l233_c9_dea4_right,
BIN_OP_EQ_vga_timing_h_l233_c9_dea4_return_output);

-- BIN_OP_EQ_vga_timing_h_l233_c37_8363 : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l233_c37_8363 : entity work.BIN_OP_EQ_uint12_t_uint10_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l233_c37_8363_left,
BIN_OP_EQ_vga_timing_h_l233_c37_8363_right,
BIN_OP_EQ_vga_timing_h_l233_c37_8363_return_output);

-- BIN_OP_AND_vga_timing_h_l233_c9_019a : 0 clocks latency
BIN_OP_AND_vga_timing_h_l233_c9_019a : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l233_c9_019a_left,
BIN_OP_AND_vga_timing_h_l233_c9_019a_right,
BIN_OP_AND_vga_timing_h_l233_c9_019a_return_output);

-- v_cntr_reg_MUX_vga_timing_h_l233_c5_1899 : 0 clocks latency
v_cntr_reg_MUX_vga_timing_h_l233_c5_1899 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_cond,
v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_iftrue,
v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_iffalse,
v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_return_output);

-- BIN_OP_EQ_vga_timing_h_l237_c13_ffde : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l237_c13_ffde : entity work.BIN_OP_EQ_uint12_t_uint10_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l237_c13_ffde_left,
BIN_OP_EQ_vga_timing_h_l237_c13_ffde_right,
BIN_OP_EQ_vga_timing_h_l237_c13_ffde_return_output);

-- v_cntr_reg_MUX_vga_timing_h_l237_c10_6289 : 0 clocks latency
v_cntr_reg_MUX_vga_timing_h_l237_c10_6289 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_cond,
v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_iftrue,
v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_iffalse,
v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_return_output);

-- BIN_OP_PLUS_vga_timing_h_l239_c20_c07e : 0 clocks latency
BIN_OP_PLUS_vga_timing_h_l239_c20_c07e : entity work.BIN_OP_PLUS_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_left,
BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_right,
BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_return_output);

-- BIN_OP_EQ_vga_timing_h_l242_c8_a20f : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l242_c8_a20f : entity work.BIN_OP_EQ_uint12_t_uint10_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l242_c8_a20f_left,
BIN_OP_EQ_vga_timing_h_l242_c8_a20f_right,
BIN_OP_EQ_vga_timing_h_l242_c8_a20f_return_output);

-- h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4 : 0 clocks latency
h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_cond,
h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_iftrue,
h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_iffalse,
h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_return_output);

-- BIN_OP_PLUS_vga_timing_h_l248_c20_11af : 0 clocks latency
BIN_OP_PLUS_vga_timing_h_l248_c20_11af : entity work.BIN_OP_PLUS_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_vga_timing_h_l248_c20_11af_left,
BIN_OP_PLUS_vga_timing_h_l248_c20_11af_right,
BIN_OP_PLUS_vga_timing_h_l248_c20_11af_return_output);



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
 BIN_OP_LT_vga_timing_h_l189_c7_cd1b_return_output,
 BIN_OP_LT_vga_timing_h_l189_c28_8e14_return_output,
 BIN_OP_AND_vga_timing_h_l189_c7_b2d1_return_output,
 o_active_MUX_vga_timing_h_l189_c3_be23_return_output,
 BIN_OP_EQ_vga_timing_h_l193_c23_f138_return_output,
 BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_return_output,
 BIN_OP_AND_vga_timing_h_l193_c23_d7cd_return_output,
 BIN_OP_EQ_vga_timing_h_l194_c21_31ab_return_output,
 BIN_OP_EQ_vga_timing_h_l194_c46_a22d_return_output,
 BIN_OP_AND_vga_timing_h_l194_c21_8c16_return_output,
 BIN_OP_EQ_vga_timing_h_l205_c20_df4d_return_output,
 BIN_OP_AND_vga_timing_h_l206_c3_47bd_return_output,
 overclock_counter_MUX_vga_timing_h_l207_c3_9563_return_output,
 BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_return_output,
 h_sync_reg_MUX_vga_timing_h_l213_c3_8690_return_output,
 v_sync_reg_MUX_vga_timing_h_l213_c3_8690_return_output,
 v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_return_output,
 h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_return_output,
 BIN_OP_GTE_vga_timing_h_l215_c9_6d73_return_output,
 BIN_OP_LT_vga_timing_h_l215_c42_c65b_return_output,
 BIN_OP_AND_vga_timing_h_l215_c9_7478_return_output,
 h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_return_output,
 BIN_OP_GTE_vga_timing_h_l224_c9_9763_return_output,
 BIN_OP_LT_vga_timing_h_l224_c42_e8fb_return_output,
 BIN_OP_AND_vga_timing_h_l224_c9_7c4b_return_output,
 v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_return_output,
 BIN_OP_EQ_vga_timing_h_l233_c9_dea4_return_output,
 BIN_OP_EQ_vga_timing_h_l233_c37_8363_return_output,
 BIN_OP_AND_vga_timing_h_l233_c9_019a_return_output,
 v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_return_output,
 BIN_OP_EQ_vga_timing_h_l237_c13_ffde_return_output,
 v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_return_output,
 BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_return_output,
 BIN_OP_EQ_vga_timing_h_l242_c8_a20f_return_output,
 h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_return_output,
 BIN_OP_PLUS_vga_timing_h_l248_c20_11af_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : vga_signals_t;
 variable VAR_o : vga_signals_t;
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c7_cd1b_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c7_cd1b_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c7_cd1b_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l189_c7_b2d1_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c28_8e14_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c28_8e14_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c28_8e14_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l189_c7_b2d1_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l189_c7_b2d1_return_output : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l189_c3_be23_iftrue : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l189_c3_be23_iffalse : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l189_c3_be23_return_output : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l189_c3_be23_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c23_f138_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c23_f138_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c23_f138_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l193_c23_d7cd_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l193_c23_d7cd_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l193_c23_d7cd_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c21_31ab_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c21_31ab_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c21_31ab_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l194_c21_8c16_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c46_a22d_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c46_a22d_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c46_a22d_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l194_c21_8c16_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l194_c21_8c16_return_output : unsigned(0 downto 0);
 variable VAR_stall_req : unsigned(0 downto 0);
 variable VAR_valid : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l205_c20_df4d_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l205_c20_df4d_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l205_c20_df4d_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l206_c3_47bd_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l206_c3_47bd_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l206_c3_47bd_return_output : unsigned(0 downto 0);
 variable VAR_overclock_counter_MUX_vga_timing_h_l207_c3_9563_iftrue : unsigned(7 downto 0);
 variable VAR_overclock_counter_vga_timing_h_l208_c5_fb03 : unsigned(7 downto 0);
 variable VAR_overclock_counter_MUX_vga_timing_h_l207_c3_9563_iffalse : unsigned(7 downto 0);
 variable VAR_overclock_counter_vga_timing_h_l210_c5_5fb7 : unsigned(7 downto 0);
 variable VAR_overclock_counter_MUX_vga_timing_h_l207_c3_9563_return_output : unsigned(7 downto 0);
 variable VAR_overclock_counter_MUX_vga_timing_h_l207_c3_9563_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_return_output : unsigned(8 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_8690_iftrue : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_return_output : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_8690_iffalse : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_8690_return_output : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_8690_cond : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_8690_iftrue : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_return_output : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_8690_iffalse : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_8690_return_output : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_8690_cond : unsigned(0 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iftrue : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_return_output : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iffalse : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_return_output : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_cond : unsigned(0 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iftrue : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_return_output : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iffalse : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_return_output : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l215_c9_6d73_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l215_c9_6d73_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l215_c9_6d73_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l215_c9_7478_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l215_c42_c65b_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l215_c42_c65b_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l215_c42_c65b_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l215_c9_7478_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l215_c9_7478_return_output : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_iftrue : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_iffalse : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l224_c9_9763_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l224_c9_9763_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l224_c9_9763_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l224_c9_7c4b_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l224_c42_e8fb_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l224_c42_e8fb_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l224_c42_e8fb_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l224_c9_7c4b_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l224_c9_7c4b_return_output : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_iftrue : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_iffalse : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c9_dea4_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c9_dea4_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c9_dea4_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l233_c9_019a_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c37_8363_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c37_8363_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c37_8363_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l233_c9_019a_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l233_c9_019a_return_output : unsigned(0 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_iftrue : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_vga_timing_h_l235_c7_b1d4 : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_iffalse : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_return_output : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l237_c13_ffde_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l237_c13_ffde_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l237_c13_ffde_return_output : unsigned(0 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_iftrue : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_vga_timing_h_l239_c7_de2b : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_iffalse : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l242_c8_a20f_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l242_c8_a20f_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l242_c8_a20f_return_output : unsigned(0 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_iftrue : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_vga_timing_h_l244_c7_8a85 : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_iffalse : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_vga_timing_h_l248_c7_4d22 : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_11af_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_11af_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_11af_return_output : unsigned(12 downto 0);
 variable VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_17af_vga_timing_h_l253_c10_17a5_return_output : vga_signals_t;
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
     VAR_BIN_OP_GTE_vga_timing_h_l224_c9_9763_right := to_unsigned(489, 9);
     VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_vga_timing_h_l233_c37_8363_right := to_unsigned(524, 10);
     VAR_BIN_OP_EQ_vga_timing_h_l233_c9_dea4_right := to_unsigned(799, 10);
     VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_iffalse := to_unsigned(1, 1);
     VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_iftrue := to_unsigned(0, 1);
     VAR_h_cntr_reg_vga_timing_h_l244_c7_8a85 := resize(to_unsigned(0, 1), 12);
     VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_iftrue := VAR_h_cntr_reg_vga_timing_h_l244_c7_8a85;
     VAR_BIN_OP_LT_vga_timing_h_l215_c42_c65b_right := to_unsigned(751, 10);
     VAR_BIN_OP_EQ_vga_timing_h_l205_c20_df4d_right := to_unsigned(0, 1);
     VAR_v_cntr_reg_vga_timing_h_l235_c7_b1d4 := resize(to_unsigned(0, 1), 12);
     VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_iftrue := VAR_v_cntr_reg_vga_timing_h_l235_c7_b1d4;
     VAR_BIN_OP_AND_vga_timing_h_l206_c3_47bd_right := to_unsigned(1, 1);
     VAR_BIN_OP_GTE_vga_timing_h_l215_c9_6d73_right := to_unsigned(655, 10);
     VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_iftrue := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_vga_timing_h_l193_c23_f138_right := to_unsigned(0, 1);
     VAR_BIN_OP_LT_vga_timing_h_l189_c7_cd1b_right := to_unsigned(640, 10);
     VAR_overclock_counter_vga_timing_h_l208_c5_fb03 := resize(to_unsigned(0, 1), 8);
     VAR_overclock_counter_MUX_vga_timing_h_l207_c3_9563_iftrue := VAR_overclock_counter_vga_timing_h_l208_c5_fb03;
     VAR_BIN_OP_EQ_vga_timing_h_l194_c46_a22d_right := to_unsigned(479, 9);
     VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_11af_right := to_unsigned(1, 1);
     VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_iffalse := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_vga_timing_h_l242_c8_a20f_right := to_unsigned(799, 10);
     VAR_o_active_MUX_vga_timing_h_l189_c3_be23_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_LT_vga_timing_h_l224_c42_e8fb_right := to_unsigned(491, 9);
     VAR_BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_right := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_vga_timing_h_l237_c13_ffde_right := to_unsigned(799, 10);
     VAR_o_active_MUX_vga_timing_h_l189_c3_be23_iffalse := to_unsigned(0, 1);
     VAR_BIN_OP_LT_vga_timing_h_l189_c28_8e14_right := to_unsigned(480, 9);
     VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_vga_timing_h_l194_c21_31ab_right := to_unsigned(639, 10);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

     -- Submodule level 0
     VAR_BIN_OP_EQ_vga_timing_h_l193_c23_f138_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l194_c21_31ab_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l233_c9_dea4_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l237_c13_ffde_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l242_c8_a20f_left := h_cntr_reg;
     VAR_BIN_OP_GTE_vga_timing_h_l215_c9_6d73_left := h_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l189_c7_cd1b_left := h_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l215_c42_c65b_left := h_cntr_reg;
     VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_11af_left := h_cntr_reg;
     VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iffalse := h_cntr_reg;
     VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_8690_iffalse := h_sync_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l205_c20_df4d_left := overclock_counter;
     VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_left := overclock_counter;
     REG_VAR_overclock_counter_out_reg := overclock_counter;
     VAR_BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_left := v_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l194_c46_a22d_left := v_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l233_c37_8363_left := v_cntr_reg;
     VAR_BIN_OP_GTE_vga_timing_h_l224_c9_9763_left := v_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l189_c28_8e14_left := v_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l224_c42_e8fb_left := v_cntr_reg;
     VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_left := v_cntr_reg;
     VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iffalse := v_cntr_reg;
     VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_iffalse := v_cntr_reg;
     VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_8690_iffalse := v_sync_reg;
     -- BIN_OP_GTE[vga_timing_h_l215_c9_6d73] LATENCY=0
     -- Inputs
     BIN_OP_GTE_vga_timing_h_l215_c9_6d73_left <= VAR_BIN_OP_GTE_vga_timing_h_l215_c9_6d73_left;
     BIN_OP_GTE_vga_timing_h_l215_c9_6d73_right <= VAR_BIN_OP_GTE_vga_timing_h_l215_c9_6d73_right;
     -- Outputs
     VAR_BIN_OP_GTE_vga_timing_h_l215_c9_6d73_return_output := BIN_OP_GTE_vga_timing_h_l215_c9_6d73_return_output;

     -- BIN_OP_EQ[vga_timing_h_l193_c23_f138] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l193_c23_f138_left <= VAR_BIN_OP_EQ_vga_timing_h_l193_c23_f138_left;
     BIN_OP_EQ_vga_timing_h_l193_c23_f138_right <= VAR_BIN_OP_EQ_vga_timing_h_l193_c23_f138_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l193_c23_f138_return_output := BIN_OP_EQ_vga_timing_h_l193_c23_f138_return_output;

     -- BIN_OP_EQ[vga_timing_h_l194_c21_31ab] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l194_c21_31ab_left <= VAR_BIN_OP_EQ_vga_timing_h_l194_c21_31ab_left;
     BIN_OP_EQ_vga_timing_h_l194_c21_31ab_right <= VAR_BIN_OP_EQ_vga_timing_h_l194_c21_31ab_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l194_c21_31ab_return_output := BIN_OP_EQ_vga_timing_h_l194_c21_31ab_return_output;

     -- BIN_OP_EQ[vga_timing_h_l205_c20_df4d] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l205_c20_df4d_left <= VAR_BIN_OP_EQ_vga_timing_h_l205_c20_df4d_left;
     BIN_OP_EQ_vga_timing_h_l205_c20_df4d_right <= VAR_BIN_OP_EQ_vga_timing_h_l205_c20_df4d_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l205_c20_df4d_return_output := BIN_OP_EQ_vga_timing_h_l205_c20_df4d_return_output;

     -- BIN_OP_EQ[vga_timing_h_l242_c8_a20f] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l242_c8_a20f_left <= VAR_BIN_OP_EQ_vga_timing_h_l242_c8_a20f_left;
     BIN_OP_EQ_vga_timing_h_l242_c8_a20f_right <= VAR_BIN_OP_EQ_vga_timing_h_l242_c8_a20f_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l242_c8_a20f_return_output := BIN_OP_EQ_vga_timing_h_l242_c8_a20f_return_output;

     -- BIN_OP_PLUS[vga_timing_h_l248_c20_11af] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_vga_timing_h_l248_c20_11af_left <= VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_11af_left;
     BIN_OP_PLUS_vga_timing_h_l248_c20_11af_right <= VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_11af_right;
     -- Outputs
     VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_11af_return_output := BIN_OP_PLUS_vga_timing_h_l248_c20_11af_return_output;

     -- BIN_OP_EQ[vga_timing_h_l233_c9_dea4] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l233_c9_dea4_left <= VAR_BIN_OP_EQ_vga_timing_h_l233_c9_dea4_left;
     BIN_OP_EQ_vga_timing_h_l233_c9_dea4_right <= VAR_BIN_OP_EQ_vga_timing_h_l233_c9_dea4_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l233_c9_dea4_return_output := BIN_OP_EQ_vga_timing_h_l233_c9_dea4_return_output;

     -- BIN_OP_LT[vga_timing_h_l189_c7_cd1b] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l189_c7_cd1b_left <= VAR_BIN_OP_LT_vga_timing_h_l189_c7_cd1b_left;
     BIN_OP_LT_vga_timing_h_l189_c7_cd1b_right <= VAR_BIN_OP_LT_vga_timing_h_l189_c7_cd1b_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l189_c7_cd1b_return_output := BIN_OP_LT_vga_timing_h_l189_c7_cd1b_return_output;

     -- BIN_OP_EQ[vga_timing_h_l233_c37_8363] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l233_c37_8363_left <= VAR_BIN_OP_EQ_vga_timing_h_l233_c37_8363_left;
     BIN_OP_EQ_vga_timing_h_l233_c37_8363_right <= VAR_BIN_OP_EQ_vga_timing_h_l233_c37_8363_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l233_c37_8363_return_output := BIN_OP_EQ_vga_timing_h_l233_c37_8363_return_output;

     -- BIN_OP_LT[vga_timing_h_l215_c42_c65b] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l215_c42_c65b_left <= VAR_BIN_OP_LT_vga_timing_h_l215_c42_c65b_left;
     BIN_OP_LT_vga_timing_h_l215_c42_c65b_right <= VAR_BIN_OP_LT_vga_timing_h_l215_c42_c65b_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l215_c42_c65b_return_output := BIN_OP_LT_vga_timing_h_l215_c42_c65b_return_output;

     -- BIN_OP_LT[vga_timing_h_l189_c28_8e14] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l189_c28_8e14_left <= VAR_BIN_OP_LT_vga_timing_h_l189_c28_8e14_left;
     BIN_OP_LT_vga_timing_h_l189_c28_8e14_right <= VAR_BIN_OP_LT_vga_timing_h_l189_c28_8e14_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l189_c28_8e14_return_output := BIN_OP_LT_vga_timing_h_l189_c28_8e14_return_output;

     -- BIN_OP_PLUS[vga_timing_h_l239_c20_c07e] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_left <= VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_left;
     BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_right <= VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_right;
     -- Outputs
     VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_return_output := BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_return_output;

     -- BIN_OP_GTE[vga_timing_h_l224_c9_9763] LATENCY=0
     -- Inputs
     BIN_OP_GTE_vga_timing_h_l224_c9_9763_left <= VAR_BIN_OP_GTE_vga_timing_h_l224_c9_9763_left;
     BIN_OP_GTE_vga_timing_h_l224_c9_9763_right <= VAR_BIN_OP_GTE_vga_timing_h_l224_c9_9763_right;
     -- Outputs
     VAR_BIN_OP_GTE_vga_timing_h_l224_c9_9763_return_output := BIN_OP_GTE_vga_timing_h_l224_c9_9763_return_output;

     -- BIN_OP_EQ[vga_timing_h_l237_c13_ffde] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l237_c13_ffde_left <= VAR_BIN_OP_EQ_vga_timing_h_l237_c13_ffde_left;
     BIN_OP_EQ_vga_timing_h_l237_c13_ffde_right <= VAR_BIN_OP_EQ_vga_timing_h_l237_c13_ffde_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l237_c13_ffde_return_output := BIN_OP_EQ_vga_timing_h_l237_c13_ffde_return_output;

     -- BIN_OP_EQ[vga_timing_h_l193_c41_0f5a] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_left <= VAR_BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_left;
     BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_right <= VAR_BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_return_output := BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_return_output;

     -- BIN_OP_LT[vga_timing_h_l224_c42_e8fb] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l224_c42_e8fb_left <= VAR_BIN_OP_LT_vga_timing_h_l224_c42_e8fb_left;
     BIN_OP_LT_vga_timing_h_l224_c42_e8fb_right <= VAR_BIN_OP_LT_vga_timing_h_l224_c42_e8fb_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l224_c42_e8fb_return_output := BIN_OP_LT_vga_timing_h_l224_c42_e8fb_return_output;

     -- BIN_OP_EQ[vga_timing_h_l194_c46_a22d] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l194_c46_a22d_left <= VAR_BIN_OP_EQ_vga_timing_h_l194_c46_a22d_left;
     BIN_OP_EQ_vga_timing_h_l194_c46_a22d_right <= VAR_BIN_OP_EQ_vga_timing_h_l194_c46_a22d_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l194_c46_a22d_return_output := BIN_OP_EQ_vga_timing_h_l194_c46_a22d_return_output;

     -- BIN_OP_PLUS[vga_timing_h_l210_c5_d72e] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_left <= VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_left;
     BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_right <= VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_right;
     -- Outputs
     VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_return_output := BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_return_output;

     -- Submodule level 1
     VAR_BIN_OP_AND_vga_timing_h_l193_c23_d7cd_left := VAR_BIN_OP_EQ_vga_timing_h_l193_c23_f138_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l193_c23_d7cd_right := VAR_BIN_OP_EQ_vga_timing_h_l193_c41_0f5a_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l194_c21_8c16_left := VAR_BIN_OP_EQ_vga_timing_h_l194_c21_31ab_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l194_c21_8c16_right := VAR_BIN_OP_EQ_vga_timing_h_l194_c46_a22d_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l206_c3_47bd_left := VAR_BIN_OP_EQ_vga_timing_h_l205_c20_df4d_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l233_c9_019a_right := VAR_BIN_OP_EQ_vga_timing_h_l233_c37_8363_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l233_c9_019a_left := VAR_BIN_OP_EQ_vga_timing_h_l233_c9_dea4_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_cond := VAR_BIN_OP_EQ_vga_timing_h_l237_c13_ffde_return_output;
     VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_cond := VAR_BIN_OP_EQ_vga_timing_h_l242_c8_a20f_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l215_c9_7478_left := VAR_BIN_OP_GTE_vga_timing_h_l215_c9_6d73_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l224_c9_7c4b_left := VAR_BIN_OP_GTE_vga_timing_h_l224_c9_9763_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l189_c7_b2d1_right := VAR_BIN_OP_LT_vga_timing_h_l189_c28_8e14_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l189_c7_b2d1_left := VAR_BIN_OP_LT_vga_timing_h_l189_c7_cd1b_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l215_c9_7478_right := VAR_BIN_OP_LT_vga_timing_h_l215_c42_c65b_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l224_c9_7c4b_right := VAR_BIN_OP_LT_vga_timing_h_l224_c42_e8fb_return_output;
     VAR_overclock_counter_vga_timing_h_l210_c5_5fb7 := resize(VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_d72e_return_output, 8);
     VAR_v_cntr_reg_vga_timing_h_l239_c7_de2b := resize(VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_c07e_return_output, 12);
     VAR_h_cntr_reg_vga_timing_h_l248_c7_4d22 := resize(VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_11af_return_output, 12);
     VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_iffalse := VAR_h_cntr_reg_vga_timing_h_l248_c7_4d22;
     VAR_overclock_counter_MUX_vga_timing_h_l207_c3_9563_iffalse := VAR_overclock_counter_vga_timing_h_l210_c5_5fb7;
     VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_iftrue := VAR_v_cntr_reg_vga_timing_h_l239_c7_de2b;
     -- BIN_OP_AND[vga_timing_h_l194_c21_8c16] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l194_c21_8c16_left <= VAR_BIN_OP_AND_vga_timing_h_l194_c21_8c16_left;
     BIN_OP_AND_vga_timing_h_l194_c21_8c16_right <= VAR_BIN_OP_AND_vga_timing_h_l194_c21_8c16_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l194_c21_8c16_return_output := BIN_OP_AND_vga_timing_h_l194_c21_8c16_return_output;

     -- BIN_OP_AND[vga_timing_h_l193_c23_d7cd] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l193_c23_d7cd_left <= VAR_BIN_OP_AND_vga_timing_h_l193_c23_d7cd_left;
     BIN_OP_AND_vga_timing_h_l193_c23_d7cd_right <= VAR_BIN_OP_AND_vga_timing_h_l193_c23_d7cd_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l193_c23_d7cd_return_output := BIN_OP_AND_vga_timing_h_l193_c23_d7cd_return_output;

     -- BIN_OP_AND[vga_timing_h_l233_c9_019a] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l233_c9_019a_left <= VAR_BIN_OP_AND_vga_timing_h_l233_c9_019a_left;
     BIN_OP_AND_vga_timing_h_l233_c9_019a_right <= VAR_BIN_OP_AND_vga_timing_h_l233_c9_019a_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l233_c9_019a_return_output := BIN_OP_AND_vga_timing_h_l233_c9_019a_return_output;

     -- BIN_OP_AND[vga_timing_h_l189_c7_b2d1] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l189_c7_b2d1_left <= VAR_BIN_OP_AND_vga_timing_h_l189_c7_b2d1_left;
     BIN_OP_AND_vga_timing_h_l189_c7_b2d1_right <= VAR_BIN_OP_AND_vga_timing_h_l189_c7_b2d1_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l189_c7_b2d1_return_output := BIN_OP_AND_vga_timing_h_l189_c7_b2d1_return_output;

     -- h_cntr_reg_MUX[vga_timing_h_l242_c5_66d4] LATENCY=0
     -- Inputs
     h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_cond <= VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_cond;
     h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_iftrue <= VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_iftrue;
     h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_iffalse <= VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_iffalse;
     -- Outputs
     VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_return_output := h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_return_output;

     -- BIN_OP_AND[vga_timing_h_l206_c3_47bd] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l206_c3_47bd_left <= VAR_BIN_OP_AND_vga_timing_h_l206_c3_47bd_left;
     BIN_OP_AND_vga_timing_h_l206_c3_47bd_right <= VAR_BIN_OP_AND_vga_timing_h_l206_c3_47bd_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l206_c3_47bd_return_output := BIN_OP_AND_vga_timing_h_l206_c3_47bd_return_output;

     -- BIN_OP_AND[vga_timing_h_l215_c9_7478] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l215_c9_7478_left <= VAR_BIN_OP_AND_vga_timing_h_l215_c9_7478_left;
     BIN_OP_AND_vga_timing_h_l215_c9_7478_right <= VAR_BIN_OP_AND_vga_timing_h_l215_c9_7478_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l215_c9_7478_return_output := BIN_OP_AND_vga_timing_h_l215_c9_7478_return_output;

     -- v_cntr_reg_MUX[vga_timing_h_l237_c10_6289] LATENCY=0
     -- Inputs
     v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_cond <= VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_cond;
     v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_iftrue <= VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_iftrue;
     v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_iffalse <= VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_iffalse;
     -- Outputs
     VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_return_output := v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_return_output;

     -- BIN_OP_AND[vga_timing_h_l224_c9_7c4b] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l224_c9_7c4b_left <= VAR_BIN_OP_AND_vga_timing_h_l224_c9_7c4b_left;
     BIN_OP_AND_vga_timing_h_l224_c9_7c4b_right <= VAR_BIN_OP_AND_vga_timing_h_l224_c9_7c4b_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l224_c9_7c4b_return_output := BIN_OP_AND_vga_timing_h_l224_c9_7c4b_return_output;

     -- Submodule level 2
     VAR_o_active_MUX_vga_timing_h_l189_c3_be23_cond := VAR_BIN_OP_AND_vga_timing_h_l189_c7_b2d1_return_output;
     VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_cond := VAR_BIN_OP_AND_vga_timing_h_l206_c3_47bd_return_output;
     VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_8690_cond := VAR_BIN_OP_AND_vga_timing_h_l206_c3_47bd_return_output;
     VAR_overclock_counter_MUX_vga_timing_h_l207_c3_9563_cond := VAR_BIN_OP_AND_vga_timing_h_l206_c3_47bd_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_cond := VAR_BIN_OP_AND_vga_timing_h_l206_c3_47bd_return_output;
     VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_8690_cond := VAR_BIN_OP_AND_vga_timing_h_l206_c3_47bd_return_output;
     REG_VAR_valid_reg := VAR_BIN_OP_AND_vga_timing_h_l206_c3_47bd_return_output;
     VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_cond := VAR_BIN_OP_AND_vga_timing_h_l215_c9_7478_return_output;
     VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_cond := VAR_BIN_OP_AND_vga_timing_h_l224_c9_7c4b_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_cond := VAR_BIN_OP_AND_vga_timing_h_l233_c9_019a_return_output;
     VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iftrue := VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_66d4_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_iffalse := VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_6289_return_output;
     -- overclock_counter_MUX[vga_timing_h_l207_c3_9563] LATENCY=0
     -- Inputs
     overclock_counter_MUX_vga_timing_h_l207_c3_9563_cond <= VAR_overclock_counter_MUX_vga_timing_h_l207_c3_9563_cond;
     overclock_counter_MUX_vga_timing_h_l207_c3_9563_iftrue <= VAR_overclock_counter_MUX_vga_timing_h_l207_c3_9563_iftrue;
     overclock_counter_MUX_vga_timing_h_l207_c3_9563_iffalse <= VAR_overclock_counter_MUX_vga_timing_h_l207_c3_9563_iffalse;
     -- Outputs
     VAR_overclock_counter_MUX_vga_timing_h_l207_c3_9563_return_output := overclock_counter_MUX_vga_timing_h_l207_c3_9563_return_output;

     -- v_cntr_reg_MUX[vga_timing_h_l233_c5_1899] LATENCY=0
     -- Inputs
     v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_cond <= VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_cond;
     v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_iftrue <= VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_iftrue;
     v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_iffalse <= VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_iffalse;
     -- Outputs
     VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_return_output := v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_return_output;

     -- o_active_MUX[vga_timing_h_l189_c3_be23] LATENCY=0
     -- Inputs
     o_active_MUX_vga_timing_h_l189_c3_be23_cond <= VAR_o_active_MUX_vga_timing_h_l189_c3_be23_cond;
     o_active_MUX_vga_timing_h_l189_c3_be23_iftrue <= VAR_o_active_MUX_vga_timing_h_l189_c3_be23_iftrue;
     o_active_MUX_vga_timing_h_l189_c3_be23_iffalse <= VAR_o_active_MUX_vga_timing_h_l189_c3_be23_iffalse;
     -- Outputs
     VAR_o_active_MUX_vga_timing_h_l189_c3_be23_return_output := o_active_MUX_vga_timing_h_l189_c3_be23_return_output;

     -- h_cntr_reg_MUX[vga_timing_h_l213_c3_8690] LATENCY=0
     -- Inputs
     h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_cond <= VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_cond;
     h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iftrue <= VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iftrue;
     h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iffalse <= VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iffalse;
     -- Outputs
     VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_return_output := h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_return_output;

     -- v_sync_reg_MUX[vga_timing_h_l224_c5_a8c0] LATENCY=0
     -- Inputs
     v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_cond <= VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_cond;
     v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_iftrue <= VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_iftrue;
     v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_iffalse <= VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_iffalse;
     -- Outputs
     VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_return_output := v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_return_output;

     -- h_sync_reg_MUX[vga_timing_h_l215_c5_bb26] LATENCY=0
     -- Inputs
     h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_cond <= VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_cond;
     h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_iftrue <= VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_iftrue;
     h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_iffalse <= VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_iffalse;
     -- Outputs
     VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_return_output := h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_return_output;

     -- Submodule level 3
     REG_VAR_h_cntr_reg := VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_8690_return_output;
     VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_8690_iftrue := VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_bb26_return_output;
     REG_VAR_overclock_counter := VAR_overclock_counter_MUX_vga_timing_h_l207_c3_9563_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iftrue := VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_1899_return_output;
     VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_8690_iftrue := VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_a8c0_return_output;
     -- h_sync_reg_MUX[vga_timing_h_l213_c3_8690] LATENCY=0
     -- Inputs
     h_sync_reg_MUX_vga_timing_h_l213_c3_8690_cond <= VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_8690_cond;
     h_sync_reg_MUX_vga_timing_h_l213_c3_8690_iftrue <= VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_8690_iftrue;
     h_sync_reg_MUX_vga_timing_h_l213_c3_8690_iffalse <= VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_8690_iffalse;
     -- Outputs
     VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_8690_return_output := h_sync_reg_MUX_vga_timing_h_l213_c3_8690_return_output;

     -- v_sync_reg_MUX[vga_timing_h_l213_c3_8690] LATENCY=0
     -- Inputs
     v_sync_reg_MUX_vga_timing_h_l213_c3_8690_cond <= VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_8690_cond;
     v_sync_reg_MUX_vga_timing_h_l213_c3_8690_iftrue <= VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_8690_iftrue;
     v_sync_reg_MUX_vga_timing_h_l213_c3_8690_iffalse <= VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_8690_iffalse;
     -- Outputs
     VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_8690_return_output := v_sync_reg_MUX_vga_timing_h_l213_c3_8690_return_output;

     -- CONST_REF_RD_vga_signals_t_vga_signals_t_17af[vga_timing_h_l253_c10_17a5] LATENCY=0
     VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_17af_vga_timing_h_l253_c10_17a5_return_output := CONST_REF_RD_vga_signals_t_vga_signals_t_17af(
     h_sync_reg,
     v_sync_reg,
     h_cntr_reg,
     v_cntr_reg,
     overclock_counter_out_reg,
     valid_reg,
     VAR_o_active_MUX_vga_timing_h_l189_c3_be23_return_output,
     VAR_BIN_OP_AND_vga_timing_h_l193_c23_d7cd_return_output,
     VAR_BIN_OP_AND_vga_timing_h_l194_c21_8c16_return_output);

     -- v_cntr_reg_MUX[vga_timing_h_l213_c3_8690] LATENCY=0
     -- Inputs
     v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_cond <= VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_cond;
     v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iftrue <= VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iftrue;
     v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iffalse <= VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_iffalse;
     -- Outputs
     VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_return_output := v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_return_output;

     -- Submodule level 4
     VAR_return_output := VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_17af_vga_timing_h_l253_c10_17a5_return_output;
     REG_VAR_h_sync_reg := VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_8690_return_output;
     REG_VAR_v_cntr_reg := VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_8690_return_output;
     REG_VAR_v_sync_reg := VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_8690_return_output;
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
