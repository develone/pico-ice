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
-- BIN_OP_LT[vga_timing_h_l189_c7_cbb1]
signal BIN_OP_LT_vga_timing_h_l189_c7_cbb1_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l189_c7_cbb1_right : unsigned(9 downto 0);
signal BIN_OP_LT_vga_timing_h_l189_c7_cbb1_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[vga_timing_h_l189_c28_b9de]
signal BIN_OP_LT_vga_timing_h_l189_c28_b9de_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l189_c28_b9de_right : unsigned(8 downto 0);
signal BIN_OP_LT_vga_timing_h_l189_c28_b9de_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l189_c7_f39e]
signal BIN_OP_AND_vga_timing_h_l189_c7_f39e_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l189_c7_f39e_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l189_c7_f39e_return_output : unsigned(0 downto 0);

-- o_active_MUX[vga_timing_h_l189_c3_14e1]
signal o_active_MUX_vga_timing_h_l189_c3_14e1_cond : unsigned(0 downto 0);
signal o_active_MUX_vga_timing_h_l189_c3_14e1_iftrue : unsigned(0 downto 0);
signal o_active_MUX_vga_timing_h_l189_c3_14e1_iffalse : unsigned(0 downto 0);
signal o_active_MUX_vga_timing_h_l189_c3_14e1_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l193_c23_2344]
signal BIN_OP_EQ_vga_timing_h_l193_c23_2344_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l193_c23_2344_right : unsigned(0 downto 0);
signal BIN_OP_EQ_vga_timing_h_l193_c23_2344_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l193_c41_c384]
signal BIN_OP_EQ_vga_timing_h_l193_c41_c384_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l193_c41_c384_right : unsigned(0 downto 0);
signal BIN_OP_EQ_vga_timing_h_l193_c41_c384_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l193_c23_41c9]
signal BIN_OP_AND_vga_timing_h_l193_c23_41c9_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l193_c23_41c9_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l193_c23_41c9_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l194_c21_be57]
signal BIN_OP_EQ_vga_timing_h_l194_c21_be57_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l194_c21_be57_right : unsigned(9 downto 0);
signal BIN_OP_EQ_vga_timing_h_l194_c21_be57_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l194_c46_dfb3]
signal BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_right : unsigned(8 downto 0);
signal BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l194_c21_2fdf]
signal BIN_OP_AND_vga_timing_h_l194_c21_2fdf_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l194_c21_2fdf_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l194_c21_2fdf_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l205_c20_92fd]
signal BIN_OP_EQ_vga_timing_h_l205_c20_92fd_left : unsigned(7 downto 0);
signal BIN_OP_EQ_vga_timing_h_l205_c20_92fd_right : unsigned(0 downto 0);
signal BIN_OP_EQ_vga_timing_h_l205_c20_92fd_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l206_c3_3280]
signal BIN_OP_AND_vga_timing_h_l206_c3_3280_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l206_c3_3280_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l206_c3_3280_return_output : unsigned(0 downto 0);

-- overclock_counter_MUX[vga_timing_h_l207_c3_155f]
signal overclock_counter_MUX_vga_timing_h_l207_c3_155f_cond : unsigned(0 downto 0);
signal overclock_counter_MUX_vga_timing_h_l207_c3_155f_iftrue : unsigned(7 downto 0);
signal overclock_counter_MUX_vga_timing_h_l207_c3_155f_iffalse : unsigned(7 downto 0);
signal overclock_counter_MUX_vga_timing_h_l207_c3_155f_return_output : unsigned(7 downto 0);

-- BIN_OP_PLUS[vga_timing_h_l210_c5_5c26]
signal BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_left : unsigned(7 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_return_output : unsigned(8 downto 0);

-- v_sync_reg_MUX[vga_timing_h_l213_c3_0116]
signal v_sync_reg_MUX_vga_timing_h_l213_c3_0116_cond : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l213_c3_0116_iftrue : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l213_c3_0116_iffalse : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l213_c3_0116_return_output : unsigned(0 downto 0);

-- h_sync_reg_MUX[vga_timing_h_l213_c3_0116]
signal h_sync_reg_MUX_vga_timing_h_l213_c3_0116_cond : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l213_c3_0116_iftrue : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l213_c3_0116_iffalse : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l213_c3_0116_return_output : unsigned(0 downto 0);

-- h_cntr_reg_MUX[vga_timing_h_l213_c3_0116]
signal h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_cond : unsigned(0 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iftrue : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iffalse : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_return_output : unsigned(11 downto 0);

-- v_cntr_reg_MUX[vga_timing_h_l213_c3_0116]
signal v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_cond : unsigned(0 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iftrue : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iffalse : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_return_output : unsigned(11 downto 0);

-- BIN_OP_GTE[vga_timing_h_l215_c9_778a]
signal BIN_OP_GTE_vga_timing_h_l215_c9_778a_left : unsigned(11 downto 0);
signal BIN_OP_GTE_vga_timing_h_l215_c9_778a_right : unsigned(9 downto 0);
signal BIN_OP_GTE_vga_timing_h_l215_c9_778a_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[vga_timing_h_l215_c42_090f]
signal BIN_OP_LT_vga_timing_h_l215_c42_090f_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l215_c42_090f_right : unsigned(9 downto 0);
signal BIN_OP_LT_vga_timing_h_l215_c42_090f_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l215_c9_cc7e]
signal BIN_OP_AND_vga_timing_h_l215_c9_cc7e_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l215_c9_cc7e_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l215_c9_cc7e_return_output : unsigned(0 downto 0);

-- h_sync_reg_MUX[vga_timing_h_l215_c5_7a62]
signal h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_cond : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_iftrue : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_iffalse : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_return_output : unsigned(0 downto 0);

-- BIN_OP_GTE[vga_timing_h_l224_c9_1aa9]
signal BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_left : unsigned(11 downto 0);
signal BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_right : unsigned(8 downto 0);
signal BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[vga_timing_h_l224_c42_d6ea]
signal BIN_OP_LT_vga_timing_h_l224_c42_d6ea_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l224_c42_d6ea_right : unsigned(8 downto 0);
signal BIN_OP_LT_vga_timing_h_l224_c42_d6ea_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l224_c9_0024]
signal BIN_OP_AND_vga_timing_h_l224_c9_0024_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l224_c9_0024_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l224_c9_0024_return_output : unsigned(0 downto 0);

-- v_sync_reg_MUX[vga_timing_h_l224_c5_7b22]
signal v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_cond : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_iftrue : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_iffalse : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l233_c9_a909]
signal BIN_OP_EQ_vga_timing_h_l233_c9_a909_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l233_c9_a909_right : unsigned(9 downto 0);
signal BIN_OP_EQ_vga_timing_h_l233_c9_a909_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l233_c37_ce30]
signal BIN_OP_EQ_vga_timing_h_l233_c37_ce30_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l233_c37_ce30_right : unsigned(9 downto 0);
signal BIN_OP_EQ_vga_timing_h_l233_c37_ce30_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l233_c9_c770]
signal BIN_OP_AND_vga_timing_h_l233_c9_c770_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l233_c9_c770_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l233_c9_c770_return_output : unsigned(0 downto 0);

-- v_cntr_reg_MUX[vga_timing_h_l233_c5_7a44]
signal v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_cond : unsigned(0 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_iftrue : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_iffalse : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_return_output : unsigned(11 downto 0);

-- BIN_OP_EQ[vga_timing_h_l237_c13_d615]
signal BIN_OP_EQ_vga_timing_h_l237_c13_d615_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l237_c13_d615_right : unsigned(9 downto 0);
signal BIN_OP_EQ_vga_timing_h_l237_c13_d615_return_output : unsigned(0 downto 0);

-- v_cntr_reg_MUX[vga_timing_h_l237_c10_3d3d]
signal v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_cond : unsigned(0 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_iftrue : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_iffalse : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[vga_timing_h_l239_c20_31c1]
signal BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_return_output : unsigned(12 downto 0);

-- BIN_OP_EQ[vga_timing_h_l242_c8_1f34]
signal BIN_OP_EQ_vga_timing_h_l242_c8_1f34_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l242_c8_1f34_right : unsigned(9 downto 0);
signal BIN_OP_EQ_vga_timing_h_l242_c8_1f34_return_output : unsigned(0 downto 0);

-- h_cntr_reg_MUX[vga_timing_h_l242_c5_0be0]
signal h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_cond : unsigned(0 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_iftrue : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_iffalse : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[vga_timing_h_l248_c20_d6ea]
signal BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_return_output : unsigned(12 downto 0);

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
-- BIN_OP_LT_vga_timing_h_l189_c7_cbb1 : 0 clocks latency
BIN_OP_LT_vga_timing_h_l189_c7_cbb1 : entity work.BIN_OP_LT_uint12_t_uint10_t_0CLK_5af1a430 port map (
BIN_OP_LT_vga_timing_h_l189_c7_cbb1_left,
BIN_OP_LT_vga_timing_h_l189_c7_cbb1_right,
BIN_OP_LT_vga_timing_h_l189_c7_cbb1_return_output);

-- BIN_OP_LT_vga_timing_h_l189_c28_b9de : 0 clocks latency
BIN_OP_LT_vga_timing_h_l189_c28_b9de : entity work.BIN_OP_LT_uint12_t_uint9_t_0CLK_5af1a430 port map (
BIN_OP_LT_vga_timing_h_l189_c28_b9de_left,
BIN_OP_LT_vga_timing_h_l189_c28_b9de_right,
BIN_OP_LT_vga_timing_h_l189_c28_b9de_return_output);

-- BIN_OP_AND_vga_timing_h_l189_c7_f39e : 0 clocks latency
BIN_OP_AND_vga_timing_h_l189_c7_f39e : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l189_c7_f39e_left,
BIN_OP_AND_vga_timing_h_l189_c7_f39e_right,
BIN_OP_AND_vga_timing_h_l189_c7_f39e_return_output);

-- o_active_MUX_vga_timing_h_l189_c3_14e1 : 0 clocks latency
o_active_MUX_vga_timing_h_l189_c3_14e1 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_active_MUX_vga_timing_h_l189_c3_14e1_cond,
o_active_MUX_vga_timing_h_l189_c3_14e1_iftrue,
o_active_MUX_vga_timing_h_l189_c3_14e1_iffalse,
o_active_MUX_vga_timing_h_l189_c3_14e1_return_output);

-- BIN_OP_EQ_vga_timing_h_l193_c23_2344 : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l193_c23_2344 : entity work.BIN_OP_EQ_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l193_c23_2344_left,
BIN_OP_EQ_vga_timing_h_l193_c23_2344_right,
BIN_OP_EQ_vga_timing_h_l193_c23_2344_return_output);

-- BIN_OP_EQ_vga_timing_h_l193_c41_c384 : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l193_c41_c384 : entity work.BIN_OP_EQ_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l193_c41_c384_left,
BIN_OP_EQ_vga_timing_h_l193_c41_c384_right,
BIN_OP_EQ_vga_timing_h_l193_c41_c384_return_output);

-- BIN_OP_AND_vga_timing_h_l193_c23_41c9 : 0 clocks latency
BIN_OP_AND_vga_timing_h_l193_c23_41c9 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l193_c23_41c9_left,
BIN_OP_AND_vga_timing_h_l193_c23_41c9_right,
BIN_OP_AND_vga_timing_h_l193_c23_41c9_return_output);

-- BIN_OP_EQ_vga_timing_h_l194_c21_be57 : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l194_c21_be57 : entity work.BIN_OP_EQ_uint12_t_uint10_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l194_c21_be57_left,
BIN_OP_EQ_vga_timing_h_l194_c21_be57_right,
BIN_OP_EQ_vga_timing_h_l194_c21_be57_return_output);

-- BIN_OP_EQ_vga_timing_h_l194_c46_dfb3 : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l194_c46_dfb3 : entity work.BIN_OP_EQ_uint12_t_uint9_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_left,
BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_right,
BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_return_output);

-- BIN_OP_AND_vga_timing_h_l194_c21_2fdf : 0 clocks latency
BIN_OP_AND_vga_timing_h_l194_c21_2fdf : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l194_c21_2fdf_left,
BIN_OP_AND_vga_timing_h_l194_c21_2fdf_right,
BIN_OP_AND_vga_timing_h_l194_c21_2fdf_return_output);

-- BIN_OP_EQ_vga_timing_h_l205_c20_92fd : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l205_c20_92fd : entity work.BIN_OP_EQ_uint8_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l205_c20_92fd_left,
BIN_OP_EQ_vga_timing_h_l205_c20_92fd_right,
BIN_OP_EQ_vga_timing_h_l205_c20_92fd_return_output);

-- BIN_OP_AND_vga_timing_h_l206_c3_3280 : 0 clocks latency
BIN_OP_AND_vga_timing_h_l206_c3_3280 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l206_c3_3280_left,
BIN_OP_AND_vga_timing_h_l206_c3_3280_right,
BIN_OP_AND_vga_timing_h_l206_c3_3280_return_output);

-- overclock_counter_MUX_vga_timing_h_l207_c3_155f : 0 clocks latency
overclock_counter_MUX_vga_timing_h_l207_c3_155f : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
overclock_counter_MUX_vga_timing_h_l207_c3_155f_cond,
overclock_counter_MUX_vga_timing_h_l207_c3_155f_iftrue,
overclock_counter_MUX_vga_timing_h_l207_c3_155f_iffalse,
overclock_counter_MUX_vga_timing_h_l207_c3_155f_return_output);

-- BIN_OP_PLUS_vga_timing_h_l210_c5_5c26 : 0 clocks latency
BIN_OP_PLUS_vga_timing_h_l210_c5_5c26 : entity work.BIN_OP_PLUS_uint8_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_left,
BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_right,
BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_return_output);

-- v_sync_reg_MUX_vga_timing_h_l213_c3_0116 : 0 clocks latency
v_sync_reg_MUX_vga_timing_h_l213_c3_0116 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
v_sync_reg_MUX_vga_timing_h_l213_c3_0116_cond,
v_sync_reg_MUX_vga_timing_h_l213_c3_0116_iftrue,
v_sync_reg_MUX_vga_timing_h_l213_c3_0116_iffalse,
v_sync_reg_MUX_vga_timing_h_l213_c3_0116_return_output);

-- h_sync_reg_MUX_vga_timing_h_l213_c3_0116 : 0 clocks latency
h_sync_reg_MUX_vga_timing_h_l213_c3_0116 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
h_sync_reg_MUX_vga_timing_h_l213_c3_0116_cond,
h_sync_reg_MUX_vga_timing_h_l213_c3_0116_iftrue,
h_sync_reg_MUX_vga_timing_h_l213_c3_0116_iffalse,
h_sync_reg_MUX_vga_timing_h_l213_c3_0116_return_output);

-- h_cntr_reg_MUX_vga_timing_h_l213_c3_0116 : 0 clocks latency
h_cntr_reg_MUX_vga_timing_h_l213_c3_0116 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_cond,
h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iftrue,
h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iffalse,
h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_return_output);

-- v_cntr_reg_MUX_vga_timing_h_l213_c3_0116 : 0 clocks latency
v_cntr_reg_MUX_vga_timing_h_l213_c3_0116 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_cond,
v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iftrue,
v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iffalse,
v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_return_output);

-- BIN_OP_GTE_vga_timing_h_l215_c9_778a : 0 clocks latency
BIN_OP_GTE_vga_timing_h_l215_c9_778a : entity work.BIN_OP_GTE_uint12_t_uint10_t_0CLK_e595f783 port map (
BIN_OP_GTE_vga_timing_h_l215_c9_778a_left,
BIN_OP_GTE_vga_timing_h_l215_c9_778a_right,
BIN_OP_GTE_vga_timing_h_l215_c9_778a_return_output);

-- BIN_OP_LT_vga_timing_h_l215_c42_090f : 0 clocks latency
BIN_OP_LT_vga_timing_h_l215_c42_090f : entity work.BIN_OP_LT_uint12_t_uint10_t_0CLK_5af1a430 port map (
BIN_OP_LT_vga_timing_h_l215_c42_090f_left,
BIN_OP_LT_vga_timing_h_l215_c42_090f_right,
BIN_OP_LT_vga_timing_h_l215_c42_090f_return_output);

-- BIN_OP_AND_vga_timing_h_l215_c9_cc7e : 0 clocks latency
BIN_OP_AND_vga_timing_h_l215_c9_cc7e : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l215_c9_cc7e_left,
BIN_OP_AND_vga_timing_h_l215_c9_cc7e_right,
BIN_OP_AND_vga_timing_h_l215_c9_cc7e_return_output);

-- h_sync_reg_MUX_vga_timing_h_l215_c5_7a62 : 0 clocks latency
h_sync_reg_MUX_vga_timing_h_l215_c5_7a62 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_cond,
h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_iftrue,
h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_iffalse,
h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_return_output);

-- BIN_OP_GTE_vga_timing_h_l224_c9_1aa9 : 0 clocks latency
BIN_OP_GTE_vga_timing_h_l224_c9_1aa9 : entity work.BIN_OP_GTE_uint12_t_uint9_t_0CLK_e595f783 port map (
BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_left,
BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_right,
BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_return_output);

-- BIN_OP_LT_vga_timing_h_l224_c42_d6ea : 0 clocks latency
BIN_OP_LT_vga_timing_h_l224_c42_d6ea : entity work.BIN_OP_LT_uint12_t_uint9_t_0CLK_5af1a430 port map (
BIN_OP_LT_vga_timing_h_l224_c42_d6ea_left,
BIN_OP_LT_vga_timing_h_l224_c42_d6ea_right,
BIN_OP_LT_vga_timing_h_l224_c42_d6ea_return_output);

-- BIN_OP_AND_vga_timing_h_l224_c9_0024 : 0 clocks latency
BIN_OP_AND_vga_timing_h_l224_c9_0024 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l224_c9_0024_left,
BIN_OP_AND_vga_timing_h_l224_c9_0024_right,
BIN_OP_AND_vga_timing_h_l224_c9_0024_return_output);

-- v_sync_reg_MUX_vga_timing_h_l224_c5_7b22 : 0 clocks latency
v_sync_reg_MUX_vga_timing_h_l224_c5_7b22 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_cond,
v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_iftrue,
v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_iffalse,
v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_return_output);

-- BIN_OP_EQ_vga_timing_h_l233_c9_a909 : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l233_c9_a909 : entity work.BIN_OP_EQ_uint12_t_uint10_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l233_c9_a909_left,
BIN_OP_EQ_vga_timing_h_l233_c9_a909_right,
BIN_OP_EQ_vga_timing_h_l233_c9_a909_return_output);

-- BIN_OP_EQ_vga_timing_h_l233_c37_ce30 : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l233_c37_ce30 : entity work.BIN_OP_EQ_uint12_t_uint10_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l233_c37_ce30_left,
BIN_OP_EQ_vga_timing_h_l233_c37_ce30_right,
BIN_OP_EQ_vga_timing_h_l233_c37_ce30_return_output);

-- BIN_OP_AND_vga_timing_h_l233_c9_c770 : 0 clocks latency
BIN_OP_AND_vga_timing_h_l233_c9_c770 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l233_c9_c770_left,
BIN_OP_AND_vga_timing_h_l233_c9_c770_right,
BIN_OP_AND_vga_timing_h_l233_c9_c770_return_output);

-- v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44 : 0 clocks latency
v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_cond,
v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_iftrue,
v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_iffalse,
v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_return_output);

-- BIN_OP_EQ_vga_timing_h_l237_c13_d615 : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l237_c13_d615 : entity work.BIN_OP_EQ_uint12_t_uint10_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l237_c13_d615_left,
BIN_OP_EQ_vga_timing_h_l237_c13_d615_right,
BIN_OP_EQ_vga_timing_h_l237_c13_d615_return_output);

-- v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d : 0 clocks latency
v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_cond,
v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_iftrue,
v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_iffalse,
v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_return_output);

-- BIN_OP_PLUS_vga_timing_h_l239_c20_31c1 : 0 clocks latency
BIN_OP_PLUS_vga_timing_h_l239_c20_31c1 : entity work.BIN_OP_PLUS_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_left,
BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_right,
BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_return_output);

-- BIN_OP_EQ_vga_timing_h_l242_c8_1f34 : 0 clocks latency
BIN_OP_EQ_vga_timing_h_l242_c8_1f34 : entity work.BIN_OP_EQ_uint12_t_uint10_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l242_c8_1f34_left,
BIN_OP_EQ_vga_timing_h_l242_c8_1f34_right,
BIN_OP_EQ_vga_timing_h_l242_c8_1f34_return_output);

-- h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0 : 0 clocks latency
h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_cond,
h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_iftrue,
h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_iffalse,
h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_return_output);

-- BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea : 0 clocks latency
BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea : entity work.BIN_OP_PLUS_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_left,
BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_right,
BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_return_output);



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
 BIN_OP_LT_vga_timing_h_l189_c7_cbb1_return_output,
 BIN_OP_LT_vga_timing_h_l189_c28_b9de_return_output,
 BIN_OP_AND_vga_timing_h_l189_c7_f39e_return_output,
 o_active_MUX_vga_timing_h_l189_c3_14e1_return_output,
 BIN_OP_EQ_vga_timing_h_l193_c23_2344_return_output,
 BIN_OP_EQ_vga_timing_h_l193_c41_c384_return_output,
 BIN_OP_AND_vga_timing_h_l193_c23_41c9_return_output,
 BIN_OP_EQ_vga_timing_h_l194_c21_be57_return_output,
 BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_return_output,
 BIN_OP_AND_vga_timing_h_l194_c21_2fdf_return_output,
 BIN_OP_EQ_vga_timing_h_l205_c20_92fd_return_output,
 BIN_OP_AND_vga_timing_h_l206_c3_3280_return_output,
 overclock_counter_MUX_vga_timing_h_l207_c3_155f_return_output,
 BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_return_output,
 v_sync_reg_MUX_vga_timing_h_l213_c3_0116_return_output,
 h_sync_reg_MUX_vga_timing_h_l213_c3_0116_return_output,
 h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_return_output,
 v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_return_output,
 BIN_OP_GTE_vga_timing_h_l215_c9_778a_return_output,
 BIN_OP_LT_vga_timing_h_l215_c42_090f_return_output,
 BIN_OP_AND_vga_timing_h_l215_c9_cc7e_return_output,
 h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_return_output,
 BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_return_output,
 BIN_OP_LT_vga_timing_h_l224_c42_d6ea_return_output,
 BIN_OP_AND_vga_timing_h_l224_c9_0024_return_output,
 v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_return_output,
 BIN_OP_EQ_vga_timing_h_l233_c9_a909_return_output,
 BIN_OP_EQ_vga_timing_h_l233_c37_ce30_return_output,
 BIN_OP_AND_vga_timing_h_l233_c9_c770_return_output,
 v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_return_output,
 BIN_OP_EQ_vga_timing_h_l237_c13_d615_return_output,
 v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_return_output,
 BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_return_output,
 BIN_OP_EQ_vga_timing_h_l242_c8_1f34_return_output,
 h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_return_output,
 BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : vga_signals_t;
 variable VAR_o : vga_signals_t;
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c7_cbb1_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c7_cbb1_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c7_cbb1_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l189_c7_f39e_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c28_b9de_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c28_b9de_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l189_c28_b9de_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l189_c7_f39e_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l189_c7_f39e_return_output : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l189_c3_14e1_iftrue : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l189_c3_14e1_iffalse : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l189_c3_14e1_return_output : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l189_c3_14e1_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c23_2344_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c23_2344_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c23_2344_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l193_c23_41c9_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c41_c384_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c41_c384_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l193_c41_c384_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l193_c23_41c9_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l193_c23_41c9_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c21_be57_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c21_be57_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c21_be57_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l194_c21_2fdf_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l194_c21_2fdf_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l194_c21_2fdf_return_output : unsigned(0 downto 0);
 variable VAR_stall_req : unsigned(0 downto 0);
 variable VAR_valid : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l205_c20_92fd_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l205_c20_92fd_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l205_c20_92fd_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l206_c3_3280_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l206_c3_3280_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l206_c3_3280_return_output : unsigned(0 downto 0);
 variable VAR_overclock_counter_MUX_vga_timing_h_l207_c3_155f_iftrue : unsigned(7 downto 0);
 variable VAR_overclock_counter_vga_timing_h_l208_c5_a993 : unsigned(7 downto 0);
 variable VAR_overclock_counter_MUX_vga_timing_h_l207_c3_155f_iffalse : unsigned(7 downto 0);
 variable VAR_overclock_counter_vga_timing_h_l210_c5_e2dd : unsigned(7 downto 0);
 variable VAR_overclock_counter_MUX_vga_timing_h_l207_c3_155f_return_output : unsigned(7 downto 0);
 variable VAR_overclock_counter_MUX_vga_timing_h_l207_c3_155f_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_return_output : unsigned(8 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_0116_iftrue : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_return_output : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_0116_iffalse : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_0116_return_output : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_0116_cond : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_0116_iftrue : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_return_output : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_0116_iffalse : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_0116_return_output : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_0116_cond : unsigned(0 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iftrue : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_return_output : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iffalse : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_return_output : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_cond : unsigned(0 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iftrue : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_return_output : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iffalse : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_return_output : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l215_c9_778a_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l215_c9_778a_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l215_c9_778a_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l215_c9_cc7e_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l215_c42_090f_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l215_c42_090f_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l215_c42_090f_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l215_c9_cc7e_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l215_c9_cc7e_return_output : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_iftrue : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_iffalse : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l224_c9_0024_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l224_c42_d6ea_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l224_c42_d6ea_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l224_c42_d6ea_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l224_c9_0024_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l224_c9_0024_return_output : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_iftrue : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_iffalse : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c9_a909_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c9_a909_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c9_a909_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l233_c9_c770_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c37_ce30_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c37_ce30_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l233_c37_ce30_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l233_c9_c770_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l233_c9_c770_return_output : unsigned(0 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_iftrue : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_vga_timing_h_l235_c7_69c7 : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_iffalse : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_return_output : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l237_c13_d615_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l237_c13_d615_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l237_c13_d615_return_output : unsigned(0 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_iftrue : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_vga_timing_h_l239_c7_3d30 : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_iffalse : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l242_c8_1f34_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l242_c8_1f34_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l242_c8_1f34_return_output : unsigned(0 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_iftrue : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_vga_timing_h_l244_c7_2759 : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_iffalse : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_vga_timing_h_l248_c7_6c4c : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_return_output : unsigned(12 downto 0);
 variable VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_17af_vga_timing_h_l253_c10_b59c_return_output : vga_signals_t;
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
     VAR_BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_right := to_unsigned(489, 9);
     VAR_BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_right := to_unsigned(479, 9);
     VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_right := to_unsigned(1, 1);
     VAR_v_cntr_reg_vga_timing_h_l235_c7_69c7 := resize(to_unsigned(0, 1), 12);
     VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_iftrue := VAR_v_cntr_reg_vga_timing_h_l235_c7_69c7;
     VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_right := to_unsigned(1, 1);
     VAR_o_active_MUX_vga_timing_h_l189_c3_14e1_iffalse := to_unsigned(0, 1);
     VAR_BIN_OP_LT_vga_timing_h_l189_c28_b9de_right := to_unsigned(480, 9);
     VAR_o_active_MUX_vga_timing_h_l189_c3_14e1_iftrue := to_unsigned(1, 1);
     VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_iftrue := to_unsigned(0, 1);
     VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_iftrue := to_unsigned(0, 1);
     VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_iffalse := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_vga_timing_h_l233_c9_a909_right := to_unsigned(799, 10);
     VAR_BIN_OP_EQ_vga_timing_h_l194_c21_be57_right := to_unsigned(639, 10);
     VAR_BIN_OP_EQ_vga_timing_h_l242_c8_1f34_right := to_unsigned(799, 10);
     VAR_BIN_OP_EQ_vga_timing_h_l193_c41_c384_right := to_unsigned(0, 1);
     VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_iffalse := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_vga_timing_h_l233_c37_ce30_right := to_unsigned(524, 10);
     VAR_overclock_counter_vga_timing_h_l208_c5_a993 := resize(to_unsigned(0, 1), 8);
     VAR_overclock_counter_MUX_vga_timing_h_l207_c3_155f_iftrue := VAR_overclock_counter_vga_timing_h_l208_c5_a993;
     VAR_BIN_OP_GTE_vga_timing_h_l215_c9_778a_right := to_unsigned(655, 10);
     VAR_BIN_OP_LT_vga_timing_h_l224_c42_d6ea_right := to_unsigned(491, 9);
     VAR_BIN_OP_LT_vga_timing_h_l189_c7_cbb1_right := to_unsigned(640, 10);
     VAR_BIN_OP_EQ_vga_timing_h_l237_c13_d615_right := to_unsigned(799, 10);
     VAR_BIN_OP_AND_vga_timing_h_l206_c3_3280_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_vga_timing_h_l193_c23_2344_right := to_unsigned(0, 1);
     VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_right := to_unsigned(1, 1);
     VAR_BIN_OP_LT_vga_timing_h_l215_c42_090f_right := to_unsigned(751, 10);
     VAR_h_cntr_reg_vga_timing_h_l244_c7_2759 := resize(to_unsigned(0, 1), 12);
     VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_iftrue := VAR_h_cntr_reg_vga_timing_h_l244_c7_2759;
     VAR_BIN_OP_EQ_vga_timing_h_l205_c20_92fd_right := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

     -- Submodule level 0
     VAR_BIN_OP_EQ_vga_timing_h_l193_c23_2344_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l194_c21_be57_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l233_c9_a909_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l237_c13_d615_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l242_c8_1f34_left := h_cntr_reg;
     VAR_BIN_OP_GTE_vga_timing_h_l215_c9_778a_left := h_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l189_c7_cbb1_left := h_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l215_c42_090f_left := h_cntr_reg;
     VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_left := h_cntr_reg;
     VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iffalse := h_cntr_reg;
     VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_0116_iffalse := h_sync_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l205_c20_92fd_left := overclock_counter;
     VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_left := overclock_counter;
     REG_VAR_overclock_counter_out_reg := overclock_counter;
     VAR_BIN_OP_EQ_vga_timing_h_l193_c41_c384_left := v_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_left := v_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l233_c37_ce30_left := v_cntr_reg;
     VAR_BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_left := v_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l189_c28_b9de_left := v_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l224_c42_d6ea_left := v_cntr_reg;
     VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_left := v_cntr_reg;
     VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iffalse := v_cntr_reg;
     VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_iffalse := v_cntr_reg;
     VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_0116_iffalse := v_sync_reg;
     -- BIN_OP_EQ[vga_timing_h_l193_c23_2344] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l193_c23_2344_left <= VAR_BIN_OP_EQ_vga_timing_h_l193_c23_2344_left;
     BIN_OP_EQ_vga_timing_h_l193_c23_2344_right <= VAR_BIN_OP_EQ_vga_timing_h_l193_c23_2344_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l193_c23_2344_return_output := BIN_OP_EQ_vga_timing_h_l193_c23_2344_return_output;

     -- BIN_OP_EQ[vga_timing_h_l205_c20_92fd] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l205_c20_92fd_left <= VAR_BIN_OP_EQ_vga_timing_h_l205_c20_92fd_left;
     BIN_OP_EQ_vga_timing_h_l205_c20_92fd_right <= VAR_BIN_OP_EQ_vga_timing_h_l205_c20_92fd_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l205_c20_92fd_return_output := BIN_OP_EQ_vga_timing_h_l205_c20_92fd_return_output;

     -- BIN_OP_GTE[vga_timing_h_l215_c9_778a] LATENCY=0
     -- Inputs
     BIN_OP_GTE_vga_timing_h_l215_c9_778a_left <= VAR_BIN_OP_GTE_vga_timing_h_l215_c9_778a_left;
     BIN_OP_GTE_vga_timing_h_l215_c9_778a_right <= VAR_BIN_OP_GTE_vga_timing_h_l215_c9_778a_right;
     -- Outputs
     VAR_BIN_OP_GTE_vga_timing_h_l215_c9_778a_return_output := BIN_OP_GTE_vga_timing_h_l215_c9_778a_return_output;

     -- BIN_OP_PLUS[vga_timing_h_l239_c20_31c1] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_left <= VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_left;
     BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_right <= VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_right;
     -- Outputs
     VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_return_output := BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_return_output;

     -- BIN_OP_EQ[vga_timing_h_l193_c41_c384] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l193_c41_c384_left <= VAR_BIN_OP_EQ_vga_timing_h_l193_c41_c384_left;
     BIN_OP_EQ_vga_timing_h_l193_c41_c384_right <= VAR_BIN_OP_EQ_vga_timing_h_l193_c41_c384_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l193_c41_c384_return_output := BIN_OP_EQ_vga_timing_h_l193_c41_c384_return_output;

     -- BIN_OP_LT[vga_timing_h_l224_c42_d6ea] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l224_c42_d6ea_left <= VAR_BIN_OP_LT_vga_timing_h_l224_c42_d6ea_left;
     BIN_OP_LT_vga_timing_h_l224_c42_d6ea_right <= VAR_BIN_OP_LT_vga_timing_h_l224_c42_d6ea_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l224_c42_d6ea_return_output := BIN_OP_LT_vga_timing_h_l224_c42_d6ea_return_output;

     -- BIN_OP_EQ[vga_timing_h_l194_c46_dfb3] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_left <= VAR_BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_left;
     BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_right <= VAR_BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_return_output := BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_return_output;

     -- BIN_OP_EQ[vga_timing_h_l242_c8_1f34] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l242_c8_1f34_left <= VAR_BIN_OP_EQ_vga_timing_h_l242_c8_1f34_left;
     BIN_OP_EQ_vga_timing_h_l242_c8_1f34_right <= VAR_BIN_OP_EQ_vga_timing_h_l242_c8_1f34_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l242_c8_1f34_return_output := BIN_OP_EQ_vga_timing_h_l242_c8_1f34_return_output;

     -- BIN_OP_LT[vga_timing_h_l189_c28_b9de] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l189_c28_b9de_left <= VAR_BIN_OP_LT_vga_timing_h_l189_c28_b9de_left;
     BIN_OP_LT_vga_timing_h_l189_c28_b9de_right <= VAR_BIN_OP_LT_vga_timing_h_l189_c28_b9de_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l189_c28_b9de_return_output := BIN_OP_LT_vga_timing_h_l189_c28_b9de_return_output;

     -- BIN_OP_LT[vga_timing_h_l189_c7_cbb1] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l189_c7_cbb1_left <= VAR_BIN_OP_LT_vga_timing_h_l189_c7_cbb1_left;
     BIN_OP_LT_vga_timing_h_l189_c7_cbb1_right <= VAR_BIN_OP_LT_vga_timing_h_l189_c7_cbb1_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l189_c7_cbb1_return_output := BIN_OP_LT_vga_timing_h_l189_c7_cbb1_return_output;

     -- BIN_OP_EQ[vga_timing_h_l237_c13_d615] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l237_c13_d615_left <= VAR_BIN_OP_EQ_vga_timing_h_l237_c13_d615_left;
     BIN_OP_EQ_vga_timing_h_l237_c13_d615_right <= VAR_BIN_OP_EQ_vga_timing_h_l237_c13_d615_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l237_c13_d615_return_output := BIN_OP_EQ_vga_timing_h_l237_c13_d615_return_output;

     -- BIN_OP_PLUS[vga_timing_h_l248_c20_d6ea] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_left <= VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_left;
     BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_right <= VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_right;
     -- Outputs
     VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_return_output := BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_return_output;

     -- BIN_OP_GTE[vga_timing_h_l224_c9_1aa9] LATENCY=0
     -- Inputs
     BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_left <= VAR_BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_left;
     BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_right <= VAR_BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_right;
     -- Outputs
     VAR_BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_return_output := BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_return_output;

     -- BIN_OP_EQ[vga_timing_h_l194_c21_be57] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l194_c21_be57_left <= VAR_BIN_OP_EQ_vga_timing_h_l194_c21_be57_left;
     BIN_OP_EQ_vga_timing_h_l194_c21_be57_right <= VAR_BIN_OP_EQ_vga_timing_h_l194_c21_be57_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l194_c21_be57_return_output := BIN_OP_EQ_vga_timing_h_l194_c21_be57_return_output;

     -- BIN_OP_LT[vga_timing_h_l215_c42_090f] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l215_c42_090f_left <= VAR_BIN_OP_LT_vga_timing_h_l215_c42_090f_left;
     BIN_OP_LT_vga_timing_h_l215_c42_090f_right <= VAR_BIN_OP_LT_vga_timing_h_l215_c42_090f_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l215_c42_090f_return_output := BIN_OP_LT_vga_timing_h_l215_c42_090f_return_output;

     -- BIN_OP_PLUS[vga_timing_h_l210_c5_5c26] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_left <= VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_left;
     BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_right <= VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_right;
     -- Outputs
     VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_return_output := BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_return_output;

     -- BIN_OP_EQ[vga_timing_h_l233_c37_ce30] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l233_c37_ce30_left <= VAR_BIN_OP_EQ_vga_timing_h_l233_c37_ce30_left;
     BIN_OP_EQ_vga_timing_h_l233_c37_ce30_right <= VAR_BIN_OP_EQ_vga_timing_h_l233_c37_ce30_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l233_c37_ce30_return_output := BIN_OP_EQ_vga_timing_h_l233_c37_ce30_return_output;

     -- BIN_OP_EQ[vga_timing_h_l233_c9_a909] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l233_c9_a909_left <= VAR_BIN_OP_EQ_vga_timing_h_l233_c9_a909_left;
     BIN_OP_EQ_vga_timing_h_l233_c9_a909_right <= VAR_BIN_OP_EQ_vga_timing_h_l233_c9_a909_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l233_c9_a909_return_output := BIN_OP_EQ_vga_timing_h_l233_c9_a909_return_output;

     -- Submodule level 1
     VAR_BIN_OP_AND_vga_timing_h_l193_c23_41c9_left := VAR_BIN_OP_EQ_vga_timing_h_l193_c23_2344_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l193_c23_41c9_right := VAR_BIN_OP_EQ_vga_timing_h_l193_c41_c384_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l194_c21_2fdf_left := VAR_BIN_OP_EQ_vga_timing_h_l194_c21_be57_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l194_c21_2fdf_right := VAR_BIN_OP_EQ_vga_timing_h_l194_c46_dfb3_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l206_c3_3280_left := VAR_BIN_OP_EQ_vga_timing_h_l205_c20_92fd_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l233_c9_c770_right := VAR_BIN_OP_EQ_vga_timing_h_l233_c37_ce30_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l233_c9_c770_left := VAR_BIN_OP_EQ_vga_timing_h_l233_c9_a909_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_cond := VAR_BIN_OP_EQ_vga_timing_h_l237_c13_d615_return_output;
     VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_cond := VAR_BIN_OP_EQ_vga_timing_h_l242_c8_1f34_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l215_c9_cc7e_left := VAR_BIN_OP_GTE_vga_timing_h_l215_c9_778a_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l224_c9_0024_left := VAR_BIN_OP_GTE_vga_timing_h_l224_c9_1aa9_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l189_c7_f39e_right := VAR_BIN_OP_LT_vga_timing_h_l189_c28_b9de_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l189_c7_f39e_left := VAR_BIN_OP_LT_vga_timing_h_l189_c7_cbb1_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l215_c9_cc7e_right := VAR_BIN_OP_LT_vga_timing_h_l215_c42_090f_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l224_c9_0024_right := VAR_BIN_OP_LT_vga_timing_h_l224_c42_d6ea_return_output;
     VAR_overclock_counter_vga_timing_h_l210_c5_e2dd := resize(VAR_BIN_OP_PLUS_vga_timing_h_l210_c5_5c26_return_output, 8);
     VAR_v_cntr_reg_vga_timing_h_l239_c7_3d30 := resize(VAR_BIN_OP_PLUS_vga_timing_h_l239_c20_31c1_return_output, 12);
     VAR_h_cntr_reg_vga_timing_h_l248_c7_6c4c := resize(VAR_BIN_OP_PLUS_vga_timing_h_l248_c20_d6ea_return_output, 12);
     VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_iffalse := VAR_h_cntr_reg_vga_timing_h_l248_c7_6c4c;
     VAR_overclock_counter_MUX_vga_timing_h_l207_c3_155f_iffalse := VAR_overclock_counter_vga_timing_h_l210_c5_e2dd;
     VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_iftrue := VAR_v_cntr_reg_vga_timing_h_l239_c7_3d30;
     -- BIN_OP_AND[vga_timing_h_l206_c3_3280] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l206_c3_3280_left <= VAR_BIN_OP_AND_vga_timing_h_l206_c3_3280_left;
     BIN_OP_AND_vga_timing_h_l206_c3_3280_right <= VAR_BIN_OP_AND_vga_timing_h_l206_c3_3280_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l206_c3_3280_return_output := BIN_OP_AND_vga_timing_h_l206_c3_3280_return_output;

     -- h_cntr_reg_MUX[vga_timing_h_l242_c5_0be0] LATENCY=0
     -- Inputs
     h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_cond <= VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_cond;
     h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_iftrue <= VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_iftrue;
     h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_iffalse <= VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_iffalse;
     -- Outputs
     VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_return_output := h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_return_output;

     -- BIN_OP_AND[vga_timing_h_l193_c23_41c9] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l193_c23_41c9_left <= VAR_BIN_OP_AND_vga_timing_h_l193_c23_41c9_left;
     BIN_OP_AND_vga_timing_h_l193_c23_41c9_right <= VAR_BIN_OP_AND_vga_timing_h_l193_c23_41c9_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l193_c23_41c9_return_output := BIN_OP_AND_vga_timing_h_l193_c23_41c9_return_output;

     -- BIN_OP_AND[vga_timing_h_l194_c21_2fdf] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l194_c21_2fdf_left <= VAR_BIN_OP_AND_vga_timing_h_l194_c21_2fdf_left;
     BIN_OP_AND_vga_timing_h_l194_c21_2fdf_right <= VAR_BIN_OP_AND_vga_timing_h_l194_c21_2fdf_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l194_c21_2fdf_return_output := BIN_OP_AND_vga_timing_h_l194_c21_2fdf_return_output;

     -- v_cntr_reg_MUX[vga_timing_h_l237_c10_3d3d] LATENCY=0
     -- Inputs
     v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_cond <= VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_cond;
     v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_iftrue <= VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_iftrue;
     v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_iffalse <= VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_iffalse;
     -- Outputs
     VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_return_output := v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_return_output;

     -- BIN_OP_AND[vga_timing_h_l189_c7_f39e] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l189_c7_f39e_left <= VAR_BIN_OP_AND_vga_timing_h_l189_c7_f39e_left;
     BIN_OP_AND_vga_timing_h_l189_c7_f39e_right <= VAR_BIN_OP_AND_vga_timing_h_l189_c7_f39e_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l189_c7_f39e_return_output := BIN_OP_AND_vga_timing_h_l189_c7_f39e_return_output;

     -- BIN_OP_AND[vga_timing_h_l233_c9_c770] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l233_c9_c770_left <= VAR_BIN_OP_AND_vga_timing_h_l233_c9_c770_left;
     BIN_OP_AND_vga_timing_h_l233_c9_c770_right <= VAR_BIN_OP_AND_vga_timing_h_l233_c9_c770_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l233_c9_c770_return_output := BIN_OP_AND_vga_timing_h_l233_c9_c770_return_output;

     -- BIN_OP_AND[vga_timing_h_l224_c9_0024] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l224_c9_0024_left <= VAR_BIN_OP_AND_vga_timing_h_l224_c9_0024_left;
     BIN_OP_AND_vga_timing_h_l224_c9_0024_right <= VAR_BIN_OP_AND_vga_timing_h_l224_c9_0024_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l224_c9_0024_return_output := BIN_OP_AND_vga_timing_h_l224_c9_0024_return_output;

     -- BIN_OP_AND[vga_timing_h_l215_c9_cc7e] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l215_c9_cc7e_left <= VAR_BIN_OP_AND_vga_timing_h_l215_c9_cc7e_left;
     BIN_OP_AND_vga_timing_h_l215_c9_cc7e_right <= VAR_BIN_OP_AND_vga_timing_h_l215_c9_cc7e_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l215_c9_cc7e_return_output := BIN_OP_AND_vga_timing_h_l215_c9_cc7e_return_output;

     -- Submodule level 2
     VAR_o_active_MUX_vga_timing_h_l189_c3_14e1_cond := VAR_BIN_OP_AND_vga_timing_h_l189_c7_f39e_return_output;
     VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_cond := VAR_BIN_OP_AND_vga_timing_h_l206_c3_3280_return_output;
     VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_0116_cond := VAR_BIN_OP_AND_vga_timing_h_l206_c3_3280_return_output;
     VAR_overclock_counter_MUX_vga_timing_h_l207_c3_155f_cond := VAR_BIN_OP_AND_vga_timing_h_l206_c3_3280_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_cond := VAR_BIN_OP_AND_vga_timing_h_l206_c3_3280_return_output;
     VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_0116_cond := VAR_BIN_OP_AND_vga_timing_h_l206_c3_3280_return_output;
     REG_VAR_valid_reg := VAR_BIN_OP_AND_vga_timing_h_l206_c3_3280_return_output;
     VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_cond := VAR_BIN_OP_AND_vga_timing_h_l215_c9_cc7e_return_output;
     VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_cond := VAR_BIN_OP_AND_vga_timing_h_l224_c9_0024_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_cond := VAR_BIN_OP_AND_vga_timing_h_l233_c9_c770_return_output;
     VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iftrue := VAR_h_cntr_reg_MUX_vga_timing_h_l242_c5_0be0_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_iffalse := VAR_v_cntr_reg_MUX_vga_timing_h_l237_c10_3d3d_return_output;
     -- h_cntr_reg_MUX[vga_timing_h_l213_c3_0116] LATENCY=0
     -- Inputs
     h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_cond <= VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_cond;
     h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iftrue <= VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iftrue;
     h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iffalse <= VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iffalse;
     -- Outputs
     VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_return_output := h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_return_output;

     -- v_cntr_reg_MUX[vga_timing_h_l233_c5_7a44] LATENCY=0
     -- Inputs
     v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_cond <= VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_cond;
     v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_iftrue <= VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_iftrue;
     v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_iffalse <= VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_iffalse;
     -- Outputs
     VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_return_output := v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_return_output;

     -- h_sync_reg_MUX[vga_timing_h_l215_c5_7a62] LATENCY=0
     -- Inputs
     h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_cond <= VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_cond;
     h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_iftrue <= VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_iftrue;
     h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_iffalse <= VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_iffalse;
     -- Outputs
     VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_return_output := h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_return_output;

     -- v_sync_reg_MUX[vga_timing_h_l224_c5_7b22] LATENCY=0
     -- Inputs
     v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_cond <= VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_cond;
     v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_iftrue <= VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_iftrue;
     v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_iffalse <= VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_iffalse;
     -- Outputs
     VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_return_output := v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_return_output;

     -- overclock_counter_MUX[vga_timing_h_l207_c3_155f] LATENCY=0
     -- Inputs
     overclock_counter_MUX_vga_timing_h_l207_c3_155f_cond <= VAR_overclock_counter_MUX_vga_timing_h_l207_c3_155f_cond;
     overclock_counter_MUX_vga_timing_h_l207_c3_155f_iftrue <= VAR_overclock_counter_MUX_vga_timing_h_l207_c3_155f_iftrue;
     overclock_counter_MUX_vga_timing_h_l207_c3_155f_iffalse <= VAR_overclock_counter_MUX_vga_timing_h_l207_c3_155f_iffalse;
     -- Outputs
     VAR_overclock_counter_MUX_vga_timing_h_l207_c3_155f_return_output := overclock_counter_MUX_vga_timing_h_l207_c3_155f_return_output;

     -- o_active_MUX[vga_timing_h_l189_c3_14e1] LATENCY=0
     -- Inputs
     o_active_MUX_vga_timing_h_l189_c3_14e1_cond <= VAR_o_active_MUX_vga_timing_h_l189_c3_14e1_cond;
     o_active_MUX_vga_timing_h_l189_c3_14e1_iftrue <= VAR_o_active_MUX_vga_timing_h_l189_c3_14e1_iftrue;
     o_active_MUX_vga_timing_h_l189_c3_14e1_iffalse <= VAR_o_active_MUX_vga_timing_h_l189_c3_14e1_iffalse;
     -- Outputs
     VAR_o_active_MUX_vga_timing_h_l189_c3_14e1_return_output := o_active_MUX_vga_timing_h_l189_c3_14e1_return_output;

     -- Submodule level 3
     REG_VAR_h_cntr_reg := VAR_h_cntr_reg_MUX_vga_timing_h_l213_c3_0116_return_output;
     VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_0116_iftrue := VAR_h_sync_reg_MUX_vga_timing_h_l215_c5_7a62_return_output;
     REG_VAR_overclock_counter := VAR_overclock_counter_MUX_vga_timing_h_l207_c3_155f_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iftrue := VAR_v_cntr_reg_MUX_vga_timing_h_l233_c5_7a44_return_output;
     VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_0116_iftrue := VAR_v_sync_reg_MUX_vga_timing_h_l224_c5_7b22_return_output;
     -- v_sync_reg_MUX[vga_timing_h_l213_c3_0116] LATENCY=0
     -- Inputs
     v_sync_reg_MUX_vga_timing_h_l213_c3_0116_cond <= VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_0116_cond;
     v_sync_reg_MUX_vga_timing_h_l213_c3_0116_iftrue <= VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_0116_iftrue;
     v_sync_reg_MUX_vga_timing_h_l213_c3_0116_iffalse <= VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_0116_iffalse;
     -- Outputs
     VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_0116_return_output := v_sync_reg_MUX_vga_timing_h_l213_c3_0116_return_output;

     -- h_sync_reg_MUX[vga_timing_h_l213_c3_0116] LATENCY=0
     -- Inputs
     h_sync_reg_MUX_vga_timing_h_l213_c3_0116_cond <= VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_0116_cond;
     h_sync_reg_MUX_vga_timing_h_l213_c3_0116_iftrue <= VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_0116_iftrue;
     h_sync_reg_MUX_vga_timing_h_l213_c3_0116_iffalse <= VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_0116_iffalse;
     -- Outputs
     VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_0116_return_output := h_sync_reg_MUX_vga_timing_h_l213_c3_0116_return_output;

     -- CONST_REF_RD_vga_signals_t_vga_signals_t_17af[vga_timing_h_l253_c10_b59c] LATENCY=0
     VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_17af_vga_timing_h_l253_c10_b59c_return_output := CONST_REF_RD_vga_signals_t_vga_signals_t_17af(
     h_sync_reg,
     v_sync_reg,
     h_cntr_reg,
     v_cntr_reg,
     overclock_counter_out_reg,
     valid_reg,
     VAR_o_active_MUX_vga_timing_h_l189_c3_14e1_return_output,
     VAR_BIN_OP_AND_vga_timing_h_l193_c23_41c9_return_output,
     VAR_BIN_OP_AND_vga_timing_h_l194_c21_2fdf_return_output);

     -- v_cntr_reg_MUX[vga_timing_h_l213_c3_0116] LATENCY=0
     -- Inputs
     v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_cond <= VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_cond;
     v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iftrue <= VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iftrue;
     v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iffalse <= VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_iffalse;
     -- Outputs
     VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_return_output := v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_return_output;

     -- Submodule level 4
     VAR_return_output := VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_17af_vga_timing_h_l253_c10_b59c_return_output;
     REG_VAR_h_sync_reg := VAR_h_sync_reg_MUX_vga_timing_h_l213_c3_0116_return_output;
     REG_VAR_v_cntr_reg := VAR_v_cntr_reg_MUX_vga_timing_h_l213_c3_0116_return_output;
     REG_VAR_v_sync_reg := VAR_v_sync_reg_MUX_vga_timing_h_l213_c3_0116_return_output;
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
