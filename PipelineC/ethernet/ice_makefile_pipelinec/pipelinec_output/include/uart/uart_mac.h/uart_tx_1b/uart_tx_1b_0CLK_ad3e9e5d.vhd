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
-- Submodules: 41
entity uart_tx_1b_0CLK_ad3e9e5d is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 bit_stream : in uint1_t_stream_t;
 return_output : out uart_tx_1b_t);
end uart_tx_1b_0CLK_ad3e9e5d;
architecture arch of uart_tx_1b_0CLK_ad3e9e5d is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal state : unsigned(1 downto 0) := unsigned(uart_tx_state_t_to_slv(uart_tx_state_t'left));
signal clk_counter : unsigned(15 downto 0) := to_unsigned(0, 16);
signal bit_counter : unsigned(3 downto 0) := to_unsigned(0, 4);
signal REG_COMB_state : unsigned(1 downto 0);
signal REG_COMB_clk_counter : unsigned(15 downto 0);
signal REG_COMB_bit_counter : unsigned(3 downto 0);

-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- BIN_OP_EQ[uart_mac_h_l131_c6_bd8e]
signal BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l131_c3_2927]
signal clk_counter_MUX_uart_mac_h_l131_c3_2927_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l131_c3_2927_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l131_c3_2927_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l131_c3_2927_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l131_c3_2927]
signal state_MUX_uart_mac_h_l131_c3_2927_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l131_c3_2927_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l131_c3_2927_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l131_c3_2927_return_output : unsigned(1 downto 0);

-- o_output_wire_MUX[uart_mac_h_l131_c3_2927]
signal o_output_wire_MUX_uart_mac_h_l131_c3_2927_cond : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l131_c3_2927_iftrue : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l131_c3_2927_iffalse : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l131_c3_2927_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l135_c5_76a0]
signal clk_counter_MUX_uart_mac_h_l135_c5_76a0_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l135_c5_76a0_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l135_c5_76a0_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l135_c5_76a0_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l135_c5_76a0]
signal state_MUX_uart_mac_h_l135_c5_76a0_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l135_c5_76a0_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l135_c5_76a0_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l135_c5_76a0_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l143_c6_ae03]
signal BIN_OP_EQ_uart_mac_h_l143_c6_ae03_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l143_c6_ae03_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l143_c6_ae03_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l143_c3_fdda]
signal clk_counter_MUX_uart_mac_h_l143_c3_fdda_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l143_c3_fdda_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l143_c3_fdda_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l143_c3_fdda_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l143_c3_fdda]
signal bit_counter_MUX_uart_mac_h_l143_c3_fdda_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l143_c3_fdda_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l143_c3_fdda_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l143_c3_fdda_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l143_c3_fdda]
signal state_MUX_uart_mac_h_l143_c3_fdda_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l143_c3_fdda_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l143_c3_fdda_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l143_c3_fdda_return_output : unsigned(1 downto 0);

-- o_MUX[uart_mac_h_l143_c3_fdda]
signal o_MUX_uart_mac_h_l143_c3_fdda_cond : unsigned(0 downto 0);
signal o_MUX_uart_mac_h_l143_c3_fdda_iftrue : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l143_c3_fdda_iffalse : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l143_c3_fdda_return_output : uart_tx_1b_t;

-- BIN_OP_PLUS[uart_mac_h_l147_c5_4998]
signal BIN_OP_PLUS_uart_mac_h_l147_c5_4998_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l147_c5_4998_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l147_c5_4998_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l148_c8_1b62]
signal BIN_OP_GTE_uart_mac_h_l148_c8_1b62_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l148_c8_1b62_right : unsigned(7 downto 0);
signal BIN_OP_GTE_uart_mac_h_l148_c8_1b62_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l148_c5_7f11]
signal clk_counter_MUX_uart_mac_h_l148_c5_7f11_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l148_c5_7f11_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l148_c5_7f11_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l148_c5_7f11_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l148_c5_7f11]
signal bit_counter_MUX_uart_mac_h_l148_c5_7f11_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l148_c5_7f11_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l148_c5_7f11_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l148_c5_7f11_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l148_c5_7f11]
signal state_MUX_uart_mac_h_l148_c5_7f11_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l148_c5_7f11_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l148_c5_7f11_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l148_c5_7f11_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l156_c11_049f]
signal BIN_OP_EQ_uart_mac_h_l156_c11_049f_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l156_c11_049f_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l156_c11_049f_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l156_c8_e1ba]
signal clk_counter_MUX_uart_mac_h_l156_c8_e1ba_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l156_c8_e1ba_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l156_c8_e1ba_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l156_c8_e1ba_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l156_c8_e1ba]
signal bit_counter_MUX_uart_mac_h_l156_c8_e1ba_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l156_c8_e1ba_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l156_c8_e1ba_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l156_c8_e1ba_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l156_c8_e1ba]
signal state_MUX_uart_mac_h_l156_c8_e1ba_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l156_c8_e1ba_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l156_c8_e1ba_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l156_c8_e1ba_return_output : unsigned(1 downto 0);

-- o_MUX[uart_mac_h_l156_c8_e1ba]
signal o_MUX_uart_mac_h_l156_c8_e1ba_cond : unsigned(0 downto 0);
signal o_MUX_uart_mac_h_l156_c8_e1ba_iftrue : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l156_c8_e1ba_iffalse : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l156_c8_e1ba_return_output : uart_tx_1b_t;

-- BIN_OP_PLUS[uart_mac_h_l160_c5_12c1]
signal BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l161_c8_48ba]
signal BIN_OP_GTE_uart_mac_h_l161_c8_48ba_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l161_c8_48ba_right : unsigned(7 downto 0);
signal BIN_OP_GTE_uart_mac_h_l161_c8_48ba_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l161_c5_1f02]
signal clk_counter_MUX_uart_mac_h_l161_c5_1f02_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l161_c5_1f02_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l161_c5_1f02_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l161_c5_1f02_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l161_c5_1f02]
signal bit_counter_MUX_uart_mac_h_l161_c5_1f02_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l161_c5_1f02_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l161_c5_1f02_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l161_c5_1f02_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l161_c5_1f02]
signal state_MUX_uart_mac_h_l161_c5_1f02_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l161_c5_1f02_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l161_c5_1f02_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l161_c5_1f02_return_output : unsigned(1 downto 0);

-- o_ready_for_bit_stream_MUX[uart_mac_h_l161_c5_1f02]
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_cond : unsigned(0 downto 0);
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_iftrue : unsigned(0 downto 0);
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_iffalse : unsigned(0 downto 0);
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_return_output : unsigned(0 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l168_c7_bc55]
signal BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_left : unsigned(3 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_return_output : unsigned(4 downto 0);

-- BIN_OP_EQ[uart_mac_h_l170_c10_40eb]
signal BIN_OP_EQ_uart_mac_h_l170_c10_40eb_left : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l170_c10_40eb_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l170_c10_40eb_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l170_c7_8923]
signal clk_counter_MUX_uart_mac_h_l170_c7_8923_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l170_c7_8923_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l170_c7_8923_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l170_c7_8923_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l170_c7_8923]
signal state_MUX_uart_mac_h_l170_c7_8923_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l170_c7_8923_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l170_c7_8923_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l170_c7_8923_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l178_c11_bda7]
signal BIN_OP_EQ_uart_mac_h_l178_c11_bda7_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l178_c11_bda7_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l178_c11_bda7_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l178_c8_82ba]
signal clk_counter_MUX_uart_mac_h_l178_c8_82ba_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l178_c8_82ba_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l178_c8_82ba_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l178_c8_82ba_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l178_c8_82ba]
signal state_MUX_uart_mac_h_l178_c8_82ba_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l178_c8_82ba_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l178_c8_82ba_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l178_c8_82ba_return_output : unsigned(1 downto 0);

-- o_output_wire_MUX[uart_mac_h_l178_c8_82ba]
signal o_output_wire_MUX_uart_mac_h_l178_c8_82ba_cond : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l178_c8_82ba_iftrue : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l178_c8_82ba_iffalse : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l178_c8_82ba_return_output : unsigned(0 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l182_c5_ed80]
signal BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l183_c8_9107]
signal BIN_OP_GTE_uart_mac_h_l183_c8_9107_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l183_c8_9107_right : unsigned(7 downto 0);
signal BIN_OP_GTE_uart_mac_h_l183_c8_9107_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l183_c5_73e1]
signal state_MUX_uart_mac_h_l183_c5_73e1_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l183_c5_73e1_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l183_c5_73e1_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l183_c5_73e1_return_output : unsigned(1 downto 0);

function CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0( ref_toks_0 : uart_tx_1b_t;
 ref_toks_1 : unsigned) return uart_tx_1b_t is
 
  variable base : uart_tx_1b_t; 
  variable return_output : uart_tx_1b_t;
begin
      base := ref_toks_0;
      base.output_wire := ref_toks_1;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned) return uart_tx_1b_t is
 
  variable base : uart_tx_1b_t; 
  variable return_output : uart_tx_1b_t;
begin
      base.output_wire := ref_toks_0;
      base.ready_for_bit_stream := ref_toks_1;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_uart_mac_h_l131_c6_bd8e : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l131_c6_bd8e : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_left,
BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_right,
BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_return_output);

-- clk_counter_MUX_uart_mac_h_l131_c3_2927 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l131_c3_2927 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l131_c3_2927_cond,
clk_counter_MUX_uart_mac_h_l131_c3_2927_iftrue,
clk_counter_MUX_uart_mac_h_l131_c3_2927_iffalse,
clk_counter_MUX_uart_mac_h_l131_c3_2927_return_output);

-- state_MUX_uart_mac_h_l131_c3_2927 : 0 clocks latency
state_MUX_uart_mac_h_l131_c3_2927 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l131_c3_2927_cond,
state_MUX_uart_mac_h_l131_c3_2927_iftrue,
state_MUX_uart_mac_h_l131_c3_2927_iffalse,
state_MUX_uart_mac_h_l131_c3_2927_return_output);

-- o_output_wire_MUX_uart_mac_h_l131_c3_2927 : 0 clocks latency
o_output_wire_MUX_uart_mac_h_l131_c3_2927 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_output_wire_MUX_uart_mac_h_l131_c3_2927_cond,
o_output_wire_MUX_uart_mac_h_l131_c3_2927_iftrue,
o_output_wire_MUX_uart_mac_h_l131_c3_2927_iffalse,
o_output_wire_MUX_uart_mac_h_l131_c3_2927_return_output);

-- clk_counter_MUX_uart_mac_h_l135_c5_76a0 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l135_c5_76a0 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l135_c5_76a0_cond,
clk_counter_MUX_uart_mac_h_l135_c5_76a0_iftrue,
clk_counter_MUX_uart_mac_h_l135_c5_76a0_iffalse,
clk_counter_MUX_uart_mac_h_l135_c5_76a0_return_output);

-- state_MUX_uart_mac_h_l135_c5_76a0 : 0 clocks latency
state_MUX_uart_mac_h_l135_c5_76a0 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l135_c5_76a0_cond,
state_MUX_uart_mac_h_l135_c5_76a0_iftrue,
state_MUX_uart_mac_h_l135_c5_76a0_iffalse,
state_MUX_uart_mac_h_l135_c5_76a0_return_output);

-- BIN_OP_EQ_uart_mac_h_l143_c6_ae03 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l143_c6_ae03 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l143_c6_ae03_left,
BIN_OP_EQ_uart_mac_h_l143_c6_ae03_right,
BIN_OP_EQ_uart_mac_h_l143_c6_ae03_return_output);

-- clk_counter_MUX_uart_mac_h_l143_c3_fdda : 0 clocks latency
clk_counter_MUX_uart_mac_h_l143_c3_fdda : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l143_c3_fdda_cond,
clk_counter_MUX_uart_mac_h_l143_c3_fdda_iftrue,
clk_counter_MUX_uart_mac_h_l143_c3_fdda_iffalse,
clk_counter_MUX_uart_mac_h_l143_c3_fdda_return_output);

-- bit_counter_MUX_uart_mac_h_l143_c3_fdda : 0 clocks latency
bit_counter_MUX_uart_mac_h_l143_c3_fdda : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l143_c3_fdda_cond,
bit_counter_MUX_uart_mac_h_l143_c3_fdda_iftrue,
bit_counter_MUX_uart_mac_h_l143_c3_fdda_iffalse,
bit_counter_MUX_uart_mac_h_l143_c3_fdda_return_output);

-- state_MUX_uart_mac_h_l143_c3_fdda : 0 clocks latency
state_MUX_uart_mac_h_l143_c3_fdda : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l143_c3_fdda_cond,
state_MUX_uart_mac_h_l143_c3_fdda_iftrue,
state_MUX_uart_mac_h_l143_c3_fdda_iffalse,
state_MUX_uart_mac_h_l143_c3_fdda_return_output);

-- o_MUX_uart_mac_h_l143_c3_fdda : 0 clocks latency
o_MUX_uart_mac_h_l143_c3_fdda : entity work.MUX_uint1_t_uart_tx_1b_t_uart_tx_1b_t_0CLK_de264c78 port map (
o_MUX_uart_mac_h_l143_c3_fdda_cond,
o_MUX_uart_mac_h_l143_c3_fdda_iftrue,
o_MUX_uart_mac_h_l143_c3_fdda_iffalse,
o_MUX_uart_mac_h_l143_c3_fdda_return_output);

-- BIN_OP_PLUS_uart_mac_h_l147_c5_4998 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l147_c5_4998 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l147_c5_4998_left,
BIN_OP_PLUS_uart_mac_h_l147_c5_4998_right,
BIN_OP_PLUS_uart_mac_h_l147_c5_4998_return_output);

-- BIN_OP_GTE_uart_mac_h_l148_c8_1b62 : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l148_c8_1b62 : entity work.BIN_OP_GTE_uint16_t_uint8_t_0CLK_e595f783 port map (
BIN_OP_GTE_uart_mac_h_l148_c8_1b62_left,
BIN_OP_GTE_uart_mac_h_l148_c8_1b62_right,
BIN_OP_GTE_uart_mac_h_l148_c8_1b62_return_output);

-- clk_counter_MUX_uart_mac_h_l148_c5_7f11 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l148_c5_7f11 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l148_c5_7f11_cond,
clk_counter_MUX_uart_mac_h_l148_c5_7f11_iftrue,
clk_counter_MUX_uart_mac_h_l148_c5_7f11_iffalse,
clk_counter_MUX_uart_mac_h_l148_c5_7f11_return_output);

-- bit_counter_MUX_uart_mac_h_l148_c5_7f11 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l148_c5_7f11 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l148_c5_7f11_cond,
bit_counter_MUX_uart_mac_h_l148_c5_7f11_iftrue,
bit_counter_MUX_uart_mac_h_l148_c5_7f11_iffalse,
bit_counter_MUX_uart_mac_h_l148_c5_7f11_return_output);

-- state_MUX_uart_mac_h_l148_c5_7f11 : 0 clocks latency
state_MUX_uart_mac_h_l148_c5_7f11 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l148_c5_7f11_cond,
state_MUX_uart_mac_h_l148_c5_7f11_iftrue,
state_MUX_uart_mac_h_l148_c5_7f11_iffalse,
state_MUX_uart_mac_h_l148_c5_7f11_return_output);

-- BIN_OP_EQ_uart_mac_h_l156_c11_049f : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l156_c11_049f : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l156_c11_049f_left,
BIN_OP_EQ_uart_mac_h_l156_c11_049f_right,
BIN_OP_EQ_uart_mac_h_l156_c11_049f_return_output);

-- clk_counter_MUX_uart_mac_h_l156_c8_e1ba : 0 clocks latency
clk_counter_MUX_uart_mac_h_l156_c8_e1ba : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l156_c8_e1ba_cond,
clk_counter_MUX_uart_mac_h_l156_c8_e1ba_iftrue,
clk_counter_MUX_uart_mac_h_l156_c8_e1ba_iffalse,
clk_counter_MUX_uart_mac_h_l156_c8_e1ba_return_output);

-- bit_counter_MUX_uart_mac_h_l156_c8_e1ba : 0 clocks latency
bit_counter_MUX_uart_mac_h_l156_c8_e1ba : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l156_c8_e1ba_cond,
bit_counter_MUX_uart_mac_h_l156_c8_e1ba_iftrue,
bit_counter_MUX_uart_mac_h_l156_c8_e1ba_iffalse,
bit_counter_MUX_uart_mac_h_l156_c8_e1ba_return_output);

-- state_MUX_uart_mac_h_l156_c8_e1ba : 0 clocks latency
state_MUX_uart_mac_h_l156_c8_e1ba : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l156_c8_e1ba_cond,
state_MUX_uart_mac_h_l156_c8_e1ba_iftrue,
state_MUX_uart_mac_h_l156_c8_e1ba_iffalse,
state_MUX_uart_mac_h_l156_c8_e1ba_return_output);

-- o_MUX_uart_mac_h_l156_c8_e1ba : 0 clocks latency
o_MUX_uart_mac_h_l156_c8_e1ba : entity work.MUX_uint1_t_uart_tx_1b_t_uart_tx_1b_t_0CLK_de264c78 port map (
o_MUX_uart_mac_h_l156_c8_e1ba_cond,
o_MUX_uart_mac_h_l156_c8_e1ba_iftrue,
o_MUX_uart_mac_h_l156_c8_e1ba_iffalse,
o_MUX_uart_mac_h_l156_c8_e1ba_return_output);

-- BIN_OP_PLUS_uart_mac_h_l160_c5_12c1 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l160_c5_12c1 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_left,
BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_right,
BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_return_output);

-- BIN_OP_GTE_uart_mac_h_l161_c8_48ba : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l161_c8_48ba : entity work.BIN_OP_GTE_uint16_t_uint8_t_0CLK_e595f783 port map (
BIN_OP_GTE_uart_mac_h_l161_c8_48ba_left,
BIN_OP_GTE_uart_mac_h_l161_c8_48ba_right,
BIN_OP_GTE_uart_mac_h_l161_c8_48ba_return_output);

-- clk_counter_MUX_uart_mac_h_l161_c5_1f02 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l161_c5_1f02 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l161_c5_1f02_cond,
clk_counter_MUX_uart_mac_h_l161_c5_1f02_iftrue,
clk_counter_MUX_uart_mac_h_l161_c5_1f02_iffalse,
clk_counter_MUX_uart_mac_h_l161_c5_1f02_return_output);

-- bit_counter_MUX_uart_mac_h_l161_c5_1f02 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l161_c5_1f02 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l161_c5_1f02_cond,
bit_counter_MUX_uart_mac_h_l161_c5_1f02_iftrue,
bit_counter_MUX_uart_mac_h_l161_c5_1f02_iffalse,
bit_counter_MUX_uart_mac_h_l161_c5_1f02_return_output);

-- state_MUX_uart_mac_h_l161_c5_1f02 : 0 clocks latency
state_MUX_uart_mac_h_l161_c5_1f02 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l161_c5_1f02_cond,
state_MUX_uart_mac_h_l161_c5_1f02_iftrue,
state_MUX_uart_mac_h_l161_c5_1f02_iffalse,
state_MUX_uart_mac_h_l161_c5_1f02_return_output);

-- o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02 : 0 clocks latency
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_cond,
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_iftrue,
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_iffalse,
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_return_output);

-- BIN_OP_PLUS_uart_mac_h_l168_c7_bc55 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l168_c7_bc55 : entity work.BIN_OP_PLUS_uint4_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_left,
BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_right,
BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_return_output);

-- BIN_OP_EQ_uart_mac_h_l170_c10_40eb : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l170_c10_40eb : entity work.BIN_OP_EQ_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l170_c10_40eb_left,
BIN_OP_EQ_uart_mac_h_l170_c10_40eb_right,
BIN_OP_EQ_uart_mac_h_l170_c10_40eb_return_output);

-- clk_counter_MUX_uart_mac_h_l170_c7_8923 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l170_c7_8923 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l170_c7_8923_cond,
clk_counter_MUX_uart_mac_h_l170_c7_8923_iftrue,
clk_counter_MUX_uart_mac_h_l170_c7_8923_iffalse,
clk_counter_MUX_uart_mac_h_l170_c7_8923_return_output);

-- state_MUX_uart_mac_h_l170_c7_8923 : 0 clocks latency
state_MUX_uart_mac_h_l170_c7_8923 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l170_c7_8923_cond,
state_MUX_uart_mac_h_l170_c7_8923_iftrue,
state_MUX_uart_mac_h_l170_c7_8923_iffalse,
state_MUX_uart_mac_h_l170_c7_8923_return_output);

-- BIN_OP_EQ_uart_mac_h_l178_c11_bda7 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l178_c11_bda7 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l178_c11_bda7_left,
BIN_OP_EQ_uart_mac_h_l178_c11_bda7_right,
BIN_OP_EQ_uart_mac_h_l178_c11_bda7_return_output);

-- clk_counter_MUX_uart_mac_h_l178_c8_82ba : 0 clocks latency
clk_counter_MUX_uart_mac_h_l178_c8_82ba : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l178_c8_82ba_cond,
clk_counter_MUX_uart_mac_h_l178_c8_82ba_iftrue,
clk_counter_MUX_uart_mac_h_l178_c8_82ba_iffalse,
clk_counter_MUX_uart_mac_h_l178_c8_82ba_return_output);

-- state_MUX_uart_mac_h_l178_c8_82ba : 0 clocks latency
state_MUX_uart_mac_h_l178_c8_82ba : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l178_c8_82ba_cond,
state_MUX_uart_mac_h_l178_c8_82ba_iftrue,
state_MUX_uart_mac_h_l178_c8_82ba_iffalse,
state_MUX_uart_mac_h_l178_c8_82ba_return_output);

-- o_output_wire_MUX_uart_mac_h_l178_c8_82ba : 0 clocks latency
o_output_wire_MUX_uart_mac_h_l178_c8_82ba : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_output_wire_MUX_uart_mac_h_l178_c8_82ba_cond,
o_output_wire_MUX_uart_mac_h_l178_c8_82ba_iftrue,
o_output_wire_MUX_uart_mac_h_l178_c8_82ba_iffalse,
o_output_wire_MUX_uart_mac_h_l178_c8_82ba_return_output);

-- BIN_OP_PLUS_uart_mac_h_l182_c5_ed80 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l182_c5_ed80 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_left,
BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_right,
BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_return_output);

-- BIN_OP_GTE_uart_mac_h_l183_c8_9107 : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l183_c8_9107 : entity work.BIN_OP_GTE_uint16_t_uint8_t_0CLK_e595f783 port map (
BIN_OP_GTE_uart_mac_h_l183_c8_9107_left,
BIN_OP_GTE_uart_mac_h_l183_c8_9107_right,
BIN_OP_GTE_uart_mac_h_l183_c8_9107_return_output);

-- state_MUX_uart_mac_h_l183_c5_73e1 : 0 clocks latency
state_MUX_uart_mac_h_l183_c5_73e1 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l183_c5_73e1_cond,
state_MUX_uart_mac_h_l183_c5_73e1_iftrue,
state_MUX_uart_mac_h_l183_c5_73e1_iffalse,
state_MUX_uart_mac_h_l183_c5_73e1_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Inputs
 bit_stream,
 -- Registers
 state,
 clk_counter,
 bit_counter,
 -- All submodule outputs
 BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_return_output,
 clk_counter_MUX_uart_mac_h_l131_c3_2927_return_output,
 state_MUX_uart_mac_h_l131_c3_2927_return_output,
 o_output_wire_MUX_uart_mac_h_l131_c3_2927_return_output,
 clk_counter_MUX_uart_mac_h_l135_c5_76a0_return_output,
 state_MUX_uart_mac_h_l135_c5_76a0_return_output,
 BIN_OP_EQ_uart_mac_h_l143_c6_ae03_return_output,
 clk_counter_MUX_uart_mac_h_l143_c3_fdda_return_output,
 bit_counter_MUX_uart_mac_h_l143_c3_fdda_return_output,
 state_MUX_uart_mac_h_l143_c3_fdda_return_output,
 o_MUX_uart_mac_h_l143_c3_fdda_return_output,
 BIN_OP_PLUS_uart_mac_h_l147_c5_4998_return_output,
 BIN_OP_GTE_uart_mac_h_l148_c8_1b62_return_output,
 clk_counter_MUX_uart_mac_h_l148_c5_7f11_return_output,
 bit_counter_MUX_uart_mac_h_l148_c5_7f11_return_output,
 state_MUX_uart_mac_h_l148_c5_7f11_return_output,
 BIN_OP_EQ_uart_mac_h_l156_c11_049f_return_output,
 clk_counter_MUX_uart_mac_h_l156_c8_e1ba_return_output,
 bit_counter_MUX_uart_mac_h_l156_c8_e1ba_return_output,
 state_MUX_uart_mac_h_l156_c8_e1ba_return_output,
 o_MUX_uart_mac_h_l156_c8_e1ba_return_output,
 BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_return_output,
 BIN_OP_GTE_uart_mac_h_l161_c8_48ba_return_output,
 clk_counter_MUX_uart_mac_h_l161_c5_1f02_return_output,
 bit_counter_MUX_uart_mac_h_l161_c5_1f02_return_output,
 state_MUX_uart_mac_h_l161_c5_1f02_return_output,
 o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_return_output,
 BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_return_output,
 BIN_OP_EQ_uart_mac_h_l170_c10_40eb_return_output,
 clk_counter_MUX_uart_mac_h_l170_c7_8923_return_output,
 state_MUX_uart_mac_h_l170_c7_8923_return_output,
 BIN_OP_EQ_uart_mac_h_l178_c11_bda7_return_output,
 clk_counter_MUX_uart_mac_h_l178_c8_82ba_return_output,
 state_MUX_uart_mac_h_l178_c8_82ba_return_output,
 o_output_wire_MUX_uart_mac_h_l178_c8_82ba_return_output,
 BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_return_output,
 BIN_OP_GTE_uart_mac_h_l183_c8_9107_return_output,
 state_MUX_uart_mac_h_l183_c5_73e1_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : uart_tx_1b_t;
 variable VAR_bit_stream : uint1_t_stream_t;
 variable VAR_o : uart_tx_1b_t;
 variable VAR_BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_2927_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_76a0_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_2927_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_2927_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_2927_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_2927_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_76a0_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_2927_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_2927_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_2927_cond : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_2927_iftrue : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_2927_iffalse : unsigned(0 downto 0);
 variable VAR_o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d_uart_mac_h_l131_c3_2927_return_output : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_2927_return_output : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_2927_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_4d81_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_76a0_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l139_c7_939b : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_76a0_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_76a0_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_76a0_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_76a0_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_76a0_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l143_c6_ae03_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l143_c6_ae03_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l143_c6_ae03_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_fdda_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_7f11_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_fdda_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_e1ba_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_fdda_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_fdda_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_fdda_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_7f11_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_fdda_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_e1ba_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_fdda_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_fdda_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_fdda_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_7f11_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_fdda_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_e1ba_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_fdda_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_fdda_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_uart_mac_h_l143_c3_fdda_iftrue : uart_tx_1b_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l143_c3_fdda_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l143_c3_fdda_iffalse : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l156_c8_e1ba_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l143_c3_fdda_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l143_c3_fdda_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l147_c5_9290 : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4998_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4998_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4998_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l148_c8_1b62_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l148_c8_1b62_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l148_c8_1b62_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_7f11_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l152_c7_7041 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_7f11_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_7f11_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_7f11_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l153_c7_b5af : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_7f11_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_7f11_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_7f11_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_7f11_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_7f11_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l156_c11_049f_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l156_c11_049f_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l156_c11_049f_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_e1ba_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_1f02_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_e1ba_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_82ba_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_e1ba_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_e1ba_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_1f02_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_e1ba_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_e1ba_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_e1ba_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_1f02_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_e1ba_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_82ba_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_e1ba_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_uart_mac_h_l156_c8_e1ba_iftrue : uart_tx_1b_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877_uart_mac_h_l156_c8_e1ba_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l156_c8_e1ba_iffalse : uart_tx_1b_t;
 variable VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l156_c8_e1ba_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l156_c8_e1ba_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d_uart_mac_h_l159_c21_4d77_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l160_c5_d121 : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l161_c8_48ba_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l161_c8_48ba_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l161_c8_48ba_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_1f02_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_8923_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_1f02_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_1f02_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_1f02_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l168_c7_abd9 : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_1f02_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_1f02_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_1f02_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_8923_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_1f02_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_1f02_cond : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_iftrue : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_iffalse : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d_uart_mac_h_l161_c5_1f02_return_output : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_return_output : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l167_c7_2d59 : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_return_output : unsigned(4 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l170_c10_40eb_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l170_c10_40eb_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l170_c10_40eb_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_8923_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l174_c9_0a4f : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_8923_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_8923_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_8923_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_8923_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_8923_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l178_c11_bda7_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l178_c11_bda7_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l178_c11_bda7_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_82ba_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l182_c5_e78d : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_82ba_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_82ba_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_82ba_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_73e1_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_82ba_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_82ba_cond : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_82ba_iftrue : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_82ba_iffalse : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_82ba_return_output : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_82ba_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l183_c8_9107_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l183_c8_9107_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l183_c8_9107_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_73e1_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_73e1_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_73e1_cond : unsigned(0 downto 0);
 -- State registers comb logic variables
variable REG_VAR_state : unsigned(1 downto 0);
variable REG_VAR_clk_counter : unsigned(15 downto 0);
variable REG_VAR_bit_counter : unsigned(3 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_state := state;
  REG_VAR_clk_counter := clk_counter;
  REG_VAR_bit_counter := bit_counter;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_h_l156_c11_049f_right := unsigned(uart_tx_state_t_to_slv(TRANSMIT));
     VAR_clk_counter_uart_mac_h_l167_c7_2d59 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_8923_iffalse := VAR_clk_counter_uart_mac_h_l167_c7_2d59;
     VAR_clk_counter_uart_mac_h_l174_c9_0a4f := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_8923_iftrue := VAR_clk_counter_uart_mac_h_l174_c9_0a4f;
     VAR_BIN_OP_GTE_uart_mac_h_l183_c8_9107_right := to_unsigned(216, 8);
     VAR_BIN_OP_GTE_uart_mac_h_l161_c8_48ba_right := to_unsigned(215, 8);
     VAR_bit_counter_uart_mac_h_l153_c7_b5af := resize(to_unsigned(0, 1), 4);
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_7f11_iftrue := VAR_bit_counter_uart_mac_h_l153_c7_b5af;
     VAR_state_MUX_uart_mac_h_l183_c5_73e1_iftrue := unsigned(uart_tx_state_t_to_slv(IDLE));
     VAR_BIN_OP_EQ_uart_mac_h_l143_c6_ae03_right := unsigned(uart_tx_state_t_to_slv(SEND_START));
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_2927_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4998_right := to_unsigned(1, 1);
     VAR_clk_counter_uart_mac_h_l152_c7_7041 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_7f11_iftrue := VAR_clk_counter_uart_mac_h_l152_c7_7041;
     VAR_state_MUX_uart_mac_h_l148_c5_7f11_iftrue := unsigned(uart_tx_state_t_to_slv(TRANSMIT));
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_82ba_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_right := unsigned(uart_tx_state_t_to_slv(IDLE));
     VAR_state_MUX_uart_mac_h_l135_c5_76a0_iftrue := unsigned(uart_tx_state_t_to_slv(SEND_START));
     VAR_BIN_OP_EQ_uart_mac_h_l170_c10_40eb_right := to_unsigned(8, 4);
     VAR_state_MUX_uart_mac_h_l170_c7_8923_iftrue := unsigned(uart_tx_state_t_to_slv(SEND_STOP));
     VAR_BIN_OP_GTE_uart_mac_h_l148_c8_1b62_right := to_unsigned(216, 8);
     VAR_clk_counter_uart_mac_h_l139_c7_939b := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_76a0_iftrue := VAR_clk_counter_uart_mac_h_l139_c7_939b;
     VAR_BIN_OP_EQ_uart_mac_h_l178_c11_bda7_right := unsigned(uart_tx_state_t_to_slv(SEND_STOP));
     VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_right := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_right := to_unsigned(1, 1);
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_iftrue := to_unsigned(1, 1);
     -- o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d[uart_mac_h_l161_c5_1f02] LATENCY=0
     VAR_o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d_uart_mac_h_l161_c5_1f02_return_output := uart_tx_1b_t_NULL.ready_for_bit_stream;

     -- o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d[uart_mac_h_l131_c3_2927] LATENCY=0
     VAR_o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d_uart_mac_h_l131_c3_2927_return_output := uart_tx_1b_t_NULL.output_wire;

     -- o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0[uart_mac_h_l143_c3_fdda] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l143_c3_fdda_return_output := CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0(
     uart_tx_1b_t_NULL,
     to_unsigned(0, 1));

     -- Submodule level 1
     VAR_o_MUX_uart_mac_h_l143_c3_fdda_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l143_c3_fdda_return_output;
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_iffalse := VAR_o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d_uart_mac_h_l161_c5_1f02_return_output;
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_2927_iffalse := VAR_o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d_uart_mac_h_l131_c3_2927_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;
     -- Mux in inputs
     VAR_bit_stream := bit_stream;

     -- Submodule level 0
     VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_left := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_7f11_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_e1ba_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_1f02_iffalse := bit_counter;
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_2927_iffalse := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_76a0_iffalse := clk_counter;
     VAR_BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_left := state;
     VAR_state_MUX_uart_mac_h_l131_c3_2927_iffalse := state;
     VAR_state_MUX_uart_mac_h_l135_c5_76a0_iffalse := state;
     -- BIN_OP_PLUS[uart_mac_h_l168_c7_bc55] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_left <= VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_left;
     BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_right <= VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_return_output := BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_return_output;

     -- BIN_OP_EQ[uart_mac_h_l131_c6_bd8e] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_left <= VAR_BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_left;
     BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_right <= VAR_BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_return_output := BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_return_output;

     -- CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d[uart_mac_h_l159_c21_4d77] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d_uart_mac_h_l159_c21_4d77_return_output := VAR_bit_stream.data;

     -- CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d[uart_mac_h_l135_c8_4d81] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_4d81_return_output := VAR_bit_stream.valid;

     -- Submodule level 1
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_2927_cond := VAR_BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_return_output;
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_2927_cond := VAR_BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_return_output;
     VAR_state_MUX_uart_mac_h_l131_c3_2927_cond := VAR_BIN_OP_EQ_uart_mac_h_l131_c6_bd8e_return_output;
     VAR_bit_counter_uart_mac_h_l168_c7_abd9 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_bc55_return_output, 4);
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_76a0_cond := VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_4d81_return_output;
     VAR_state_MUX_uart_mac_h_l135_c5_76a0_cond := VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_4d81_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l170_c10_40eb_left := VAR_bit_counter_uart_mac_h_l168_c7_abd9;
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_1f02_iftrue := VAR_bit_counter_uart_mac_h_l168_c7_abd9;
     -- BIN_OP_EQ[uart_mac_h_l170_c10_40eb] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l170_c10_40eb_left <= VAR_BIN_OP_EQ_uart_mac_h_l170_c10_40eb_left;
     BIN_OP_EQ_uart_mac_h_l170_c10_40eb_right <= VAR_BIN_OP_EQ_uart_mac_h_l170_c10_40eb_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l170_c10_40eb_return_output := BIN_OP_EQ_uart_mac_h_l170_c10_40eb_return_output;

     -- clk_counter_MUX[uart_mac_h_l135_c5_76a0] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l135_c5_76a0_cond <= VAR_clk_counter_MUX_uart_mac_h_l135_c5_76a0_cond;
     clk_counter_MUX_uart_mac_h_l135_c5_76a0_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l135_c5_76a0_iftrue;
     clk_counter_MUX_uart_mac_h_l135_c5_76a0_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l135_c5_76a0_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_76a0_return_output := clk_counter_MUX_uart_mac_h_l135_c5_76a0_return_output;

     -- o_output_wire_MUX[uart_mac_h_l131_c3_2927] LATENCY=0
     -- Inputs
     o_output_wire_MUX_uart_mac_h_l131_c3_2927_cond <= VAR_o_output_wire_MUX_uart_mac_h_l131_c3_2927_cond;
     o_output_wire_MUX_uart_mac_h_l131_c3_2927_iftrue <= VAR_o_output_wire_MUX_uart_mac_h_l131_c3_2927_iftrue;
     o_output_wire_MUX_uart_mac_h_l131_c3_2927_iffalse <= VAR_o_output_wire_MUX_uart_mac_h_l131_c3_2927_iffalse;
     -- Outputs
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_2927_return_output := o_output_wire_MUX_uart_mac_h_l131_c3_2927_return_output;

     -- state_MUX[uart_mac_h_l135_c5_76a0] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l135_c5_76a0_cond <= VAR_state_MUX_uart_mac_h_l135_c5_76a0_cond;
     state_MUX_uart_mac_h_l135_c5_76a0_iftrue <= VAR_state_MUX_uart_mac_h_l135_c5_76a0_iftrue;
     state_MUX_uart_mac_h_l135_c5_76a0_iffalse <= VAR_state_MUX_uart_mac_h_l135_c5_76a0_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l135_c5_76a0_return_output := state_MUX_uart_mac_h_l135_c5_76a0_return_output;

     -- Submodule level 2
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_8923_cond := VAR_BIN_OP_EQ_uart_mac_h_l170_c10_40eb_return_output;
     VAR_state_MUX_uart_mac_h_l170_c7_8923_cond := VAR_BIN_OP_EQ_uart_mac_h_l170_c10_40eb_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_2927_iftrue := VAR_clk_counter_MUX_uart_mac_h_l135_c5_76a0_return_output;
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_82ba_iffalse := VAR_o_output_wire_MUX_uart_mac_h_l131_c3_2927_return_output;
     VAR_state_MUX_uart_mac_h_l131_c3_2927_iftrue := VAR_state_MUX_uart_mac_h_l135_c5_76a0_return_output;
     -- clk_counter_MUX[uart_mac_h_l170_c7_8923] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l170_c7_8923_cond <= VAR_clk_counter_MUX_uart_mac_h_l170_c7_8923_cond;
     clk_counter_MUX_uart_mac_h_l170_c7_8923_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l170_c7_8923_iftrue;
     clk_counter_MUX_uart_mac_h_l170_c7_8923_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l170_c7_8923_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_8923_return_output := clk_counter_MUX_uart_mac_h_l170_c7_8923_return_output;

     -- clk_counter_MUX[uart_mac_h_l131_c3_2927] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l131_c3_2927_cond <= VAR_clk_counter_MUX_uart_mac_h_l131_c3_2927_cond;
     clk_counter_MUX_uart_mac_h_l131_c3_2927_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l131_c3_2927_iftrue;
     clk_counter_MUX_uart_mac_h_l131_c3_2927_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l131_c3_2927_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_2927_return_output := clk_counter_MUX_uart_mac_h_l131_c3_2927_return_output;

     -- state_MUX[uart_mac_h_l131_c3_2927] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l131_c3_2927_cond <= VAR_state_MUX_uart_mac_h_l131_c3_2927_cond;
     state_MUX_uart_mac_h_l131_c3_2927_iftrue <= VAR_state_MUX_uart_mac_h_l131_c3_2927_iftrue;
     state_MUX_uart_mac_h_l131_c3_2927_iffalse <= VAR_state_MUX_uart_mac_h_l131_c3_2927_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l131_c3_2927_return_output := state_MUX_uart_mac_h_l131_c3_2927_return_output;

     -- Submodule level 3
     VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4998_left := VAR_clk_counter_MUX_uart_mac_h_l131_c3_2927_return_output;
     VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_left := VAR_clk_counter_MUX_uart_mac_h_l131_c3_2927_return_output;
     VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_left := VAR_clk_counter_MUX_uart_mac_h_l131_c3_2927_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_82ba_iffalse := VAR_clk_counter_MUX_uart_mac_h_l131_c3_2927_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_1f02_iftrue := VAR_clk_counter_MUX_uart_mac_h_l170_c7_8923_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l143_c6_ae03_left := VAR_state_MUX_uart_mac_h_l131_c3_2927_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l156_c11_049f_left := VAR_state_MUX_uart_mac_h_l131_c3_2927_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l178_c11_bda7_left := VAR_state_MUX_uart_mac_h_l131_c3_2927_return_output;
     VAR_state_MUX_uart_mac_h_l148_c5_7f11_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_2927_return_output;
     VAR_state_MUX_uart_mac_h_l161_c5_1f02_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_2927_return_output;
     VAR_state_MUX_uart_mac_h_l170_c7_8923_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_2927_return_output;
     VAR_state_MUX_uart_mac_h_l178_c8_82ba_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_2927_return_output;
     VAR_state_MUX_uart_mac_h_l183_c5_73e1_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_2927_return_output;
     -- BIN_OP_EQ[uart_mac_h_l156_c11_049f] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l156_c11_049f_left <= VAR_BIN_OP_EQ_uart_mac_h_l156_c11_049f_left;
     BIN_OP_EQ_uart_mac_h_l156_c11_049f_right <= VAR_BIN_OP_EQ_uart_mac_h_l156_c11_049f_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l156_c11_049f_return_output := BIN_OP_EQ_uart_mac_h_l156_c11_049f_return_output;

     -- BIN_OP_EQ[uart_mac_h_l178_c11_bda7] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l178_c11_bda7_left <= VAR_BIN_OP_EQ_uart_mac_h_l178_c11_bda7_left;
     BIN_OP_EQ_uart_mac_h_l178_c11_bda7_right <= VAR_BIN_OP_EQ_uart_mac_h_l178_c11_bda7_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l178_c11_bda7_return_output := BIN_OP_EQ_uart_mac_h_l178_c11_bda7_return_output;

     -- BIN_OP_EQ[uart_mac_h_l143_c6_ae03] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l143_c6_ae03_left <= VAR_BIN_OP_EQ_uart_mac_h_l143_c6_ae03_left;
     BIN_OP_EQ_uart_mac_h_l143_c6_ae03_right <= VAR_BIN_OP_EQ_uart_mac_h_l143_c6_ae03_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l143_c6_ae03_return_output := BIN_OP_EQ_uart_mac_h_l143_c6_ae03_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l160_c5_12c1] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_left <= VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_left;
     BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_right <= VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_return_output := BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_return_output;

     -- state_MUX[uart_mac_h_l170_c7_8923] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l170_c7_8923_cond <= VAR_state_MUX_uart_mac_h_l170_c7_8923_cond;
     state_MUX_uart_mac_h_l170_c7_8923_iftrue <= VAR_state_MUX_uart_mac_h_l170_c7_8923_iftrue;
     state_MUX_uart_mac_h_l170_c7_8923_iffalse <= VAR_state_MUX_uart_mac_h_l170_c7_8923_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l170_c7_8923_return_output := state_MUX_uart_mac_h_l170_c7_8923_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l147_c5_4998] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l147_c5_4998_left <= VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4998_left;
     BIN_OP_PLUS_uart_mac_h_l147_c5_4998_right <= VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4998_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4998_return_output := BIN_OP_PLUS_uart_mac_h_l147_c5_4998_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l182_c5_ed80] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_left <= VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_left;
     BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_right <= VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_return_output := BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_return_output;

     -- Submodule level 4
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_fdda_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_ae03_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_fdda_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_ae03_return_output;
     VAR_o_MUX_uart_mac_h_l143_c3_fdda_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_ae03_return_output;
     VAR_state_MUX_uart_mac_h_l143_c3_fdda_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_ae03_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_e1ba_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_049f_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_e1ba_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_049f_return_output;
     VAR_o_MUX_uart_mac_h_l156_c8_e1ba_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_049f_return_output;
     VAR_state_MUX_uart_mac_h_l156_c8_e1ba_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_049f_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_82ba_cond := VAR_BIN_OP_EQ_uart_mac_h_l178_c11_bda7_return_output;
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_82ba_cond := VAR_BIN_OP_EQ_uart_mac_h_l178_c11_bda7_return_output;
     VAR_state_MUX_uart_mac_h_l178_c8_82ba_cond := VAR_BIN_OP_EQ_uart_mac_h_l178_c11_bda7_return_output;
     VAR_clk_counter_uart_mac_h_l147_c5_9290 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4998_return_output, 16);
     VAR_clk_counter_uart_mac_h_l160_c5_d121 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_12c1_return_output, 16);
     VAR_clk_counter_uart_mac_h_l182_c5_e78d := resize(VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_ed80_return_output, 16);
     VAR_state_MUX_uart_mac_h_l161_c5_1f02_iftrue := VAR_state_MUX_uart_mac_h_l170_c7_8923_return_output;
     VAR_BIN_OP_GTE_uart_mac_h_l148_c8_1b62_left := VAR_clk_counter_uart_mac_h_l147_c5_9290;
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_7f11_iffalse := VAR_clk_counter_uart_mac_h_l147_c5_9290;
     VAR_BIN_OP_GTE_uart_mac_h_l161_c8_48ba_left := VAR_clk_counter_uart_mac_h_l160_c5_d121;
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_1f02_iffalse := VAR_clk_counter_uart_mac_h_l160_c5_d121;
     VAR_BIN_OP_GTE_uart_mac_h_l183_c8_9107_left := VAR_clk_counter_uart_mac_h_l182_c5_e78d;
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_82ba_iftrue := VAR_clk_counter_uart_mac_h_l182_c5_e78d;
     -- clk_counter_MUX[uart_mac_h_l178_c8_82ba] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l178_c8_82ba_cond <= VAR_clk_counter_MUX_uart_mac_h_l178_c8_82ba_cond;
     clk_counter_MUX_uart_mac_h_l178_c8_82ba_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l178_c8_82ba_iftrue;
     clk_counter_MUX_uart_mac_h_l178_c8_82ba_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l178_c8_82ba_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_82ba_return_output := clk_counter_MUX_uart_mac_h_l178_c8_82ba_return_output;

     -- BIN_OP_GTE[uart_mac_h_l183_c8_9107] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l183_c8_9107_left <= VAR_BIN_OP_GTE_uart_mac_h_l183_c8_9107_left;
     BIN_OP_GTE_uart_mac_h_l183_c8_9107_right <= VAR_BIN_OP_GTE_uart_mac_h_l183_c8_9107_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l183_c8_9107_return_output := BIN_OP_GTE_uart_mac_h_l183_c8_9107_return_output;

     -- BIN_OP_GTE[uart_mac_h_l161_c8_48ba] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l161_c8_48ba_left <= VAR_BIN_OP_GTE_uart_mac_h_l161_c8_48ba_left;
     BIN_OP_GTE_uart_mac_h_l161_c8_48ba_right <= VAR_BIN_OP_GTE_uart_mac_h_l161_c8_48ba_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l161_c8_48ba_return_output := BIN_OP_GTE_uart_mac_h_l161_c8_48ba_return_output;

     -- o_output_wire_MUX[uart_mac_h_l178_c8_82ba] LATENCY=0
     -- Inputs
     o_output_wire_MUX_uart_mac_h_l178_c8_82ba_cond <= VAR_o_output_wire_MUX_uart_mac_h_l178_c8_82ba_cond;
     o_output_wire_MUX_uart_mac_h_l178_c8_82ba_iftrue <= VAR_o_output_wire_MUX_uart_mac_h_l178_c8_82ba_iftrue;
     o_output_wire_MUX_uart_mac_h_l178_c8_82ba_iffalse <= VAR_o_output_wire_MUX_uart_mac_h_l178_c8_82ba_iffalse;
     -- Outputs
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_82ba_return_output := o_output_wire_MUX_uart_mac_h_l178_c8_82ba_return_output;

     -- BIN_OP_GTE[uart_mac_h_l148_c8_1b62] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l148_c8_1b62_left <= VAR_BIN_OP_GTE_uart_mac_h_l148_c8_1b62_left;
     BIN_OP_GTE_uart_mac_h_l148_c8_1b62_right <= VAR_BIN_OP_GTE_uart_mac_h_l148_c8_1b62_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l148_c8_1b62_return_output := BIN_OP_GTE_uart_mac_h_l148_c8_1b62_return_output;

     -- Submodule level 5
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_7f11_cond := VAR_BIN_OP_GTE_uart_mac_h_l148_c8_1b62_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_7f11_cond := VAR_BIN_OP_GTE_uart_mac_h_l148_c8_1b62_return_output;
     VAR_state_MUX_uart_mac_h_l148_c5_7f11_cond := VAR_BIN_OP_GTE_uart_mac_h_l148_c8_1b62_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_1f02_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_48ba_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_1f02_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_48ba_return_output;
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_48ba_return_output;
     VAR_state_MUX_uart_mac_h_l161_c5_1f02_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_48ba_return_output;
     VAR_state_MUX_uart_mac_h_l183_c5_73e1_cond := VAR_BIN_OP_GTE_uart_mac_h_l183_c8_9107_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_e1ba_iffalse := VAR_clk_counter_MUX_uart_mac_h_l178_c8_82ba_return_output;
     -- state_MUX[uart_mac_h_l148_c5_7f11] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l148_c5_7f11_cond <= VAR_state_MUX_uart_mac_h_l148_c5_7f11_cond;
     state_MUX_uart_mac_h_l148_c5_7f11_iftrue <= VAR_state_MUX_uart_mac_h_l148_c5_7f11_iftrue;
     state_MUX_uart_mac_h_l148_c5_7f11_iffalse <= VAR_state_MUX_uart_mac_h_l148_c5_7f11_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l148_c5_7f11_return_output := state_MUX_uart_mac_h_l148_c5_7f11_return_output;

     -- state_MUX[uart_mac_h_l161_c5_1f02] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l161_c5_1f02_cond <= VAR_state_MUX_uart_mac_h_l161_c5_1f02_cond;
     state_MUX_uart_mac_h_l161_c5_1f02_iftrue <= VAR_state_MUX_uart_mac_h_l161_c5_1f02_iftrue;
     state_MUX_uart_mac_h_l161_c5_1f02_iffalse <= VAR_state_MUX_uart_mac_h_l161_c5_1f02_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l161_c5_1f02_return_output := state_MUX_uart_mac_h_l161_c5_1f02_return_output;

     -- clk_counter_MUX[uart_mac_h_l148_c5_7f11] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l148_c5_7f11_cond <= VAR_clk_counter_MUX_uart_mac_h_l148_c5_7f11_cond;
     clk_counter_MUX_uart_mac_h_l148_c5_7f11_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l148_c5_7f11_iftrue;
     clk_counter_MUX_uart_mac_h_l148_c5_7f11_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l148_c5_7f11_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_7f11_return_output := clk_counter_MUX_uart_mac_h_l148_c5_7f11_return_output;

     -- clk_counter_MUX[uart_mac_h_l161_c5_1f02] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l161_c5_1f02_cond <= VAR_clk_counter_MUX_uart_mac_h_l161_c5_1f02_cond;
     clk_counter_MUX_uart_mac_h_l161_c5_1f02_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l161_c5_1f02_iftrue;
     clk_counter_MUX_uart_mac_h_l161_c5_1f02_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l161_c5_1f02_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_1f02_return_output := clk_counter_MUX_uart_mac_h_l161_c5_1f02_return_output;

     -- state_MUX[uart_mac_h_l183_c5_73e1] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l183_c5_73e1_cond <= VAR_state_MUX_uart_mac_h_l183_c5_73e1_cond;
     state_MUX_uart_mac_h_l183_c5_73e1_iftrue <= VAR_state_MUX_uart_mac_h_l183_c5_73e1_iftrue;
     state_MUX_uart_mac_h_l183_c5_73e1_iffalse <= VAR_state_MUX_uart_mac_h_l183_c5_73e1_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l183_c5_73e1_return_output := state_MUX_uart_mac_h_l183_c5_73e1_return_output;

     -- o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0[uart_mac_h_l156_c8_e1ba] LATENCY=0
     VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l156_c8_e1ba_return_output := CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0(
     uart_tx_1b_t_NULL,
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_82ba_return_output);

     -- bit_counter_MUX[uart_mac_h_l161_c5_1f02] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l161_c5_1f02_cond <= VAR_bit_counter_MUX_uart_mac_h_l161_c5_1f02_cond;
     bit_counter_MUX_uart_mac_h_l161_c5_1f02_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l161_c5_1f02_iftrue;
     bit_counter_MUX_uart_mac_h_l161_c5_1f02_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l161_c5_1f02_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_1f02_return_output := bit_counter_MUX_uart_mac_h_l161_c5_1f02_return_output;

     -- o_ready_for_bit_stream_MUX[uart_mac_h_l161_c5_1f02] LATENCY=0
     -- Inputs
     o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_cond <= VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_cond;
     o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_iftrue <= VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_iftrue;
     o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_iffalse <= VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_iffalse;
     -- Outputs
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_return_output := o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_return_output;

     -- bit_counter_MUX[uart_mac_h_l148_c5_7f11] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l148_c5_7f11_cond <= VAR_bit_counter_MUX_uart_mac_h_l148_c5_7f11_cond;
     bit_counter_MUX_uart_mac_h_l148_c5_7f11_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l148_c5_7f11_iftrue;
     bit_counter_MUX_uart_mac_h_l148_c5_7f11_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l148_c5_7f11_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_7f11_return_output := bit_counter_MUX_uart_mac_h_l148_c5_7f11_return_output;

     -- Submodule level 6
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_fdda_iftrue := VAR_bit_counter_MUX_uart_mac_h_l148_c5_7f11_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_e1ba_iftrue := VAR_bit_counter_MUX_uart_mac_h_l161_c5_1f02_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_fdda_iftrue := VAR_clk_counter_MUX_uart_mac_h_l148_c5_7f11_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_e1ba_iftrue := VAR_clk_counter_MUX_uart_mac_h_l161_c5_1f02_return_output;
     VAR_o_MUX_uart_mac_h_l156_c8_e1ba_iffalse := VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l156_c8_e1ba_return_output;
     VAR_state_MUX_uart_mac_h_l143_c3_fdda_iftrue := VAR_state_MUX_uart_mac_h_l148_c5_7f11_return_output;
     VAR_state_MUX_uart_mac_h_l156_c8_e1ba_iftrue := VAR_state_MUX_uart_mac_h_l161_c5_1f02_return_output;
     VAR_state_MUX_uart_mac_h_l178_c8_82ba_iftrue := VAR_state_MUX_uart_mac_h_l183_c5_73e1_return_output;
     -- state_MUX[uart_mac_h_l178_c8_82ba] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l178_c8_82ba_cond <= VAR_state_MUX_uart_mac_h_l178_c8_82ba_cond;
     state_MUX_uart_mac_h_l178_c8_82ba_iftrue <= VAR_state_MUX_uart_mac_h_l178_c8_82ba_iftrue;
     state_MUX_uart_mac_h_l178_c8_82ba_iffalse <= VAR_state_MUX_uart_mac_h_l178_c8_82ba_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l178_c8_82ba_return_output := state_MUX_uart_mac_h_l178_c8_82ba_return_output;

     -- o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877[uart_mac_h_l156_c8_e1ba] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877_uart_mac_h_l156_c8_e1ba_return_output := CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877(
     VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d_uart_mac_h_l159_c21_4d77_return_output,
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_1f02_return_output);

     -- bit_counter_MUX[uart_mac_h_l156_c8_e1ba] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l156_c8_e1ba_cond <= VAR_bit_counter_MUX_uart_mac_h_l156_c8_e1ba_cond;
     bit_counter_MUX_uart_mac_h_l156_c8_e1ba_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l156_c8_e1ba_iftrue;
     bit_counter_MUX_uart_mac_h_l156_c8_e1ba_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l156_c8_e1ba_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_e1ba_return_output := bit_counter_MUX_uart_mac_h_l156_c8_e1ba_return_output;

     -- clk_counter_MUX[uart_mac_h_l156_c8_e1ba] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l156_c8_e1ba_cond <= VAR_clk_counter_MUX_uart_mac_h_l156_c8_e1ba_cond;
     clk_counter_MUX_uart_mac_h_l156_c8_e1ba_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l156_c8_e1ba_iftrue;
     clk_counter_MUX_uart_mac_h_l156_c8_e1ba_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l156_c8_e1ba_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_e1ba_return_output := clk_counter_MUX_uart_mac_h_l156_c8_e1ba_return_output;

     -- Submodule level 7
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_fdda_iffalse := VAR_bit_counter_MUX_uart_mac_h_l156_c8_e1ba_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_fdda_iffalse := VAR_clk_counter_MUX_uart_mac_h_l156_c8_e1ba_return_output;
     VAR_o_MUX_uart_mac_h_l156_c8_e1ba_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877_uart_mac_h_l156_c8_e1ba_return_output;
     VAR_state_MUX_uart_mac_h_l156_c8_e1ba_iffalse := VAR_state_MUX_uart_mac_h_l178_c8_82ba_return_output;
     -- state_MUX[uart_mac_h_l156_c8_e1ba] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l156_c8_e1ba_cond <= VAR_state_MUX_uart_mac_h_l156_c8_e1ba_cond;
     state_MUX_uart_mac_h_l156_c8_e1ba_iftrue <= VAR_state_MUX_uart_mac_h_l156_c8_e1ba_iftrue;
     state_MUX_uart_mac_h_l156_c8_e1ba_iffalse <= VAR_state_MUX_uart_mac_h_l156_c8_e1ba_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l156_c8_e1ba_return_output := state_MUX_uart_mac_h_l156_c8_e1ba_return_output;

     -- clk_counter_MUX[uart_mac_h_l143_c3_fdda] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l143_c3_fdda_cond <= VAR_clk_counter_MUX_uart_mac_h_l143_c3_fdda_cond;
     clk_counter_MUX_uart_mac_h_l143_c3_fdda_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l143_c3_fdda_iftrue;
     clk_counter_MUX_uart_mac_h_l143_c3_fdda_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l143_c3_fdda_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_fdda_return_output := clk_counter_MUX_uart_mac_h_l143_c3_fdda_return_output;

     -- o_MUX[uart_mac_h_l156_c8_e1ba] LATENCY=0
     -- Inputs
     o_MUX_uart_mac_h_l156_c8_e1ba_cond <= VAR_o_MUX_uart_mac_h_l156_c8_e1ba_cond;
     o_MUX_uart_mac_h_l156_c8_e1ba_iftrue <= VAR_o_MUX_uart_mac_h_l156_c8_e1ba_iftrue;
     o_MUX_uart_mac_h_l156_c8_e1ba_iffalse <= VAR_o_MUX_uart_mac_h_l156_c8_e1ba_iffalse;
     -- Outputs
     VAR_o_MUX_uart_mac_h_l156_c8_e1ba_return_output := o_MUX_uart_mac_h_l156_c8_e1ba_return_output;

     -- bit_counter_MUX[uart_mac_h_l143_c3_fdda] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l143_c3_fdda_cond <= VAR_bit_counter_MUX_uart_mac_h_l143_c3_fdda_cond;
     bit_counter_MUX_uart_mac_h_l143_c3_fdda_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l143_c3_fdda_iftrue;
     bit_counter_MUX_uart_mac_h_l143_c3_fdda_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l143_c3_fdda_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_fdda_return_output := bit_counter_MUX_uart_mac_h_l143_c3_fdda_return_output;

     -- Submodule level 8
     REG_VAR_bit_counter := VAR_bit_counter_MUX_uart_mac_h_l143_c3_fdda_return_output;
     REG_VAR_clk_counter := VAR_clk_counter_MUX_uart_mac_h_l143_c3_fdda_return_output;
     VAR_o_MUX_uart_mac_h_l143_c3_fdda_iffalse := VAR_o_MUX_uart_mac_h_l156_c8_e1ba_return_output;
     VAR_state_MUX_uart_mac_h_l143_c3_fdda_iffalse := VAR_state_MUX_uart_mac_h_l156_c8_e1ba_return_output;
     -- state_MUX[uart_mac_h_l143_c3_fdda] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l143_c3_fdda_cond <= VAR_state_MUX_uart_mac_h_l143_c3_fdda_cond;
     state_MUX_uart_mac_h_l143_c3_fdda_iftrue <= VAR_state_MUX_uart_mac_h_l143_c3_fdda_iftrue;
     state_MUX_uart_mac_h_l143_c3_fdda_iffalse <= VAR_state_MUX_uart_mac_h_l143_c3_fdda_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l143_c3_fdda_return_output := state_MUX_uart_mac_h_l143_c3_fdda_return_output;

     -- o_MUX[uart_mac_h_l143_c3_fdda] LATENCY=0
     -- Inputs
     o_MUX_uart_mac_h_l143_c3_fdda_cond <= VAR_o_MUX_uart_mac_h_l143_c3_fdda_cond;
     o_MUX_uart_mac_h_l143_c3_fdda_iftrue <= VAR_o_MUX_uart_mac_h_l143_c3_fdda_iftrue;
     o_MUX_uart_mac_h_l143_c3_fdda_iffalse <= VAR_o_MUX_uart_mac_h_l143_c3_fdda_iffalse;
     -- Outputs
     VAR_o_MUX_uart_mac_h_l143_c3_fdda_return_output := o_MUX_uart_mac_h_l143_c3_fdda_return_output;

     -- Submodule level 9
     VAR_return_output := VAR_o_MUX_uart_mac_h_l143_c3_fdda_return_output;
     REG_VAR_state := VAR_state_MUX_uart_mac_h_l143_c3_fdda_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_state <= REG_VAR_state;
REG_COMB_clk_counter <= REG_VAR_clk_counter;
REG_COMB_bit_counter <= REG_VAR_bit_counter;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if clk_en_internal='1' then
     state <= REG_COMB_state;
     clk_counter <= REG_COMB_clk_counter;
     bit_counter <= REG_COMB_bit_counter;
 end if;
 end if;
end process;

end arch;
