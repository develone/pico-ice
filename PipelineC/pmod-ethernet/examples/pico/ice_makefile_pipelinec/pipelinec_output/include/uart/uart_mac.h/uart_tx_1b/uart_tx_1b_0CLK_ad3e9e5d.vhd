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
-- BIN_OP_EQ[uart_mac_h_l131_c6_af5f]
signal BIN_OP_EQ_uart_mac_h_l131_c6_af5f_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l131_c6_af5f_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l131_c6_af5f_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l131_c3_b44d]
signal clk_counter_MUX_uart_mac_h_l131_c3_b44d_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l131_c3_b44d_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l131_c3_b44d_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l131_c3_b44d_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l131_c3_b44d]
signal state_MUX_uart_mac_h_l131_c3_b44d_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l131_c3_b44d_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l131_c3_b44d_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l131_c3_b44d_return_output : unsigned(1 downto 0);

-- o_output_wire_MUX[uart_mac_h_l131_c3_b44d]
signal o_output_wire_MUX_uart_mac_h_l131_c3_b44d_cond : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l131_c3_b44d_iftrue : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l131_c3_b44d_iffalse : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l131_c3_b44d_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l135_c5_6a60]
signal clk_counter_MUX_uart_mac_h_l135_c5_6a60_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l135_c5_6a60_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l135_c5_6a60_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l135_c5_6a60_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l135_c5_6a60]
signal state_MUX_uart_mac_h_l135_c5_6a60_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l135_c5_6a60_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l135_c5_6a60_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l135_c5_6a60_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l143_c6_a5c0]
signal BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l143_c3_3fcf]
signal clk_counter_MUX_uart_mac_h_l143_c3_3fcf_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l143_c3_3fcf_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l143_c3_3fcf_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l143_c3_3fcf_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l143_c3_3fcf]
signal bit_counter_MUX_uart_mac_h_l143_c3_3fcf_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l143_c3_3fcf_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l143_c3_3fcf_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l143_c3_3fcf_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l143_c3_3fcf]
signal state_MUX_uart_mac_h_l143_c3_3fcf_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l143_c3_3fcf_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l143_c3_3fcf_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l143_c3_3fcf_return_output : unsigned(1 downto 0);

-- o_MUX[uart_mac_h_l143_c3_3fcf]
signal o_MUX_uart_mac_h_l143_c3_3fcf_cond : unsigned(0 downto 0);
signal o_MUX_uart_mac_h_l143_c3_3fcf_iftrue : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l143_c3_3fcf_iffalse : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l143_c3_3fcf_return_output : uart_tx_1b_t;

-- BIN_OP_PLUS[uart_mac_h_l147_c5_69c1]
signal BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l148_c8_ce73]
signal BIN_OP_GTE_uart_mac_h_l148_c8_ce73_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l148_c8_ce73_right : unsigned(7 downto 0);
signal BIN_OP_GTE_uart_mac_h_l148_c8_ce73_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l148_c5_eb6e]
signal clk_counter_MUX_uart_mac_h_l148_c5_eb6e_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l148_c5_eb6e_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l148_c5_eb6e_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l148_c5_eb6e_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l148_c5_eb6e]
signal bit_counter_MUX_uart_mac_h_l148_c5_eb6e_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l148_c5_eb6e_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l148_c5_eb6e_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l148_c5_eb6e_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l148_c5_eb6e]
signal state_MUX_uart_mac_h_l148_c5_eb6e_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l148_c5_eb6e_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l148_c5_eb6e_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l148_c5_eb6e_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l156_c11_4ed0]
signal BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l156_c8_83ed]
signal clk_counter_MUX_uart_mac_h_l156_c8_83ed_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l156_c8_83ed_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l156_c8_83ed_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l156_c8_83ed_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l156_c8_83ed]
signal bit_counter_MUX_uart_mac_h_l156_c8_83ed_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l156_c8_83ed_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l156_c8_83ed_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l156_c8_83ed_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l156_c8_83ed]
signal state_MUX_uart_mac_h_l156_c8_83ed_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l156_c8_83ed_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l156_c8_83ed_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l156_c8_83ed_return_output : unsigned(1 downto 0);

-- o_MUX[uart_mac_h_l156_c8_83ed]
signal o_MUX_uart_mac_h_l156_c8_83ed_cond : unsigned(0 downto 0);
signal o_MUX_uart_mac_h_l156_c8_83ed_iftrue : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l156_c8_83ed_iffalse : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l156_c8_83ed_return_output : uart_tx_1b_t;

-- BIN_OP_PLUS[uart_mac_h_l160_c5_2d87]
signal BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l161_c8_777f]
signal BIN_OP_GTE_uart_mac_h_l161_c8_777f_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l161_c8_777f_right : unsigned(7 downto 0);
signal BIN_OP_GTE_uart_mac_h_l161_c8_777f_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l161_c5_a0bc]
signal clk_counter_MUX_uart_mac_h_l161_c5_a0bc_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l161_c5_a0bc_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l161_c5_a0bc_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l161_c5_a0bc_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l161_c5_a0bc]
signal bit_counter_MUX_uart_mac_h_l161_c5_a0bc_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l161_c5_a0bc_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l161_c5_a0bc_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l161_c5_a0bc_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l161_c5_a0bc]
signal state_MUX_uart_mac_h_l161_c5_a0bc_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l161_c5_a0bc_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l161_c5_a0bc_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l161_c5_a0bc_return_output : unsigned(1 downto 0);

-- o_ready_for_bit_stream_MUX[uart_mac_h_l161_c5_a0bc]
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_cond : unsigned(0 downto 0);
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_iftrue : unsigned(0 downto 0);
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_iffalse : unsigned(0 downto 0);
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_return_output : unsigned(0 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l168_c7_0549]
signal BIN_OP_PLUS_uart_mac_h_l168_c7_0549_left : unsigned(3 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l168_c7_0549_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l168_c7_0549_return_output : unsigned(4 downto 0);

-- BIN_OP_EQ[uart_mac_h_l170_c10_07e5]
signal BIN_OP_EQ_uart_mac_h_l170_c10_07e5_left : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l170_c10_07e5_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l170_c10_07e5_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l170_c7_d78e]
signal clk_counter_MUX_uart_mac_h_l170_c7_d78e_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l170_c7_d78e_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l170_c7_d78e_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l170_c7_d78e_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l170_c7_d78e]
signal state_MUX_uart_mac_h_l170_c7_d78e_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l170_c7_d78e_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l170_c7_d78e_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l170_c7_d78e_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l178_c11_d906]
signal BIN_OP_EQ_uart_mac_h_l178_c11_d906_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l178_c11_d906_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l178_c11_d906_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l178_c8_a92e]
signal clk_counter_MUX_uart_mac_h_l178_c8_a92e_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l178_c8_a92e_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l178_c8_a92e_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l178_c8_a92e_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l178_c8_a92e]
signal state_MUX_uart_mac_h_l178_c8_a92e_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l178_c8_a92e_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l178_c8_a92e_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l178_c8_a92e_return_output : unsigned(1 downto 0);

-- o_output_wire_MUX[uart_mac_h_l178_c8_a92e]
signal o_output_wire_MUX_uart_mac_h_l178_c8_a92e_cond : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l178_c8_a92e_iftrue : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l178_c8_a92e_iffalse : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l178_c8_a92e_return_output : unsigned(0 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l182_c5_8e82]
signal BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l183_c8_4a7b]
signal BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_right : unsigned(7 downto 0);
signal BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l183_c5_7b6f]
signal state_MUX_uart_mac_h_l183_c5_7b6f_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l183_c5_7b6f_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l183_c5_7b6f_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l183_c5_7b6f_return_output : unsigned(1 downto 0);

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
-- BIN_OP_EQ_uart_mac_h_l131_c6_af5f : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l131_c6_af5f : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l131_c6_af5f_left,
BIN_OP_EQ_uart_mac_h_l131_c6_af5f_right,
BIN_OP_EQ_uart_mac_h_l131_c6_af5f_return_output);

-- clk_counter_MUX_uart_mac_h_l131_c3_b44d : 0 clocks latency
clk_counter_MUX_uart_mac_h_l131_c3_b44d : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l131_c3_b44d_cond,
clk_counter_MUX_uart_mac_h_l131_c3_b44d_iftrue,
clk_counter_MUX_uart_mac_h_l131_c3_b44d_iffalse,
clk_counter_MUX_uart_mac_h_l131_c3_b44d_return_output);

-- state_MUX_uart_mac_h_l131_c3_b44d : 0 clocks latency
state_MUX_uart_mac_h_l131_c3_b44d : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l131_c3_b44d_cond,
state_MUX_uart_mac_h_l131_c3_b44d_iftrue,
state_MUX_uart_mac_h_l131_c3_b44d_iffalse,
state_MUX_uart_mac_h_l131_c3_b44d_return_output);

-- o_output_wire_MUX_uart_mac_h_l131_c3_b44d : 0 clocks latency
o_output_wire_MUX_uart_mac_h_l131_c3_b44d : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_output_wire_MUX_uart_mac_h_l131_c3_b44d_cond,
o_output_wire_MUX_uart_mac_h_l131_c3_b44d_iftrue,
o_output_wire_MUX_uart_mac_h_l131_c3_b44d_iffalse,
o_output_wire_MUX_uart_mac_h_l131_c3_b44d_return_output);

-- clk_counter_MUX_uart_mac_h_l135_c5_6a60 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l135_c5_6a60 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l135_c5_6a60_cond,
clk_counter_MUX_uart_mac_h_l135_c5_6a60_iftrue,
clk_counter_MUX_uart_mac_h_l135_c5_6a60_iffalse,
clk_counter_MUX_uart_mac_h_l135_c5_6a60_return_output);

-- state_MUX_uart_mac_h_l135_c5_6a60 : 0 clocks latency
state_MUX_uart_mac_h_l135_c5_6a60 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l135_c5_6a60_cond,
state_MUX_uart_mac_h_l135_c5_6a60_iftrue,
state_MUX_uart_mac_h_l135_c5_6a60_iffalse,
state_MUX_uart_mac_h_l135_c5_6a60_return_output);

-- BIN_OP_EQ_uart_mac_h_l143_c6_a5c0 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l143_c6_a5c0 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_left,
BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_right,
BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_return_output);

-- clk_counter_MUX_uart_mac_h_l143_c3_3fcf : 0 clocks latency
clk_counter_MUX_uart_mac_h_l143_c3_3fcf : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l143_c3_3fcf_cond,
clk_counter_MUX_uart_mac_h_l143_c3_3fcf_iftrue,
clk_counter_MUX_uart_mac_h_l143_c3_3fcf_iffalse,
clk_counter_MUX_uart_mac_h_l143_c3_3fcf_return_output);

-- bit_counter_MUX_uart_mac_h_l143_c3_3fcf : 0 clocks latency
bit_counter_MUX_uart_mac_h_l143_c3_3fcf : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l143_c3_3fcf_cond,
bit_counter_MUX_uart_mac_h_l143_c3_3fcf_iftrue,
bit_counter_MUX_uart_mac_h_l143_c3_3fcf_iffalse,
bit_counter_MUX_uart_mac_h_l143_c3_3fcf_return_output);

-- state_MUX_uart_mac_h_l143_c3_3fcf : 0 clocks latency
state_MUX_uart_mac_h_l143_c3_3fcf : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l143_c3_3fcf_cond,
state_MUX_uart_mac_h_l143_c3_3fcf_iftrue,
state_MUX_uart_mac_h_l143_c3_3fcf_iffalse,
state_MUX_uart_mac_h_l143_c3_3fcf_return_output);

-- o_MUX_uart_mac_h_l143_c3_3fcf : 0 clocks latency
o_MUX_uart_mac_h_l143_c3_3fcf : entity work.MUX_uint1_t_uart_tx_1b_t_uart_tx_1b_t_0CLK_de264c78 port map (
o_MUX_uart_mac_h_l143_c3_3fcf_cond,
o_MUX_uart_mac_h_l143_c3_3fcf_iftrue,
o_MUX_uart_mac_h_l143_c3_3fcf_iffalse,
o_MUX_uart_mac_h_l143_c3_3fcf_return_output);

-- BIN_OP_PLUS_uart_mac_h_l147_c5_69c1 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l147_c5_69c1 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_left,
BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_right,
BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_return_output);

-- BIN_OP_GTE_uart_mac_h_l148_c8_ce73 : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l148_c8_ce73 : entity work.BIN_OP_GTE_uint16_t_uint8_t_0CLK_e595f783 port map (
BIN_OP_GTE_uart_mac_h_l148_c8_ce73_left,
BIN_OP_GTE_uart_mac_h_l148_c8_ce73_right,
BIN_OP_GTE_uart_mac_h_l148_c8_ce73_return_output);

-- clk_counter_MUX_uart_mac_h_l148_c5_eb6e : 0 clocks latency
clk_counter_MUX_uart_mac_h_l148_c5_eb6e : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l148_c5_eb6e_cond,
clk_counter_MUX_uart_mac_h_l148_c5_eb6e_iftrue,
clk_counter_MUX_uart_mac_h_l148_c5_eb6e_iffalse,
clk_counter_MUX_uart_mac_h_l148_c5_eb6e_return_output);

-- bit_counter_MUX_uart_mac_h_l148_c5_eb6e : 0 clocks latency
bit_counter_MUX_uart_mac_h_l148_c5_eb6e : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l148_c5_eb6e_cond,
bit_counter_MUX_uart_mac_h_l148_c5_eb6e_iftrue,
bit_counter_MUX_uart_mac_h_l148_c5_eb6e_iffalse,
bit_counter_MUX_uart_mac_h_l148_c5_eb6e_return_output);

-- state_MUX_uart_mac_h_l148_c5_eb6e : 0 clocks latency
state_MUX_uart_mac_h_l148_c5_eb6e : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l148_c5_eb6e_cond,
state_MUX_uart_mac_h_l148_c5_eb6e_iftrue,
state_MUX_uart_mac_h_l148_c5_eb6e_iffalse,
state_MUX_uart_mac_h_l148_c5_eb6e_return_output);

-- BIN_OP_EQ_uart_mac_h_l156_c11_4ed0 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l156_c11_4ed0 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_left,
BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_right,
BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_return_output);

-- clk_counter_MUX_uart_mac_h_l156_c8_83ed : 0 clocks latency
clk_counter_MUX_uart_mac_h_l156_c8_83ed : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l156_c8_83ed_cond,
clk_counter_MUX_uart_mac_h_l156_c8_83ed_iftrue,
clk_counter_MUX_uart_mac_h_l156_c8_83ed_iffalse,
clk_counter_MUX_uart_mac_h_l156_c8_83ed_return_output);

-- bit_counter_MUX_uart_mac_h_l156_c8_83ed : 0 clocks latency
bit_counter_MUX_uart_mac_h_l156_c8_83ed : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l156_c8_83ed_cond,
bit_counter_MUX_uart_mac_h_l156_c8_83ed_iftrue,
bit_counter_MUX_uart_mac_h_l156_c8_83ed_iffalse,
bit_counter_MUX_uart_mac_h_l156_c8_83ed_return_output);

-- state_MUX_uart_mac_h_l156_c8_83ed : 0 clocks latency
state_MUX_uart_mac_h_l156_c8_83ed : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l156_c8_83ed_cond,
state_MUX_uart_mac_h_l156_c8_83ed_iftrue,
state_MUX_uart_mac_h_l156_c8_83ed_iffalse,
state_MUX_uart_mac_h_l156_c8_83ed_return_output);

-- o_MUX_uart_mac_h_l156_c8_83ed : 0 clocks latency
o_MUX_uart_mac_h_l156_c8_83ed : entity work.MUX_uint1_t_uart_tx_1b_t_uart_tx_1b_t_0CLK_de264c78 port map (
o_MUX_uart_mac_h_l156_c8_83ed_cond,
o_MUX_uart_mac_h_l156_c8_83ed_iftrue,
o_MUX_uart_mac_h_l156_c8_83ed_iffalse,
o_MUX_uart_mac_h_l156_c8_83ed_return_output);

-- BIN_OP_PLUS_uart_mac_h_l160_c5_2d87 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l160_c5_2d87 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_left,
BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_right,
BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_return_output);

-- BIN_OP_GTE_uart_mac_h_l161_c8_777f : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l161_c8_777f : entity work.BIN_OP_GTE_uint16_t_uint8_t_0CLK_e595f783 port map (
BIN_OP_GTE_uart_mac_h_l161_c8_777f_left,
BIN_OP_GTE_uart_mac_h_l161_c8_777f_right,
BIN_OP_GTE_uart_mac_h_l161_c8_777f_return_output);

-- clk_counter_MUX_uart_mac_h_l161_c5_a0bc : 0 clocks latency
clk_counter_MUX_uart_mac_h_l161_c5_a0bc : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l161_c5_a0bc_cond,
clk_counter_MUX_uart_mac_h_l161_c5_a0bc_iftrue,
clk_counter_MUX_uart_mac_h_l161_c5_a0bc_iffalse,
clk_counter_MUX_uart_mac_h_l161_c5_a0bc_return_output);

-- bit_counter_MUX_uart_mac_h_l161_c5_a0bc : 0 clocks latency
bit_counter_MUX_uart_mac_h_l161_c5_a0bc : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l161_c5_a0bc_cond,
bit_counter_MUX_uart_mac_h_l161_c5_a0bc_iftrue,
bit_counter_MUX_uart_mac_h_l161_c5_a0bc_iffalse,
bit_counter_MUX_uart_mac_h_l161_c5_a0bc_return_output);

-- state_MUX_uart_mac_h_l161_c5_a0bc : 0 clocks latency
state_MUX_uart_mac_h_l161_c5_a0bc : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l161_c5_a0bc_cond,
state_MUX_uart_mac_h_l161_c5_a0bc_iftrue,
state_MUX_uart_mac_h_l161_c5_a0bc_iffalse,
state_MUX_uart_mac_h_l161_c5_a0bc_return_output);

-- o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc : 0 clocks latency
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_cond,
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_iftrue,
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_iffalse,
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_return_output);

-- BIN_OP_PLUS_uart_mac_h_l168_c7_0549 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l168_c7_0549 : entity work.BIN_OP_PLUS_uint4_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l168_c7_0549_left,
BIN_OP_PLUS_uart_mac_h_l168_c7_0549_right,
BIN_OP_PLUS_uart_mac_h_l168_c7_0549_return_output);

-- BIN_OP_EQ_uart_mac_h_l170_c10_07e5 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l170_c10_07e5 : entity work.BIN_OP_EQ_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l170_c10_07e5_left,
BIN_OP_EQ_uart_mac_h_l170_c10_07e5_right,
BIN_OP_EQ_uart_mac_h_l170_c10_07e5_return_output);

-- clk_counter_MUX_uart_mac_h_l170_c7_d78e : 0 clocks latency
clk_counter_MUX_uart_mac_h_l170_c7_d78e : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l170_c7_d78e_cond,
clk_counter_MUX_uart_mac_h_l170_c7_d78e_iftrue,
clk_counter_MUX_uart_mac_h_l170_c7_d78e_iffalse,
clk_counter_MUX_uart_mac_h_l170_c7_d78e_return_output);

-- state_MUX_uart_mac_h_l170_c7_d78e : 0 clocks latency
state_MUX_uart_mac_h_l170_c7_d78e : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l170_c7_d78e_cond,
state_MUX_uart_mac_h_l170_c7_d78e_iftrue,
state_MUX_uart_mac_h_l170_c7_d78e_iffalse,
state_MUX_uart_mac_h_l170_c7_d78e_return_output);

-- BIN_OP_EQ_uart_mac_h_l178_c11_d906 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l178_c11_d906 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l178_c11_d906_left,
BIN_OP_EQ_uart_mac_h_l178_c11_d906_right,
BIN_OP_EQ_uart_mac_h_l178_c11_d906_return_output);

-- clk_counter_MUX_uart_mac_h_l178_c8_a92e : 0 clocks latency
clk_counter_MUX_uart_mac_h_l178_c8_a92e : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l178_c8_a92e_cond,
clk_counter_MUX_uart_mac_h_l178_c8_a92e_iftrue,
clk_counter_MUX_uart_mac_h_l178_c8_a92e_iffalse,
clk_counter_MUX_uart_mac_h_l178_c8_a92e_return_output);

-- state_MUX_uart_mac_h_l178_c8_a92e : 0 clocks latency
state_MUX_uart_mac_h_l178_c8_a92e : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l178_c8_a92e_cond,
state_MUX_uart_mac_h_l178_c8_a92e_iftrue,
state_MUX_uart_mac_h_l178_c8_a92e_iffalse,
state_MUX_uart_mac_h_l178_c8_a92e_return_output);

-- o_output_wire_MUX_uart_mac_h_l178_c8_a92e : 0 clocks latency
o_output_wire_MUX_uart_mac_h_l178_c8_a92e : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_output_wire_MUX_uart_mac_h_l178_c8_a92e_cond,
o_output_wire_MUX_uart_mac_h_l178_c8_a92e_iftrue,
o_output_wire_MUX_uart_mac_h_l178_c8_a92e_iffalse,
o_output_wire_MUX_uart_mac_h_l178_c8_a92e_return_output);

-- BIN_OP_PLUS_uart_mac_h_l182_c5_8e82 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l182_c5_8e82 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_left,
BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_right,
BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_return_output);

-- BIN_OP_GTE_uart_mac_h_l183_c8_4a7b : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l183_c8_4a7b : entity work.BIN_OP_GTE_uint16_t_uint8_t_0CLK_e595f783 port map (
BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_left,
BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_right,
BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_return_output);

-- state_MUX_uart_mac_h_l183_c5_7b6f : 0 clocks latency
state_MUX_uart_mac_h_l183_c5_7b6f : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l183_c5_7b6f_cond,
state_MUX_uart_mac_h_l183_c5_7b6f_iftrue,
state_MUX_uart_mac_h_l183_c5_7b6f_iffalse,
state_MUX_uart_mac_h_l183_c5_7b6f_return_output);



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
 BIN_OP_EQ_uart_mac_h_l131_c6_af5f_return_output,
 clk_counter_MUX_uart_mac_h_l131_c3_b44d_return_output,
 state_MUX_uart_mac_h_l131_c3_b44d_return_output,
 o_output_wire_MUX_uart_mac_h_l131_c3_b44d_return_output,
 clk_counter_MUX_uart_mac_h_l135_c5_6a60_return_output,
 state_MUX_uart_mac_h_l135_c5_6a60_return_output,
 BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_return_output,
 clk_counter_MUX_uart_mac_h_l143_c3_3fcf_return_output,
 bit_counter_MUX_uart_mac_h_l143_c3_3fcf_return_output,
 state_MUX_uart_mac_h_l143_c3_3fcf_return_output,
 o_MUX_uart_mac_h_l143_c3_3fcf_return_output,
 BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_return_output,
 BIN_OP_GTE_uart_mac_h_l148_c8_ce73_return_output,
 clk_counter_MUX_uart_mac_h_l148_c5_eb6e_return_output,
 bit_counter_MUX_uart_mac_h_l148_c5_eb6e_return_output,
 state_MUX_uart_mac_h_l148_c5_eb6e_return_output,
 BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_return_output,
 clk_counter_MUX_uart_mac_h_l156_c8_83ed_return_output,
 bit_counter_MUX_uart_mac_h_l156_c8_83ed_return_output,
 state_MUX_uart_mac_h_l156_c8_83ed_return_output,
 o_MUX_uart_mac_h_l156_c8_83ed_return_output,
 BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_return_output,
 BIN_OP_GTE_uart_mac_h_l161_c8_777f_return_output,
 clk_counter_MUX_uart_mac_h_l161_c5_a0bc_return_output,
 bit_counter_MUX_uart_mac_h_l161_c5_a0bc_return_output,
 state_MUX_uart_mac_h_l161_c5_a0bc_return_output,
 o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_return_output,
 BIN_OP_PLUS_uart_mac_h_l168_c7_0549_return_output,
 BIN_OP_EQ_uart_mac_h_l170_c10_07e5_return_output,
 clk_counter_MUX_uart_mac_h_l170_c7_d78e_return_output,
 state_MUX_uart_mac_h_l170_c7_d78e_return_output,
 BIN_OP_EQ_uart_mac_h_l178_c11_d906_return_output,
 clk_counter_MUX_uart_mac_h_l178_c8_a92e_return_output,
 state_MUX_uart_mac_h_l178_c8_a92e_return_output,
 o_output_wire_MUX_uart_mac_h_l178_c8_a92e_return_output,
 BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_return_output,
 BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_return_output,
 state_MUX_uart_mac_h_l183_c5_7b6f_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : uart_tx_1b_t;
 variable VAR_bit_stream : uint1_t_stream_t;
 variable VAR_o : uart_tx_1b_t;
 variable VAR_BIN_OP_EQ_uart_mac_h_l131_c6_af5f_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l131_c6_af5f_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l131_c6_af5f_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_b44d_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_6a60_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_b44d_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_b44d_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_b44d_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_b44d_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_6a60_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_b44d_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_b44d_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_b44d_cond : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_b44d_iftrue : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_b44d_iffalse : unsigned(0 downto 0);
 variable VAR_o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d_uart_mac_h_l131_c3_b44d_return_output : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_b44d_return_output : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_b44d_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_53d2_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_6a60_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l139_c7_735a : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_6a60_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_6a60_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_6a60_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_6a60_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_6a60_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_3fcf_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_eb6e_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_3fcf_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_83ed_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_3fcf_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_3fcf_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_3fcf_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_eb6e_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_3fcf_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_83ed_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_3fcf_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_3fcf_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_3fcf_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_eb6e_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_3fcf_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_83ed_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_3fcf_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_3fcf_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_uart_mac_h_l143_c3_3fcf_iftrue : uart_tx_1b_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l143_c3_3fcf_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l143_c3_3fcf_iffalse : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l156_c8_83ed_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l143_c3_3fcf_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l143_c3_3fcf_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l147_c5_01c1 : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l148_c8_ce73_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l148_c8_ce73_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l148_c8_ce73_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_eb6e_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l152_c7_b95a : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_eb6e_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_eb6e_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_eb6e_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l153_c7_c7af : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_eb6e_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_eb6e_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_eb6e_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_eb6e_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_eb6e_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_83ed_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_a0bc_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_83ed_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_a92e_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_83ed_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_83ed_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_a0bc_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_83ed_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_83ed_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_83ed_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_a0bc_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_83ed_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_a92e_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_83ed_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_uart_mac_h_l156_c8_83ed_iftrue : uart_tx_1b_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877_uart_mac_h_l156_c8_83ed_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l156_c8_83ed_iffalse : uart_tx_1b_t;
 variable VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l156_c8_83ed_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l156_c8_83ed_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d_uart_mac_h_l159_c21_14b9_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l160_c5_fae8 : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l161_c8_777f_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l161_c8_777f_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l161_c8_777f_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_a0bc_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_d78e_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_a0bc_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_a0bc_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_a0bc_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l168_c7_f997 : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_a0bc_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_a0bc_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_a0bc_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_d78e_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_a0bc_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_a0bc_cond : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_iftrue : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_iffalse : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d_uart_mac_h_l161_c5_a0bc_return_output : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_return_output : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l167_c7_487b : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_0549_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_0549_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_0549_return_output : unsigned(4 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l170_c10_07e5_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l170_c10_07e5_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l170_c10_07e5_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_d78e_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l174_c9_138f : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_d78e_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_d78e_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_d78e_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_d78e_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_d78e_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d906_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d906_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d906_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_a92e_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l182_c5_8402 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_a92e_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_a92e_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_a92e_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_7b6f_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_a92e_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_a92e_cond : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_a92e_iftrue : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_a92e_iffalse : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_a92e_return_output : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_a92e_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_7b6f_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_7b6f_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_7b6f_cond : unsigned(0 downto 0);
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
     VAR_state_MUX_uart_mac_h_l135_c5_6a60_iftrue := unsigned(uart_tx_state_t_to_slv(SEND_START));
     VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d906_right := unsigned(uart_tx_state_t_to_slv(SEND_STOP));
     VAR_BIN_OP_GTE_uart_mac_h_l161_c8_777f_right := to_unsigned(215, 8);
     VAR_BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_right := unsigned(uart_tx_state_t_to_slv(SEND_START));
     VAR_clk_counter_uart_mac_h_l152_c7_b95a := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_eb6e_iftrue := VAR_clk_counter_uart_mac_h_l152_c7_b95a;
     VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_0549_right := to_unsigned(1, 1);
     VAR_bit_counter_uart_mac_h_l153_c7_c7af := resize(to_unsigned(0, 1), 4);
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_eb6e_iftrue := VAR_bit_counter_uart_mac_h_l153_c7_c7af;
     VAR_BIN_OP_EQ_uart_mac_h_l170_c10_07e5_right := to_unsigned(8, 4);
     VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_right := to_unsigned(1, 1);
     VAR_BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_right := to_unsigned(216, 8);
     VAR_clk_counter_uart_mac_h_l167_c7_487b := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_d78e_iffalse := VAR_clk_counter_uart_mac_h_l167_c7_487b;
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_iftrue := to_unsigned(1, 1);
     VAR_state_MUX_uart_mac_h_l170_c7_d78e_iftrue := unsigned(uart_tx_state_t_to_slv(SEND_STOP));
     VAR_clk_counter_uart_mac_h_l174_c9_138f := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_d78e_iftrue := VAR_clk_counter_uart_mac_h_l174_c9_138f;
     VAR_BIN_OP_GTE_uart_mac_h_l148_c8_ce73_right := to_unsigned(216, 8);
     VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_right := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_right := to_unsigned(1, 1);
     VAR_state_MUX_uart_mac_h_l183_c5_7b6f_iftrue := unsigned(uart_tx_state_t_to_slv(IDLE));
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_a92e_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_right := unsigned(uart_tx_state_t_to_slv(TRANSMIT));
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_b44d_iftrue := to_unsigned(1, 1);
     VAR_state_MUX_uart_mac_h_l148_c5_eb6e_iftrue := unsigned(uart_tx_state_t_to_slv(TRANSMIT));
     VAR_BIN_OP_EQ_uart_mac_h_l131_c6_af5f_right := unsigned(uart_tx_state_t_to_slv(IDLE));
     VAR_clk_counter_uart_mac_h_l139_c7_735a := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_6a60_iftrue := VAR_clk_counter_uart_mac_h_l139_c7_735a;
     -- o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d[uart_mac_h_l131_c3_b44d] LATENCY=0
     VAR_o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d_uart_mac_h_l131_c3_b44d_return_output := uart_tx_1b_t_NULL.output_wire;

     -- o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d[uart_mac_h_l161_c5_a0bc] LATENCY=0
     VAR_o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d_uart_mac_h_l161_c5_a0bc_return_output := uart_tx_1b_t_NULL.ready_for_bit_stream;

     -- o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0[uart_mac_h_l143_c3_3fcf] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l143_c3_3fcf_return_output := CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0(
     uart_tx_1b_t_NULL,
     to_unsigned(0, 1));

     -- Submodule level 1
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_iffalse := VAR_o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d_uart_mac_h_l161_c5_a0bc_return_output;
     VAR_o_MUX_uart_mac_h_l143_c3_3fcf_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l143_c3_3fcf_return_output;
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_b44d_iffalse := VAR_o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d_uart_mac_h_l131_c3_b44d_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;
     -- Mux in inputs
     VAR_bit_stream := bit_stream;

     -- Submodule level 0
     VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_0549_left := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_eb6e_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_83ed_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_a0bc_iffalse := bit_counter;
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_b44d_iffalse := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_6a60_iffalse := clk_counter;
     VAR_BIN_OP_EQ_uart_mac_h_l131_c6_af5f_left := state;
     VAR_state_MUX_uart_mac_h_l131_c3_b44d_iffalse := state;
     VAR_state_MUX_uart_mac_h_l135_c5_6a60_iffalse := state;
     -- CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d[uart_mac_h_l135_c8_53d2] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_53d2_return_output := VAR_bit_stream.valid;

     -- CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d[uart_mac_h_l159_c21_14b9] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d_uart_mac_h_l159_c21_14b9_return_output := VAR_bit_stream.data;

     -- BIN_OP_EQ[uart_mac_h_l131_c6_af5f] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l131_c6_af5f_left <= VAR_BIN_OP_EQ_uart_mac_h_l131_c6_af5f_left;
     BIN_OP_EQ_uart_mac_h_l131_c6_af5f_right <= VAR_BIN_OP_EQ_uart_mac_h_l131_c6_af5f_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l131_c6_af5f_return_output := BIN_OP_EQ_uart_mac_h_l131_c6_af5f_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l168_c7_0549] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l168_c7_0549_left <= VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_0549_left;
     BIN_OP_PLUS_uart_mac_h_l168_c7_0549_right <= VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_0549_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_0549_return_output := BIN_OP_PLUS_uart_mac_h_l168_c7_0549_return_output;

     -- Submodule level 1
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_b44d_cond := VAR_BIN_OP_EQ_uart_mac_h_l131_c6_af5f_return_output;
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_b44d_cond := VAR_BIN_OP_EQ_uart_mac_h_l131_c6_af5f_return_output;
     VAR_state_MUX_uart_mac_h_l131_c3_b44d_cond := VAR_BIN_OP_EQ_uart_mac_h_l131_c6_af5f_return_output;
     VAR_bit_counter_uart_mac_h_l168_c7_f997 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_0549_return_output, 4);
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_6a60_cond := VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_53d2_return_output;
     VAR_state_MUX_uart_mac_h_l135_c5_6a60_cond := VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_53d2_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l170_c10_07e5_left := VAR_bit_counter_uart_mac_h_l168_c7_f997;
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_a0bc_iftrue := VAR_bit_counter_uart_mac_h_l168_c7_f997;
     -- clk_counter_MUX[uart_mac_h_l135_c5_6a60] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l135_c5_6a60_cond <= VAR_clk_counter_MUX_uart_mac_h_l135_c5_6a60_cond;
     clk_counter_MUX_uart_mac_h_l135_c5_6a60_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l135_c5_6a60_iftrue;
     clk_counter_MUX_uart_mac_h_l135_c5_6a60_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l135_c5_6a60_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_6a60_return_output := clk_counter_MUX_uart_mac_h_l135_c5_6a60_return_output;

     -- o_output_wire_MUX[uart_mac_h_l131_c3_b44d] LATENCY=0
     -- Inputs
     o_output_wire_MUX_uart_mac_h_l131_c3_b44d_cond <= VAR_o_output_wire_MUX_uart_mac_h_l131_c3_b44d_cond;
     o_output_wire_MUX_uart_mac_h_l131_c3_b44d_iftrue <= VAR_o_output_wire_MUX_uart_mac_h_l131_c3_b44d_iftrue;
     o_output_wire_MUX_uart_mac_h_l131_c3_b44d_iffalse <= VAR_o_output_wire_MUX_uart_mac_h_l131_c3_b44d_iffalse;
     -- Outputs
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_b44d_return_output := o_output_wire_MUX_uart_mac_h_l131_c3_b44d_return_output;

     -- state_MUX[uart_mac_h_l135_c5_6a60] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l135_c5_6a60_cond <= VAR_state_MUX_uart_mac_h_l135_c5_6a60_cond;
     state_MUX_uart_mac_h_l135_c5_6a60_iftrue <= VAR_state_MUX_uart_mac_h_l135_c5_6a60_iftrue;
     state_MUX_uart_mac_h_l135_c5_6a60_iffalse <= VAR_state_MUX_uart_mac_h_l135_c5_6a60_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l135_c5_6a60_return_output := state_MUX_uart_mac_h_l135_c5_6a60_return_output;

     -- BIN_OP_EQ[uart_mac_h_l170_c10_07e5] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l170_c10_07e5_left <= VAR_BIN_OP_EQ_uart_mac_h_l170_c10_07e5_left;
     BIN_OP_EQ_uart_mac_h_l170_c10_07e5_right <= VAR_BIN_OP_EQ_uart_mac_h_l170_c10_07e5_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l170_c10_07e5_return_output := BIN_OP_EQ_uart_mac_h_l170_c10_07e5_return_output;

     -- Submodule level 2
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_d78e_cond := VAR_BIN_OP_EQ_uart_mac_h_l170_c10_07e5_return_output;
     VAR_state_MUX_uart_mac_h_l170_c7_d78e_cond := VAR_BIN_OP_EQ_uart_mac_h_l170_c10_07e5_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_b44d_iftrue := VAR_clk_counter_MUX_uart_mac_h_l135_c5_6a60_return_output;
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_a92e_iffalse := VAR_o_output_wire_MUX_uart_mac_h_l131_c3_b44d_return_output;
     VAR_state_MUX_uart_mac_h_l131_c3_b44d_iftrue := VAR_state_MUX_uart_mac_h_l135_c5_6a60_return_output;
     -- clk_counter_MUX[uart_mac_h_l131_c3_b44d] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l131_c3_b44d_cond <= VAR_clk_counter_MUX_uart_mac_h_l131_c3_b44d_cond;
     clk_counter_MUX_uart_mac_h_l131_c3_b44d_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l131_c3_b44d_iftrue;
     clk_counter_MUX_uart_mac_h_l131_c3_b44d_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l131_c3_b44d_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_b44d_return_output := clk_counter_MUX_uart_mac_h_l131_c3_b44d_return_output;

     -- clk_counter_MUX[uart_mac_h_l170_c7_d78e] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l170_c7_d78e_cond <= VAR_clk_counter_MUX_uart_mac_h_l170_c7_d78e_cond;
     clk_counter_MUX_uart_mac_h_l170_c7_d78e_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l170_c7_d78e_iftrue;
     clk_counter_MUX_uart_mac_h_l170_c7_d78e_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l170_c7_d78e_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_d78e_return_output := clk_counter_MUX_uart_mac_h_l170_c7_d78e_return_output;

     -- state_MUX[uart_mac_h_l131_c3_b44d] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l131_c3_b44d_cond <= VAR_state_MUX_uart_mac_h_l131_c3_b44d_cond;
     state_MUX_uart_mac_h_l131_c3_b44d_iftrue <= VAR_state_MUX_uart_mac_h_l131_c3_b44d_iftrue;
     state_MUX_uart_mac_h_l131_c3_b44d_iffalse <= VAR_state_MUX_uart_mac_h_l131_c3_b44d_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l131_c3_b44d_return_output := state_MUX_uart_mac_h_l131_c3_b44d_return_output;

     -- Submodule level 3
     VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_left := VAR_clk_counter_MUX_uart_mac_h_l131_c3_b44d_return_output;
     VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_left := VAR_clk_counter_MUX_uart_mac_h_l131_c3_b44d_return_output;
     VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_left := VAR_clk_counter_MUX_uart_mac_h_l131_c3_b44d_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_a92e_iffalse := VAR_clk_counter_MUX_uart_mac_h_l131_c3_b44d_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_a0bc_iftrue := VAR_clk_counter_MUX_uart_mac_h_l170_c7_d78e_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_left := VAR_state_MUX_uart_mac_h_l131_c3_b44d_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_left := VAR_state_MUX_uart_mac_h_l131_c3_b44d_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d906_left := VAR_state_MUX_uart_mac_h_l131_c3_b44d_return_output;
     VAR_state_MUX_uart_mac_h_l148_c5_eb6e_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_b44d_return_output;
     VAR_state_MUX_uart_mac_h_l161_c5_a0bc_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_b44d_return_output;
     VAR_state_MUX_uart_mac_h_l170_c7_d78e_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_b44d_return_output;
     VAR_state_MUX_uart_mac_h_l178_c8_a92e_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_b44d_return_output;
     VAR_state_MUX_uart_mac_h_l183_c5_7b6f_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_b44d_return_output;
     -- BIN_OP_EQ[uart_mac_h_l178_c11_d906] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l178_c11_d906_left <= VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d906_left;
     BIN_OP_EQ_uart_mac_h_l178_c11_d906_right <= VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d906_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d906_return_output := BIN_OP_EQ_uart_mac_h_l178_c11_d906_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l147_c5_69c1] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_left <= VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_left;
     BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_right <= VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_return_output := BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l160_c5_2d87] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_left <= VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_left;
     BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_right <= VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_return_output := BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_return_output;

     -- BIN_OP_EQ[uart_mac_h_l156_c11_4ed0] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_left <= VAR_BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_left;
     BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_right <= VAR_BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_return_output := BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l182_c5_8e82] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_left <= VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_left;
     BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_right <= VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_return_output := BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_return_output;

     -- state_MUX[uart_mac_h_l170_c7_d78e] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l170_c7_d78e_cond <= VAR_state_MUX_uart_mac_h_l170_c7_d78e_cond;
     state_MUX_uart_mac_h_l170_c7_d78e_iftrue <= VAR_state_MUX_uart_mac_h_l170_c7_d78e_iftrue;
     state_MUX_uart_mac_h_l170_c7_d78e_iffalse <= VAR_state_MUX_uart_mac_h_l170_c7_d78e_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l170_c7_d78e_return_output := state_MUX_uart_mac_h_l170_c7_d78e_return_output;

     -- BIN_OP_EQ[uart_mac_h_l143_c6_a5c0] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_left <= VAR_BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_left;
     BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_right <= VAR_BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_return_output := BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_return_output;

     -- Submodule level 4
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_3fcf_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_3fcf_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_return_output;
     VAR_o_MUX_uart_mac_h_l143_c3_3fcf_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_return_output;
     VAR_state_MUX_uart_mac_h_l143_c3_3fcf_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_a5c0_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_83ed_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_83ed_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_return_output;
     VAR_o_MUX_uart_mac_h_l156_c8_83ed_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_return_output;
     VAR_state_MUX_uart_mac_h_l156_c8_83ed_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_4ed0_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_a92e_cond := VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d906_return_output;
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_a92e_cond := VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d906_return_output;
     VAR_state_MUX_uart_mac_h_l178_c8_a92e_cond := VAR_BIN_OP_EQ_uart_mac_h_l178_c11_d906_return_output;
     VAR_clk_counter_uart_mac_h_l147_c5_01c1 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_69c1_return_output, 16);
     VAR_clk_counter_uart_mac_h_l160_c5_fae8 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_2d87_return_output, 16);
     VAR_clk_counter_uart_mac_h_l182_c5_8402 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8e82_return_output, 16);
     VAR_state_MUX_uart_mac_h_l161_c5_a0bc_iftrue := VAR_state_MUX_uart_mac_h_l170_c7_d78e_return_output;
     VAR_BIN_OP_GTE_uart_mac_h_l148_c8_ce73_left := VAR_clk_counter_uart_mac_h_l147_c5_01c1;
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_eb6e_iffalse := VAR_clk_counter_uart_mac_h_l147_c5_01c1;
     VAR_BIN_OP_GTE_uart_mac_h_l161_c8_777f_left := VAR_clk_counter_uart_mac_h_l160_c5_fae8;
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_a0bc_iffalse := VAR_clk_counter_uart_mac_h_l160_c5_fae8;
     VAR_BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_left := VAR_clk_counter_uart_mac_h_l182_c5_8402;
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_a92e_iftrue := VAR_clk_counter_uart_mac_h_l182_c5_8402;
     -- BIN_OP_GTE[uart_mac_h_l161_c8_777f] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l161_c8_777f_left <= VAR_BIN_OP_GTE_uart_mac_h_l161_c8_777f_left;
     BIN_OP_GTE_uart_mac_h_l161_c8_777f_right <= VAR_BIN_OP_GTE_uart_mac_h_l161_c8_777f_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l161_c8_777f_return_output := BIN_OP_GTE_uart_mac_h_l161_c8_777f_return_output;

     -- BIN_OP_GTE[uart_mac_h_l183_c8_4a7b] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_left <= VAR_BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_left;
     BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_right <= VAR_BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_return_output := BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_return_output;

     -- BIN_OP_GTE[uart_mac_h_l148_c8_ce73] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l148_c8_ce73_left <= VAR_BIN_OP_GTE_uart_mac_h_l148_c8_ce73_left;
     BIN_OP_GTE_uart_mac_h_l148_c8_ce73_right <= VAR_BIN_OP_GTE_uart_mac_h_l148_c8_ce73_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l148_c8_ce73_return_output := BIN_OP_GTE_uart_mac_h_l148_c8_ce73_return_output;

     -- clk_counter_MUX[uart_mac_h_l178_c8_a92e] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l178_c8_a92e_cond <= VAR_clk_counter_MUX_uart_mac_h_l178_c8_a92e_cond;
     clk_counter_MUX_uart_mac_h_l178_c8_a92e_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l178_c8_a92e_iftrue;
     clk_counter_MUX_uart_mac_h_l178_c8_a92e_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l178_c8_a92e_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_a92e_return_output := clk_counter_MUX_uart_mac_h_l178_c8_a92e_return_output;

     -- o_output_wire_MUX[uart_mac_h_l178_c8_a92e] LATENCY=0
     -- Inputs
     o_output_wire_MUX_uart_mac_h_l178_c8_a92e_cond <= VAR_o_output_wire_MUX_uart_mac_h_l178_c8_a92e_cond;
     o_output_wire_MUX_uart_mac_h_l178_c8_a92e_iftrue <= VAR_o_output_wire_MUX_uart_mac_h_l178_c8_a92e_iftrue;
     o_output_wire_MUX_uart_mac_h_l178_c8_a92e_iffalse <= VAR_o_output_wire_MUX_uart_mac_h_l178_c8_a92e_iffalse;
     -- Outputs
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_a92e_return_output := o_output_wire_MUX_uart_mac_h_l178_c8_a92e_return_output;

     -- Submodule level 5
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_eb6e_cond := VAR_BIN_OP_GTE_uart_mac_h_l148_c8_ce73_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_eb6e_cond := VAR_BIN_OP_GTE_uart_mac_h_l148_c8_ce73_return_output;
     VAR_state_MUX_uart_mac_h_l148_c5_eb6e_cond := VAR_BIN_OP_GTE_uart_mac_h_l148_c8_ce73_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_a0bc_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_777f_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_a0bc_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_777f_return_output;
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_777f_return_output;
     VAR_state_MUX_uart_mac_h_l161_c5_a0bc_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_777f_return_output;
     VAR_state_MUX_uart_mac_h_l183_c5_7b6f_cond := VAR_BIN_OP_GTE_uart_mac_h_l183_c8_4a7b_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_83ed_iffalse := VAR_clk_counter_MUX_uart_mac_h_l178_c8_a92e_return_output;
     -- state_MUX[uart_mac_h_l161_c5_a0bc] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l161_c5_a0bc_cond <= VAR_state_MUX_uart_mac_h_l161_c5_a0bc_cond;
     state_MUX_uart_mac_h_l161_c5_a0bc_iftrue <= VAR_state_MUX_uart_mac_h_l161_c5_a0bc_iftrue;
     state_MUX_uart_mac_h_l161_c5_a0bc_iffalse <= VAR_state_MUX_uart_mac_h_l161_c5_a0bc_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l161_c5_a0bc_return_output := state_MUX_uart_mac_h_l161_c5_a0bc_return_output;

     -- clk_counter_MUX[uart_mac_h_l161_c5_a0bc] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l161_c5_a0bc_cond <= VAR_clk_counter_MUX_uart_mac_h_l161_c5_a0bc_cond;
     clk_counter_MUX_uart_mac_h_l161_c5_a0bc_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l161_c5_a0bc_iftrue;
     clk_counter_MUX_uart_mac_h_l161_c5_a0bc_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l161_c5_a0bc_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_a0bc_return_output := clk_counter_MUX_uart_mac_h_l161_c5_a0bc_return_output;

     -- state_MUX[uart_mac_h_l183_c5_7b6f] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l183_c5_7b6f_cond <= VAR_state_MUX_uart_mac_h_l183_c5_7b6f_cond;
     state_MUX_uart_mac_h_l183_c5_7b6f_iftrue <= VAR_state_MUX_uart_mac_h_l183_c5_7b6f_iftrue;
     state_MUX_uart_mac_h_l183_c5_7b6f_iffalse <= VAR_state_MUX_uart_mac_h_l183_c5_7b6f_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l183_c5_7b6f_return_output := state_MUX_uart_mac_h_l183_c5_7b6f_return_output;

     -- bit_counter_MUX[uart_mac_h_l148_c5_eb6e] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l148_c5_eb6e_cond <= VAR_bit_counter_MUX_uart_mac_h_l148_c5_eb6e_cond;
     bit_counter_MUX_uart_mac_h_l148_c5_eb6e_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l148_c5_eb6e_iftrue;
     bit_counter_MUX_uart_mac_h_l148_c5_eb6e_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l148_c5_eb6e_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_eb6e_return_output := bit_counter_MUX_uart_mac_h_l148_c5_eb6e_return_output;

     -- state_MUX[uart_mac_h_l148_c5_eb6e] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l148_c5_eb6e_cond <= VAR_state_MUX_uart_mac_h_l148_c5_eb6e_cond;
     state_MUX_uart_mac_h_l148_c5_eb6e_iftrue <= VAR_state_MUX_uart_mac_h_l148_c5_eb6e_iftrue;
     state_MUX_uart_mac_h_l148_c5_eb6e_iffalse <= VAR_state_MUX_uart_mac_h_l148_c5_eb6e_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l148_c5_eb6e_return_output := state_MUX_uart_mac_h_l148_c5_eb6e_return_output;

     -- clk_counter_MUX[uart_mac_h_l148_c5_eb6e] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l148_c5_eb6e_cond <= VAR_clk_counter_MUX_uart_mac_h_l148_c5_eb6e_cond;
     clk_counter_MUX_uart_mac_h_l148_c5_eb6e_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l148_c5_eb6e_iftrue;
     clk_counter_MUX_uart_mac_h_l148_c5_eb6e_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l148_c5_eb6e_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_eb6e_return_output := clk_counter_MUX_uart_mac_h_l148_c5_eb6e_return_output;

     -- bit_counter_MUX[uart_mac_h_l161_c5_a0bc] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l161_c5_a0bc_cond <= VAR_bit_counter_MUX_uart_mac_h_l161_c5_a0bc_cond;
     bit_counter_MUX_uart_mac_h_l161_c5_a0bc_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l161_c5_a0bc_iftrue;
     bit_counter_MUX_uart_mac_h_l161_c5_a0bc_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l161_c5_a0bc_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_a0bc_return_output := bit_counter_MUX_uart_mac_h_l161_c5_a0bc_return_output;

     -- o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0[uart_mac_h_l156_c8_83ed] LATENCY=0
     VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l156_c8_83ed_return_output := CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0(
     uart_tx_1b_t_NULL,
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_a92e_return_output);

     -- o_ready_for_bit_stream_MUX[uart_mac_h_l161_c5_a0bc] LATENCY=0
     -- Inputs
     o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_cond <= VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_cond;
     o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_iftrue <= VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_iftrue;
     o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_iffalse <= VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_iffalse;
     -- Outputs
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_return_output := o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_return_output;

     -- Submodule level 6
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_3fcf_iftrue := VAR_bit_counter_MUX_uart_mac_h_l148_c5_eb6e_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_83ed_iftrue := VAR_bit_counter_MUX_uart_mac_h_l161_c5_a0bc_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_3fcf_iftrue := VAR_clk_counter_MUX_uart_mac_h_l148_c5_eb6e_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_83ed_iftrue := VAR_clk_counter_MUX_uart_mac_h_l161_c5_a0bc_return_output;
     VAR_o_MUX_uart_mac_h_l156_c8_83ed_iffalse := VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l156_c8_83ed_return_output;
     VAR_state_MUX_uart_mac_h_l143_c3_3fcf_iftrue := VAR_state_MUX_uart_mac_h_l148_c5_eb6e_return_output;
     VAR_state_MUX_uart_mac_h_l156_c8_83ed_iftrue := VAR_state_MUX_uart_mac_h_l161_c5_a0bc_return_output;
     VAR_state_MUX_uart_mac_h_l178_c8_a92e_iftrue := VAR_state_MUX_uart_mac_h_l183_c5_7b6f_return_output;
     -- state_MUX[uart_mac_h_l178_c8_a92e] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l178_c8_a92e_cond <= VAR_state_MUX_uart_mac_h_l178_c8_a92e_cond;
     state_MUX_uart_mac_h_l178_c8_a92e_iftrue <= VAR_state_MUX_uart_mac_h_l178_c8_a92e_iftrue;
     state_MUX_uart_mac_h_l178_c8_a92e_iffalse <= VAR_state_MUX_uart_mac_h_l178_c8_a92e_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l178_c8_a92e_return_output := state_MUX_uart_mac_h_l178_c8_a92e_return_output;

     -- clk_counter_MUX[uart_mac_h_l156_c8_83ed] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l156_c8_83ed_cond <= VAR_clk_counter_MUX_uart_mac_h_l156_c8_83ed_cond;
     clk_counter_MUX_uart_mac_h_l156_c8_83ed_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l156_c8_83ed_iftrue;
     clk_counter_MUX_uart_mac_h_l156_c8_83ed_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l156_c8_83ed_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_83ed_return_output := clk_counter_MUX_uart_mac_h_l156_c8_83ed_return_output;

     -- bit_counter_MUX[uart_mac_h_l156_c8_83ed] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l156_c8_83ed_cond <= VAR_bit_counter_MUX_uart_mac_h_l156_c8_83ed_cond;
     bit_counter_MUX_uart_mac_h_l156_c8_83ed_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l156_c8_83ed_iftrue;
     bit_counter_MUX_uart_mac_h_l156_c8_83ed_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l156_c8_83ed_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_83ed_return_output := bit_counter_MUX_uart_mac_h_l156_c8_83ed_return_output;

     -- o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877[uart_mac_h_l156_c8_83ed] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877_uart_mac_h_l156_c8_83ed_return_output := CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877(
     VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d_uart_mac_h_l159_c21_14b9_return_output,
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_a0bc_return_output);

     -- Submodule level 7
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_3fcf_iffalse := VAR_bit_counter_MUX_uart_mac_h_l156_c8_83ed_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_3fcf_iffalse := VAR_clk_counter_MUX_uart_mac_h_l156_c8_83ed_return_output;
     VAR_o_MUX_uart_mac_h_l156_c8_83ed_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877_uart_mac_h_l156_c8_83ed_return_output;
     VAR_state_MUX_uart_mac_h_l156_c8_83ed_iffalse := VAR_state_MUX_uart_mac_h_l178_c8_a92e_return_output;
     -- o_MUX[uart_mac_h_l156_c8_83ed] LATENCY=0
     -- Inputs
     o_MUX_uart_mac_h_l156_c8_83ed_cond <= VAR_o_MUX_uart_mac_h_l156_c8_83ed_cond;
     o_MUX_uart_mac_h_l156_c8_83ed_iftrue <= VAR_o_MUX_uart_mac_h_l156_c8_83ed_iftrue;
     o_MUX_uart_mac_h_l156_c8_83ed_iffalse <= VAR_o_MUX_uart_mac_h_l156_c8_83ed_iffalse;
     -- Outputs
     VAR_o_MUX_uart_mac_h_l156_c8_83ed_return_output := o_MUX_uart_mac_h_l156_c8_83ed_return_output;

     -- state_MUX[uart_mac_h_l156_c8_83ed] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l156_c8_83ed_cond <= VAR_state_MUX_uart_mac_h_l156_c8_83ed_cond;
     state_MUX_uart_mac_h_l156_c8_83ed_iftrue <= VAR_state_MUX_uart_mac_h_l156_c8_83ed_iftrue;
     state_MUX_uart_mac_h_l156_c8_83ed_iffalse <= VAR_state_MUX_uart_mac_h_l156_c8_83ed_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l156_c8_83ed_return_output := state_MUX_uart_mac_h_l156_c8_83ed_return_output;

     -- clk_counter_MUX[uart_mac_h_l143_c3_3fcf] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l143_c3_3fcf_cond <= VAR_clk_counter_MUX_uart_mac_h_l143_c3_3fcf_cond;
     clk_counter_MUX_uart_mac_h_l143_c3_3fcf_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l143_c3_3fcf_iftrue;
     clk_counter_MUX_uart_mac_h_l143_c3_3fcf_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l143_c3_3fcf_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_3fcf_return_output := clk_counter_MUX_uart_mac_h_l143_c3_3fcf_return_output;

     -- bit_counter_MUX[uart_mac_h_l143_c3_3fcf] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l143_c3_3fcf_cond <= VAR_bit_counter_MUX_uart_mac_h_l143_c3_3fcf_cond;
     bit_counter_MUX_uart_mac_h_l143_c3_3fcf_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l143_c3_3fcf_iftrue;
     bit_counter_MUX_uart_mac_h_l143_c3_3fcf_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l143_c3_3fcf_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_3fcf_return_output := bit_counter_MUX_uart_mac_h_l143_c3_3fcf_return_output;

     -- Submodule level 8
     REG_VAR_bit_counter := VAR_bit_counter_MUX_uart_mac_h_l143_c3_3fcf_return_output;
     REG_VAR_clk_counter := VAR_clk_counter_MUX_uart_mac_h_l143_c3_3fcf_return_output;
     VAR_o_MUX_uart_mac_h_l143_c3_3fcf_iffalse := VAR_o_MUX_uart_mac_h_l156_c8_83ed_return_output;
     VAR_state_MUX_uart_mac_h_l143_c3_3fcf_iffalse := VAR_state_MUX_uart_mac_h_l156_c8_83ed_return_output;
     -- o_MUX[uart_mac_h_l143_c3_3fcf] LATENCY=0
     -- Inputs
     o_MUX_uart_mac_h_l143_c3_3fcf_cond <= VAR_o_MUX_uart_mac_h_l143_c3_3fcf_cond;
     o_MUX_uart_mac_h_l143_c3_3fcf_iftrue <= VAR_o_MUX_uart_mac_h_l143_c3_3fcf_iftrue;
     o_MUX_uart_mac_h_l143_c3_3fcf_iffalse <= VAR_o_MUX_uart_mac_h_l143_c3_3fcf_iffalse;
     -- Outputs
     VAR_o_MUX_uart_mac_h_l143_c3_3fcf_return_output := o_MUX_uart_mac_h_l143_c3_3fcf_return_output;

     -- state_MUX[uart_mac_h_l143_c3_3fcf] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l143_c3_3fcf_cond <= VAR_state_MUX_uart_mac_h_l143_c3_3fcf_cond;
     state_MUX_uart_mac_h_l143_c3_3fcf_iftrue <= VAR_state_MUX_uart_mac_h_l143_c3_3fcf_iftrue;
     state_MUX_uart_mac_h_l143_c3_3fcf_iffalse <= VAR_state_MUX_uart_mac_h_l143_c3_3fcf_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l143_c3_3fcf_return_output := state_MUX_uart_mac_h_l143_c3_3fcf_return_output;

     -- Submodule level 9
     VAR_return_output := VAR_o_MUX_uart_mac_h_l143_c3_3fcf_return_output;
     REG_VAR_state := VAR_state_MUX_uart_mac_h_l143_c3_3fcf_return_output;
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
