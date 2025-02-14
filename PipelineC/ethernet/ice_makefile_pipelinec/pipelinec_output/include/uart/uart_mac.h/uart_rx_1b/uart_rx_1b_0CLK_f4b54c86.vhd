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
-- BIN_OP_EQ[uart_mac_h_l55_c6_e8e9]
signal BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l55_c3_ad47]
signal clk_counter_MUX_uart_mac_h_l55_c3_ad47_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l55_c3_ad47_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l55_c3_ad47_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l55_c3_ad47_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l55_c3_ad47]
signal bit_counter_MUX_uart_mac_h_l55_c3_ad47_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l55_c3_ad47_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l55_c3_ad47_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l55_c3_ad47_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l55_c3_ad47]
signal state_MUX_uart_mac_h_l55_c3_ad47_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l55_c3_ad47_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l55_c3_ad47_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l55_c3_ad47_return_output : unsigned(1 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l55_c3_ad47]
signal o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_return_output : uint1_t_stream_t;

-- clk_counter_MUX[uart_mac_h_l58_c5_6c13]
signal clk_counter_MUX_uart_mac_h_l58_c5_6c13_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l58_c5_6c13_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l58_c5_6c13_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l58_c5_6c13_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l58_c5_6c13]
signal state_MUX_uart_mac_h_l58_c5_6c13_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l58_c5_6c13_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l58_c5_6c13_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l58_c5_6c13_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l65_c11_2a1e]
signal BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l65_c8_27e3]
signal clk_counter_MUX_uart_mac_h_l65_c8_27e3_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l65_c8_27e3_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l65_c8_27e3_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l65_c8_27e3_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l65_c8_27e3]
signal bit_counter_MUX_uart_mac_h_l65_c8_27e3_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l65_c8_27e3_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l65_c8_27e3_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l65_c8_27e3_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l65_c8_27e3]
signal state_MUX_uart_mac_h_l65_c8_27e3_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l65_c8_27e3_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l65_c8_27e3_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l65_c8_27e3_return_output : unsigned(1 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l65_c8_27e3]
signal o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_return_output : uint1_t_stream_t;

-- BIN_OP_EQ[uart_mac_h_l68_c8_09f2]
signal BIN_OP_EQ_uart_mac_h_l68_c8_09f2_left : unsigned(0 downto 0);
signal BIN_OP_EQ_uart_mac_h_l68_c8_09f2_right : unsigned(0 downto 0);
signal BIN_OP_EQ_uart_mac_h_l68_c8_09f2_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l68_c5_cfe0]
signal clk_counter_MUX_uart_mac_h_l68_c5_cfe0_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l68_c5_cfe0_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l68_c5_cfe0_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l68_c5_cfe0_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l68_c5_cfe0]
signal bit_counter_MUX_uart_mac_h_l68_c5_cfe0_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l68_c5_cfe0_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l68_c5_cfe0_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l68_c5_cfe0_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l68_c5_cfe0]
signal state_MUX_uart_mac_h_l68_c5_cfe0_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l68_c5_cfe0_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l68_c5_cfe0_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l68_c5_cfe0_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l71_c7_4e4f]
signal BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l72_c10_a4ab]
signal BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_right : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l72_c7_d012]
signal clk_counter_MUX_uart_mac_h_l72_c7_d012_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l72_c7_d012_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l72_c7_d012_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l72_c7_d012_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l72_c7_d012]
signal bit_counter_MUX_uart_mac_h_l72_c7_d012_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l72_c7_d012_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l72_c7_d012_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l72_c7_d012_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l72_c7_d012]
signal state_MUX_uart_mac_h_l72_c7_d012_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l72_c7_d012_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l72_c7_d012_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l72_c7_d012_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l81_c11_9c8a]
signal BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l81_c8_94ad]
signal clk_counter_MUX_uart_mac_h_l81_c8_94ad_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l81_c8_94ad_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l81_c8_94ad_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l81_c8_94ad_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l81_c8_94ad]
signal bit_counter_MUX_uart_mac_h_l81_c8_94ad_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l81_c8_94ad_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l81_c8_94ad_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l81_c8_94ad_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l81_c8_94ad]
signal state_MUX_uart_mac_h_l81_c8_94ad_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l81_c8_94ad_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l81_c8_94ad_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l81_c8_94ad_return_output : unsigned(1 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l81_c8_94ad]
signal o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_return_output : uint1_t_stream_t;

-- BIN_OP_PLUS[uart_mac_h_l84_c5_f39a]
signal BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l85_c8_3a8d]
signal BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_right : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l85_c5_02a7]
signal clk_counter_MUX_uart_mac_h_l85_c5_02a7_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l85_c5_02a7_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l85_c5_02a7_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l85_c5_02a7_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l85_c5_02a7]
signal bit_counter_MUX_uart_mac_h_l85_c5_02a7_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l85_c5_02a7_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l85_c5_02a7_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l85_c5_02a7_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l85_c5_02a7]
signal state_MUX_uart_mac_h_l85_c5_02a7_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l85_c5_02a7_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l85_c5_02a7_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l85_c5_02a7_return_output : unsigned(1 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l85_c5_02a7]
signal o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_return_output : uint1_t_stream_t;

-- BIN_OP_PLUS[uart_mac_h_l93_c7_cc5f]
signal BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_left : unsigned(3 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_return_output : unsigned(4 downto 0);

-- BIN_OP_EQ[uart_mac_h_l96_c10_c73b]
signal BIN_OP_EQ_uart_mac_h_l96_c10_c73b_left : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l96_c10_c73b_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l96_c10_c73b_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l96_c7_3bc5]
signal state_MUX_uart_mac_h_l96_c7_3bc5_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l96_c7_3bc5_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l96_c7_3bc5_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l96_c7_3bc5_return_output : unsigned(1 downto 0);

-- UNARY_OP_NOT[uart_mac_h_l103_c38_77e6]
signal UNARY_OP_NOT_uart_mac_h_l103_c38_77e6_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_uart_mac_h_l103_c38_77e6_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[uart_mac_h_l103_c16_6a3f]
signal BIN_OP_AND_uart_mac_h_l103_c16_6a3f_left : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l103_c16_6a3f_right : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l103_c16_6a3f_return_output : unsigned(0 downto 0);

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
-- BIN_OP_EQ_uart_mac_h_l55_c6_e8e9 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l55_c6_e8e9 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_left,
BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_right,
BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_return_output);

-- clk_counter_MUX_uart_mac_h_l55_c3_ad47 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l55_c3_ad47 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l55_c3_ad47_cond,
clk_counter_MUX_uart_mac_h_l55_c3_ad47_iftrue,
clk_counter_MUX_uart_mac_h_l55_c3_ad47_iffalse,
clk_counter_MUX_uart_mac_h_l55_c3_ad47_return_output);

-- bit_counter_MUX_uart_mac_h_l55_c3_ad47 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l55_c3_ad47 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l55_c3_ad47_cond,
bit_counter_MUX_uart_mac_h_l55_c3_ad47_iftrue,
bit_counter_MUX_uart_mac_h_l55_c3_ad47_iffalse,
bit_counter_MUX_uart_mac_h_l55_c3_ad47_return_output);

-- state_MUX_uart_mac_h_l55_c3_ad47 : 0 clocks latency
state_MUX_uart_mac_h_l55_c3_ad47 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l55_c3_ad47_cond,
state_MUX_uart_mac_h_l55_c3_ad47_iftrue,
state_MUX_uart_mac_h_l55_c3_ad47_iffalse,
state_MUX_uart_mac_h_l55_c3_ad47_return_output);

-- o_bit_stream_MUX_uart_mac_h_l55_c3_ad47 : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l55_c3_ad47 : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_cond,
o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_iftrue,
o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_iffalse,
o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_return_output);

-- clk_counter_MUX_uart_mac_h_l58_c5_6c13 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l58_c5_6c13 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l58_c5_6c13_cond,
clk_counter_MUX_uart_mac_h_l58_c5_6c13_iftrue,
clk_counter_MUX_uart_mac_h_l58_c5_6c13_iffalse,
clk_counter_MUX_uart_mac_h_l58_c5_6c13_return_output);

-- state_MUX_uart_mac_h_l58_c5_6c13 : 0 clocks latency
state_MUX_uart_mac_h_l58_c5_6c13 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l58_c5_6c13_cond,
state_MUX_uart_mac_h_l58_c5_6c13_iftrue,
state_MUX_uart_mac_h_l58_c5_6c13_iffalse,
state_MUX_uart_mac_h_l58_c5_6c13_return_output);

-- BIN_OP_EQ_uart_mac_h_l65_c11_2a1e : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l65_c11_2a1e : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_left,
BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_right,
BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_return_output);

-- clk_counter_MUX_uart_mac_h_l65_c8_27e3 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l65_c8_27e3 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l65_c8_27e3_cond,
clk_counter_MUX_uart_mac_h_l65_c8_27e3_iftrue,
clk_counter_MUX_uart_mac_h_l65_c8_27e3_iffalse,
clk_counter_MUX_uart_mac_h_l65_c8_27e3_return_output);

-- bit_counter_MUX_uart_mac_h_l65_c8_27e3 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l65_c8_27e3 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l65_c8_27e3_cond,
bit_counter_MUX_uart_mac_h_l65_c8_27e3_iftrue,
bit_counter_MUX_uart_mac_h_l65_c8_27e3_iffalse,
bit_counter_MUX_uart_mac_h_l65_c8_27e3_return_output);

-- state_MUX_uart_mac_h_l65_c8_27e3 : 0 clocks latency
state_MUX_uart_mac_h_l65_c8_27e3 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l65_c8_27e3_cond,
state_MUX_uart_mac_h_l65_c8_27e3_iftrue,
state_MUX_uart_mac_h_l65_c8_27e3_iffalse,
state_MUX_uart_mac_h_l65_c8_27e3_return_output);

-- o_bit_stream_MUX_uart_mac_h_l65_c8_27e3 : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l65_c8_27e3 : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_cond,
o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_iftrue,
o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_iffalse,
o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_return_output);

-- BIN_OP_EQ_uart_mac_h_l68_c8_09f2 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l68_c8_09f2 : entity work.BIN_OP_EQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l68_c8_09f2_left,
BIN_OP_EQ_uart_mac_h_l68_c8_09f2_right,
BIN_OP_EQ_uart_mac_h_l68_c8_09f2_return_output);

-- clk_counter_MUX_uart_mac_h_l68_c5_cfe0 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l68_c5_cfe0 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l68_c5_cfe0_cond,
clk_counter_MUX_uart_mac_h_l68_c5_cfe0_iftrue,
clk_counter_MUX_uart_mac_h_l68_c5_cfe0_iffalse,
clk_counter_MUX_uart_mac_h_l68_c5_cfe0_return_output);

-- bit_counter_MUX_uart_mac_h_l68_c5_cfe0 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l68_c5_cfe0 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l68_c5_cfe0_cond,
bit_counter_MUX_uart_mac_h_l68_c5_cfe0_iftrue,
bit_counter_MUX_uart_mac_h_l68_c5_cfe0_iffalse,
bit_counter_MUX_uart_mac_h_l68_c5_cfe0_return_output);

-- state_MUX_uart_mac_h_l68_c5_cfe0 : 0 clocks latency
state_MUX_uart_mac_h_l68_c5_cfe0 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l68_c5_cfe0_cond,
state_MUX_uart_mac_h_l68_c5_cfe0_iftrue,
state_MUX_uart_mac_h_l68_c5_cfe0_iffalse,
state_MUX_uart_mac_h_l68_c5_cfe0_return_output);

-- BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_left,
BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_right,
BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_return_output);

-- BIN_OP_GTE_uart_mac_h_l72_c10_a4ab : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l72_c10_a4ab : entity work.BIN_OP_GTE_uint16_t_uint16_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_left,
BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_right,
BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_return_output);

-- clk_counter_MUX_uart_mac_h_l72_c7_d012 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l72_c7_d012 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l72_c7_d012_cond,
clk_counter_MUX_uart_mac_h_l72_c7_d012_iftrue,
clk_counter_MUX_uart_mac_h_l72_c7_d012_iffalse,
clk_counter_MUX_uart_mac_h_l72_c7_d012_return_output);

-- bit_counter_MUX_uart_mac_h_l72_c7_d012 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l72_c7_d012 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l72_c7_d012_cond,
bit_counter_MUX_uart_mac_h_l72_c7_d012_iftrue,
bit_counter_MUX_uart_mac_h_l72_c7_d012_iffalse,
bit_counter_MUX_uart_mac_h_l72_c7_d012_return_output);

-- state_MUX_uart_mac_h_l72_c7_d012 : 0 clocks latency
state_MUX_uart_mac_h_l72_c7_d012 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l72_c7_d012_cond,
state_MUX_uart_mac_h_l72_c7_d012_iftrue,
state_MUX_uart_mac_h_l72_c7_d012_iffalse,
state_MUX_uart_mac_h_l72_c7_d012_return_output);

-- BIN_OP_EQ_uart_mac_h_l81_c11_9c8a : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l81_c11_9c8a : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_left,
BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_right,
BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_return_output);

-- clk_counter_MUX_uart_mac_h_l81_c8_94ad : 0 clocks latency
clk_counter_MUX_uart_mac_h_l81_c8_94ad : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l81_c8_94ad_cond,
clk_counter_MUX_uart_mac_h_l81_c8_94ad_iftrue,
clk_counter_MUX_uart_mac_h_l81_c8_94ad_iffalse,
clk_counter_MUX_uart_mac_h_l81_c8_94ad_return_output);

-- bit_counter_MUX_uart_mac_h_l81_c8_94ad : 0 clocks latency
bit_counter_MUX_uart_mac_h_l81_c8_94ad : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l81_c8_94ad_cond,
bit_counter_MUX_uart_mac_h_l81_c8_94ad_iftrue,
bit_counter_MUX_uart_mac_h_l81_c8_94ad_iffalse,
bit_counter_MUX_uart_mac_h_l81_c8_94ad_return_output);

-- state_MUX_uart_mac_h_l81_c8_94ad : 0 clocks latency
state_MUX_uart_mac_h_l81_c8_94ad : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l81_c8_94ad_cond,
state_MUX_uart_mac_h_l81_c8_94ad_iftrue,
state_MUX_uart_mac_h_l81_c8_94ad_iffalse,
state_MUX_uart_mac_h_l81_c8_94ad_return_output);

-- o_bit_stream_MUX_uart_mac_h_l81_c8_94ad : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l81_c8_94ad : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_cond,
o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_iftrue,
o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_iffalse,
o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_return_output);

-- BIN_OP_PLUS_uart_mac_h_l84_c5_f39a : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l84_c5_f39a : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_left,
BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_right,
BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_return_output);

-- BIN_OP_GTE_uart_mac_h_l85_c8_3a8d : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l85_c8_3a8d : entity work.BIN_OP_GTE_uint16_t_uint16_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_left,
BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_right,
BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_return_output);

-- clk_counter_MUX_uart_mac_h_l85_c5_02a7 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l85_c5_02a7 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l85_c5_02a7_cond,
clk_counter_MUX_uart_mac_h_l85_c5_02a7_iftrue,
clk_counter_MUX_uart_mac_h_l85_c5_02a7_iffalse,
clk_counter_MUX_uart_mac_h_l85_c5_02a7_return_output);

-- bit_counter_MUX_uart_mac_h_l85_c5_02a7 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l85_c5_02a7 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l85_c5_02a7_cond,
bit_counter_MUX_uart_mac_h_l85_c5_02a7_iftrue,
bit_counter_MUX_uart_mac_h_l85_c5_02a7_iffalse,
bit_counter_MUX_uart_mac_h_l85_c5_02a7_return_output);

-- state_MUX_uart_mac_h_l85_c5_02a7 : 0 clocks latency
state_MUX_uart_mac_h_l85_c5_02a7 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l85_c5_02a7_cond,
state_MUX_uart_mac_h_l85_c5_02a7_iftrue,
state_MUX_uart_mac_h_l85_c5_02a7_iffalse,
state_MUX_uart_mac_h_l85_c5_02a7_return_output);

-- o_bit_stream_MUX_uart_mac_h_l85_c5_02a7 : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l85_c5_02a7 : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_cond,
o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_iftrue,
o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_iffalse,
o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_return_output);

-- BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f : entity work.BIN_OP_PLUS_uint4_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_left,
BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_right,
BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_return_output);

-- BIN_OP_EQ_uart_mac_h_l96_c10_c73b : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l96_c10_c73b : entity work.BIN_OP_EQ_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l96_c10_c73b_left,
BIN_OP_EQ_uart_mac_h_l96_c10_c73b_right,
BIN_OP_EQ_uart_mac_h_l96_c10_c73b_return_output);

-- state_MUX_uart_mac_h_l96_c7_3bc5 : 0 clocks latency
state_MUX_uart_mac_h_l96_c7_3bc5 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l96_c7_3bc5_cond,
state_MUX_uart_mac_h_l96_c7_3bc5_iftrue,
state_MUX_uart_mac_h_l96_c7_3bc5_iffalse,
state_MUX_uart_mac_h_l96_c7_3bc5_return_output);

-- UNARY_OP_NOT_uart_mac_h_l103_c38_77e6 : 0 clocks latency
UNARY_OP_NOT_uart_mac_h_l103_c38_77e6 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_uart_mac_h_l103_c38_77e6_expr,
UNARY_OP_NOT_uart_mac_h_l103_c38_77e6_return_output);

-- BIN_OP_AND_uart_mac_h_l103_c16_6a3f : 0 clocks latency
BIN_OP_AND_uart_mac_h_l103_c16_6a3f : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_uart_mac_h_l103_c16_6a3f_left,
BIN_OP_AND_uart_mac_h_l103_c16_6a3f_right,
BIN_OP_AND_uart_mac_h_l103_c16_6a3f_return_output);



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
 BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_return_output,
 clk_counter_MUX_uart_mac_h_l55_c3_ad47_return_output,
 bit_counter_MUX_uart_mac_h_l55_c3_ad47_return_output,
 state_MUX_uart_mac_h_l55_c3_ad47_return_output,
 o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_return_output,
 clk_counter_MUX_uart_mac_h_l58_c5_6c13_return_output,
 state_MUX_uart_mac_h_l58_c5_6c13_return_output,
 BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_return_output,
 clk_counter_MUX_uart_mac_h_l65_c8_27e3_return_output,
 bit_counter_MUX_uart_mac_h_l65_c8_27e3_return_output,
 state_MUX_uart_mac_h_l65_c8_27e3_return_output,
 o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_return_output,
 BIN_OP_EQ_uart_mac_h_l68_c8_09f2_return_output,
 clk_counter_MUX_uart_mac_h_l68_c5_cfe0_return_output,
 bit_counter_MUX_uart_mac_h_l68_c5_cfe0_return_output,
 state_MUX_uart_mac_h_l68_c5_cfe0_return_output,
 BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_return_output,
 BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_return_output,
 clk_counter_MUX_uart_mac_h_l72_c7_d012_return_output,
 bit_counter_MUX_uart_mac_h_l72_c7_d012_return_output,
 state_MUX_uart_mac_h_l72_c7_d012_return_output,
 BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_return_output,
 clk_counter_MUX_uart_mac_h_l81_c8_94ad_return_output,
 bit_counter_MUX_uart_mac_h_l81_c8_94ad_return_output,
 state_MUX_uart_mac_h_l81_c8_94ad_return_output,
 o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_return_output,
 BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_return_output,
 BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_return_output,
 clk_counter_MUX_uart_mac_h_l85_c5_02a7_return_output,
 bit_counter_MUX_uart_mac_h_l85_c5_02a7_return_output,
 state_MUX_uart_mac_h_l85_c5_02a7_return_output,
 o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_return_output,
 BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_return_output,
 BIN_OP_EQ_uart_mac_h_l96_c10_c73b_return_output,
 state_MUX_uart_mac_h_l96_c7_3bc5_return_output,
 UNARY_OP_NOT_uart_mac_h_l103_c38_77e6_return_output,
 BIN_OP_AND_uart_mac_h_l103_c16_6a3f_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : uart_rx_1b_t;
 variable VAR_input_wire : unsigned(0 downto 0);
 variable VAR_ready_for_bit_stream : unsigned(0 downto 0);
 variable VAR_o : uart_rx_1b_t;
 variable VAR_BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_ad47_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_6c13_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_ad47_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_27e3_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_ad47_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_ad47_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_ad47_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_ad47_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_27e3_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_ad47_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_ad47_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_ad47_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_6c13_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_ad47_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_27e3_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_ad47_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_ad47_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_6c13_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l62_c7_7d92 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_6c13_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_6c13_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_6c13_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_6c13_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_6c13_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_27e3_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_cfe0_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_27e3_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_94ad_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_27e3_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_27e3_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_cfe0_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_27e3_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_94ad_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_27e3_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_27e3_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_cfe0_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_27e3_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_94ad_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_27e3_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l68_c8_09f2_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l68_c8_09f2_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l68_c8_09f2_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_cfe0_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_d012_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_cfe0_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_cfe0_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_cfe0_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_d012_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_cfe0_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_cfe0_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_cfe0_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_d012_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_cfe0_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_cfe0_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l71_c7_00de : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_right : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_d012_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l76_c9_53a9 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_d012_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_d012_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_d012_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l77_c9_a807 : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_d012_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_d012_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_d012_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_d012_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_d012_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_94ad_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_02a7_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_94ad_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_94ad_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_94ad_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_02a7_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_94ad_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_94ad_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_94ad_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_02a7_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_94ad_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_94ad_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l84_c5_aab9 : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_right : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_02a7_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l88_c7_75e9 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_02a7_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_02a7_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_02a7_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l93_c7_ce9b : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_02a7_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_02a7_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_02a7_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_3bc5_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_02a7_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_02a7_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6_uart_mac_h_l85_c5_02a7_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_return_output : unsigned(4 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l96_c10_c73b_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l96_c10_c73b_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l96_c10_c73b_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_3bc5_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_3bc5_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_3bc5_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690_uart_mac_h_l103_c16_e70f_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l103_c16_6a3f_left : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_77e6_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_77e6_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l103_c16_6a3f_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l103_c16_6a3f_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe_uart_mac_h_l104_c10_e8a3_return_output : uart_rx_1b_t;
 variable VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l65_l81_l55_l85_DUPLICATE_e2cf_return_output : uint1_t_stream_t;
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
     VAR_BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_right := unsigned(uart_rx_state_t_to_slv(RECEIVE));
     VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_right := to_unsigned(1, 1);
     VAR_clk_counter_uart_mac_h_l76_c9_53a9 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_d012_iftrue := VAR_clk_counter_uart_mac_h_l76_c9_53a9;
     VAR_state_MUX_uart_mac_h_l96_c7_3bc5_iftrue := unsigned(uart_rx_state_t_to_slv(IDLE));
     VAR_BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_right := to_unsigned(217, 16);
     VAR_state_MUX_uart_mac_h_l58_c5_6c13_iftrue := unsigned(uart_rx_state_t_to_slv(WAIT_START));
     VAR_BIN_OP_EQ_uart_mac_h_l96_c10_c73b_right := to_unsigned(8, 4);
     VAR_BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_right := unsigned(uart_rx_state_t_to_slv(IDLE));
     VAR_clk_counter_uart_mac_h_l62_c7_7d92 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_6c13_iftrue := VAR_clk_counter_uart_mac_h_l62_c7_7d92;
     VAR_clk_counter_uart_mac_h_l88_c7_75e9 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_02a7_iftrue := VAR_clk_counter_uart_mac_h_l88_c7_75e9;
     VAR_BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_right := unsigned(uart_rx_state_t_to_slv(WAIT_START));
     VAR_BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_right := to_unsigned(108, 16);
     VAR_BIN_OP_EQ_uart_mac_h_l68_c8_09f2_right := to_unsigned(0, 1);
     VAR_bit_counter_uart_mac_h_l77_c9_a807 := resize(to_unsigned(0, 1), 4);
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_d012_iftrue := VAR_bit_counter_uart_mac_h_l77_c9_a807;
     VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_right := to_unsigned(1, 1);
     VAR_state_MUX_uart_mac_h_l72_c7_d012_iftrue := unsigned(uart_rx_state_t_to_slv(RECEIVE));
     VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_right := to_unsigned(1, 1);
     -- CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l65_l81_l55_l85_DUPLICATE_e2cf LATENCY=0
     VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l65_l81_l55_l85_DUPLICATE_e2cf_return_output := uart_rx_1b_t_NULL.bit_stream;

     -- Submodule level 1
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_iftrue := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l65_l81_l55_l85_DUPLICATE_e2cf_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_iffalse := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l65_l81_l55_l85_DUPLICATE_e2cf_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_iftrue := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l65_l81_l55_l85_DUPLICATE_e2cf_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_iffalse := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l65_l81_l55_l85_DUPLICATE_e2cf_return_output;

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
     VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_left := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_ad47_iftrue := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_cfe0_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_d012_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_94ad_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_02a7_iffalse := bit_counter;
     VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_left := clk_counter;
     VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_left := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_6c13_iffalse := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_cfe0_iffalse := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_94ad_iffalse := clk_counter;
     VAR_BIN_OP_EQ_uart_mac_h_l68_c8_09f2_left := VAR_input_wire;
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_6c13_cond := VAR_input_wire;
     VAR_state_MUX_uart_mac_h_l58_c5_6c13_cond := VAR_input_wire;
     VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_77e6_expr := VAR_ready_for_bit_stream;
     VAR_BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_left := state;
     VAR_BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_left := state;
     VAR_BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_left := state;
     VAR_state_MUX_uart_mac_h_l58_c5_6c13_iffalse := state;
     VAR_state_MUX_uart_mac_h_l68_c5_cfe0_iffalse := state;
     VAR_state_MUX_uart_mac_h_l72_c7_d012_iffalse := state;
     VAR_state_MUX_uart_mac_h_l81_c8_94ad_iffalse := state;
     VAR_state_MUX_uart_mac_h_l85_c5_02a7_iffalse := state;
     VAR_state_MUX_uart_mac_h_l96_c7_3bc5_iffalse := state;
     -- BIN_OP_PLUS[uart_mac_h_l71_c7_4e4f] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_left <= VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_left;
     BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_right <= VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_return_output := BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_return_output;

     -- BIN_OP_EQ[uart_mac_h_l65_c11_2a1e] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_left <= VAR_BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_left;
     BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_right <= VAR_BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_return_output := BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l84_c5_f39a] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_left <= VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_left;
     BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_right <= VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_return_output := BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_return_output;

     -- o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6[uart_mac_h_l85_c5_02a7] LATENCY=0
     VAR_o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6_uart_mac_h_l85_c5_02a7_return_output := CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6(
     VAR_input_wire,
     to_unsigned(1, 1));

     -- BIN_OP_EQ[uart_mac_h_l81_c11_9c8a] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_left <= VAR_BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_left;
     BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_right <= VAR_BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_return_output := BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_return_output;

     -- clk_counter_MUX[uart_mac_h_l58_c5_6c13] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l58_c5_6c13_cond <= VAR_clk_counter_MUX_uart_mac_h_l58_c5_6c13_cond;
     clk_counter_MUX_uart_mac_h_l58_c5_6c13_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l58_c5_6c13_iftrue;
     clk_counter_MUX_uart_mac_h_l58_c5_6c13_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l58_c5_6c13_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_6c13_return_output := clk_counter_MUX_uart_mac_h_l58_c5_6c13_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l93_c7_cc5f] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_left <= VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_left;
     BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_right <= VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_return_output := BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_return_output;

     -- BIN_OP_EQ[uart_mac_h_l55_c6_e8e9] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_left <= VAR_BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_left;
     BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_right <= VAR_BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_return_output := BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_return_output;

     -- BIN_OP_EQ[uart_mac_h_l68_c8_09f2] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l68_c8_09f2_left <= VAR_BIN_OP_EQ_uart_mac_h_l68_c8_09f2_left;
     BIN_OP_EQ_uart_mac_h_l68_c8_09f2_right <= VAR_BIN_OP_EQ_uart_mac_h_l68_c8_09f2_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l68_c8_09f2_return_output := BIN_OP_EQ_uart_mac_h_l68_c8_09f2_return_output;

     -- state_MUX[uart_mac_h_l58_c5_6c13] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l58_c5_6c13_cond <= VAR_state_MUX_uart_mac_h_l58_c5_6c13_cond;
     state_MUX_uart_mac_h_l58_c5_6c13_iftrue <= VAR_state_MUX_uart_mac_h_l58_c5_6c13_iftrue;
     state_MUX_uart_mac_h_l58_c5_6c13_iffalse <= VAR_state_MUX_uart_mac_h_l58_c5_6c13_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l58_c5_6c13_return_output := state_MUX_uart_mac_h_l58_c5_6c13_return_output;

     -- UNARY_OP_NOT[uart_mac_h_l103_c38_77e6] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_uart_mac_h_l103_c38_77e6_expr <= VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_77e6_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_77e6_return_output := UNARY_OP_NOT_uart_mac_h_l103_c38_77e6_return_output;

     -- Submodule level 1
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_ad47_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_ad47_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_return_output;
     VAR_state_MUX_uart_mac_h_l55_c3_ad47_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_e8e9_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_27e3_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_27e3_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_return_output;
     VAR_state_MUX_uart_mac_h_l65_c8_27e3_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_2a1e_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_cfe0_cond := VAR_BIN_OP_EQ_uart_mac_h_l68_c8_09f2_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_cfe0_cond := VAR_BIN_OP_EQ_uart_mac_h_l68_c8_09f2_return_output;
     VAR_state_MUX_uart_mac_h_l68_c5_cfe0_cond := VAR_BIN_OP_EQ_uart_mac_h_l68_c8_09f2_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_94ad_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_94ad_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_return_output;
     VAR_state_MUX_uart_mac_h_l81_c8_94ad_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_9c8a_return_output;
     VAR_clk_counter_uart_mac_h_l71_c7_00de := resize(VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_4e4f_return_output, 16);
     VAR_clk_counter_uart_mac_h_l84_c5_aab9 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f39a_return_output, 16);
     VAR_bit_counter_uart_mac_h_l93_c7_ce9b := resize(VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_cc5f_return_output, 4);
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_6a3f_right := VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_77e6_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_ad47_iftrue := VAR_clk_counter_MUX_uart_mac_h_l58_c5_6c13_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_iftrue := VAR_o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6_uart_mac_h_l85_c5_02a7_return_output;
     VAR_state_MUX_uart_mac_h_l55_c3_ad47_iftrue := VAR_state_MUX_uart_mac_h_l58_c5_6c13_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l96_c10_c73b_left := VAR_bit_counter_uart_mac_h_l93_c7_ce9b;
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_02a7_iftrue := VAR_bit_counter_uart_mac_h_l93_c7_ce9b;
     VAR_BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_left := VAR_clk_counter_uart_mac_h_l71_c7_00de;
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_d012_iffalse := VAR_clk_counter_uart_mac_h_l71_c7_00de;
     VAR_BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_left := VAR_clk_counter_uart_mac_h_l84_c5_aab9;
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_02a7_iffalse := VAR_clk_counter_uart_mac_h_l84_c5_aab9;
     -- BIN_OP_GTE[uart_mac_h_l72_c10_a4ab] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_left <= VAR_BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_left;
     BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_right <= VAR_BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_return_output := BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_return_output;

     -- BIN_OP_GTE[uart_mac_h_l85_c8_3a8d] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_left <= VAR_BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_left;
     BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_right <= VAR_BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_return_output := BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_return_output;

     -- BIN_OP_EQ[uart_mac_h_l96_c10_c73b] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l96_c10_c73b_left <= VAR_BIN_OP_EQ_uart_mac_h_l96_c10_c73b_left;
     BIN_OP_EQ_uart_mac_h_l96_c10_c73b_right <= VAR_BIN_OP_EQ_uart_mac_h_l96_c10_c73b_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l96_c10_c73b_return_output := BIN_OP_EQ_uart_mac_h_l96_c10_c73b_return_output;

     -- Submodule level 2
     VAR_state_MUX_uart_mac_h_l96_c7_3bc5_cond := VAR_BIN_OP_EQ_uart_mac_h_l96_c10_c73b_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_d012_cond := VAR_BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_d012_cond := VAR_BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_return_output;
     VAR_state_MUX_uart_mac_h_l72_c7_d012_cond := VAR_BIN_OP_GTE_uart_mac_h_l72_c10_a4ab_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_02a7_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_02a7_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_return_output;
     VAR_state_MUX_uart_mac_h_l85_c5_02a7_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_3a8d_return_output;
     -- bit_counter_MUX[uart_mac_h_l72_c7_d012] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l72_c7_d012_cond <= VAR_bit_counter_MUX_uart_mac_h_l72_c7_d012_cond;
     bit_counter_MUX_uart_mac_h_l72_c7_d012_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l72_c7_d012_iftrue;
     bit_counter_MUX_uart_mac_h_l72_c7_d012_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l72_c7_d012_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_d012_return_output := bit_counter_MUX_uart_mac_h_l72_c7_d012_return_output;

     -- o_bit_stream_MUX[uart_mac_h_l85_c5_02a7] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_cond;
     o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_iftrue;
     o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_return_output := o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_return_output;

     -- state_MUX[uart_mac_h_l72_c7_d012] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l72_c7_d012_cond <= VAR_state_MUX_uart_mac_h_l72_c7_d012_cond;
     state_MUX_uart_mac_h_l72_c7_d012_iftrue <= VAR_state_MUX_uart_mac_h_l72_c7_d012_iftrue;
     state_MUX_uart_mac_h_l72_c7_d012_iffalse <= VAR_state_MUX_uart_mac_h_l72_c7_d012_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l72_c7_d012_return_output := state_MUX_uart_mac_h_l72_c7_d012_return_output;

     -- clk_counter_MUX[uart_mac_h_l72_c7_d012] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l72_c7_d012_cond <= VAR_clk_counter_MUX_uart_mac_h_l72_c7_d012_cond;
     clk_counter_MUX_uart_mac_h_l72_c7_d012_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l72_c7_d012_iftrue;
     clk_counter_MUX_uart_mac_h_l72_c7_d012_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l72_c7_d012_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_d012_return_output := clk_counter_MUX_uart_mac_h_l72_c7_d012_return_output;

     -- clk_counter_MUX[uart_mac_h_l85_c5_02a7] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l85_c5_02a7_cond <= VAR_clk_counter_MUX_uart_mac_h_l85_c5_02a7_cond;
     clk_counter_MUX_uart_mac_h_l85_c5_02a7_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l85_c5_02a7_iftrue;
     clk_counter_MUX_uart_mac_h_l85_c5_02a7_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l85_c5_02a7_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_02a7_return_output := clk_counter_MUX_uart_mac_h_l85_c5_02a7_return_output;

     -- bit_counter_MUX[uart_mac_h_l85_c5_02a7] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l85_c5_02a7_cond <= VAR_bit_counter_MUX_uart_mac_h_l85_c5_02a7_cond;
     bit_counter_MUX_uart_mac_h_l85_c5_02a7_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l85_c5_02a7_iftrue;
     bit_counter_MUX_uart_mac_h_l85_c5_02a7_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l85_c5_02a7_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_02a7_return_output := bit_counter_MUX_uart_mac_h_l85_c5_02a7_return_output;

     -- state_MUX[uart_mac_h_l96_c7_3bc5] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l96_c7_3bc5_cond <= VAR_state_MUX_uart_mac_h_l96_c7_3bc5_cond;
     state_MUX_uart_mac_h_l96_c7_3bc5_iftrue <= VAR_state_MUX_uart_mac_h_l96_c7_3bc5_iftrue;
     state_MUX_uart_mac_h_l96_c7_3bc5_iffalse <= VAR_state_MUX_uart_mac_h_l96_c7_3bc5_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l96_c7_3bc5_return_output := state_MUX_uart_mac_h_l96_c7_3bc5_return_output;

     -- Submodule level 3
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_cfe0_iftrue := VAR_bit_counter_MUX_uart_mac_h_l72_c7_d012_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_94ad_iftrue := VAR_bit_counter_MUX_uart_mac_h_l85_c5_02a7_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_cfe0_iftrue := VAR_clk_counter_MUX_uart_mac_h_l72_c7_d012_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_94ad_iftrue := VAR_clk_counter_MUX_uart_mac_h_l85_c5_02a7_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_iftrue := VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_02a7_return_output;
     VAR_state_MUX_uart_mac_h_l68_c5_cfe0_iftrue := VAR_state_MUX_uart_mac_h_l72_c7_d012_return_output;
     VAR_state_MUX_uart_mac_h_l85_c5_02a7_iftrue := VAR_state_MUX_uart_mac_h_l96_c7_3bc5_return_output;
     -- state_MUX[uart_mac_h_l68_c5_cfe0] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l68_c5_cfe0_cond <= VAR_state_MUX_uart_mac_h_l68_c5_cfe0_cond;
     state_MUX_uart_mac_h_l68_c5_cfe0_iftrue <= VAR_state_MUX_uart_mac_h_l68_c5_cfe0_iftrue;
     state_MUX_uart_mac_h_l68_c5_cfe0_iffalse <= VAR_state_MUX_uart_mac_h_l68_c5_cfe0_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l68_c5_cfe0_return_output := state_MUX_uart_mac_h_l68_c5_cfe0_return_output;

     -- clk_counter_MUX[uart_mac_h_l68_c5_cfe0] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l68_c5_cfe0_cond <= VAR_clk_counter_MUX_uart_mac_h_l68_c5_cfe0_cond;
     clk_counter_MUX_uart_mac_h_l68_c5_cfe0_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l68_c5_cfe0_iftrue;
     clk_counter_MUX_uart_mac_h_l68_c5_cfe0_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l68_c5_cfe0_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_cfe0_return_output := clk_counter_MUX_uart_mac_h_l68_c5_cfe0_return_output;

     -- state_MUX[uart_mac_h_l85_c5_02a7] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l85_c5_02a7_cond <= VAR_state_MUX_uart_mac_h_l85_c5_02a7_cond;
     state_MUX_uart_mac_h_l85_c5_02a7_iftrue <= VAR_state_MUX_uart_mac_h_l85_c5_02a7_iftrue;
     state_MUX_uart_mac_h_l85_c5_02a7_iffalse <= VAR_state_MUX_uart_mac_h_l85_c5_02a7_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l85_c5_02a7_return_output := state_MUX_uart_mac_h_l85_c5_02a7_return_output;

     -- clk_counter_MUX[uart_mac_h_l81_c8_94ad] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l81_c8_94ad_cond <= VAR_clk_counter_MUX_uart_mac_h_l81_c8_94ad_cond;
     clk_counter_MUX_uart_mac_h_l81_c8_94ad_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l81_c8_94ad_iftrue;
     clk_counter_MUX_uart_mac_h_l81_c8_94ad_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l81_c8_94ad_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_94ad_return_output := clk_counter_MUX_uart_mac_h_l81_c8_94ad_return_output;

     -- bit_counter_MUX[uart_mac_h_l68_c5_cfe0] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l68_c5_cfe0_cond <= VAR_bit_counter_MUX_uart_mac_h_l68_c5_cfe0_cond;
     bit_counter_MUX_uart_mac_h_l68_c5_cfe0_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l68_c5_cfe0_iftrue;
     bit_counter_MUX_uart_mac_h_l68_c5_cfe0_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l68_c5_cfe0_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_cfe0_return_output := bit_counter_MUX_uart_mac_h_l68_c5_cfe0_return_output;

     -- bit_counter_MUX[uart_mac_h_l81_c8_94ad] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l81_c8_94ad_cond <= VAR_bit_counter_MUX_uart_mac_h_l81_c8_94ad_cond;
     bit_counter_MUX_uart_mac_h_l81_c8_94ad_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l81_c8_94ad_iftrue;
     bit_counter_MUX_uart_mac_h_l81_c8_94ad_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l81_c8_94ad_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_94ad_return_output := bit_counter_MUX_uart_mac_h_l81_c8_94ad_return_output;

     -- o_bit_stream_MUX[uart_mac_h_l81_c8_94ad] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_cond;
     o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_iftrue;
     o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_return_output := o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_return_output;

     -- Submodule level 4
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_27e3_iftrue := VAR_bit_counter_MUX_uart_mac_h_l68_c5_cfe0_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_27e3_iffalse := VAR_bit_counter_MUX_uart_mac_h_l81_c8_94ad_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_27e3_iftrue := VAR_clk_counter_MUX_uart_mac_h_l68_c5_cfe0_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_27e3_iffalse := VAR_clk_counter_MUX_uart_mac_h_l81_c8_94ad_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_iffalse := VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_94ad_return_output;
     VAR_state_MUX_uart_mac_h_l65_c8_27e3_iftrue := VAR_state_MUX_uart_mac_h_l68_c5_cfe0_return_output;
     VAR_state_MUX_uart_mac_h_l81_c8_94ad_iftrue := VAR_state_MUX_uart_mac_h_l85_c5_02a7_return_output;
     -- clk_counter_MUX[uart_mac_h_l65_c8_27e3] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l65_c8_27e3_cond <= VAR_clk_counter_MUX_uart_mac_h_l65_c8_27e3_cond;
     clk_counter_MUX_uart_mac_h_l65_c8_27e3_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l65_c8_27e3_iftrue;
     clk_counter_MUX_uart_mac_h_l65_c8_27e3_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l65_c8_27e3_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_27e3_return_output := clk_counter_MUX_uart_mac_h_l65_c8_27e3_return_output;

     -- bit_counter_MUX[uart_mac_h_l65_c8_27e3] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l65_c8_27e3_cond <= VAR_bit_counter_MUX_uart_mac_h_l65_c8_27e3_cond;
     bit_counter_MUX_uart_mac_h_l65_c8_27e3_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l65_c8_27e3_iftrue;
     bit_counter_MUX_uart_mac_h_l65_c8_27e3_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l65_c8_27e3_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_27e3_return_output := bit_counter_MUX_uart_mac_h_l65_c8_27e3_return_output;

     -- state_MUX[uart_mac_h_l81_c8_94ad] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l81_c8_94ad_cond <= VAR_state_MUX_uart_mac_h_l81_c8_94ad_cond;
     state_MUX_uart_mac_h_l81_c8_94ad_iftrue <= VAR_state_MUX_uart_mac_h_l81_c8_94ad_iftrue;
     state_MUX_uart_mac_h_l81_c8_94ad_iffalse <= VAR_state_MUX_uart_mac_h_l81_c8_94ad_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l81_c8_94ad_return_output := state_MUX_uart_mac_h_l81_c8_94ad_return_output;

     -- o_bit_stream_MUX[uart_mac_h_l65_c8_27e3] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_cond;
     o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_iftrue;
     o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_return_output := o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_return_output;

     -- Submodule level 5
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_ad47_iffalse := VAR_bit_counter_MUX_uart_mac_h_l65_c8_27e3_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_ad47_iffalse := VAR_clk_counter_MUX_uart_mac_h_l65_c8_27e3_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_iffalse := VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_27e3_return_output;
     VAR_state_MUX_uart_mac_h_l65_c8_27e3_iffalse := VAR_state_MUX_uart_mac_h_l81_c8_94ad_return_output;
     -- clk_counter_MUX[uart_mac_h_l55_c3_ad47] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l55_c3_ad47_cond <= VAR_clk_counter_MUX_uart_mac_h_l55_c3_ad47_cond;
     clk_counter_MUX_uart_mac_h_l55_c3_ad47_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l55_c3_ad47_iftrue;
     clk_counter_MUX_uart_mac_h_l55_c3_ad47_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l55_c3_ad47_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_ad47_return_output := clk_counter_MUX_uart_mac_h_l55_c3_ad47_return_output;

     -- state_MUX[uart_mac_h_l65_c8_27e3] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l65_c8_27e3_cond <= VAR_state_MUX_uart_mac_h_l65_c8_27e3_cond;
     state_MUX_uart_mac_h_l65_c8_27e3_iftrue <= VAR_state_MUX_uart_mac_h_l65_c8_27e3_iftrue;
     state_MUX_uart_mac_h_l65_c8_27e3_iffalse <= VAR_state_MUX_uart_mac_h_l65_c8_27e3_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l65_c8_27e3_return_output := state_MUX_uart_mac_h_l65_c8_27e3_return_output;

     -- bit_counter_MUX[uart_mac_h_l55_c3_ad47] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l55_c3_ad47_cond <= VAR_bit_counter_MUX_uart_mac_h_l55_c3_ad47_cond;
     bit_counter_MUX_uart_mac_h_l55_c3_ad47_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l55_c3_ad47_iftrue;
     bit_counter_MUX_uart_mac_h_l55_c3_ad47_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l55_c3_ad47_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_ad47_return_output := bit_counter_MUX_uart_mac_h_l55_c3_ad47_return_output;

     -- o_bit_stream_MUX[uart_mac_h_l55_c3_ad47] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_cond;
     o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_iftrue;
     o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_return_output := o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_return_output;

     -- Submodule level 6
     REG_VAR_bit_counter := VAR_bit_counter_MUX_uart_mac_h_l55_c3_ad47_return_output;
     REG_VAR_clk_counter := VAR_clk_counter_MUX_uart_mac_h_l55_c3_ad47_return_output;
     VAR_state_MUX_uart_mac_h_l55_c3_ad47_iffalse := VAR_state_MUX_uart_mac_h_l65_c8_27e3_return_output;
     -- state_MUX[uart_mac_h_l55_c3_ad47] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l55_c3_ad47_cond <= VAR_state_MUX_uart_mac_h_l55_c3_ad47_cond;
     state_MUX_uart_mac_h_l55_c3_ad47_iftrue <= VAR_state_MUX_uart_mac_h_l55_c3_ad47_iftrue;
     state_MUX_uart_mac_h_l55_c3_ad47_iffalse <= VAR_state_MUX_uart_mac_h_l55_c3_ad47_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l55_c3_ad47_return_output := state_MUX_uart_mac_h_l55_c3_ad47_return_output;

     -- CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690[uart_mac_h_l103_c16_e70f] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690_uart_mac_h_l103_c16_e70f_return_output := CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690(
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_return_output);

     -- Submodule level 7
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_6a3f_left := VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690_uart_mac_h_l103_c16_e70f_return_output;
     REG_VAR_state := VAR_state_MUX_uart_mac_h_l55_c3_ad47_return_output;
     -- BIN_OP_AND[uart_mac_h_l103_c16_6a3f] LATENCY=0
     -- Inputs
     BIN_OP_AND_uart_mac_h_l103_c16_6a3f_left <= VAR_BIN_OP_AND_uart_mac_h_l103_c16_6a3f_left;
     BIN_OP_AND_uart_mac_h_l103_c16_6a3f_right <= VAR_BIN_OP_AND_uart_mac_h_l103_c16_6a3f_right;
     -- Outputs
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_6a3f_return_output := BIN_OP_AND_uart_mac_h_l103_c16_6a3f_return_output;

     -- Submodule level 8
     -- CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe[uart_mac_h_l104_c10_e8a3] LATENCY=0
     VAR_CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe_uart_mac_h_l104_c10_e8a3_return_output := CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe(
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_ad47_return_output,
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_6a3f_return_output);

     -- Submodule level 9
     VAR_return_output := VAR_CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe_uart_mac_h_l104_c10_e8a3_return_output;
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
