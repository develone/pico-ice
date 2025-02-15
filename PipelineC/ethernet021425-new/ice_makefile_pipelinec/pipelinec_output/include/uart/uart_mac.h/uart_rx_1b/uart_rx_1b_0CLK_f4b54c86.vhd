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
-- Submodules: 40
entity uart_rx_1b_0CLK_f4b54c86 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 input_wire : in unsigned(0 downto 0);
 ready_for_bit_stream : in unsigned(0 downto 0);
 return_output : out uart_rx_1b_t);
end uart_rx_1b_0CLK_f4b54c86;
architecture arch of uart_rx_1b_0CLK_f4b54c86 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal state : unsigned(1 downto 0) := unsigned(uart_rx_state_t_to_slv(uart_rx_state_t'left));
signal clk_counter : unsigned(15 downto 0) := to_unsigned(0, 16);
signal bit_counter : unsigned(3 downto 0) := to_unsigned(0, 4);
signal REG_COMB_state : unsigned(1 downto 0);
signal REG_COMB_clk_counter : unsigned(15 downto 0);
signal REG_COMB_bit_counter : unsigned(3 downto 0);

-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- BIN_OP_EQ[uart_mac_h_l55_c6_8e7a]
signal BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_h_l55_c3_473d]
signal bit_counter_MUX_uart_mac_h_l55_c3_473d_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l55_c3_473d_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l55_c3_473d_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l55_c3_473d_return_output : unsigned(3 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l55_c3_473d]
signal o_bit_stream_MUX_uart_mac_h_l55_c3_473d_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l55_c3_473d_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l55_c3_473d_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l55_c3_473d_return_output : uint1_t_stream_t;

-- clk_counter_MUX[uart_mac_h_l55_c3_473d]
signal clk_counter_MUX_uart_mac_h_l55_c3_473d_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l55_c3_473d_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l55_c3_473d_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l55_c3_473d_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l55_c3_473d]
signal state_MUX_uart_mac_h_l55_c3_473d_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l55_c3_473d_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l55_c3_473d_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l55_c3_473d_return_output : unsigned(1 downto 0);

-- clk_counter_MUX[uart_mac_h_l58_c5_7c1c]
signal clk_counter_MUX_uart_mac_h_l58_c5_7c1c_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l58_c5_7c1c_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l58_c5_7c1c_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l58_c5_7c1c_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l58_c5_7c1c]
signal state_MUX_uart_mac_h_l58_c5_7c1c_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l58_c5_7c1c_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l58_c5_7c1c_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l58_c5_7c1c_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l65_c11_23d9]
signal BIN_OP_EQ_uart_mac_h_l65_c11_23d9_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l65_c11_23d9_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l65_c11_23d9_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_h_l65_c8_dd0b]
signal bit_counter_MUX_uart_mac_h_l65_c8_dd0b_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l65_c8_dd0b_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l65_c8_dd0b_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l65_c8_dd0b_return_output : unsigned(3 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l65_c8_dd0b]
signal o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_return_output : uint1_t_stream_t;

-- clk_counter_MUX[uart_mac_h_l65_c8_dd0b]
signal clk_counter_MUX_uart_mac_h_l65_c8_dd0b_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l65_c8_dd0b_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l65_c8_dd0b_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l65_c8_dd0b_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l65_c8_dd0b]
signal state_MUX_uart_mac_h_l65_c8_dd0b_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l65_c8_dd0b_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l65_c8_dd0b_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l65_c8_dd0b_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l68_c8_6ab0]
signal BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_left : unsigned(0 downto 0);
signal BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_right : unsigned(0 downto 0);
signal BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_h_l68_c5_2b49]
signal bit_counter_MUX_uart_mac_h_l68_c5_2b49_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l68_c5_2b49_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l68_c5_2b49_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l68_c5_2b49_return_output : unsigned(3 downto 0);

-- clk_counter_MUX[uart_mac_h_l68_c5_2b49]
signal clk_counter_MUX_uart_mac_h_l68_c5_2b49_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l68_c5_2b49_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l68_c5_2b49_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l68_c5_2b49_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l68_c5_2b49]
signal state_MUX_uart_mac_h_l68_c5_2b49_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l68_c5_2b49_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l68_c5_2b49_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l68_c5_2b49_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l71_c7_cd58]
signal BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l72_c10_33e5]
signal BIN_OP_GTE_uart_mac_h_l72_c10_33e5_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l72_c10_33e5_right : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l72_c10_33e5_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_h_l72_c7_362a]
signal bit_counter_MUX_uart_mac_h_l72_c7_362a_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l72_c7_362a_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l72_c7_362a_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l72_c7_362a_return_output : unsigned(3 downto 0);

-- clk_counter_MUX[uart_mac_h_l72_c7_362a]
signal clk_counter_MUX_uart_mac_h_l72_c7_362a_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l72_c7_362a_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l72_c7_362a_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l72_c7_362a_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l72_c7_362a]
signal state_MUX_uart_mac_h_l72_c7_362a_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l72_c7_362a_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l72_c7_362a_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l72_c7_362a_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l81_c11_c036]
signal BIN_OP_EQ_uart_mac_h_l81_c11_c036_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l81_c11_c036_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l81_c11_c036_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_h_l81_c8_d23d]
signal bit_counter_MUX_uart_mac_h_l81_c8_d23d_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l81_c8_d23d_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l81_c8_d23d_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l81_c8_d23d_return_output : unsigned(3 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l81_c8_d23d]
signal o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_return_output : uint1_t_stream_t;

-- clk_counter_MUX[uart_mac_h_l81_c8_d23d]
signal clk_counter_MUX_uart_mac_h_l81_c8_d23d_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l81_c8_d23d_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l81_c8_d23d_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l81_c8_d23d_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l81_c8_d23d]
signal state_MUX_uart_mac_h_l81_c8_d23d_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l81_c8_d23d_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l81_c8_d23d_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l81_c8_d23d_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l84_c5_b6a4]
signal BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l85_c8_197e]
signal BIN_OP_GTE_uart_mac_h_l85_c8_197e_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l85_c8_197e_right : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l85_c8_197e_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_h_l85_c5_95ff]
signal bit_counter_MUX_uart_mac_h_l85_c5_95ff_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l85_c5_95ff_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l85_c5_95ff_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l85_c5_95ff_return_output : unsigned(3 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l85_c5_95ff]
signal o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_return_output : uint1_t_stream_t;

-- clk_counter_MUX[uart_mac_h_l85_c5_95ff]
signal clk_counter_MUX_uart_mac_h_l85_c5_95ff_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l85_c5_95ff_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l85_c5_95ff_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l85_c5_95ff_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l85_c5_95ff]
signal state_MUX_uart_mac_h_l85_c5_95ff_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l85_c5_95ff_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l85_c5_95ff_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l85_c5_95ff_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l93_c7_f9d8]
signal BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_left : unsigned(3 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_return_output : unsigned(4 downto 0);

-- BIN_OP_EQ[uart_mac_h_l96_c10_04c5]
signal BIN_OP_EQ_uart_mac_h_l96_c10_04c5_left : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l96_c10_04c5_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l96_c10_04c5_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l96_c7_8de2]
signal state_MUX_uart_mac_h_l96_c7_8de2_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l96_c7_8de2_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l96_c7_8de2_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l96_c7_8de2_return_output : unsigned(1 downto 0);

-- UNARY_OP_NOT[uart_mac_h_l103_c38_ad9f]
signal UNARY_OP_NOT_uart_mac_h_l103_c38_ad9f_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_uart_mac_h_l103_c38_ad9f_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[uart_mac_h_l103_c16_7ed0]
signal BIN_OP_AND_uart_mac_h_l103_c16_7ed0_left : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l103_c16_7ed0_right : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l103_c16_7ed0_return_output : unsigned(0 downto 0);

function CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned) return uint1_t_stream_t is
 
  variable base : uart_rx_1b_t; 
  variable return_output : uint1_t_stream_t;
begin
      base.bit_stream.data := ref_toks_0;
      base.bit_stream.valid := ref_toks_1;

      return_output := base.bit_stream;
      return return_output; 
end function;

function CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690( ref_toks_0 : uint1_t_stream_t) return unsigned is
 
  variable base : uart_rx_1b_t; 
  variable return_output : unsigned(0 downto 0);
begin
      base.bit_stream := ref_toks_0;

      return_output := base.bit_stream.valid;
      return return_output; 
end function;

function CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe( ref_toks_0 : uint1_t_stream_t;
 ref_toks_1 : unsigned) return uart_rx_1b_t is
 
  variable base : uart_rx_1b_t; 
  variable return_output : uart_rx_1b_t;
begin
      base.bit_stream := ref_toks_0;
      base.overflow := ref_toks_1;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_uart_mac_h_l55_c6_8e7a : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l55_c6_8e7a : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_left,
BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_right,
BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_return_output);

-- bit_counter_MUX_uart_mac_h_l55_c3_473d : 0 clocks latency
bit_counter_MUX_uart_mac_h_l55_c3_473d : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l55_c3_473d_cond,
bit_counter_MUX_uart_mac_h_l55_c3_473d_iftrue,
bit_counter_MUX_uart_mac_h_l55_c3_473d_iffalse,
bit_counter_MUX_uart_mac_h_l55_c3_473d_return_output);

-- o_bit_stream_MUX_uart_mac_h_l55_c3_473d : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l55_c3_473d : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l55_c3_473d_cond,
o_bit_stream_MUX_uart_mac_h_l55_c3_473d_iftrue,
o_bit_stream_MUX_uart_mac_h_l55_c3_473d_iffalse,
o_bit_stream_MUX_uart_mac_h_l55_c3_473d_return_output);

-- clk_counter_MUX_uart_mac_h_l55_c3_473d : 0 clocks latency
clk_counter_MUX_uart_mac_h_l55_c3_473d : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l55_c3_473d_cond,
clk_counter_MUX_uart_mac_h_l55_c3_473d_iftrue,
clk_counter_MUX_uart_mac_h_l55_c3_473d_iffalse,
clk_counter_MUX_uart_mac_h_l55_c3_473d_return_output);

-- state_MUX_uart_mac_h_l55_c3_473d : 0 clocks latency
state_MUX_uart_mac_h_l55_c3_473d : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l55_c3_473d_cond,
state_MUX_uart_mac_h_l55_c3_473d_iftrue,
state_MUX_uart_mac_h_l55_c3_473d_iffalse,
state_MUX_uart_mac_h_l55_c3_473d_return_output);

-- clk_counter_MUX_uart_mac_h_l58_c5_7c1c : 0 clocks latency
clk_counter_MUX_uart_mac_h_l58_c5_7c1c : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l58_c5_7c1c_cond,
clk_counter_MUX_uart_mac_h_l58_c5_7c1c_iftrue,
clk_counter_MUX_uart_mac_h_l58_c5_7c1c_iffalse,
clk_counter_MUX_uart_mac_h_l58_c5_7c1c_return_output);

-- state_MUX_uart_mac_h_l58_c5_7c1c : 0 clocks latency
state_MUX_uart_mac_h_l58_c5_7c1c : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l58_c5_7c1c_cond,
state_MUX_uart_mac_h_l58_c5_7c1c_iftrue,
state_MUX_uart_mac_h_l58_c5_7c1c_iffalse,
state_MUX_uart_mac_h_l58_c5_7c1c_return_output);

-- BIN_OP_EQ_uart_mac_h_l65_c11_23d9 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l65_c11_23d9 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l65_c11_23d9_left,
BIN_OP_EQ_uart_mac_h_l65_c11_23d9_right,
BIN_OP_EQ_uart_mac_h_l65_c11_23d9_return_output);

-- bit_counter_MUX_uart_mac_h_l65_c8_dd0b : 0 clocks latency
bit_counter_MUX_uart_mac_h_l65_c8_dd0b : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l65_c8_dd0b_cond,
bit_counter_MUX_uart_mac_h_l65_c8_dd0b_iftrue,
bit_counter_MUX_uart_mac_h_l65_c8_dd0b_iffalse,
bit_counter_MUX_uart_mac_h_l65_c8_dd0b_return_output);

-- o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_cond,
o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_iftrue,
o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_iffalse,
o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_return_output);

-- clk_counter_MUX_uart_mac_h_l65_c8_dd0b : 0 clocks latency
clk_counter_MUX_uart_mac_h_l65_c8_dd0b : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l65_c8_dd0b_cond,
clk_counter_MUX_uart_mac_h_l65_c8_dd0b_iftrue,
clk_counter_MUX_uart_mac_h_l65_c8_dd0b_iffalse,
clk_counter_MUX_uart_mac_h_l65_c8_dd0b_return_output);

-- state_MUX_uart_mac_h_l65_c8_dd0b : 0 clocks latency
state_MUX_uart_mac_h_l65_c8_dd0b : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l65_c8_dd0b_cond,
state_MUX_uart_mac_h_l65_c8_dd0b_iftrue,
state_MUX_uart_mac_h_l65_c8_dd0b_iffalse,
state_MUX_uart_mac_h_l65_c8_dd0b_return_output);

-- BIN_OP_EQ_uart_mac_h_l68_c8_6ab0 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l68_c8_6ab0 : entity work.BIN_OP_EQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_left,
BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_right,
BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_return_output);

-- bit_counter_MUX_uart_mac_h_l68_c5_2b49 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l68_c5_2b49 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l68_c5_2b49_cond,
bit_counter_MUX_uart_mac_h_l68_c5_2b49_iftrue,
bit_counter_MUX_uart_mac_h_l68_c5_2b49_iffalse,
bit_counter_MUX_uart_mac_h_l68_c5_2b49_return_output);

-- clk_counter_MUX_uart_mac_h_l68_c5_2b49 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l68_c5_2b49 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l68_c5_2b49_cond,
clk_counter_MUX_uart_mac_h_l68_c5_2b49_iftrue,
clk_counter_MUX_uart_mac_h_l68_c5_2b49_iffalse,
clk_counter_MUX_uart_mac_h_l68_c5_2b49_return_output);

-- state_MUX_uart_mac_h_l68_c5_2b49 : 0 clocks latency
state_MUX_uart_mac_h_l68_c5_2b49 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l68_c5_2b49_cond,
state_MUX_uart_mac_h_l68_c5_2b49_iftrue,
state_MUX_uart_mac_h_l68_c5_2b49_iffalse,
state_MUX_uart_mac_h_l68_c5_2b49_return_output);

-- BIN_OP_PLUS_uart_mac_h_l71_c7_cd58 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l71_c7_cd58 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_left,
BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_right,
BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_return_output);

-- BIN_OP_GTE_uart_mac_h_l72_c10_33e5 : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l72_c10_33e5 : entity work.BIN_OP_GTE_uint16_t_uint16_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_uart_mac_h_l72_c10_33e5_left,
BIN_OP_GTE_uart_mac_h_l72_c10_33e5_right,
BIN_OP_GTE_uart_mac_h_l72_c10_33e5_return_output);

-- bit_counter_MUX_uart_mac_h_l72_c7_362a : 0 clocks latency
bit_counter_MUX_uart_mac_h_l72_c7_362a : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l72_c7_362a_cond,
bit_counter_MUX_uart_mac_h_l72_c7_362a_iftrue,
bit_counter_MUX_uart_mac_h_l72_c7_362a_iffalse,
bit_counter_MUX_uart_mac_h_l72_c7_362a_return_output);

-- clk_counter_MUX_uart_mac_h_l72_c7_362a : 0 clocks latency
clk_counter_MUX_uart_mac_h_l72_c7_362a : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l72_c7_362a_cond,
clk_counter_MUX_uart_mac_h_l72_c7_362a_iftrue,
clk_counter_MUX_uart_mac_h_l72_c7_362a_iffalse,
clk_counter_MUX_uart_mac_h_l72_c7_362a_return_output);

-- state_MUX_uart_mac_h_l72_c7_362a : 0 clocks latency
state_MUX_uart_mac_h_l72_c7_362a : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l72_c7_362a_cond,
state_MUX_uart_mac_h_l72_c7_362a_iftrue,
state_MUX_uart_mac_h_l72_c7_362a_iffalse,
state_MUX_uart_mac_h_l72_c7_362a_return_output);

-- BIN_OP_EQ_uart_mac_h_l81_c11_c036 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l81_c11_c036 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l81_c11_c036_left,
BIN_OP_EQ_uart_mac_h_l81_c11_c036_right,
BIN_OP_EQ_uart_mac_h_l81_c11_c036_return_output);

-- bit_counter_MUX_uart_mac_h_l81_c8_d23d : 0 clocks latency
bit_counter_MUX_uart_mac_h_l81_c8_d23d : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l81_c8_d23d_cond,
bit_counter_MUX_uart_mac_h_l81_c8_d23d_iftrue,
bit_counter_MUX_uart_mac_h_l81_c8_d23d_iffalse,
bit_counter_MUX_uart_mac_h_l81_c8_d23d_return_output);

-- o_bit_stream_MUX_uart_mac_h_l81_c8_d23d : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l81_c8_d23d : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_cond,
o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_iftrue,
o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_iffalse,
o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_return_output);

-- clk_counter_MUX_uart_mac_h_l81_c8_d23d : 0 clocks latency
clk_counter_MUX_uart_mac_h_l81_c8_d23d : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l81_c8_d23d_cond,
clk_counter_MUX_uart_mac_h_l81_c8_d23d_iftrue,
clk_counter_MUX_uart_mac_h_l81_c8_d23d_iffalse,
clk_counter_MUX_uart_mac_h_l81_c8_d23d_return_output);

-- state_MUX_uart_mac_h_l81_c8_d23d : 0 clocks latency
state_MUX_uart_mac_h_l81_c8_d23d : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l81_c8_d23d_cond,
state_MUX_uart_mac_h_l81_c8_d23d_iftrue,
state_MUX_uart_mac_h_l81_c8_d23d_iffalse,
state_MUX_uart_mac_h_l81_c8_d23d_return_output);

-- BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_left,
BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_right,
BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_return_output);

-- BIN_OP_GTE_uart_mac_h_l85_c8_197e : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l85_c8_197e : entity work.BIN_OP_GTE_uint16_t_uint16_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_uart_mac_h_l85_c8_197e_left,
BIN_OP_GTE_uart_mac_h_l85_c8_197e_right,
BIN_OP_GTE_uart_mac_h_l85_c8_197e_return_output);

-- bit_counter_MUX_uart_mac_h_l85_c5_95ff : 0 clocks latency
bit_counter_MUX_uart_mac_h_l85_c5_95ff : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l85_c5_95ff_cond,
bit_counter_MUX_uart_mac_h_l85_c5_95ff_iftrue,
bit_counter_MUX_uart_mac_h_l85_c5_95ff_iffalse,
bit_counter_MUX_uart_mac_h_l85_c5_95ff_return_output);

-- o_bit_stream_MUX_uart_mac_h_l85_c5_95ff : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l85_c5_95ff : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_cond,
o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_iftrue,
o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_iffalse,
o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_return_output);

-- clk_counter_MUX_uart_mac_h_l85_c5_95ff : 0 clocks latency
clk_counter_MUX_uart_mac_h_l85_c5_95ff : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l85_c5_95ff_cond,
clk_counter_MUX_uart_mac_h_l85_c5_95ff_iftrue,
clk_counter_MUX_uart_mac_h_l85_c5_95ff_iffalse,
clk_counter_MUX_uart_mac_h_l85_c5_95ff_return_output);

-- state_MUX_uart_mac_h_l85_c5_95ff : 0 clocks latency
state_MUX_uart_mac_h_l85_c5_95ff : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l85_c5_95ff_cond,
state_MUX_uart_mac_h_l85_c5_95ff_iftrue,
state_MUX_uart_mac_h_l85_c5_95ff_iffalse,
state_MUX_uart_mac_h_l85_c5_95ff_return_output);

-- BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8 : entity work.BIN_OP_PLUS_uint4_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_left,
BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_right,
BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_return_output);

-- BIN_OP_EQ_uart_mac_h_l96_c10_04c5 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l96_c10_04c5 : entity work.BIN_OP_EQ_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l96_c10_04c5_left,
BIN_OP_EQ_uart_mac_h_l96_c10_04c5_right,
BIN_OP_EQ_uart_mac_h_l96_c10_04c5_return_output);

-- state_MUX_uart_mac_h_l96_c7_8de2 : 0 clocks latency
state_MUX_uart_mac_h_l96_c7_8de2 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l96_c7_8de2_cond,
state_MUX_uart_mac_h_l96_c7_8de2_iftrue,
state_MUX_uart_mac_h_l96_c7_8de2_iffalse,
state_MUX_uart_mac_h_l96_c7_8de2_return_output);

-- UNARY_OP_NOT_uart_mac_h_l103_c38_ad9f : 0 clocks latency
UNARY_OP_NOT_uart_mac_h_l103_c38_ad9f : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_uart_mac_h_l103_c38_ad9f_expr,
UNARY_OP_NOT_uart_mac_h_l103_c38_ad9f_return_output);

-- BIN_OP_AND_uart_mac_h_l103_c16_7ed0 : 0 clocks latency
BIN_OP_AND_uart_mac_h_l103_c16_7ed0 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_uart_mac_h_l103_c16_7ed0_left,
BIN_OP_AND_uart_mac_h_l103_c16_7ed0_right,
BIN_OP_AND_uart_mac_h_l103_c16_7ed0_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Inputs
 input_wire,
 ready_for_bit_stream,
 -- Registers
 state,
 clk_counter,
 bit_counter,
 -- All submodule outputs
 BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_return_output,
 bit_counter_MUX_uart_mac_h_l55_c3_473d_return_output,
 o_bit_stream_MUX_uart_mac_h_l55_c3_473d_return_output,
 clk_counter_MUX_uart_mac_h_l55_c3_473d_return_output,
 state_MUX_uart_mac_h_l55_c3_473d_return_output,
 clk_counter_MUX_uart_mac_h_l58_c5_7c1c_return_output,
 state_MUX_uart_mac_h_l58_c5_7c1c_return_output,
 BIN_OP_EQ_uart_mac_h_l65_c11_23d9_return_output,
 bit_counter_MUX_uart_mac_h_l65_c8_dd0b_return_output,
 o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_return_output,
 clk_counter_MUX_uart_mac_h_l65_c8_dd0b_return_output,
 state_MUX_uart_mac_h_l65_c8_dd0b_return_output,
 BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_return_output,
 bit_counter_MUX_uart_mac_h_l68_c5_2b49_return_output,
 clk_counter_MUX_uart_mac_h_l68_c5_2b49_return_output,
 state_MUX_uart_mac_h_l68_c5_2b49_return_output,
 BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_return_output,
 BIN_OP_GTE_uart_mac_h_l72_c10_33e5_return_output,
 bit_counter_MUX_uart_mac_h_l72_c7_362a_return_output,
 clk_counter_MUX_uart_mac_h_l72_c7_362a_return_output,
 state_MUX_uart_mac_h_l72_c7_362a_return_output,
 BIN_OP_EQ_uart_mac_h_l81_c11_c036_return_output,
 bit_counter_MUX_uart_mac_h_l81_c8_d23d_return_output,
 o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_return_output,
 clk_counter_MUX_uart_mac_h_l81_c8_d23d_return_output,
 state_MUX_uart_mac_h_l81_c8_d23d_return_output,
 BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_return_output,
 BIN_OP_GTE_uart_mac_h_l85_c8_197e_return_output,
 bit_counter_MUX_uart_mac_h_l85_c5_95ff_return_output,
 o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_return_output,
 clk_counter_MUX_uart_mac_h_l85_c5_95ff_return_output,
 state_MUX_uart_mac_h_l85_c5_95ff_return_output,
 BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_return_output,
 BIN_OP_EQ_uart_mac_h_l96_c10_04c5_return_output,
 state_MUX_uart_mac_h_l96_c7_8de2_return_output,
 UNARY_OP_NOT_uart_mac_h_l103_c38_ad9f_return_output,
 BIN_OP_AND_uart_mac_h_l103_c16_7ed0_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : uart_rx_1b_t;
 variable VAR_input_wire : unsigned(0 downto 0);
 variable VAR_ready_for_bit_stream : unsigned(0 downto 0);
 variable VAR_o : uart_rx_1b_t;
 variable VAR_BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_473d_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_473d_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_dd0b_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_473d_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_473d_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_473d_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_473d_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_473d_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_473d_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_473d_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_7c1c_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_473d_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_dd0b_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_473d_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_473d_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_473d_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_7c1c_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_473d_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_dd0b_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_473d_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_473d_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_7c1c_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l62_c7_6eac : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_7c1c_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_7c1c_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_7c1c_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_7c1c_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_7c1c_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l65_c11_23d9_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l65_c11_23d9_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l65_c11_23d9_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_dd0b_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_2b49_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_dd0b_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_d23d_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_dd0b_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_dd0b_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_2b49_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_dd0b_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_d23d_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_dd0b_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_dd0b_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_2b49_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_dd0b_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_d23d_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_dd0b_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_2b49_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_362a_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_2b49_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_2b49_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_2b49_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_362a_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_2b49_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_2b49_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_2b49_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_362a_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_2b49_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_2b49_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l71_c7_e89e : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l72_c10_33e5_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l72_c10_33e5_right : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l72_c10_33e5_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_362a_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l77_c9_7ac3 : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_362a_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_362a_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_362a_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l76_c9_a4b6 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_362a_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_362a_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_362a_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_362a_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_362a_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c036_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c036_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c036_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_d23d_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_95ff_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_d23d_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_d23d_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_d23d_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_95ff_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_d23d_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_d23d_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_d23d_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_95ff_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_d23d_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_d23d_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l84_c5_ccbf : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l85_c8_197e_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l85_c8_197e_right : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l85_c8_197e_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_95ff_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l93_c7_56e7 : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_95ff_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_95ff_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6_uart_mac_h_l85_c5_95ff_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_95ff_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l88_c7_76f3 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_95ff_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_95ff_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_95ff_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_8de2_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_95ff_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_95ff_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_return_output : unsigned(4 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l96_c10_04c5_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l96_c10_04c5_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l96_c10_04c5_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_8de2_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_8de2_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_8de2_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690_uart_mac_h_l103_c16_9127_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l103_c16_7ed0_left : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_ad9f_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_ad9f_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l103_c16_7ed0_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l103_c16_7ed0_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe_uart_mac_h_l104_c10_37be_return_output : uart_rx_1b_t;
 variable VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l55_l85_l65_l81_DUPLICATE_0435_return_output : uint1_t_stream_t;
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
     VAR_BIN_OP_EQ_uart_mac_h_l65_c11_23d9_right := unsigned(uart_rx_state_t_to_slv(WAIT_START));
     VAR_BIN_OP_GTE_uart_mac_h_l72_c10_33e5_right := to_unsigned(108, 16);
     VAR_BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_right := unsigned(uart_rx_state_t_to_slv(IDLE));
     VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c036_right := unsigned(uart_rx_state_t_to_slv(RECEIVE));
     VAR_BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_right := to_unsigned(0, 1);
     VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_right := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_right := to_unsigned(1, 1);
     VAR_state_MUX_uart_mac_h_l96_c7_8de2_iftrue := unsigned(uart_rx_state_t_to_slv(IDLE));
     VAR_clk_counter_uart_mac_h_l76_c9_a4b6 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_362a_iftrue := VAR_clk_counter_uart_mac_h_l76_c9_a4b6;
     VAR_clk_counter_uart_mac_h_l62_c7_6eac := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_7c1c_iftrue := VAR_clk_counter_uart_mac_h_l62_c7_6eac;
     VAR_state_MUX_uart_mac_h_l58_c5_7c1c_iftrue := unsigned(uart_rx_state_t_to_slv(WAIT_START));
     VAR_clk_counter_uart_mac_h_l88_c7_76f3 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_95ff_iftrue := VAR_clk_counter_uart_mac_h_l88_c7_76f3;
     VAR_BIN_OP_EQ_uart_mac_h_l96_c10_04c5_right := to_unsigned(8, 4);
     VAR_state_MUX_uart_mac_h_l72_c7_362a_iftrue := unsigned(uart_rx_state_t_to_slv(RECEIVE));
     VAR_bit_counter_uart_mac_h_l77_c9_7ac3 := resize(to_unsigned(0, 1), 4);
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_362a_iftrue := VAR_bit_counter_uart_mac_h_l77_c9_7ac3;
     VAR_BIN_OP_GTE_uart_mac_h_l85_c8_197e_right := to_unsigned(217, 16);
     -- CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l55_l85_l65_l81_DUPLICATE_0435 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l55_l85_l65_l81_DUPLICATE_0435_return_output := uart_rx_1b_t_NULL.bit_stream;

     -- Submodule level 1
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_473d_iftrue := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l55_l85_l65_l81_DUPLICATE_0435_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_iftrue := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l55_l85_l65_l81_DUPLICATE_0435_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_iffalse := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l55_l85_l65_l81_DUPLICATE_0435_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_iffalse := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l55_l85_l65_l81_DUPLICATE_0435_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;
     -- Mux in inputs
     VAR_input_wire := input_wire;
     VAR_ready_for_bit_stream := ready_for_bit_stream;

     -- Submodule level 0
     VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_left := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_473d_iftrue := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_2b49_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_362a_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_d23d_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_95ff_iffalse := bit_counter;
     VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_left := clk_counter;
     VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_left := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_7c1c_iffalse := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_2b49_iffalse := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_d23d_iffalse := clk_counter;
     VAR_BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_left := VAR_input_wire;
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_7c1c_cond := VAR_input_wire;
     VAR_state_MUX_uart_mac_h_l58_c5_7c1c_cond := VAR_input_wire;
     VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_ad9f_expr := VAR_ready_for_bit_stream;
     VAR_BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_left := state;
     VAR_BIN_OP_EQ_uart_mac_h_l65_c11_23d9_left := state;
     VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c036_left := state;
     VAR_state_MUX_uart_mac_h_l58_c5_7c1c_iffalse := state;
     VAR_state_MUX_uart_mac_h_l68_c5_2b49_iffalse := state;
     VAR_state_MUX_uart_mac_h_l72_c7_362a_iffalse := state;
     VAR_state_MUX_uart_mac_h_l81_c8_d23d_iffalse := state;
     VAR_state_MUX_uart_mac_h_l85_c5_95ff_iffalse := state;
     VAR_state_MUX_uart_mac_h_l96_c7_8de2_iffalse := state;
     -- BIN_OP_EQ[uart_mac_h_l81_c11_c036] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l81_c11_c036_left <= VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c036_left;
     BIN_OP_EQ_uart_mac_h_l81_c11_c036_right <= VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c036_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c036_return_output := BIN_OP_EQ_uart_mac_h_l81_c11_c036_return_output;

     -- state_MUX[uart_mac_h_l58_c5_7c1c] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l58_c5_7c1c_cond <= VAR_state_MUX_uart_mac_h_l58_c5_7c1c_cond;
     state_MUX_uart_mac_h_l58_c5_7c1c_iftrue <= VAR_state_MUX_uart_mac_h_l58_c5_7c1c_iftrue;
     state_MUX_uart_mac_h_l58_c5_7c1c_iffalse <= VAR_state_MUX_uart_mac_h_l58_c5_7c1c_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l58_c5_7c1c_return_output := state_MUX_uart_mac_h_l58_c5_7c1c_return_output;

     -- UNARY_OP_NOT[uart_mac_h_l103_c38_ad9f] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_uart_mac_h_l103_c38_ad9f_expr <= VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_ad9f_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_ad9f_return_output := UNARY_OP_NOT_uart_mac_h_l103_c38_ad9f_return_output;

     -- BIN_OP_EQ[uart_mac_h_l55_c6_8e7a] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_left <= VAR_BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_left;
     BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_right <= VAR_BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_return_output := BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l71_c7_cd58] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_left <= VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_left;
     BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_right <= VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_return_output := BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l84_c5_b6a4] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_left <= VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_left;
     BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_right <= VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_return_output := BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_return_output;

     -- o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6[uart_mac_h_l85_c5_95ff] LATENCY=0
     VAR_o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6_uart_mac_h_l85_c5_95ff_return_output := CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6(
     VAR_input_wire,
     to_unsigned(1, 1));

     -- BIN_OP_EQ[uart_mac_h_l65_c11_23d9] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l65_c11_23d9_left <= VAR_BIN_OP_EQ_uart_mac_h_l65_c11_23d9_left;
     BIN_OP_EQ_uart_mac_h_l65_c11_23d9_right <= VAR_BIN_OP_EQ_uart_mac_h_l65_c11_23d9_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l65_c11_23d9_return_output := BIN_OP_EQ_uart_mac_h_l65_c11_23d9_return_output;

     -- clk_counter_MUX[uart_mac_h_l58_c5_7c1c] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l58_c5_7c1c_cond <= VAR_clk_counter_MUX_uart_mac_h_l58_c5_7c1c_cond;
     clk_counter_MUX_uart_mac_h_l58_c5_7c1c_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l58_c5_7c1c_iftrue;
     clk_counter_MUX_uart_mac_h_l58_c5_7c1c_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l58_c5_7c1c_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_7c1c_return_output := clk_counter_MUX_uart_mac_h_l58_c5_7c1c_return_output;

     -- BIN_OP_EQ[uart_mac_h_l68_c8_6ab0] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_left <= VAR_BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_left;
     BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_right <= VAR_BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_return_output := BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l93_c7_f9d8] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_left <= VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_left;
     BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_right <= VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_return_output := BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_return_output;

     -- Submodule level 1
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_473d_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_473d_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_473d_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_return_output;
     VAR_state_MUX_uart_mac_h_l55_c3_473d_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_8e7a_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_dd0b_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_23d9_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_dd0b_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_23d9_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_23d9_return_output;
     VAR_state_MUX_uart_mac_h_l65_c8_dd0b_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_23d9_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_2b49_cond := VAR_BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_2b49_cond := VAR_BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_return_output;
     VAR_state_MUX_uart_mac_h_l68_c5_2b49_cond := VAR_BIN_OP_EQ_uart_mac_h_l68_c8_6ab0_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_d23d_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c036_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_d23d_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c036_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c036_return_output;
     VAR_state_MUX_uart_mac_h_l81_c8_d23d_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c036_return_output;
     VAR_clk_counter_uart_mac_h_l71_c7_e89e := resize(VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_cd58_return_output, 16);
     VAR_clk_counter_uart_mac_h_l84_c5_ccbf := resize(VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_b6a4_return_output, 16);
     VAR_bit_counter_uart_mac_h_l93_c7_56e7 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_f9d8_return_output, 4);
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_7ed0_right := VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_ad9f_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_473d_iftrue := VAR_clk_counter_MUX_uart_mac_h_l58_c5_7c1c_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_iftrue := VAR_o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6_uart_mac_h_l85_c5_95ff_return_output;
     VAR_state_MUX_uart_mac_h_l55_c3_473d_iftrue := VAR_state_MUX_uart_mac_h_l58_c5_7c1c_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l96_c10_04c5_left := VAR_bit_counter_uart_mac_h_l93_c7_56e7;
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_95ff_iftrue := VAR_bit_counter_uart_mac_h_l93_c7_56e7;
     VAR_BIN_OP_GTE_uart_mac_h_l72_c10_33e5_left := VAR_clk_counter_uart_mac_h_l71_c7_e89e;
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_362a_iffalse := VAR_clk_counter_uart_mac_h_l71_c7_e89e;
     VAR_BIN_OP_GTE_uart_mac_h_l85_c8_197e_left := VAR_clk_counter_uart_mac_h_l84_c5_ccbf;
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_95ff_iffalse := VAR_clk_counter_uart_mac_h_l84_c5_ccbf;
     -- BIN_OP_GTE[uart_mac_h_l85_c8_197e] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l85_c8_197e_left <= VAR_BIN_OP_GTE_uart_mac_h_l85_c8_197e_left;
     BIN_OP_GTE_uart_mac_h_l85_c8_197e_right <= VAR_BIN_OP_GTE_uart_mac_h_l85_c8_197e_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l85_c8_197e_return_output := BIN_OP_GTE_uart_mac_h_l85_c8_197e_return_output;

     -- BIN_OP_GTE[uart_mac_h_l72_c10_33e5] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l72_c10_33e5_left <= VAR_BIN_OP_GTE_uart_mac_h_l72_c10_33e5_left;
     BIN_OP_GTE_uart_mac_h_l72_c10_33e5_right <= VAR_BIN_OP_GTE_uart_mac_h_l72_c10_33e5_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l72_c10_33e5_return_output := BIN_OP_GTE_uart_mac_h_l72_c10_33e5_return_output;

     -- BIN_OP_EQ[uart_mac_h_l96_c10_04c5] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l96_c10_04c5_left <= VAR_BIN_OP_EQ_uart_mac_h_l96_c10_04c5_left;
     BIN_OP_EQ_uart_mac_h_l96_c10_04c5_right <= VAR_BIN_OP_EQ_uart_mac_h_l96_c10_04c5_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l96_c10_04c5_return_output := BIN_OP_EQ_uart_mac_h_l96_c10_04c5_return_output;

     -- Submodule level 2
     VAR_state_MUX_uart_mac_h_l96_c7_8de2_cond := VAR_BIN_OP_EQ_uart_mac_h_l96_c10_04c5_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_362a_cond := VAR_BIN_OP_GTE_uart_mac_h_l72_c10_33e5_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_362a_cond := VAR_BIN_OP_GTE_uart_mac_h_l72_c10_33e5_return_output;
     VAR_state_MUX_uart_mac_h_l72_c7_362a_cond := VAR_BIN_OP_GTE_uart_mac_h_l72_c10_33e5_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_95ff_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_197e_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_95ff_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_197e_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_197e_return_output;
     VAR_state_MUX_uart_mac_h_l85_c5_95ff_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_197e_return_output;
     -- bit_counter_MUX[uart_mac_h_l72_c7_362a] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l72_c7_362a_cond <= VAR_bit_counter_MUX_uart_mac_h_l72_c7_362a_cond;
     bit_counter_MUX_uart_mac_h_l72_c7_362a_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l72_c7_362a_iftrue;
     bit_counter_MUX_uart_mac_h_l72_c7_362a_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l72_c7_362a_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_362a_return_output := bit_counter_MUX_uart_mac_h_l72_c7_362a_return_output;

     -- state_MUX[uart_mac_h_l96_c7_8de2] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l96_c7_8de2_cond <= VAR_state_MUX_uart_mac_h_l96_c7_8de2_cond;
     state_MUX_uart_mac_h_l96_c7_8de2_iftrue <= VAR_state_MUX_uart_mac_h_l96_c7_8de2_iftrue;
     state_MUX_uart_mac_h_l96_c7_8de2_iffalse <= VAR_state_MUX_uart_mac_h_l96_c7_8de2_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l96_c7_8de2_return_output := state_MUX_uart_mac_h_l96_c7_8de2_return_output;

     -- o_bit_stream_MUX[uart_mac_h_l85_c5_95ff] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_cond;
     o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_iftrue;
     o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_return_output := o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_return_output;

     -- bit_counter_MUX[uart_mac_h_l85_c5_95ff] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l85_c5_95ff_cond <= VAR_bit_counter_MUX_uart_mac_h_l85_c5_95ff_cond;
     bit_counter_MUX_uart_mac_h_l85_c5_95ff_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l85_c5_95ff_iftrue;
     bit_counter_MUX_uart_mac_h_l85_c5_95ff_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l85_c5_95ff_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_95ff_return_output := bit_counter_MUX_uart_mac_h_l85_c5_95ff_return_output;

     -- state_MUX[uart_mac_h_l72_c7_362a] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l72_c7_362a_cond <= VAR_state_MUX_uart_mac_h_l72_c7_362a_cond;
     state_MUX_uart_mac_h_l72_c7_362a_iftrue <= VAR_state_MUX_uart_mac_h_l72_c7_362a_iftrue;
     state_MUX_uart_mac_h_l72_c7_362a_iffalse <= VAR_state_MUX_uart_mac_h_l72_c7_362a_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l72_c7_362a_return_output := state_MUX_uart_mac_h_l72_c7_362a_return_output;

     -- clk_counter_MUX[uart_mac_h_l72_c7_362a] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l72_c7_362a_cond <= VAR_clk_counter_MUX_uart_mac_h_l72_c7_362a_cond;
     clk_counter_MUX_uart_mac_h_l72_c7_362a_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l72_c7_362a_iftrue;
     clk_counter_MUX_uart_mac_h_l72_c7_362a_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l72_c7_362a_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_362a_return_output := clk_counter_MUX_uart_mac_h_l72_c7_362a_return_output;

     -- clk_counter_MUX[uart_mac_h_l85_c5_95ff] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l85_c5_95ff_cond <= VAR_clk_counter_MUX_uart_mac_h_l85_c5_95ff_cond;
     clk_counter_MUX_uart_mac_h_l85_c5_95ff_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l85_c5_95ff_iftrue;
     clk_counter_MUX_uart_mac_h_l85_c5_95ff_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l85_c5_95ff_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_95ff_return_output := clk_counter_MUX_uart_mac_h_l85_c5_95ff_return_output;

     -- Submodule level 3
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_2b49_iftrue := VAR_bit_counter_MUX_uart_mac_h_l72_c7_362a_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_d23d_iftrue := VAR_bit_counter_MUX_uart_mac_h_l85_c5_95ff_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_2b49_iftrue := VAR_clk_counter_MUX_uart_mac_h_l72_c7_362a_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_d23d_iftrue := VAR_clk_counter_MUX_uart_mac_h_l85_c5_95ff_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_iftrue := VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_95ff_return_output;
     VAR_state_MUX_uart_mac_h_l68_c5_2b49_iftrue := VAR_state_MUX_uart_mac_h_l72_c7_362a_return_output;
     VAR_state_MUX_uart_mac_h_l85_c5_95ff_iftrue := VAR_state_MUX_uart_mac_h_l96_c7_8de2_return_output;
     -- bit_counter_MUX[uart_mac_h_l68_c5_2b49] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l68_c5_2b49_cond <= VAR_bit_counter_MUX_uart_mac_h_l68_c5_2b49_cond;
     bit_counter_MUX_uart_mac_h_l68_c5_2b49_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l68_c5_2b49_iftrue;
     bit_counter_MUX_uart_mac_h_l68_c5_2b49_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l68_c5_2b49_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_2b49_return_output := bit_counter_MUX_uart_mac_h_l68_c5_2b49_return_output;

     -- clk_counter_MUX[uart_mac_h_l81_c8_d23d] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l81_c8_d23d_cond <= VAR_clk_counter_MUX_uart_mac_h_l81_c8_d23d_cond;
     clk_counter_MUX_uart_mac_h_l81_c8_d23d_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l81_c8_d23d_iftrue;
     clk_counter_MUX_uart_mac_h_l81_c8_d23d_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l81_c8_d23d_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_d23d_return_output := clk_counter_MUX_uart_mac_h_l81_c8_d23d_return_output;

     -- clk_counter_MUX[uart_mac_h_l68_c5_2b49] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l68_c5_2b49_cond <= VAR_clk_counter_MUX_uart_mac_h_l68_c5_2b49_cond;
     clk_counter_MUX_uart_mac_h_l68_c5_2b49_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l68_c5_2b49_iftrue;
     clk_counter_MUX_uart_mac_h_l68_c5_2b49_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l68_c5_2b49_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_2b49_return_output := clk_counter_MUX_uart_mac_h_l68_c5_2b49_return_output;

     -- state_MUX[uart_mac_h_l68_c5_2b49] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l68_c5_2b49_cond <= VAR_state_MUX_uart_mac_h_l68_c5_2b49_cond;
     state_MUX_uart_mac_h_l68_c5_2b49_iftrue <= VAR_state_MUX_uart_mac_h_l68_c5_2b49_iftrue;
     state_MUX_uart_mac_h_l68_c5_2b49_iffalse <= VAR_state_MUX_uart_mac_h_l68_c5_2b49_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l68_c5_2b49_return_output := state_MUX_uart_mac_h_l68_c5_2b49_return_output;

     -- o_bit_stream_MUX[uart_mac_h_l81_c8_d23d] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_cond;
     o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_iftrue;
     o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_return_output := o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_return_output;

     -- state_MUX[uart_mac_h_l85_c5_95ff] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l85_c5_95ff_cond <= VAR_state_MUX_uart_mac_h_l85_c5_95ff_cond;
     state_MUX_uart_mac_h_l85_c5_95ff_iftrue <= VAR_state_MUX_uart_mac_h_l85_c5_95ff_iftrue;
     state_MUX_uart_mac_h_l85_c5_95ff_iffalse <= VAR_state_MUX_uart_mac_h_l85_c5_95ff_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l85_c5_95ff_return_output := state_MUX_uart_mac_h_l85_c5_95ff_return_output;

     -- bit_counter_MUX[uart_mac_h_l81_c8_d23d] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l81_c8_d23d_cond <= VAR_bit_counter_MUX_uart_mac_h_l81_c8_d23d_cond;
     bit_counter_MUX_uart_mac_h_l81_c8_d23d_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l81_c8_d23d_iftrue;
     bit_counter_MUX_uart_mac_h_l81_c8_d23d_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l81_c8_d23d_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_d23d_return_output := bit_counter_MUX_uart_mac_h_l81_c8_d23d_return_output;

     -- Submodule level 4
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_dd0b_iftrue := VAR_bit_counter_MUX_uart_mac_h_l68_c5_2b49_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_dd0b_iffalse := VAR_bit_counter_MUX_uart_mac_h_l81_c8_d23d_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_dd0b_iftrue := VAR_clk_counter_MUX_uart_mac_h_l68_c5_2b49_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_dd0b_iffalse := VAR_clk_counter_MUX_uart_mac_h_l81_c8_d23d_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_iffalse := VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_d23d_return_output;
     VAR_state_MUX_uart_mac_h_l65_c8_dd0b_iftrue := VAR_state_MUX_uart_mac_h_l68_c5_2b49_return_output;
     VAR_state_MUX_uart_mac_h_l81_c8_d23d_iftrue := VAR_state_MUX_uart_mac_h_l85_c5_95ff_return_output;
     -- bit_counter_MUX[uart_mac_h_l65_c8_dd0b] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l65_c8_dd0b_cond <= VAR_bit_counter_MUX_uart_mac_h_l65_c8_dd0b_cond;
     bit_counter_MUX_uart_mac_h_l65_c8_dd0b_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l65_c8_dd0b_iftrue;
     bit_counter_MUX_uart_mac_h_l65_c8_dd0b_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l65_c8_dd0b_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_dd0b_return_output := bit_counter_MUX_uart_mac_h_l65_c8_dd0b_return_output;

     -- clk_counter_MUX[uart_mac_h_l65_c8_dd0b] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l65_c8_dd0b_cond <= VAR_clk_counter_MUX_uart_mac_h_l65_c8_dd0b_cond;
     clk_counter_MUX_uart_mac_h_l65_c8_dd0b_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l65_c8_dd0b_iftrue;
     clk_counter_MUX_uart_mac_h_l65_c8_dd0b_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l65_c8_dd0b_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_dd0b_return_output := clk_counter_MUX_uart_mac_h_l65_c8_dd0b_return_output;

     -- o_bit_stream_MUX[uart_mac_h_l65_c8_dd0b] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_cond;
     o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_iftrue;
     o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_return_output := o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_return_output;

     -- state_MUX[uart_mac_h_l81_c8_d23d] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l81_c8_d23d_cond <= VAR_state_MUX_uart_mac_h_l81_c8_d23d_cond;
     state_MUX_uart_mac_h_l81_c8_d23d_iftrue <= VAR_state_MUX_uart_mac_h_l81_c8_d23d_iftrue;
     state_MUX_uart_mac_h_l81_c8_d23d_iffalse <= VAR_state_MUX_uart_mac_h_l81_c8_d23d_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l81_c8_d23d_return_output := state_MUX_uart_mac_h_l81_c8_d23d_return_output;

     -- Submodule level 5
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_473d_iffalse := VAR_bit_counter_MUX_uart_mac_h_l65_c8_dd0b_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_473d_iffalse := VAR_clk_counter_MUX_uart_mac_h_l65_c8_dd0b_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_473d_iffalse := VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_dd0b_return_output;
     VAR_state_MUX_uart_mac_h_l65_c8_dd0b_iffalse := VAR_state_MUX_uart_mac_h_l81_c8_d23d_return_output;
     -- state_MUX[uart_mac_h_l65_c8_dd0b] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l65_c8_dd0b_cond <= VAR_state_MUX_uart_mac_h_l65_c8_dd0b_cond;
     state_MUX_uart_mac_h_l65_c8_dd0b_iftrue <= VAR_state_MUX_uart_mac_h_l65_c8_dd0b_iftrue;
     state_MUX_uart_mac_h_l65_c8_dd0b_iffalse <= VAR_state_MUX_uart_mac_h_l65_c8_dd0b_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l65_c8_dd0b_return_output := state_MUX_uart_mac_h_l65_c8_dd0b_return_output;

     -- clk_counter_MUX[uart_mac_h_l55_c3_473d] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l55_c3_473d_cond <= VAR_clk_counter_MUX_uart_mac_h_l55_c3_473d_cond;
     clk_counter_MUX_uart_mac_h_l55_c3_473d_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l55_c3_473d_iftrue;
     clk_counter_MUX_uart_mac_h_l55_c3_473d_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l55_c3_473d_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_473d_return_output := clk_counter_MUX_uart_mac_h_l55_c3_473d_return_output;

     -- bit_counter_MUX[uart_mac_h_l55_c3_473d] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l55_c3_473d_cond <= VAR_bit_counter_MUX_uart_mac_h_l55_c3_473d_cond;
     bit_counter_MUX_uart_mac_h_l55_c3_473d_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l55_c3_473d_iftrue;
     bit_counter_MUX_uart_mac_h_l55_c3_473d_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l55_c3_473d_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_473d_return_output := bit_counter_MUX_uart_mac_h_l55_c3_473d_return_output;

     -- o_bit_stream_MUX[uart_mac_h_l55_c3_473d] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l55_c3_473d_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_473d_cond;
     o_bit_stream_MUX_uart_mac_h_l55_c3_473d_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_473d_iftrue;
     o_bit_stream_MUX_uart_mac_h_l55_c3_473d_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_473d_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_473d_return_output := o_bit_stream_MUX_uart_mac_h_l55_c3_473d_return_output;

     -- Submodule level 6
     REG_VAR_bit_counter := VAR_bit_counter_MUX_uart_mac_h_l55_c3_473d_return_output;
     REG_VAR_clk_counter := VAR_clk_counter_MUX_uart_mac_h_l55_c3_473d_return_output;
     VAR_state_MUX_uart_mac_h_l55_c3_473d_iffalse := VAR_state_MUX_uart_mac_h_l65_c8_dd0b_return_output;
     -- CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690[uart_mac_h_l103_c16_9127] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690_uart_mac_h_l103_c16_9127_return_output := CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690(
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_473d_return_output);

     -- state_MUX[uart_mac_h_l55_c3_473d] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l55_c3_473d_cond <= VAR_state_MUX_uart_mac_h_l55_c3_473d_cond;
     state_MUX_uart_mac_h_l55_c3_473d_iftrue <= VAR_state_MUX_uart_mac_h_l55_c3_473d_iftrue;
     state_MUX_uart_mac_h_l55_c3_473d_iffalse <= VAR_state_MUX_uart_mac_h_l55_c3_473d_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l55_c3_473d_return_output := state_MUX_uart_mac_h_l55_c3_473d_return_output;

     -- Submodule level 7
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_7ed0_left := VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690_uart_mac_h_l103_c16_9127_return_output;
     REG_VAR_state := VAR_state_MUX_uart_mac_h_l55_c3_473d_return_output;
     -- BIN_OP_AND[uart_mac_h_l103_c16_7ed0] LATENCY=0
     -- Inputs
     BIN_OP_AND_uart_mac_h_l103_c16_7ed0_left <= VAR_BIN_OP_AND_uart_mac_h_l103_c16_7ed0_left;
     BIN_OP_AND_uart_mac_h_l103_c16_7ed0_right <= VAR_BIN_OP_AND_uart_mac_h_l103_c16_7ed0_right;
     -- Outputs
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_7ed0_return_output := BIN_OP_AND_uart_mac_h_l103_c16_7ed0_return_output;

     -- Submodule level 8
     -- CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe[uart_mac_h_l104_c10_37be] LATENCY=0
     VAR_CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe_uart_mac_h_l104_c10_37be_return_output := CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe(
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_473d_return_output,
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_7ed0_return_output);

     -- Submodule level 9
     VAR_return_output := VAR_CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe_uart_mac_h_l104_c10_37be_return_output;
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
