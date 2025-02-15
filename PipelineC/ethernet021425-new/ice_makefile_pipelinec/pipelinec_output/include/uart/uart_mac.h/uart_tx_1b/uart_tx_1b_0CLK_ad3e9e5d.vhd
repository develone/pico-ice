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
-- BIN_OP_EQ[uart_mac_h_l131_c6_ef03]
signal BIN_OP_EQ_uart_mac_h_l131_c6_ef03_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l131_c6_ef03_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l131_c6_ef03_return_output : unsigned(0 downto 0);

-- o_output_wire_MUX[uart_mac_h_l131_c3_954e]
signal o_output_wire_MUX_uart_mac_h_l131_c3_954e_cond : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l131_c3_954e_iftrue : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l131_c3_954e_iffalse : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l131_c3_954e_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l131_c3_954e]
signal clk_counter_MUX_uart_mac_h_l131_c3_954e_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l131_c3_954e_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l131_c3_954e_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l131_c3_954e_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l131_c3_954e]
signal state_MUX_uart_mac_h_l131_c3_954e_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l131_c3_954e_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l131_c3_954e_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l131_c3_954e_return_output : unsigned(1 downto 0);

-- clk_counter_MUX[uart_mac_h_l135_c5_2061]
signal clk_counter_MUX_uart_mac_h_l135_c5_2061_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l135_c5_2061_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l135_c5_2061_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l135_c5_2061_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l135_c5_2061]
signal state_MUX_uart_mac_h_l135_c5_2061_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l135_c5_2061_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l135_c5_2061_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l135_c5_2061_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l143_c6_f6a9]
signal BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_h_l143_c3_3bad]
signal bit_counter_MUX_uart_mac_h_l143_c3_3bad_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l143_c3_3bad_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l143_c3_3bad_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l143_c3_3bad_return_output : unsigned(3 downto 0);

-- o_MUX[uart_mac_h_l143_c3_3bad]
signal o_MUX_uart_mac_h_l143_c3_3bad_cond : unsigned(0 downto 0);
signal o_MUX_uart_mac_h_l143_c3_3bad_iftrue : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l143_c3_3bad_iffalse : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l143_c3_3bad_return_output : uart_tx_1b_t;

-- clk_counter_MUX[uart_mac_h_l143_c3_3bad]
signal clk_counter_MUX_uart_mac_h_l143_c3_3bad_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l143_c3_3bad_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l143_c3_3bad_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l143_c3_3bad_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l143_c3_3bad]
signal state_MUX_uart_mac_h_l143_c3_3bad_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l143_c3_3bad_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l143_c3_3bad_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l143_c3_3bad_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l147_c5_cf60]
signal BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l148_c8_d976]
signal BIN_OP_GTE_uart_mac_h_l148_c8_d976_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l148_c8_d976_right : unsigned(7 downto 0);
signal BIN_OP_GTE_uart_mac_h_l148_c8_d976_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_h_l148_c5_d7de]
signal bit_counter_MUX_uart_mac_h_l148_c5_d7de_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l148_c5_d7de_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l148_c5_d7de_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l148_c5_d7de_return_output : unsigned(3 downto 0);

-- clk_counter_MUX[uart_mac_h_l148_c5_d7de]
signal clk_counter_MUX_uart_mac_h_l148_c5_d7de_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l148_c5_d7de_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l148_c5_d7de_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l148_c5_d7de_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l148_c5_d7de]
signal state_MUX_uart_mac_h_l148_c5_d7de_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l148_c5_d7de_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l148_c5_d7de_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l148_c5_d7de_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l156_c11_ed32]
signal BIN_OP_EQ_uart_mac_h_l156_c11_ed32_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l156_c11_ed32_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l156_c11_ed32_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_h_l156_c8_1d84]
signal bit_counter_MUX_uart_mac_h_l156_c8_1d84_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l156_c8_1d84_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l156_c8_1d84_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l156_c8_1d84_return_output : unsigned(3 downto 0);

-- o_MUX[uart_mac_h_l156_c8_1d84]
signal o_MUX_uart_mac_h_l156_c8_1d84_cond : unsigned(0 downto 0);
signal o_MUX_uart_mac_h_l156_c8_1d84_iftrue : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l156_c8_1d84_iffalse : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l156_c8_1d84_return_output : uart_tx_1b_t;

-- clk_counter_MUX[uart_mac_h_l156_c8_1d84]
signal clk_counter_MUX_uart_mac_h_l156_c8_1d84_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l156_c8_1d84_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l156_c8_1d84_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l156_c8_1d84_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l156_c8_1d84]
signal state_MUX_uart_mac_h_l156_c8_1d84_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l156_c8_1d84_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l156_c8_1d84_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l156_c8_1d84_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l160_c5_f935]
signal BIN_OP_PLUS_uart_mac_h_l160_c5_f935_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l160_c5_f935_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l160_c5_f935_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l161_c8_beee]
signal BIN_OP_GTE_uart_mac_h_l161_c8_beee_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l161_c8_beee_right : unsigned(7 downto 0);
signal BIN_OP_GTE_uart_mac_h_l161_c8_beee_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_h_l161_c5_9b84]
signal bit_counter_MUX_uart_mac_h_l161_c5_9b84_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l161_c5_9b84_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l161_c5_9b84_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l161_c5_9b84_return_output : unsigned(3 downto 0);

-- o_ready_for_bit_stream_MUX[uart_mac_h_l161_c5_9b84]
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_cond : unsigned(0 downto 0);
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_iftrue : unsigned(0 downto 0);
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_iffalse : unsigned(0 downto 0);
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l161_c5_9b84]
signal clk_counter_MUX_uart_mac_h_l161_c5_9b84_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l161_c5_9b84_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l161_c5_9b84_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l161_c5_9b84_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l161_c5_9b84]
signal state_MUX_uart_mac_h_l161_c5_9b84_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l161_c5_9b84_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l161_c5_9b84_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l161_c5_9b84_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l168_c7_c4c8]
signal BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_left : unsigned(3 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_return_output : unsigned(4 downto 0);

-- BIN_OP_EQ[uart_mac_h_l170_c10_5f17]
signal BIN_OP_EQ_uart_mac_h_l170_c10_5f17_left : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l170_c10_5f17_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l170_c10_5f17_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l170_c7_4a60]
signal clk_counter_MUX_uart_mac_h_l170_c7_4a60_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l170_c7_4a60_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l170_c7_4a60_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l170_c7_4a60_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l170_c7_4a60]
signal state_MUX_uart_mac_h_l170_c7_4a60_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l170_c7_4a60_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l170_c7_4a60_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l170_c7_4a60_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l178_c11_d22f]
signal BIN_OP_EQ_uart_mac_h_l178_c11_d22f_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l178_c11_d22f_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l178_c11_d22f_return_output : unsigned(0 downto 0);

-- o_output_wire_MUX[uart_mac_h_l178_c8_eeeb]
signal o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_cond : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_iftrue : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_iffalse : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l178_c8_eeeb]
signal clk_counter_MUX_uart_mac_h_l178_c8_eeeb_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l178_c8_eeeb_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l178_c8_eeeb_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l178_c8_eeeb_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l178_c8_eeeb]
signal state_MUX_uart_mac_h_l178_c8_eeeb_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l178_c8_eeeb_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l178_c8_eeeb_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l178_c8_eeeb_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l182_c5_dced]
signal BIN_OP_PLUS_uart_mac_h_l182_c5_dced_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l182_c5_dced_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l182_c5_dced_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l183_c8_d578]
signal BIN_OP_GTE_uart_mac_h_l183_c8_d578_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l183_c8_d578_right : unsigned(7 downto 0);
signal BIN_OP_GTE_uart_mac_h_l183_c8_d578_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l183_c5_ccbd]
signal state_MUX_uart_mac_h_l183_c5_ccbd_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l183_c5_ccbd_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l183_c5_ccbd_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l183_c5_ccbd_return_output : unsigned(1 downto 0);

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
-- BIN_OP_EQ_uart_mac_h_l131_c6_ef03 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l131_c6_ef03 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l131_c6_ef03_left,
BIN_OP_EQ_uart_mac_h_l131_c6_ef03_right,
BIN_OP_EQ_uart_mac_h_l131_c6_ef03_return_output);

-- o_output_wire_MUX_uart_mac_h_l131_c3_954e : 0 clocks latency
o_output_wire_MUX_uart_mac_h_l131_c3_954e : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_output_wire_MUX_uart_mac_h_l131_c3_954e_cond,
o_output_wire_MUX_uart_mac_h_l131_c3_954e_iftrue,
o_output_wire_MUX_uart_mac_h_l131_c3_954e_iffalse,
o_output_wire_MUX_uart_mac_h_l131_c3_954e_return_output);

-- clk_counter_MUX_uart_mac_h_l131_c3_954e : 0 clocks latency
clk_counter_MUX_uart_mac_h_l131_c3_954e : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l131_c3_954e_cond,
clk_counter_MUX_uart_mac_h_l131_c3_954e_iftrue,
clk_counter_MUX_uart_mac_h_l131_c3_954e_iffalse,
clk_counter_MUX_uart_mac_h_l131_c3_954e_return_output);

-- state_MUX_uart_mac_h_l131_c3_954e : 0 clocks latency
state_MUX_uart_mac_h_l131_c3_954e : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l131_c3_954e_cond,
state_MUX_uart_mac_h_l131_c3_954e_iftrue,
state_MUX_uart_mac_h_l131_c3_954e_iffalse,
state_MUX_uart_mac_h_l131_c3_954e_return_output);

-- clk_counter_MUX_uart_mac_h_l135_c5_2061 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l135_c5_2061 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l135_c5_2061_cond,
clk_counter_MUX_uart_mac_h_l135_c5_2061_iftrue,
clk_counter_MUX_uart_mac_h_l135_c5_2061_iffalse,
clk_counter_MUX_uart_mac_h_l135_c5_2061_return_output);

-- state_MUX_uart_mac_h_l135_c5_2061 : 0 clocks latency
state_MUX_uart_mac_h_l135_c5_2061 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l135_c5_2061_cond,
state_MUX_uart_mac_h_l135_c5_2061_iftrue,
state_MUX_uart_mac_h_l135_c5_2061_iffalse,
state_MUX_uart_mac_h_l135_c5_2061_return_output);

-- BIN_OP_EQ_uart_mac_h_l143_c6_f6a9 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l143_c6_f6a9 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_left,
BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_right,
BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_return_output);

-- bit_counter_MUX_uart_mac_h_l143_c3_3bad : 0 clocks latency
bit_counter_MUX_uart_mac_h_l143_c3_3bad : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l143_c3_3bad_cond,
bit_counter_MUX_uart_mac_h_l143_c3_3bad_iftrue,
bit_counter_MUX_uart_mac_h_l143_c3_3bad_iffalse,
bit_counter_MUX_uart_mac_h_l143_c3_3bad_return_output);

-- o_MUX_uart_mac_h_l143_c3_3bad : 0 clocks latency
o_MUX_uart_mac_h_l143_c3_3bad : entity work.MUX_uint1_t_uart_tx_1b_t_uart_tx_1b_t_0CLK_de264c78 port map (
o_MUX_uart_mac_h_l143_c3_3bad_cond,
o_MUX_uart_mac_h_l143_c3_3bad_iftrue,
o_MUX_uart_mac_h_l143_c3_3bad_iffalse,
o_MUX_uart_mac_h_l143_c3_3bad_return_output);

-- clk_counter_MUX_uart_mac_h_l143_c3_3bad : 0 clocks latency
clk_counter_MUX_uart_mac_h_l143_c3_3bad : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l143_c3_3bad_cond,
clk_counter_MUX_uart_mac_h_l143_c3_3bad_iftrue,
clk_counter_MUX_uart_mac_h_l143_c3_3bad_iffalse,
clk_counter_MUX_uart_mac_h_l143_c3_3bad_return_output);

-- state_MUX_uart_mac_h_l143_c3_3bad : 0 clocks latency
state_MUX_uart_mac_h_l143_c3_3bad : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l143_c3_3bad_cond,
state_MUX_uart_mac_h_l143_c3_3bad_iftrue,
state_MUX_uart_mac_h_l143_c3_3bad_iffalse,
state_MUX_uart_mac_h_l143_c3_3bad_return_output);

-- BIN_OP_PLUS_uart_mac_h_l147_c5_cf60 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l147_c5_cf60 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_left,
BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_right,
BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_return_output);

-- BIN_OP_GTE_uart_mac_h_l148_c8_d976 : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l148_c8_d976 : entity work.BIN_OP_GTE_uint16_t_uint8_t_0CLK_e595f783 port map (
BIN_OP_GTE_uart_mac_h_l148_c8_d976_left,
BIN_OP_GTE_uart_mac_h_l148_c8_d976_right,
BIN_OP_GTE_uart_mac_h_l148_c8_d976_return_output);

-- bit_counter_MUX_uart_mac_h_l148_c5_d7de : 0 clocks latency
bit_counter_MUX_uart_mac_h_l148_c5_d7de : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l148_c5_d7de_cond,
bit_counter_MUX_uart_mac_h_l148_c5_d7de_iftrue,
bit_counter_MUX_uart_mac_h_l148_c5_d7de_iffalse,
bit_counter_MUX_uart_mac_h_l148_c5_d7de_return_output);

-- clk_counter_MUX_uart_mac_h_l148_c5_d7de : 0 clocks latency
clk_counter_MUX_uart_mac_h_l148_c5_d7de : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l148_c5_d7de_cond,
clk_counter_MUX_uart_mac_h_l148_c5_d7de_iftrue,
clk_counter_MUX_uart_mac_h_l148_c5_d7de_iffalse,
clk_counter_MUX_uart_mac_h_l148_c5_d7de_return_output);

-- state_MUX_uart_mac_h_l148_c5_d7de : 0 clocks latency
state_MUX_uart_mac_h_l148_c5_d7de : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l148_c5_d7de_cond,
state_MUX_uart_mac_h_l148_c5_d7de_iftrue,
state_MUX_uart_mac_h_l148_c5_d7de_iffalse,
state_MUX_uart_mac_h_l148_c5_d7de_return_output);

-- BIN_OP_EQ_uart_mac_h_l156_c11_ed32 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l156_c11_ed32 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l156_c11_ed32_left,
BIN_OP_EQ_uart_mac_h_l156_c11_ed32_right,
BIN_OP_EQ_uart_mac_h_l156_c11_ed32_return_output);

-- bit_counter_MUX_uart_mac_h_l156_c8_1d84 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l156_c8_1d84 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l156_c8_1d84_cond,
bit_counter_MUX_uart_mac_h_l156_c8_1d84_iftrue,
bit_counter_MUX_uart_mac_h_l156_c8_1d84_iffalse,
bit_counter_MUX_uart_mac_h_l156_c8_1d84_return_output);

-- o_MUX_uart_mac_h_l156_c8_1d84 : 0 clocks latency
o_MUX_uart_mac_h_l156_c8_1d84 : entity work.MUX_uint1_t_uart_tx_1b_t_uart_tx_1b_t_0CLK_de264c78 port map (
o_MUX_uart_mac_h_l156_c8_1d84_cond,
o_MUX_uart_mac_h_l156_c8_1d84_iftrue,
o_MUX_uart_mac_h_l156_c8_1d84_iffalse,
o_MUX_uart_mac_h_l156_c8_1d84_return_output);

-- clk_counter_MUX_uart_mac_h_l156_c8_1d84 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l156_c8_1d84 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l156_c8_1d84_cond,
clk_counter_MUX_uart_mac_h_l156_c8_1d84_iftrue,
clk_counter_MUX_uart_mac_h_l156_c8_1d84_iffalse,
clk_counter_MUX_uart_mac_h_l156_c8_1d84_return_output);

-- state_MUX_uart_mac_h_l156_c8_1d84 : 0 clocks latency
state_MUX_uart_mac_h_l156_c8_1d84 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l156_c8_1d84_cond,
state_MUX_uart_mac_h_l156_c8_1d84_iftrue,
state_MUX_uart_mac_h_l156_c8_1d84_iffalse,
state_MUX_uart_mac_h_l156_c8_1d84_return_output);

-- BIN_OP_PLUS_uart_mac_h_l160_c5_f935 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l160_c5_f935 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l160_c5_f935_left,
BIN_OP_PLUS_uart_mac_h_l160_c5_f935_right,
BIN_OP_PLUS_uart_mac_h_l160_c5_f935_return_output);

-- BIN_OP_GTE_uart_mac_h_l161_c8_beee : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l161_c8_beee : entity work.BIN_OP_GTE_uint16_t_uint8_t_0CLK_e595f783 port map (
BIN_OP_GTE_uart_mac_h_l161_c8_beee_left,
BIN_OP_GTE_uart_mac_h_l161_c8_beee_right,
BIN_OP_GTE_uart_mac_h_l161_c8_beee_return_output);

-- bit_counter_MUX_uart_mac_h_l161_c5_9b84 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l161_c5_9b84 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l161_c5_9b84_cond,
bit_counter_MUX_uart_mac_h_l161_c5_9b84_iftrue,
bit_counter_MUX_uart_mac_h_l161_c5_9b84_iffalse,
bit_counter_MUX_uart_mac_h_l161_c5_9b84_return_output);

-- o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84 : 0 clocks latency
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_cond,
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_iftrue,
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_iffalse,
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_return_output);

-- clk_counter_MUX_uart_mac_h_l161_c5_9b84 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l161_c5_9b84 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l161_c5_9b84_cond,
clk_counter_MUX_uart_mac_h_l161_c5_9b84_iftrue,
clk_counter_MUX_uart_mac_h_l161_c5_9b84_iffalse,
clk_counter_MUX_uart_mac_h_l161_c5_9b84_return_output);

-- state_MUX_uart_mac_h_l161_c5_9b84 : 0 clocks latency
state_MUX_uart_mac_h_l161_c5_9b84 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l161_c5_9b84_cond,
state_MUX_uart_mac_h_l161_c5_9b84_iftrue,
state_MUX_uart_mac_h_l161_c5_9b84_iffalse,
state_MUX_uart_mac_h_l161_c5_9b84_return_output);

-- BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8 : entity work.BIN_OP_PLUS_uint4_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_left,
BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_right,
BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_return_output);

-- BIN_OP_EQ_uart_mac_h_l170_c10_5f17 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l170_c10_5f17 : entity work.BIN_OP_EQ_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l170_c10_5f17_left,
BIN_OP_EQ_uart_mac_h_l170_c10_5f17_right,
BIN_OP_EQ_uart_mac_h_l170_c10_5f17_return_output);

-- clk_counter_MUX_uart_mac_h_l170_c7_4a60 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l170_c7_4a60 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l170_c7_4a60_cond,
clk_counter_MUX_uart_mac_h_l170_c7_4a60_iftrue,
clk_counter_MUX_uart_mac_h_l170_c7_4a60_iffalse,
clk_counter_MUX_uart_mac_h_l170_c7_4a60_return_output);

-- state_MUX_uart_mac_h_l170_c7_4a60 : 0 clocks latency
state_MUX_uart_mac_h_l170_c7_4a60 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l170_c7_4a60_cond,
state_MUX_uart_mac_h_l170_c7_4a60_iftrue,
state_MUX_uart_mac_h_l170_c7_4a60_iffalse,
state_MUX_uart_mac_h_l170_c7_4a60_return_output);

-- BIN_OP_EQ_uart_mac_h_l178_c11_d22f : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l178_c11_d22f : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l178_c11_d22f_left,
BIN_OP_EQ_uart_mac_h_l178_c11_d22f_right,
BIN_OP_EQ_uart_mac_h_l178_c11_d22f_return_output);

-- o_output_wire_MUX_uart_mac_h_l178_c8_eeeb : 0 clocks latency
o_output_wire_MUX_uart_mac_h_l178_c8_eeeb : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_cond,
o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_iftrue,
o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_iffalse,
o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_return_output);

-- clk_counter_MUX_uart_mac_h_l178_c8_eeeb : 0 clocks latency
clk_counter_MUX_uart_mac_h_l178_c8_eeeb : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l178_c8_eeeb_cond,
clk_counter_MUX_uart_mac_h_l178_c8_eeeb_iftrue,
clk_counter_MUX_uart_mac_h_l178_c8_eeeb_iffalse,
clk_counter_MUX_uart_mac_h_l178_c8_eeeb_return_output);

-- state_MUX_uart_mac_h_l178_c8_eeeb : 0 clocks latency
state_MUX_uart_mac_h_l178_c8_eeeb : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l178_c8_eeeb_cond,
state_MUX_uart_mac_h_l178_c8_eeeb_iftrue,
state_MUX_uart_mac_h_l178_c8_eeeb_iffalse,
state_MUX_uart_mac_h_l178_c8_eeeb_return_output);

-- BIN_OP_PLUS_uart_mac_h_l182_c5_dced : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l182_c5_dced : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l182_c5_dced_left,
BIN_OP_PLUS_uart_mac_h_l182_c5_dced_right,
BIN_OP_PLUS_uart_mac_h_l182_c5_dced_return_output);

-- BIN_OP_GTE_uart_mac_h_l183_c8_d578 : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l183_c8_d578 : entity work.BIN_OP_GTE_uint16_t_uint8_t_0CLK_e595f783 port map (
BIN_OP_GTE_uart_mac_h_l183_c8_d578_left,
BIN_OP_GTE_uart_mac_h_l183_c8_d578_right,
BIN_OP_GTE_uart_mac_h_l183_c8_d578_return_output);

-- state_MUX_uart_mac_h_l183_c5_ccbd : 0 clocks latency
state_MUX_uart_mac_h_l183_c5_ccbd : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l183_c5_ccbd_cond,
state_MUX_uart_mac_h_l183_c5_ccbd_iftrue,
state_MUX_uart_mac_h_l183_c5_ccbd_iffalse,
state_MUX_uart_mac_h_l183_c5_ccbd_return_output);



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
 BIN_OP_EQ_uart_mac_h_l131_c6_ef03_return_output,
 o_output_wire_MUX_uart_mac_h_l131_c3_954e_return_output,
 clk_counter_MUX_uart_mac_h_l131_c3_954e_return_output,
 state_MUX_uart_mac_h_l131_c3_954e_return_output,
 clk_counter_MUX_uart_mac_h_l135_c5_2061_return_output,
 state_MUX_uart_mac_h_l135_c5_2061_return_output,
 BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_return_output,
 bit_counter_MUX_uart_mac_h_l143_c3_3bad_return_output,
 o_MUX_uart_mac_h_l143_c3_3bad_return_output,
 clk_counter_MUX_uart_mac_h_l143_c3_3bad_return_output,
 state_MUX_uart_mac_h_l143_c3_3bad_return_output,
 BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_return_output,
 BIN_OP_GTE_uart_mac_h_l148_c8_d976_return_output,
 bit_counter_MUX_uart_mac_h_l148_c5_d7de_return_output,
 clk_counter_MUX_uart_mac_h_l148_c5_d7de_return_output,
 state_MUX_uart_mac_h_l148_c5_d7de_return_output,
 BIN_OP_EQ_uart_mac_h_l156_c11_ed32_return_output,
 bit_counter_MUX_uart_mac_h_l156_c8_1d84_return_output,
 o_MUX_uart_mac_h_l156_c8_1d84_return_output,
 clk_counter_MUX_uart_mac_h_l156_c8_1d84_return_output,
 state_MUX_uart_mac_h_l156_c8_1d84_return_output,
 BIN_OP_PLUS_uart_mac_h_l160_c5_f935_return_output,
 BIN_OP_GTE_uart_mac_h_l161_c8_beee_return_output,
 bit_counter_MUX_uart_mac_h_l161_c5_9b84_return_output,
 o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_return_output,
 clk_counter_MUX_uart_mac_h_l161_c5_9b84_return_output,
 state_MUX_uart_mac_h_l161_c5_9b84_return_output,
 BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_return_output,
 BIN_OP_EQ_uart_mac_h_l170_c10_5f17_return_output,
 clk_counter_MUX_uart_mac_h_l170_c7_4a60_return_output,
 state_MUX_uart_mac_h_l170_c7_4a60_return_output,
 BIN_OP_EQ_uart_mac_h_l178_c11_d22f_return_output,
 o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_return_output,
 clk_counter_MUX_uart_mac_h_l178_c8_eeeb_return_output,
 state_MUX_uart_mac_h_l178_c8_eeeb_return_output,
 BIN_OP_PLUS_uart_mac_h_l182_c5_dced_return_output,
 BIN_OP_GTE_uart_mac_h_l183_c8_d578_return_output,
 state_MUX_uart_mac_h_l183_c5_ccbd_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : uart_tx_1b_t;
 variable VAR_bit_stream : uint1_t_stream_t;
 variable VAR_o : uart_tx_1b_t;
 variable VAR_BIN_OP_EQ_uart_mac_h_l131_c6_ef03_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l131_c6_ef03_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l131_c6_ef03_return_output : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_954e_iftrue : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_954e_iffalse : unsigned(0 downto 0);
 variable VAR_o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d_uart_mac_h_l131_c3_954e_return_output : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_954e_return_output : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_954e_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_954e_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_2061_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_954e_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_954e_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_954e_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_954e_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_2061_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_954e_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_954e_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_954e_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_71ab_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_2061_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l139_c7_3f3e : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_2061_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_2061_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_2061_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_2061_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_2061_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_3bad_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_d7de_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_3bad_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_1d84_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_3bad_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_3bad_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_uart_mac_h_l143_c3_3bad_iftrue : uart_tx_1b_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l143_c3_3bad_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l143_c3_3bad_iffalse : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l156_c8_1d84_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l143_c3_3bad_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l143_c3_3bad_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_3bad_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_d7de_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_3bad_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_1d84_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_3bad_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_3bad_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_3bad_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_d7de_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_3bad_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_1d84_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_3bad_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_3bad_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l147_c5_a1d0 : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l148_c8_d976_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l148_c8_d976_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l148_c8_d976_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_d7de_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l153_c7_59d5 : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_d7de_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_d7de_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_d7de_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l152_c7_aa61 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_d7de_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_d7de_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_d7de_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_d7de_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_d7de_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l156_c11_ed32_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l156_c11_ed32_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l156_c11_ed32_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_1d84_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_9b84_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_1d84_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_1d84_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_uart_mac_h_l156_c8_1d84_iftrue : uart_tx_1b_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877_uart_mac_h_l156_c8_1d84_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l156_c8_1d84_iffalse : uart_tx_1b_t;
 variable VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l156_c8_1d84_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l156_c8_1d84_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_1d84_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_9b84_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_1d84_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_eeeb_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_1d84_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_1d84_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_9b84_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_1d84_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_eeeb_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_1d84_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d_uart_mac_h_l159_c21_87f5_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l160_c5_d2e0 : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_f935_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_f935_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_f935_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l161_c8_beee_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l161_c8_beee_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l161_c8_beee_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_9b84_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l168_c7_0c9c : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_9b84_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_9b84_cond : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_iftrue : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_iffalse : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d_uart_mac_h_l161_c5_9b84_return_output : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_return_output : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_9b84_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_4a60_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_9b84_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_9b84_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_9b84_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_4a60_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_9b84_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_9b84_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l167_c7_8c63 : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_return_output : unsigned(4 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l170_c10_5f17_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l170_c10_5f17_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l170_c10_5f17_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_4a60_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l174_c9_156c : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_4a60_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_4a60_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_4a60_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_4a60_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_4a60_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d22f_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d22f_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d22f_return_output : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_iftrue : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_iffalse : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_return_output : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_eeeb_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l182_c5_46e2 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_eeeb_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_eeeb_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_eeeb_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_ccbd_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_eeeb_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_eeeb_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_dced_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_dced_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_dced_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d578_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d578_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d578_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_ccbd_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_ccbd_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_ccbd_cond : unsigned(0 downto 0);
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
     VAR_state_MUX_uart_mac_h_l148_c5_d7de_iftrue := unsigned(uart_tx_state_t_to_slv(TRANSMIT));
     VAR_clk_counter_uart_mac_h_l174_c9_156c := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_4a60_iftrue := VAR_clk_counter_uart_mac_h_l174_c9_156c;
     VAR_state_MUX_uart_mac_h_l170_c7_4a60_iftrue := unsigned(uart_tx_state_t_to_slv(SEND_STOP));
     VAR_BIN_OP_EQ_uart_mac_h_l156_c11_ed32_right := unsigned(uart_tx_state_t_to_slv(TRANSMIT));
     VAR_bit_counter_uart_mac_h_l153_c7_59d5 := resize(to_unsigned(0, 1), 4);
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_d7de_iftrue := VAR_bit_counter_uart_mac_h_l153_c7_59d5;
     VAR_clk_counter_uart_mac_h_l167_c7_8c63 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_4a60_iffalse := VAR_clk_counter_uart_mac_h_l167_c7_8c63;
     VAR_state_MUX_uart_mac_h_l183_c5_ccbd_iftrue := unsigned(uart_tx_state_t_to_slv(IDLE));
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_iftrue := to_unsigned(1, 1);
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_iftrue := to_unsigned(1, 1);
     VAR_clk_counter_uart_mac_h_l152_c7_aa61 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_d7de_iftrue := VAR_clk_counter_uart_mac_h_l152_c7_aa61;
     VAR_BIN_OP_EQ_uart_mac_h_l131_c6_ef03_right := unsigned(uart_tx_state_t_to_slv(IDLE));
     VAR_BIN_OP_GTE_uart_mac_h_l161_c8_beee_right := to_unsigned(215, 8);
     VAR_state_MUX_uart_mac_h_l135_c5_2061_iftrue := unsigned(uart_tx_state_t_to_slv(SEND_START));
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_954e_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_right := unsigned(uart_tx_state_t_to_slv(SEND_START));
     VAR_BIN_OP_EQ_uart_mac_h_l170_c10_5f17_right := to_unsigned(8, 4);
     VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_right := to_unsigned(1, 1);
     VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d578_right := to_unsigned(216, 8);
     VAR_BIN_OP_GTE_uart_mac_h_l148_c8_d976_right := to_unsigned(216, 8);
     VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_dced_right := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_f935_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d22f_right := unsigned(uart_tx_state_t_to_slv(SEND_STOP));
     VAR_clk_counter_uart_mac_h_l139_c7_3f3e := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_2061_iftrue := VAR_clk_counter_uart_mac_h_l139_c7_3f3e;
     VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_right := to_unsigned(1, 1);
     -- o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d[uart_mac_h_l161_c5_9b84] LATENCY=0
     VAR_o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d_uart_mac_h_l161_c5_9b84_return_output := uart_tx_1b_t_NULL.ready_for_bit_stream;

     -- o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d[uart_mac_h_l131_c3_954e] LATENCY=0
     VAR_o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d_uart_mac_h_l131_c3_954e_return_output := uart_tx_1b_t_NULL.output_wire;

     -- o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0[uart_mac_h_l143_c3_3bad] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l143_c3_3bad_return_output := CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0(
     uart_tx_1b_t_NULL,
     to_unsigned(0, 1));

     -- Submodule level 1
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_954e_iffalse := VAR_o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d_uart_mac_h_l131_c3_954e_return_output;
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_iffalse := VAR_o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d_uart_mac_h_l161_c5_9b84_return_output;
     VAR_o_MUX_uart_mac_h_l143_c3_3bad_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l143_c3_3bad_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;
     -- Mux in inputs
     VAR_bit_stream := bit_stream;

     -- Submodule level 0
     VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_left := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_d7de_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_1d84_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_9b84_iffalse := bit_counter;
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_954e_iffalse := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_2061_iffalse := clk_counter;
     VAR_BIN_OP_EQ_uart_mac_h_l131_c6_ef03_left := state;
     VAR_state_MUX_uart_mac_h_l131_c3_954e_iffalse := state;
     VAR_state_MUX_uart_mac_h_l135_c5_2061_iffalse := state;
     -- CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d[uart_mac_h_l135_c8_71ab] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_71ab_return_output := VAR_bit_stream.valid;

     -- BIN_OP_EQ[uart_mac_h_l131_c6_ef03] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l131_c6_ef03_left <= VAR_BIN_OP_EQ_uart_mac_h_l131_c6_ef03_left;
     BIN_OP_EQ_uart_mac_h_l131_c6_ef03_right <= VAR_BIN_OP_EQ_uart_mac_h_l131_c6_ef03_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l131_c6_ef03_return_output := BIN_OP_EQ_uart_mac_h_l131_c6_ef03_return_output;

     -- CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d[uart_mac_h_l159_c21_87f5] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d_uart_mac_h_l159_c21_87f5_return_output := VAR_bit_stream.data;

     -- BIN_OP_PLUS[uart_mac_h_l168_c7_c4c8] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_left <= VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_left;
     BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_right <= VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_return_output := BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_return_output;

     -- Submodule level 1
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_954e_cond := VAR_BIN_OP_EQ_uart_mac_h_l131_c6_ef03_return_output;
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_954e_cond := VAR_BIN_OP_EQ_uart_mac_h_l131_c6_ef03_return_output;
     VAR_state_MUX_uart_mac_h_l131_c3_954e_cond := VAR_BIN_OP_EQ_uart_mac_h_l131_c6_ef03_return_output;
     VAR_bit_counter_uart_mac_h_l168_c7_0c9c := resize(VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_c4c8_return_output, 4);
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_2061_cond := VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_71ab_return_output;
     VAR_state_MUX_uart_mac_h_l135_c5_2061_cond := VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_71ab_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l170_c10_5f17_left := VAR_bit_counter_uart_mac_h_l168_c7_0c9c;
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_9b84_iftrue := VAR_bit_counter_uart_mac_h_l168_c7_0c9c;
     -- clk_counter_MUX[uart_mac_h_l135_c5_2061] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l135_c5_2061_cond <= VAR_clk_counter_MUX_uart_mac_h_l135_c5_2061_cond;
     clk_counter_MUX_uart_mac_h_l135_c5_2061_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l135_c5_2061_iftrue;
     clk_counter_MUX_uart_mac_h_l135_c5_2061_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l135_c5_2061_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_2061_return_output := clk_counter_MUX_uart_mac_h_l135_c5_2061_return_output;

     -- state_MUX[uart_mac_h_l135_c5_2061] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l135_c5_2061_cond <= VAR_state_MUX_uart_mac_h_l135_c5_2061_cond;
     state_MUX_uart_mac_h_l135_c5_2061_iftrue <= VAR_state_MUX_uart_mac_h_l135_c5_2061_iftrue;
     state_MUX_uart_mac_h_l135_c5_2061_iffalse <= VAR_state_MUX_uart_mac_h_l135_c5_2061_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l135_c5_2061_return_output := state_MUX_uart_mac_h_l135_c5_2061_return_output;

     -- o_output_wire_MUX[uart_mac_h_l131_c3_954e] LATENCY=0
     -- Inputs
     o_output_wire_MUX_uart_mac_h_l131_c3_954e_cond <= VAR_o_output_wire_MUX_uart_mac_h_l131_c3_954e_cond;
     o_output_wire_MUX_uart_mac_h_l131_c3_954e_iftrue <= VAR_o_output_wire_MUX_uart_mac_h_l131_c3_954e_iftrue;
     o_output_wire_MUX_uart_mac_h_l131_c3_954e_iffalse <= VAR_o_output_wire_MUX_uart_mac_h_l131_c3_954e_iffalse;
     -- Outputs
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_954e_return_output := o_output_wire_MUX_uart_mac_h_l131_c3_954e_return_output;

     -- BIN_OP_EQ[uart_mac_h_l170_c10_5f17] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l170_c10_5f17_left <= VAR_BIN_OP_EQ_uart_mac_h_l170_c10_5f17_left;
     BIN_OP_EQ_uart_mac_h_l170_c10_5f17_right <= VAR_BIN_OP_EQ_uart_mac_h_l170_c10_5f17_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l170_c10_5f17_return_output := BIN_OP_EQ_uart_mac_h_l170_c10_5f17_return_output;

     -- Submodule level 2
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_4a60_cond := VAR_BIN_OP_EQ_uart_mac_h_l170_c10_5f17_return_output;
     VAR_state_MUX_uart_mac_h_l170_c7_4a60_cond := VAR_BIN_OP_EQ_uart_mac_h_l170_c10_5f17_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_954e_iftrue := VAR_clk_counter_MUX_uart_mac_h_l135_c5_2061_return_output;
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_iffalse := VAR_o_output_wire_MUX_uart_mac_h_l131_c3_954e_return_output;
     VAR_state_MUX_uart_mac_h_l131_c3_954e_iftrue := VAR_state_MUX_uart_mac_h_l135_c5_2061_return_output;
     -- state_MUX[uart_mac_h_l131_c3_954e] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l131_c3_954e_cond <= VAR_state_MUX_uart_mac_h_l131_c3_954e_cond;
     state_MUX_uart_mac_h_l131_c3_954e_iftrue <= VAR_state_MUX_uart_mac_h_l131_c3_954e_iftrue;
     state_MUX_uart_mac_h_l131_c3_954e_iffalse <= VAR_state_MUX_uart_mac_h_l131_c3_954e_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l131_c3_954e_return_output := state_MUX_uart_mac_h_l131_c3_954e_return_output;

     -- clk_counter_MUX[uart_mac_h_l131_c3_954e] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l131_c3_954e_cond <= VAR_clk_counter_MUX_uart_mac_h_l131_c3_954e_cond;
     clk_counter_MUX_uart_mac_h_l131_c3_954e_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l131_c3_954e_iftrue;
     clk_counter_MUX_uart_mac_h_l131_c3_954e_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l131_c3_954e_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_954e_return_output := clk_counter_MUX_uart_mac_h_l131_c3_954e_return_output;

     -- clk_counter_MUX[uart_mac_h_l170_c7_4a60] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l170_c7_4a60_cond <= VAR_clk_counter_MUX_uart_mac_h_l170_c7_4a60_cond;
     clk_counter_MUX_uart_mac_h_l170_c7_4a60_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l170_c7_4a60_iftrue;
     clk_counter_MUX_uart_mac_h_l170_c7_4a60_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l170_c7_4a60_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_4a60_return_output := clk_counter_MUX_uart_mac_h_l170_c7_4a60_return_output;

     -- Submodule level 3
     VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_left := VAR_clk_counter_MUX_uart_mac_h_l131_c3_954e_return_output;
     VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_f935_left := VAR_clk_counter_MUX_uart_mac_h_l131_c3_954e_return_output;
     VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_dced_left := VAR_clk_counter_MUX_uart_mac_h_l131_c3_954e_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_eeeb_iffalse := VAR_clk_counter_MUX_uart_mac_h_l131_c3_954e_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_9b84_iftrue := VAR_clk_counter_MUX_uart_mac_h_l170_c7_4a60_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_left := VAR_state_MUX_uart_mac_h_l131_c3_954e_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l156_c11_ed32_left := VAR_state_MUX_uart_mac_h_l131_c3_954e_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d22f_left := VAR_state_MUX_uart_mac_h_l131_c3_954e_return_output;
     VAR_state_MUX_uart_mac_h_l148_c5_d7de_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_954e_return_output;
     VAR_state_MUX_uart_mac_h_l161_c5_9b84_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_954e_return_output;
     VAR_state_MUX_uart_mac_h_l170_c7_4a60_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_954e_return_output;
     VAR_state_MUX_uart_mac_h_l178_c8_eeeb_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_954e_return_output;
     VAR_state_MUX_uart_mac_h_l183_c5_ccbd_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_954e_return_output;
     -- BIN_OP_EQ[uart_mac_h_l178_c11_d22f] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l178_c11_d22f_left <= VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d22f_left;
     BIN_OP_EQ_uart_mac_h_l178_c11_d22f_right <= VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d22f_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d22f_return_output := BIN_OP_EQ_uart_mac_h_l178_c11_d22f_return_output;

     -- state_MUX[uart_mac_h_l170_c7_4a60] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l170_c7_4a60_cond <= VAR_state_MUX_uart_mac_h_l170_c7_4a60_cond;
     state_MUX_uart_mac_h_l170_c7_4a60_iftrue <= VAR_state_MUX_uart_mac_h_l170_c7_4a60_iftrue;
     state_MUX_uart_mac_h_l170_c7_4a60_iffalse <= VAR_state_MUX_uart_mac_h_l170_c7_4a60_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l170_c7_4a60_return_output := state_MUX_uart_mac_h_l170_c7_4a60_return_output;

     -- BIN_OP_EQ[uart_mac_h_l156_c11_ed32] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l156_c11_ed32_left <= VAR_BIN_OP_EQ_uart_mac_h_l156_c11_ed32_left;
     BIN_OP_EQ_uart_mac_h_l156_c11_ed32_right <= VAR_BIN_OP_EQ_uart_mac_h_l156_c11_ed32_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l156_c11_ed32_return_output := BIN_OP_EQ_uart_mac_h_l156_c11_ed32_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l182_c5_dced] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l182_c5_dced_left <= VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_dced_left;
     BIN_OP_PLUS_uart_mac_h_l182_c5_dced_right <= VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_dced_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_dced_return_output := BIN_OP_PLUS_uart_mac_h_l182_c5_dced_return_output;

     -- BIN_OP_EQ[uart_mac_h_l143_c6_f6a9] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_left <= VAR_BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_left;
     BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_right <= VAR_BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_return_output := BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l147_c5_cf60] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_left <= VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_left;
     BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_right <= VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_return_output := BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l160_c5_f935] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l160_c5_f935_left <= VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_f935_left;
     BIN_OP_PLUS_uart_mac_h_l160_c5_f935_right <= VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_f935_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_f935_return_output := BIN_OP_PLUS_uart_mac_h_l160_c5_f935_return_output;

     -- Submodule level 4
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_3bad_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_3bad_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_return_output;
     VAR_o_MUX_uart_mac_h_l143_c3_3bad_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_return_output;
     VAR_state_MUX_uart_mac_h_l143_c3_3bad_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_f6a9_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_1d84_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_ed32_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_1d84_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_ed32_return_output;
     VAR_o_MUX_uart_mac_h_l156_c8_1d84_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_ed32_return_output;
     VAR_state_MUX_uart_mac_h_l156_c8_1d84_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_ed32_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_eeeb_cond := VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d22f_return_output;
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_cond := VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d22f_return_output;
     VAR_state_MUX_uart_mac_h_l178_c8_eeeb_cond := VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d22f_return_output;
     VAR_clk_counter_uart_mac_h_l147_c5_a1d0 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_cf60_return_output, 16);
     VAR_clk_counter_uart_mac_h_l160_c5_d2e0 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_f935_return_output, 16);
     VAR_clk_counter_uart_mac_h_l182_c5_46e2 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_dced_return_output, 16);
     VAR_state_MUX_uart_mac_h_l161_c5_9b84_iftrue := VAR_state_MUX_uart_mac_h_l170_c7_4a60_return_output;
     VAR_BIN_OP_GTE_uart_mac_h_l148_c8_d976_left := VAR_clk_counter_uart_mac_h_l147_c5_a1d0;
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_d7de_iffalse := VAR_clk_counter_uart_mac_h_l147_c5_a1d0;
     VAR_BIN_OP_GTE_uart_mac_h_l161_c8_beee_left := VAR_clk_counter_uart_mac_h_l160_c5_d2e0;
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_9b84_iffalse := VAR_clk_counter_uart_mac_h_l160_c5_d2e0;
     VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d578_left := VAR_clk_counter_uart_mac_h_l182_c5_46e2;
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_eeeb_iftrue := VAR_clk_counter_uart_mac_h_l182_c5_46e2;
     -- o_output_wire_MUX[uart_mac_h_l178_c8_eeeb] LATENCY=0
     -- Inputs
     o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_cond <= VAR_o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_cond;
     o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_iftrue <= VAR_o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_iftrue;
     o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_iffalse <= VAR_o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_iffalse;
     -- Outputs
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_return_output := o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_return_output;

     -- BIN_OP_GTE[uart_mac_h_l148_c8_d976] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l148_c8_d976_left <= VAR_BIN_OP_GTE_uart_mac_h_l148_c8_d976_left;
     BIN_OP_GTE_uart_mac_h_l148_c8_d976_right <= VAR_BIN_OP_GTE_uart_mac_h_l148_c8_d976_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l148_c8_d976_return_output := BIN_OP_GTE_uart_mac_h_l148_c8_d976_return_output;

     -- BIN_OP_GTE[uart_mac_h_l183_c8_d578] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l183_c8_d578_left <= VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d578_left;
     BIN_OP_GTE_uart_mac_h_l183_c8_d578_right <= VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d578_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d578_return_output := BIN_OP_GTE_uart_mac_h_l183_c8_d578_return_output;

     -- clk_counter_MUX[uart_mac_h_l178_c8_eeeb] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l178_c8_eeeb_cond <= VAR_clk_counter_MUX_uart_mac_h_l178_c8_eeeb_cond;
     clk_counter_MUX_uart_mac_h_l178_c8_eeeb_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l178_c8_eeeb_iftrue;
     clk_counter_MUX_uart_mac_h_l178_c8_eeeb_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l178_c8_eeeb_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_eeeb_return_output := clk_counter_MUX_uart_mac_h_l178_c8_eeeb_return_output;

     -- BIN_OP_GTE[uart_mac_h_l161_c8_beee] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l161_c8_beee_left <= VAR_BIN_OP_GTE_uart_mac_h_l161_c8_beee_left;
     BIN_OP_GTE_uart_mac_h_l161_c8_beee_right <= VAR_BIN_OP_GTE_uart_mac_h_l161_c8_beee_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l161_c8_beee_return_output := BIN_OP_GTE_uart_mac_h_l161_c8_beee_return_output;

     -- Submodule level 5
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_d7de_cond := VAR_BIN_OP_GTE_uart_mac_h_l148_c8_d976_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_d7de_cond := VAR_BIN_OP_GTE_uart_mac_h_l148_c8_d976_return_output;
     VAR_state_MUX_uart_mac_h_l148_c5_d7de_cond := VAR_BIN_OP_GTE_uart_mac_h_l148_c8_d976_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_9b84_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_beee_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_9b84_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_beee_return_output;
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_beee_return_output;
     VAR_state_MUX_uart_mac_h_l161_c5_9b84_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_beee_return_output;
     VAR_state_MUX_uart_mac_h_l183_c5_ccbd_cond := VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d578_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_1d84_iffalse := VAR_clk_counter_MUX_uart_mac_h_l178_c8_eeeb_return_output;
     -- o_ready_for_bit_stream_MUX[uart_mac_h_l161_c5_9b84] LATENCY=0
     -- Inputs
     o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_cond <= VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_cond;
     o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_iftrue <= VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_iftrue;
     o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_iffalse <= VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_iffalse;
     -- Outputs
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_return_output := o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_return_output;

     -- bit_counter_MUX[uart_mac_h_l161_c5_9b84] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l161_c5_9b84_cond <= VAR_bit_counter_MUX_uart_mac_h_l161_c5_9b84_cond;
     bit_counter_MUX_uart_mac_h_l161_c5_9b84_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l161_c5_9b84_iftrue;
     bit_counter_MUX_uart_mac_h_l161_c5_9b84_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l161_c5_9b84_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_9b84_return_output := bit_counter_MUX_uart_mac_h_l161_c5_9b84_return_output;

     -- state_MUX[uart_mac_h_l161_c5_9b84] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l161_c5_9b84_cond <= VAR_state_MUX_uart_mac_h_l161_c5_9b84_cond;
     state_MUX_uart_mac_h_l161_c5_9b84_iftrue <= VAR_state_MUX_uart_mac_h_l161_c5_9b84_iftrue;
     state_MUX_uart_mac_h_l161_c5_9b84_iffalse <= VAR_state_MUX_uart_mac_h_l161_c5_9b84_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l161_c5_9b84_return_output := state_MUX_uart_mac_h_l161_c5_9b84_return_output;

     -- state_MUX[uart_mac_h_l148_c5_d7de] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l148_c5_d7de_cond <= VAR_state_MUX_uart_mac_h_l148_c5_d7de_cond;
     state_MUX_uart_mac_h_l148_c5_d7de_iftrue <= VAR_state_MUX_uart_mac_h_l148_c5_d7de_iftrue;
     state_MUX_uart_mac_h_l148_c5_d7de_iffalse <= VAR_state_MUX_uart_mac_h_l148_c5_d7de_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l148_c5_d7de_return_output := state_MUX_uart_mac_h_l148_c5_d7de_return_output;

     -- clk_counter_MUX[uart_mac_h_l161_c5_9b84] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l161_c5_9b84_cond <= VAR_clk_counter_MUX_uart_mac_h_l161_c5_9b84_cond;
     clk_counter_MUX_uart_mac_h_l161_c5_9b84_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l161_c5_9b84_iftrue;
     clk_counter_MUX_uart_mac_h_l161_c5_9b84_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l161_c5_9b84_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_9b84_return_output := clk_counter_MUX_uart_mac_h_l161_c5_9b84_return_output;

     -- bit_counter_MUX[uart_mac_h_l148_c5_d7de] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l148_c5_d7de_cond <= VAR_bit_counter_MUX_uart_mac_h_l148_c5_d7de_cond;
     bit_counter_MUX_uart_mac_h_l148_c5_d7de_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l148_c5_d7de_iftrue;
     bit_counter_MUX_uart_mac_h_l148_c5_d7de_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l148_c5_d7de_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_d7de_return_output := bit_counter_MUX_uart_mac_h_l148_c5_d7de_return_output;

     -- state_MUX[uart_mac_h_l183_c5_ccbd] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l183_c5_ccbd_cond <= VAR_state_MUX_uart_mac_h_l183_c5_ccbd_cond;
     state_MUX_uart_mac_h_l183_c5_ccbd_iftrue <= VAR_state_MUX_uart_mac_h_l183_c5_ccbd_iftrue;
     state_MUX_uart_mac_h_l183_c5_ccbd_iffalse <= VAR_state_MUX_uart_mac_h_l183_c5_ccbd_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l183_c5_ccbd_return_output := state_MUX_uart_mac_h_l183_c5_ccbd_return_output;

     -- clk_counter_MUX[uart_mac_h_l148_c5_d7de] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l148_c5_d7de_cond <= VAR_clk_counter_MUX_uart_mac_h_l148_c5_d7de_cond;
     clk_counter_MUX_uart_mac_h_l148_c5_d7de_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l148_c5_d7de_iftrue;
     clk_counter_MUX_uart_mac_h_l148_c5_d7de_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l148_c5_d7de_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_d7de_return_output := clk_counter_MUX_uart_mac_h_l148_c5_d7de_return_output;

     -- o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0[uart_mac_h_l156_c8_1d84] LATENCY=0
     VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l156_c8_1d84_return_output := CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0(
     uart_tx_1b_t_NULL,
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_eeeb_return_output);

     -- Submodule level 6
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_3bad_iftrue := VAR_bit_counter_MUX_uart_mac_h_l148_c5_d7de_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_1d84_iftrue := VAR_bit_counter_MUX_uart_mac_h_l161_c5_9b84_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_3bad_iftrue := VAR_clk_counter_MUX_uart_mac_h_l148_c5_d7de_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_1d84_iftrue := VAR_clk_counter_MUX_uart_mac_h_l161_c5_9b84_return_output;
     VAR_o_MUX_uart_mac_h_l156_c8_1d84_iffalse := VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l156_c8_1d84_return_output;
     VAR_state_MUX_uart_mac_h_l143_c3_3bad_iftrue := VAR_state_MUX_uart_mac_h_l148_c5_d7de_return_output;
     VAR_state_MUX_uart_mac_h_l156_c8_1d84_iftrue := VAR_state_MUX_uart_mac_h_l161_c5_9b84_return_output;
     VAR_state_MUX_uart_mac_h_l178_c8_eeeb_iftrue := VAR_state_MUX_uart_mac_h_l183_c5_ccbd_return_output;
     -- o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877[uart_mac_h_l156_c8_1d84] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877_uart_mac_h_l156_c8_1d84_return_output := CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877(
     VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d_uart_mac_h_l159_c21_87f5_return_output,
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_9b84_return_output);

     -- state_MUX[uart_mac_h_l178_c8_eeeb] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l178_c8_eeeb_cond <= VAR_state_MUX_uart_mac_h_l178_c8_eeeb_cond;
     state_MUX_uart_mac_h_l178_c8_eeeb_iftrue <= VAR_state_MUX_uart_mac_h_l178_c8_eeeb_iftrue;
     state_MUX_uart_mac_h_l178_c8_eeeb_iffalse <= VAR_state_MUX_uart_mac_h_l178_c8_eeeb_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l178_c8_eeeb_return_output := state_MUX_uart_mac_h_l178_c8_eeeb_return_output;

     -- bit_counter_MUX[uart_mac_h_l156_c8_1d84] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l156_c8_1d84_cond <= VAR_bit_counter_MUX_uart_mac_h_l156_c8_1d84_cond;
     bit_counter_MUX_uart_mac_h_l156_c8_1d84_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l156_c8_1d84_iftrue;
     bit_counter_MUX_uart_mac_h_l156_c8_1d84_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l156_c8_1d84_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_1d84_return_output := bit_counter_MUX_uart_mac_h_l156_c8_1d84_return_output;

     -- clk_counter_MUX[uart_mac_h_l156_c8_1d84] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l156_c8_1d84_cond <= VAR_clk_counter_MUX_uart_mac_h_l156_c8_1d84_cond;
     clk_counter_MUX_uart_mac_h_l156_c8_1d84_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l156_c8_1d84_iftrue;
     clk_counter_MUX_uart_mac_h_l156_c8_1d84_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l156_c8_1d84_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_1d84_return_output := clk_counter_MUX_uart_mac_h_l156_c8_1d84_return_output;

     -- Submodule level 7
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_3bad_iffalse := VAR_bit_counter_MUX_uart_mac_h_l156_c8_1d84_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_3bad_iffalse := VAR_clk_counter_MUX_uart_mac_h_l156_c8_1d84_return_output;
     VAR_o_MUX_uart_mac_h_l156_c8_1d84_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877_uart_mac_h_l156_c8_1d84_return_output;
     VAR_state_MUX_uart_mac_h_l156_c8_1d84_iffalse := VAR_state_MUX_uart_mac_h_l178_c8_eeeb_return_output;
     -- state_MUX[uart_mac_h_l156_c8_1d84] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l156_c8_1d84_cond <= VAR_state_MUX_uart_mac_h_l156_c8_1d84_cond;
     state_MUX_uart_mac_h_l156_c8_1d84_iftrue <= VAR_state_MUX_uart_mac_h_l156_c8_1d84_iftrue;
     state_MUX_uart_mac_h_l156_c8_1d84_iffalse <= VAR_state_MUX_uart_mac_h_l156_c8_1d84_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l156_c8_1d84_return_output := state_MUX_uart_mac_h_l156_c8_1d84_return_output;

     -- bit_counter_MUX[uart_mac_h_l143_c3_3bad] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l143_c3_3bad_cond <= VAR_bit_counter_MUX_uart_mac_h_l143_c3_3bad_cond;
     bit_counter_MUX_uart_mac_h_l143_c3_3bad_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l143_c3_3bad_iftrue;
     bit_counter_MUX_uart_mac_h_l143_c3_3bad_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l143_c3_3bad_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_3bad_return_output := bit_counter_MUX_uart_mac_h_l143_c3_3bad_return_output;

     -- o_MUX[uart_mac_h_l156_c8_1d84] LATENCY=0
     -- Inputs
     o_MUX_uart_mac_h_l156_c8_1d84_cond <= VAR_o_MUX_uart_mac_h_l156_c8_1d84_cond;
     o_MUX_uart_mac_h_l156_c8_1d84_iftrue <= VAR_o_MUX_uart_mac_h_l156_c8_1d84_iftrue;
     o_MUX_uart_mac_h_l156_c8_1d84_iffalse <= VAR_o_MUX_uart_mac_h_l156_c8_1d84_iffalse;
     -- Outputs
     VAR_o_MUX_uart_mac_h_l156_c8_1d84_return_output := o_MUX_uart_mac_h_l156_c8_1d84_return_output;

     -- clk_counter_MUX[uart_mac_h_l143_c3_3bad] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l143_c3_3bad_cond <= VAR_clk_counter_MUX_uart_mac_h_l143_c3_3bad_cond;
     clk_counter_MUX_uart_mac_h_l143_c3_3bad_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l143_c3_3bad_iftrue;
     clk_counter_MUX_uart_mac_h_l143_c3_3bad_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l143_c3_3bad_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_3bad_return_output := clk_counter_MUX_uart_mac_h_l143_c3_3bad_return_output;

     -- Submodule level 8
     REG_VAR_bit_counter := VAR_bit_counter_MUX_uart_mac_h_l143_c3_3bad_return_output;
     REG_VAR_clk_counter := VAR_clk_counter_MUX_uart_mac_h_l143_c3_3bad_return_output;
     VAR_o_MUX_uart_mac_h_l143_c3_3bad_iffalse := VAR_o_MUX_uart_mac_h_l156_c8_1d84_return_output;
     VAR_state_MUX_uart_mac_h_l143_c3_3bad_iffalse := VAR_state_MUX_uart_mac_h_l156_c8_1d84_return_output;
     -- state_MUX[uart_mac_h_l143_c3_3bad] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l143_c3_3bad_cond <= VAR_state_MUX_uart_mac_h_l143_c3_3bad_cond;
     state_MUX_uart_mac_h_l143_c3_3bad_iftrue <= VAR_state_MUX_uart_mac_h_l143_c3_3bad_iftrue;
     state_MUX_uart_mac_h_l143_c3_3bad_iffalse <= VAR_state_MUX_uart_mac_h_l143_c3_3bad_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l143_c3_3bad_return_output := state_MUX_uart_mac_h_l143_c3_3bad_return_output;

     -- o_MUX[uart_mac_h_l143_c3_3bad] LATENCY=0
     -- Inputs
     o_MUX_uart_mac_h_l143_c3_3bad_cond <= VAR_o_MUX_uart_mac_h_l143_c3_3bad_cond;
     o_MUX_uart_mac_h_l143_c3_3bad_iftrue <= VAR_o_MUX_uart_mac_h_l143_c3_3bad_iftrue;
     o_MUX_uart_mac_h_l143_c3_3bad_iffalse <= VAR_o_MUX_uart_mac_h_l143_c3_3bad_iffalse;
     -- Outputs
     VAR_o_MUX_uart_mac_h_l143_c3_3bad_return_output := o_MUX_uart_mac_h_l143_c3_3bad_return_output;

     -- Submodule level 9
     VAR_return_output := VAR_o_MUX_uart_mac_h_l143_c3_3bad_return_output;
     REG_VAR_state := VAR_state_MUX_uart_mac_h_l143_c3_3bad_return_output;
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
