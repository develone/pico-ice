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
-- BIN_OP_EQ[uart_mac_h_l55_c6_d0b4]
signal BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l55_c3_6526]
signal clk_counter_MUX_uart_mac_h_l55_c3_6526_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l55_c3_6526_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l55_c3_6526_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l55_c3_6526_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l55_c3_6526]
signal bit_counter_MUX_uart_mac_h_l55_c3_6526_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l55_c3_6526_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l55_c3_6526_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l55_c3_6526_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l55_c3_6526]
signal state_MUX_uart_mac_h_l55_c3_6526_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l55_c3_6526_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l55_c3_6526_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l55_c3_6526_return_output : unsigned(1 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l55_c3_6526]
signal o_bit_stream_MUX_uart_mac_h_l55_c3_6526_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l55_c3_6526_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l55_c3_6526_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l55_c3_6526_return_output : uint1_t_stream_t;

-- clk_counter_MUX[uart_mac_h_l58_c5_f1ab]
signal clk_counter_MUX_uart_mac_h_l58_c5_f1ab_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l58_c5_f1ab_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l58_c5_f1ab_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l58_c5_f1ab_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l58_c5_f1ab]
signal state_MUX_uart_mac_h_l58_c5_f1ab_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l58_c5_f1ab_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l58_c5_f1ab_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l58_c5_f1ab_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l65_c11_af15]
signal BIN_OP_EQ_uart_mac_h_l65_c11_af15_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l65_c11_af15_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l65_c11_af15_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l65_c8_d49b]
signal clk_counter_MUX_uart_mac_h_l65_c8_d49b_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l65_c8_d49b_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l65_c8_d49b_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l65_c8_d49b_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l65_c8_d49b]
signal bit_counter_MUX_uart_mac_h_l65_c8_d49b_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l65_c8_d49b_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l65_c8_d49b_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l65_c8_d49b_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l65_c8_d49b]
signal state_MUX_uart_mac_h_l65_c8_d49b_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l65_c8_d49b_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l65_c8_d49b_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l65_c8_d49b_return_output : unsigned(1 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l65_c8_d49b]
signal o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_return_output : uint1_t_stream_t;

-- BIN_OP_EQ[uart_mac_h_l68_c8_4276]
signal BIN_OP_EQ_uart_mac_h_l68_c8_4276_left : unsigned(0 downto 0);
signal BIN_OP_EQ_uart_mac_h_l68_c8_4276_right : unsigned(0 downto 0);
signal BIN_OP_EQ_uart_mac_h_l68_c8_4276_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l68_c5_f463]
signal clk_counter_MUX_uart_mac_h_l68_c5_f463_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l68_c5_f463_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l68_c5_f463_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l68_c5_f463_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l68_c5_f463]
signal bit_counter_MUX_uart_mac_h_l68_c5_f463_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l68_c5_f463_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l68_c5_f463_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l68_c5_f463_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l68_c5_f463]
signal state_MUX_uart_mac_h_l68_c5_f463_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l68_c5_f463_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l68_c5_f463_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l68_c5_f463_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l71_c7_1a20]
signal BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l72_c10_99f0]
signal BIN_OP_GTE_uart_mac_h_l72_c10_99f0_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l72_c10_99f0_right : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l72_c10_99f0_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l72_c7_9a13]
signal clk_counter_MUX_uart_mac_h_l72_c7_9a13_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l72_c7_9a13_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l72_c7_9a13_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l72_c7_9a13_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l72_c7_9a13]
signal bit_counter_MUX_uart_mac_h_l72_c7_9a13_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l72_c7_9a13_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l72_c7_9a13_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l72_c7_9a13_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l72_c7_9a13]
signal state_MUX_uart_mac_h_l72_c7_9a13_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l72_c7_9a13_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l72_c7_9a13_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l72_c7_9a13_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[uart_mac_h_l81_c11_1a71]
signal BIN_OP_EQ_uart_mac_h_l81_c11_1a71_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l81_c11_1a71_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l81_c11_1a71_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l81_c8_035d]
signal clk_counter_MUX_uart_mac_h_l81_c8_035d_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l81_c8_035d_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l81_c8_035d_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l81_c8_035d_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l81_c8_035d]
signal bit_counter_MUX_uart_mac_h_l81_c8_035d_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l81_c8_035d_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l81_c8_035d_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l81_c8_035d_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l81_c8_035d]
signal state_MUX_uart_mac_h_l81_c8_035d_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l81_c8_035d_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l81_c8_035d_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l81_c8_035d_return_output : unsigned(1 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l81_c8_035d]
signal o_bit_stream_MUX_uart_mac_h_l81_c8_035d_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l81_c8_035d_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l81_c8_035d_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l81_c8_035d_return_output : uint1_t_stream_t;

-- BIN_OP_PLUS[uart_mac_h_l84_c5_f6b8]
signal BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l85_c8_e975]
signal BIN_OP_GTE_uart_mac_h_l85_c8_e975_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l85_c8_e975_right : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l85_c8_e975_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l85_c5_a7ac]
signal clk_counter_MUX_uart_mac_h_l85_c5_a7ac_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l85_c5_a7ac_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l85_c5_a7ac_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l85_c5_a7ac_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l85_c5_a7ac]
signal bit_counter_MUX_uart_mac_h_l85_c5_a7ac_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l85_c5_a7ac_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l85_c5_a7ac_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l85_c5_a7ac_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l85_c5_a7ac]
signal state_MUX_uart_mac_h_l85_c5_a7ac_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l85_c5_a7ac_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l85_c5_a7ac_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l85_c5_a7ac_return_output : unsigned(1 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l85_c5_a7ac]
signal o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_return_output : uint1_t_stream_t;

-- BIN_OP_PLUS[uart_mac_h_l93_c7_2e5b]
signal BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_left : unsigned(3 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_return_output : unsigned(4 downto 0);

-- BIN_OP_EQ[uart_mac_h_l96_c10_30f2]
signal BIN_OP_EQ_uart_mac_h_l96_c10_30f2_left : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l96_c10_30f2_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l96_c10_30f2_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l96_c7_c30e]
signal state_MUX_uart_mac_h_l96_c7_c30e_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l96_c7_c30e_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l96_c7_c30e_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l96_c7_c30e_return_output : unsigned(1 downto 0);

-- UNARY_OP_NOT[uart_mac_h_l103_c38_4fe1]
signal UNARY_OP_NOT_uart_mac_h_l103_c38_4fe1_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_uart_mac_h_l103_c38_4fe1_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[uart_mac_h_l103_c16_96b3]
signal BIN_OP_AND_uart_mac_h_l103_c16_96b3_left : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l103_c16_96b3_right : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l103_c16_96b3_return_output : unsigned(0 downto 0);

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
-- BIN_OP_EQ_uart_mac_h_l55_c6_d0b4 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l55_c6_d0b4 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_left,
BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_right,
BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_return_output);

-- clk_counter_MUX_uart_mac_h_l55_c3_6526 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l55_c3_6526 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l55_c3_6526_cond,
clk_counter_MUX_uart_mac_h_l55_c3_6526_iftrue,
clk_counter_MUX_uart_mac_h_l55_c3_6526_iffalse,
clk_counter_MUX_uart_mac_h_l55_c3_6526_return_output);

-- bit_counter_MUX_uart_mac_h_l55_c3_6526 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l55_c3_6526 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l55_c3_6526_cond,
bit_counter_MUX_uart_mac_h_l55_c3_6526_iftrue,
bit_counter_MUX_uart_mac_h_l55_c3_6526_iffalse,
bit_counter_MUX_uart_mac_h_l55_c3_6526_return_output);

-- state_MUX_uart_mac_h_l55_c3_6526 : 0 clocks latency
state_MUX_uart_mac_h_l55_c3_6526 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l55_c3_6526_cond,
state_MUX_uart_mac_h_l55_c3_6526_iftrue,
state_MUX_uart_mac_h_l55_c3_6526_iffalse,
state_MUX_uart_mac_h_l55_c3_6526_return_output);

-- o_bit_stream_MUX_uart_mac_h_l55_c3_6526 : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l55_c3_6526 : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l55_c3_6526_cond,
o_bit_stream_MUX_uart_mac_h_l55_c3_6526_iftrue,
o_bit_stream_MUX_uart_mac_h_l55_c3_6526_iffalse,
o_bit_stream_MUX_uart_mac_h_l55_c3_6526_return_output);

-- clk_counter_MUX_uart_mac_h_l58_c5_f1ab : 0 clocks latency
clk_counter_MUX_uart_mac_h_l58_c5_f1ab : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l58_c5_f1ab_cond,
clk_counter_MUX_uart_mac_h_l58_c5_f1ab_iftrue,
clk_counter_MUX_uart_mac_h_l58_c5_f1ab_iffalse,
clk_counter_MUX_uart_mac_h_l58_c5_f1ab_return_output);

-- state_MUX_uart_mac_h_l58_c5_f1ab : 0 clocks latency
state_MUX_uart_mac_h_l58_c5_f1ab : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l58_c5_f1ab_cond,
state_MUX_uart_mac_h_l58_c5_f1ab_iftrue,
state_MUX_uart_mac_h_l58_c5_f1ab_iffalse,
state_MUX_uart_mac_h_l58_c5_f1ab_return_output);

-- BIN_OP_EQ_uart_mac_h_l65_c11_af15 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l65_c11_af15 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l65_c11_af15_left,
BIN_OP_EQ_uart_mac_h_l65_c11_af15_right,
BIN_OP_EQ_uart_mac_h_l65_c11_af15_return_output);

-- clk_counter_MUX_uart_mac_h_l65_c8_d49b : 0 clocks latency
clk_counter_MUX_uart_mac_h_l65_c8_d49b : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l65_c8_d49b_cond,
clk_counter_MUX_uart_mac_h_l65_c8_d49b_iftrue,
clk_counter_MUX_uart_mac_h_l65_c8_d49b_iffalse,
clk_counter_MUX_uart_mac_h_l65_c8_d49b_return_output);

-- bit_counter_MUX_uart_mac_h_l65_c8_d49b : 0 clocks latency
bit_counter_MUX_uart_mac_h_l65_c8_d49b : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l65_c8_d49b_cond,
bit_counter_MUX_uart_mac_h_l65_c8_d49b_iftrue,
bit_counter_MUX_uart_mac_h_l65_c8_d49b_iffalse,
bit_counter_MUX_uart_mac_h_l65_c8_d49b_return_output);

-- state_MUX_uart_mac_h_l65_c8_d49b : 0 clocks latency
state_MUX_uart_mac_h_l65_c8_d49b : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l65_c8_d49b_cond,
state_MUX_uart_mac_h_l65_c8_d49b_iftrue,
state_MUX_uart_mac_h_l65_c8_d49b_iffalse,
state_MUX_uart_mac_h_l65_c8_d49b_return_output);

-- o_bit_stream_MUX_uart_mac_h_l65_c8_d49b : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l65_c8_d49b : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_cond,
o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_iftrue,
o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_iffalse,
o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_return_output);

-- BIN_OP_EQ_uart_mac_h_l68_c8_4276 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l68_c8_4276 : entity work.BIN_OP_EQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l68_c8_4276_left,
BIN_OP_EQ_uart_mac_h_l68_c8_4276_right,
BIN_OP_EQ_uart_mac_h_l68_c8_4276_return_output);

-- clk_counter_MUX_uart_mac_h_l68_c5_f463 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l68_c5_f463 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l68_c5_f463_cond,
clk_counter_MUX_uart_mac_h_l68_c5_f463_iftrue,
clk_counter_MUX_uart_mac_h_l68_c5_f463_iffalse,
clk_counter_MUX_uart_mac_h_l68_c5_f463_return_output);

-- bit_counter_MUX_uart_mac_h_l68_c5_f463 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l68_c5_f463 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l68_c5_f463_cond,
bit_counter_MUX_uart_mac_h_l68_c5_f463_iftrue,
bit_counter_MUX_uart_mac_h_l68_c5_f463_iffalse,
bit_counter_MUX_uart_mac_h_l68_c5_f463_return_output);

-- state_MUX_uart_mac_h_l68_c5_f463 : 0 clocks latency
state_MUX_uart_mac_h_l68_c5_f463 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l68_c5_f463_cond,
state_MUX_uart_mac_h_l68_c5_f463_iftrue,
state_MUX_uart_mac_h_l68_c5_f463_iffalse,
state_MUX_uart_mac_h_l68_c5_f463_return_output);

-- BIN_OP_PLUS_uart_mac_h_l71_c7_1a20 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l71_c7_1a20 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_left,
BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_right,
BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_return_output);

-- BIN_OP_GTE_uart_mac_h_l72_c10_99f0 : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l72_c10_99f0 : entity work.BIN_OP_GTE_uint16_t_uint16_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_uart_mac_h_l72_c10_99f0_left,
BIN_OP_GTE_uart_mac_h_l72_c10_99f0_right,
BIN_OP_GTE_uart_mac_h_l72_c10_99f0_return_output);

-- clk_counter_MUX_uart_mac_h_l72_c7_9a13 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l72_c7_9a13 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l72_c7_9a13_cond,
clk_counter_MUX_uart_mac_h_l72_c7_9a13_iftrue,
clk_counter_MUX_uart_mac_h_l72_c7_9a13_iffalse,
clk_counter_MUX_uart_mac_h_l72_c7_9a13_return_output);

-- bit_counter_MUX_uart_mac_h_l72_c7_9a13 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l72_c7_9a13 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l72_c7_9a13_cond,
bit_counter_MUX_uart_mac_h_l72_c7_9a13_iftrue,
bit_counter_MUX_uart_mac_h_l72_c7_9a13_iffalse,
bit_counter_MUX_uart_mac_h_l72_c7_9a13_return_output);

-- state_MUX_uart_mac_h_l72_c7_9a13 : 0 clocks latency
state_MUX_uart_mac_h_l72_c7_9a13 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l72_c7_9a13_cond,
state_MUX_uart_mac_h_l72_c7_9a13_iftrue,
state_MUX_uart_mac_h_l72_c7_9a13_iffalse,
state_MUX_uart_mac_h_l72_c7_9a13_return_output);

-- BIN_OP_EQ_uart_mac_h_l81_c11_1a71 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l81_c11_1a71 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l81_c11_1a71_left,
BIN_OP_EQ_uart_mac_h_l81_c11_1a71_right,
BIN_OP_EQ_uart_mac_h_l81_c11_1a71_return_output);

-- clk_counter_MUX_uart_mac_h_l81_c8_035d : 0 clocks latency
clk_counter_MUX_uart_mac_h_l81_c8_035d : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l81_c8_035d_cond,
clk_counter_MUX_uart_mac_h_l81_c8_035d_iftrue,
clk_counter_MUX_uart_mac_h_l81_c8_035d_iffalse,
clk_counter_MUX_uart_mac_h_l81_c8_035d_return_output);

-- bit_counter_MUX_uart_mac_h_l81_c8_035d : 0 clocks latency
bit_counter_MUX_uart_mac_h_l81_c8_035d : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l81_c8_035d_cond,
bit_counter_MUX_uart_mac_h_l81_c8_035d_iftrue,
bit_counter_MUX_uart_mac_h_l81_c8_035d_iffalse,
bit_counter_MUX_uart_mac_h_l81_c8_035d_return_output);

-- state_MUX_uart_mac_h_l81_c8_035d : 0 clocks latency
state_MUX_uart_mac_h_l81_c8_035d : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l81_c8_035d_cond,
state_MUX_uart_mac_h_l81_c8_035d_iftrue,
state_MUX_uart_mac_h_l81_c8_035d_iffalse,
state_MUX_uart_mac_h_l81_c8_035d_return_output);

-- o_bit_stream_MUX_uart_mac_h_l81_c8_035d : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l81_c8_035d : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l81_c8_035d_cond,
o_bit_stream_MUX_uart_mac_h_l81_c8_035d_iftrue,
o_bit_stream_MUX_uart_mac_h_l81_c8_035d_iffalse,
o_bit_stream_MUX_uart_mac_h_l81_c8_035d_return_output);

-- BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_left,
BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_right,
BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_return_output);

-- BIN_OP_GTE_uart_mac_h_l85_c8_e975 : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l85_c8_e975 : entity work.BIN_OP_GTE_uint16_t_uint16_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_uart_mac_h_l85_c8_e975_left,
BIN_OP_GTE_uart_mac_h_l85_c8_e975_right,
BIN_OP_GTE_uart_mac_h_l85_c8_e975_return_output);

-- clk_counter_MUX_uart_mac_h_l85_c5_a7ac : 0 clocks latency
clk_counter_MUX_uart_mac_h_l85_c5_a7ac : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l85_c5_a7ac_cond,
clk_counter_MUX_uart_mac_h_l85_c5_a7ac_iftrue,
clk_counter_MUX_uart_mac_h_l85_c5_a7ac_iffalse,
clk_counter_MUX_uart_mac_h_l85_c5_a7ac_return_output);

-- bit_counter_MUX_uart_mac_h_l85_c5_a7ac : 0 clocks latency
bit_counter_MUX_uart_mac_h_l85_c5_a7ac : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l85_c5_a7ac_cond,
bit_counter_MUX_uart_mac_h_l85_c5_a7ac_iftrue,
bit_counter_MUX_uart_mac_h_l85_c5_a7ac_iffalse,
bit_counter_MUX_uart_mac_h_l85_c5_a7ac_return_output);

-- state_MUX_uart_mac_h_l85_c5_a7ac : 0 clocks latency
state_MUX_uart_mac_h_l85_c5_a7ac : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l85_c5_a7ac_cond,
state_MUX_uart_mac_h_l85_c5_a7ac_iftrue,
state_MUX_uart_mac_h_l85_c5_a7ac_iffalse,
state_MUX_uart_mac_h_l85_c5_a7ac_return_output);

-- o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_cond,
o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_iftrue,
o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_iffalse,
o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_return_output);

-- BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b : entity work.BIN_OP_PLUS_uint4_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_left,
BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_right,
BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_return_output);

-- BIN_OP_EQ_uart_mac_h_l96_c10_30f2 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l96_c10_30f2 : entity work.BIN_OP_EQ_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l96_c10_30f2_left,
BIN_OP_EQ_uart_mac_h_l96_c10_30f2_right,
BIN_OP_EQ_uart_mac_h_l96_c10_30f2_return_output);

-- state_MUX_uart_mac_h_l96_c7_c30e : 0 clocks latency
state_MUX_uart_mac_h_l96_c7_c30e : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l96_c7_c30e_cond,
state_MUX_uart_mac_h_l96_c7_c30e_iftrue,
state_MUX_uart_mac_h_l96_c7_c30e_iffalse,
state_MUX_uart_mac_h_l96_c7_c30e_return_output);

-- UNARY_OP_NOT_uart_mac_h_l103_c38_4fe1 : 0 clocks latency
UNARY_OP_NOT_uart_mac_h_l103_c38_4fe1 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_uart_mac_h_l103_c38_4fe1_expr,
UNARY_OP_NOT_uart_mac_h_l103_c38_4fe1_return_output);

-- BIN_OP_AND_uart_mac_h_l103_c16_96b3 : 0 clocks latency
BIN_OP_AND_uart_mac_h_l103_c16_96b3 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_uart_mac_h_l103_c16_96b3_left,
BIN_OP_AND_uart_mac_h_l103_c16_96b3_right,
BIN_OP_AND_uart_mac_h_l103_c16_96b3_return_output);



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
 BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_return_output,
 clk_counter_MUX_uart_mac_h_l55_c3_6526_return_output,
 bit_counter_MUX_uart_mac_h_l55_c3_6526_return_output,
 state_MUX_uart_mac_h_l55_c3_6526_return_output,
 o_bit_stream_MUX_uart_mac_h_l55_c3_6526_return_output,
 clk_counter_MUX_uart_mac_h_l58_c5_f1ab_return_output,
 state_MUX_uart_mac_h_l58_c5_f1ab_return_output,
 BIN_OP_EQ_uart_mac_h_l65_c11_af15_return_output,
 clk_counter_MUX_uart_mac_h_l65_c8_d49b_return_output,
 bit_counter_MUX_uart_mac_h_l65_c8_d49b_return_output,
 state_MUX_uart_mac_h_l65_c8_d49b_return_output,
 o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_return_output,
 BIN_OP_EQ_uart_mac_h_l68_c8_4276_return_output,
 clk_counter_MUX_uart_mac_h_l68_c5_f463_return_output,
 bit_counter_MUX_uart_mac_h_l68_c5_f463_return_output,
 state_MUX_uart_mac_h_l68_c5_f463_return_output,
 BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_return_output,
 BIN_OP_GTE_uart_mac_h_l72_c10_99f0_return_output,
 clk_counter_MUX_uart_mac_h_l72_c7_9a13_return_output,
 bit_counter_MUX_uart_mac_h_l72_c7_9a13_return_output,
 state_MUX_uart_mac_h_l72_c7_9a13_return_output,
 BIN_OP_EQ_uart_mac_h_l81_c11_1a71_return_output,
 clk_counter_MUX_uart_mac_h_l81_c8_035d_return_output,
 bit_counter_MUX_uart_mac_h_l81_c8_035d_return_output,
 state_MUX_uart_mac_h_l81_c8_035d_return_output,
 o_bit_stream_MUX_uart_mac_h_l81_c8_035d_return_output,
 BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_return_output,
 BIN_OP_GTE_uart_mac_h_l85_c8_e975_return_output,
 clk_counter_MUX_uart_mac_h_l85_c5_a7ac_return_output,
 bit_counter_MUX_uart_mac_h_l85_c5_a7ac_return_output,
 state_MUX_uart_mac_h_l85_c5_a7ac_return_output,
 o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_return_output,
 BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_return_output,
 BIN_OP_EQ_uart_mac_h_l96_c10_30f2_return_output,
 state_MUX_uart_mac_h_l96_c7_c30e_return_output,
 UNARY_OP_NOT_uart_mac_h_l103_c38_4fe1_return_output,
 BIN_OP_AND_uart_mac_h_l103_c16_96b3_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : uart_rx_1b_t;
 variable VAR_input_wire : unsigned(0 downto 0);
 variable VAR_ready_for_bit_stream : unsigned(0 downto 0);
 variable VAR_o : uart_rx_1b_t;
 variable VAR_BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_6526_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_f1ab_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_6526_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_d49b_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_6526_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_6526_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_6526_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_6526_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_d49b_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_6526_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_6526_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_6526_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_f1ab_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_6526_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_d49b_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_6526_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_6526_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_6526_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_6526_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_6526_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_6526_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_f1ab_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l62_c7_e042 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_f1ab_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_f1ab_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_f1ab_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_f1ab_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_f1ab_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l65_c11_af15_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l65_c11_af15_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l65_c11_af15_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_d49b_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_f463_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_d49b_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_035d_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_d49b_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_d49b_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_f463_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_d49b_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_035d_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_d49b_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_d49b_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_f463_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_d49b_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_035d_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_d49b_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_035d_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l68_c8_4276_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l68_c8_4276_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l68_c8_4276_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_f463_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_9a13_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_f463_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_f463_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_f463_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_9a13_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_f463_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_f463_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_f463_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_9a13_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_f463_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_f463_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l71_c7_9fab : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l72_c10_99f0_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l72_c10_99f0_right : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l72_c10_99f0_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_9a13_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l76_c9_28cc : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_9a13_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_9a13_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_9a13_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l77_c9_840f : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_9a13_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_9a13_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_9a13_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_9a13_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_9a13_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l81_c11_1a71_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l81_c11_1a71_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l81_c11_1a71_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_035d_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_a7ac_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_035d_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_035d_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_035d_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_a7ac_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_035d_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_035d_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_035d_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_a7ac_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_035d_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_035d_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_035d_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_035d_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_035d_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l84_c5_2a11 : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l85_c8_e975_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l85_c8_e975_right : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l85_c8_e975_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_a7ac_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l88_c7_68f3 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_a7ac_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_a7ac_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_a7ac_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l93_c7_0e48 : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_a7ac_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_a7ac_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_a7ac_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_c30e_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_a7ac_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_a7ac_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6_uart_mac_h_l85_c5_a7ac_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_return_output : unsigned(4 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l96_c10_30f2_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l96_c10_30f2_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l96_c10_30f2_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_c30e_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_c30e_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_c30e_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690_uart_mac_h_l103_c16_af6e_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l103_c16_96b3_left : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_4fe1_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_4fe1_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l103_c16_96b3_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l103_c16_96b3_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe_uart_mac_h_l104_c10_71ba_return_output : uart_rx_1b_t;
 variable VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l81_l55_l85_l65_DUPLICATE_cb3d_return_output : uint1_t_stream_t;
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
     VAR_clk_counter_uart_mac_h_l62_c7_e042 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_f1ab_iftrue := VAR_clk_counter_uart_mac_h_l62_c7_e042;
     VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_right := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_right := to_unsigned(1, 1);
     VAR_BIN_OP_GTE_uart_mac_h_l72_c10_99f0_right := to_unsigned(108, 16);
     VAR_bit_counter_uart_mac_h_l77_c9_840f := resize(to_unsigned(0, 1), 4);
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_9a13_iftrue := VAR_bit_counter_uart_mac_h_l77_c9_840f;
     VAR_BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_right := unsigned(uart_rx_state_t_to_slv(IDLE));
     VAR_BIN_OP_EQ_uart_mac_h_l81_c11_1a71_right := unsigned(uart_rx_state_t_to_slv(RECEIVE));
     VAR_BIN_OP_GTE_uart_mac_h_l85_c8_e975_right := to_unsigned(217, 16);
     VAR_state_MUX_uart_mac_h_l72_c7_9a13_iftrue := unsigned(uart_rx_state_t_to_slv(RECEIVE));
     VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_right := to_unsigned(1, 1);
     VAR_clk_counter_uart_mac_h_l76_c9_28cc := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_9a13_iftrue := VAR_clk_counter_uart_mac_h_l76_c9_28cc;
     VAR_BIN_OP_EQ_uart_mac_h_l65_c11_af15_right := unsigned(uart_rx_state_t_to_slv(WAIT_START));
     VAR_BIN_OP_EQ_uart_mac_h_l96_c10_30f2_right := to_unsigned(8, 4);
     VAR_state_MUX_uart_mac_h_l58_c5_f1ab_iftrue := unsigned(uart_rx_state_t_to_slv(WAIT_START));
     VAR_state_MUX_uart_mac_h_l96_c7_c30e_iftrue := unsigned(uart_rx_state_t_to_slv(IDLE));
     VAR_BIN_OP_EQ_uart_mac_h_l68_c8_4276_right := to_unsigned(0, 1);
     VAR_clk_counter_uart_mac_h_l88_c7_68f3 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_a7ac_iftrue := VAR_clk_counter_uart_mac_h_l88_c7_68f3;
     -- CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l81_l55_l85_l65_DUPLICATE_cb3d LATENCY=0
     VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l81_l55_l85_l65_DUPLICATE_cb3d_return_output := uart_rx_1b_t_NULL.bit_stream;

     -- Submodule level 1
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_6526_iftrue := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l81_l55_l85_l65_DUPLICATE_cb3d_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_iftrue := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l81_l55_l85_l65_DUPLICATE_cb3d_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_iffalse := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l81_l55_l85_l65_DUPLICATE_cb3d_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_035d_iffalse := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l81_l55_l85_l65_DUPLICATE_cb3d_return_output;

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
     VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_left := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_6526_iftrue := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_f463_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_9a13_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_035d_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_a7ac_iffalse := bit_counter;
     VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_left := clk_counter;
     VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_left := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_f1ab_iffalse := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_f463_iffalse := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_035d_iffalse := clk_counter;
     VAR_BIN_OP_EQ_uart_mac_h_l68_c8_4276_left := VAR_input_wire;
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_f1ab_cond := VAR_input_wire;
     VAR_state_MUX_uart_mac_h_l58_c5_f1ab_cond := VAR_input_wire;
     VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_4fe1_expr := VAR_ready_for_bit_stream;
     VAR_BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_left := state;
     VAR_BIN_OP_EQ_uart_mac_h_l65_c11_af15_left := state;
     VAR_BIN_OP_EQ_uart_mac_h_l81_c11_1a71_left := state;
     VAR_state_MUX_uart_mac_h_l58_c5_f1ab_iffalse := state;
     VAR_state_MUX_uart_mac_h_l68_c5_f463_iffalse := state;
     VAR_state_MUX_uart_mac_h_l72_c7_9a13_iffalse := state;
     VAR_state_MUX_uart_mac_h_l81_c8_035d_iffalse := state;
     VAR_state_MUX_uart_mac_h_l85_c5_a7ac_iffalse := state;
     VAR_state_MUX_uart_mac_h_l96_c7_c30e_iffalse := state;
     -- o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6[uart_mac_h_l85_c5_a7ac] LATENCY=0
     VAR_o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6_uart_mac_h_l85_c5_a7ac_return_output := CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6(
     VAR_input_wire,
     to_unsigned(1, 1));

     -- BIN_OP_PLUS[uart_mac_h_l93_c7_2e5b] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_left <= VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_left;
     BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_right <= VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_return_output := BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l71_c7_1a20] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_left <= VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_left;
     BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_right <= VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_return_output := BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_return_output;

     -- BIN_OP_EQ[uart_mac_h_l65_c11_af15] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l65_c11_af15_left <= VAR_BIN_OP_EQ_uart_mac_h_l65_c11_af15_left;
     BIN_OP_EQ_uart_mac_h_l65_c11_af15_right <= VAR_BIN_OP_EQ_uart_mac_h_l65_c11_af15_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l65_c11_af15_return_output := BIN_OP_EQ_uart_mac_h_l65_c11_af15_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l84_c5_f6b8] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_left <= VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_left;
     BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_right <= VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_return_output := BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_return_output;

     -- UNARY_OP_NOT[uart_mac_h_l103_c38_4fe1] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_uart_mac_h_l103_c38_4fe1_expr <= VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_4fe1_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_4fe1_return_output := UNARY_OP_NOT_uart_mac_h_l103_c38_4fe1_return_output;

     -- clk_counter_MUX[uart_mac_h_l58_c5_f1ab] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l58_c5_f1ab_cond <= VAR_clk_counter_MUX_uart_mac_h_l58_c5_f1ab_cond;
     clk_counter_MUX_uart_mac_h_l58_c5_f1ab_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l58_c5_f1ab_iftrue;
     clk_counter_MUX_uart_mac_h_l58_c5_f1ab_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l58_c5_f1ab_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_f1ab_return_output := clk_counter_MUX_uart_mac_h_l58_c5_f1ab_return_output;

     -- BIN_OP_EQ[uart_mac_h_l81_c11_1a71] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l81_c11_1a71_left <= VAR_BIN_OP_EQ_uart_mac_h_l81_c11_1a71_left;
     BIN_OP_EQ_uart_mac_h_l81_c11_1a71_right <= VAR_BIN_OP_EQ_uart_mac_h_l81_c11_1a71_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l81_c11_1a71_return_output := BIN_OP_EQ_uart_mac_h_l81_c11_1a71_return_output;

     -- state_MUX[uart_mac_h_l58_c5_f1ab] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l58_c5_f1ab_cond <= VAR_state_MUX_uart_mac_h_l58_c5_f1ab_cond;
     state_MUX_uart_mac_h_l58_c5_f1ab_iftrue <= VAR_state_MUX_uart_mac_h_l58_c5_f1ab_iftrue;
     state_MUX_uart_mac_h_l58_c5_f1ab_iffalse <= VAR_state_MUX_uart_mac_h_l58_c5_f1ab_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l58_c5_f1ab_return_output := state_MUX_uart_mac_h_l58_c5_f1ab_return_output;

     -- BIN_OP_EQ[uart_mac_h_l68_c8_4276] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l68_c8_4276_left <= VAR_BIN_OP_EQ_uart_mac_h_l68_c8_4276_left;
     BIN_OP_EQ_uart_mac_h_l68_c8_4276_right <= VAR_BIN_OP_EQ_uart_mac_h_l68_c8_4276_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l68_c8_4276_return_output := BIN_OP_EQ_uart_mac_h_l68_c8_4276_return_output;

     -- BIN_OP_EQ[uart_mac_h_l55_c6_d0b4] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_left <= VAR_BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_left;
     BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_right <= VAR_BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_return_output := BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_return_output;

     -- Submodule level 1
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_6526_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_6526_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_6526_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_return_output;
     VAR_state_MUX_uart_mac_h_l55_c3_6526_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_d0b4_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_d49b_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_af15_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_d49b_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_af15_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_af15_return_output;
     VAR_state_MUX_uart_mac_h_l65_c8_d49b_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_af15_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_f463_cond := VAR_BIN_OP_EQ_uart_mac_h_l68_c8_4276_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_f463_cond := VAR_BIN_OP_EQ_uart_mac_h_l68_c8_4276_return_output;
     VAR_state_MUX_uart_mac_h_l68_c5_f463_cond := VAR_BIN_OP_EQ_uart_mac_h_l68_c8_4276_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_035d_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_1a71_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_035d_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_1a71_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_035d_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_1a71_return_output;
     VAR_state_MUX_uart_mac_h_l81_c8_035d_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_1a71_return_output;
     VAR_clk_counter_uart_mac_h_l71_c7_9fab := resize(VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_1a20_return_output, 16);
     VAR_clk_counter_uart_mac_h_l84_c5_2a11 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_f6b8_return_output, 16);
     VAR_bit_counter_uart_mac_h_l93_c7_0e48 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_2e5b_return_output, 4);
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_96b3_right := VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_4fe1_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_6526_iftrue := VAR_clk_counter_MUX_uart_mac_h_l58_c5_f1ab_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_iftrue := VAR_o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6_uart_mac_h_l85_c5_a7ac_return_output;
     VAR_state_MUX_uart_mac_h_l55_c3_6526_iftrue := VAR_state_MUX_uart_mac_h_l58_c5_f1ab_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l96_c10_30f2_left := VAR_bit_counter_uart_mac_h_l93_c7_0e48;
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_a7ac_iftrue := VAR_bit_counter_uart_mac_h_l93_c7_0e48;
     VAR_BIN_OP_GTE_uart_mac_h_l72_c10_99f0_left := VAR_clk_counter_uart_mac_h_l71_c7_9fab;
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_9a13_iffalse := VAR_clk_counter_uart_mac_h_l71_c7_9fab;
     VAR_BIN_OP_GTE_uart_mac_h_l85_c8_e975_left := VAR_clk_counter_uart_mac_h_l84_c5_2a11;
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_a7ac_iffalse := VAR_clk_counter_uart_mac_h_l84_c5_2a11;
     -- BIN_OP_EQ[uart_mac_h_l96_c10_30f2] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l96_c10_30f2_left <= VAR_BIN_OP_EQ_uart_mac_h_l96_c10_30f2_left;
     BIN_OP_EQ_uart_mac_h_l96_c10_30f2_right <= VAR_BIN_OP_EQ_uart_mac_h_l96_c10_30f2_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l96_c10_30f2_return_output := BIN_OP_EQ_uart_mac_h_l96_c10_30f2_return_output;

     -- BIN_OP_GTE[uart_mac_h_l85_c8_e975] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l85_c8_e975_left <= VAR_BIN_OP_GTE_uart_mac_h_l85_c8_e975_left;
     BIN_OP_GTE_uart_mac_h_l85_c8_e975_right <= VAR_BIN_OP_GTE_uart_mac_h_l85_c8_e975_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l85_c8_e975_return_output := BIN_OP_GTE_uart_mac_h_l85_c8_e975_return_output;

     -- BIN_OP_GTE[uart_mac_h_l72_c10_99f0] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l72_c10_99f0_left <= VAR_BIN_OP_GTE_uart_mac_h_l72_c10_99f0_left;
     BIN_OP_GTE_uart_mac_h_l72_c10_99f0_right <= VAR_BIN_OP_GTE_uart_mac_h_l72_c10_99f0_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l72_c10_99f0_return_output := BIN_OP_GTE_uart_mac_h_l72_c10_99f0_return_output;

     -- Submodule level 2
     VAR_state_MUX_uart_mac_h_l96_c7_c30e_cond := VAR_BIN_OP_EQ_uart_mac_h_l96_c10_30f2_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_9a13_cond := VAR_BIN_OP_GTE_uart_mac_h_l72_c10_99f0_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_9a13_cond := VAR_BIN_OP_GTE_uart_mac_h_l72_c10_99f0_return_output;
     VAR_state_MUX_uart_mac_h_l72_c7_9a13_cond := VAR_BIN_OP_GTE_uart_mac_h_l72_c10_99f0_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_a7ac_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_e975_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_a7ac_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_e975_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_e975_return_output;
     VAR_state_MUX_uart_mac_h_l85_c5_a7ac_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_e975_return_output;
     -- clk_counter_MUX[uart_mac_h_l85_c5_a7ac] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l85_c5_a7ac_cond <= VAR_clk_counter_MUX_uart_mac_h_l85_c5_a7ac_cond;
     clk_counter_MUX_uart_mac_h_l85_c5_a7ac_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l85_c5_a7ac_iftrue;
     clk_counter_MUX_uart_mac_h_l85_c5_a7ac_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l85_c5_a7ac_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_a7ac_return_output := clk_counter_MUX_uart_mac_h_l85_c5_a7ac_return_output;

     -- state_MUX[uart_mac_h_l96_c7_c30e] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l96_c7_c30e_cond <= VAR_state_MUX_uart_mac_h_l96_c7_c30e_cond;
     state_MUX_uart_mac_h_l96_c7_c30e_iftrue <= VAR_state_MUX_uart_mac_h_l96_c7_c30e_iftrue;
     state_MUX_uart_mac_h_l96_c7_c30e_iffalse <= VAR_state_MUX_uart_mac_h_l96_c7_c30e_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l96_c7_c30e_return_output := state_MUX_uart_mac_h_l96_c7_c30e_return_output;

     -- bit_counter_MUX[uart_mac_h_l72_c7_9a13] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l72_c7_9a13_cond <= VAR_bit_counter_MUX_uart_mac_h_l72_c7_9a13_cond;
     bit_counter_MUX_uart_mac_h_l72_c7_9a13_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l72_c7_9a13_iftrue;
     bit_counter_MUX_uart_mac_h_l72_c7_9a13_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l72_c7_9a13_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_9a13_return_output := bit_counter_MUX_uart_mac_h_l72_c7_9a13_return_output;

     -- bit_counter_MUX[uart_mac_h_l85_c5_a7ac] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l85_c5_a7ac_cond <= VAR_bit_counter_MUX_uart_mac_h_l85_c5_a7ac_cond;
     bit_counter_MUX_uart_mac_h_l85_c5_a7ac_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l85_c5_a7ac_iftrue;
     bit_counter_MUX_uart_mac_h_l85_c5_a7ac_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l85_c5_a7ac_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_a7ac_return_output := bit_counter_MUX_uart_mac_h_l85_c5_a7ac_return_output;

     -- state_MUX[uart_mac_h_l72_c7_9a13] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l72_c7_9a13_cond <= VAR_state_MUX_uart_mac_h_l72_c7_9a13_cond;
     state_MUX_uart_mac_h_l72_c7_9a13_iftrue <= VAR_state_MUX_uart_mac_h_l72_c7_9a13_iftrue;
     state_MUX_uart_mac_h_l72_c7_9a13_iffalse <= VAR_state_MUX_uart_mac_h_l72_c7_9a13_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l72_c7_9a13_return_output := state_MUX_uart_mac_h_l72_c7_9a13_return_output;

     -- o_bit_stream_MUX[uart_mac_h_l85_c5_a7ac] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_cond;
     o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_iftrue;
     o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_return_output := o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_return_output;

     -- clk_counter_MUX[uart_mac_h_l72_c7_9a13] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l72_c7_9a13_cond <= VAR_clk_counter_MUX_uart_mac_h_l72_c7_9a13_cond;
     clk_counter_MUX_uart_mac_h_l72_c7_9a13_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l72_c7_9a13_iftrue;
     clk_counter_MUX_uart_mac_h_l72_c7_9a13_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l72_c7_9a13_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_9a13_return_output := clk_counter_MUX_uart_mac_h_l72_c7_9a13_return_output;

     -- Submodule level 3
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_f463_iftrue := VAR_bit_counter_MUX_uart_mac_h_l72_c7_9a13_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_035d_iftrue := VAR_bit_counter_MUX_uart_mac_h_l85_c5_a7ac_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_f463_iftrue := VAR_clk_counter_MUX_uart_mac_h_l72_c7_9a13_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_035d_iftrue := VAR_clk_counter_MUX_uart_mac_h_l85_c5_a7ac_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_035d_iftrue := VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_a7ac_return_output;
     VAR_state_MUX_uart_mac_h_l68_c5_f463_iftrue := VAR_state_MUX_uart_mac_h_l72_c7_9a13_return_output;
     VAR_state_MUX_uart_mac_h_l85_c5_a7ac_iftrue := VAR_state_MUX_uart_mac_h_l96_c7_c30e_return_output;
     -- clk_counter_MUX[uart_mac_h_l81_c8_035d] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l81_c8_035d_cond <= VAR_clk_counter_MUX_uart_mac_h_l81_c8_035d_cond;
     clk_counter_MUX_uart_mac_h_l81_c8_035d_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l81_c8_035d_iftrue;
     clk_counter_MUX_uart_mac_h_l81_c8_035d_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l81_c8_035d_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_035d_return_output := clk_counter_MUX_uart_mac_h_l81_c8_035d_return_output;

     -- state_MUX[uart_mac_h_l68_c5_f463] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l68_c5_f463_cond <= VAR_state_MUX_uart_mac_h_l68_c5_f463_cond;
     state_MUX_uart_mac_h_l68_c5_f463_iftrue <= VAR_state_MUX_uart_mac_h_l68_c5_f463_iftrue;
     state_MUX_uart_mac_h_l68_c5_f463_iffalse <= VAR_state_MUX_uart_mac_h_l68_c5_f463_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l68_c5_f463_return_output := state_MUX_uart_mac_h_l68_c5_f463_return_output;

     -- o_bit_stream_MUX[uart_mac_h_l81_c8_035d] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l81_c8_035d_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_035d_cond;
     o_bit_stream_MUX_uart_mac_h_l81_c8_035d_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_035d_iftrue;
     o_bit_stream_MUX_uart_mac_h_l81_c8_035d_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_035d_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_035d_return_output := o_bit_stream_MUX_uart_mac_h_l81_c8_035d_return_output;

     -- clk_counter_MUX[uart_mac_h_l68_c5_f463] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l68_c5_f463_cond <= VAR_clk_counter_MUX_uart_mac_h_l68_c5_f463_cond;
     clk_counter_MUX_uart_mac_h_l68_c5_f463_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l68_c5_f463_iftrue;
     clk_counter_MUX_uart_mac_h_l68_c5_f463_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l68_c5_f463_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_f463_return_output := clk_counter_MUX_uart_mac_h_l68_c5_f463_return_output;

     -- bit_counter_MUX[uart_mac_h_l81_c8_035d] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l81_c8_035d_cond <= VAR_bit_counter_MUX_uart_mac_h_l81_c8_035d_cond;
     bit_counter_MUX_uart_mac_h_l81_c8_035d_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l81_c8_035d_iftrue;
     bit_counter_MUX_uart_mac_h_l81_c8_035d_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l81_c8_035d_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_035d_return_output := bit_counter_MUX_uart_mac_h_l81_c8_035d_return_output;

     -- state_MUX[uart_mac_h_l85_c5_a7ac] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l85_c5_a7ac_cond <= VAR_state_MUX_uart_mac_h_l85_c5_a7ac_cond;
     state_MUX_uart_mac_h_l85_c5_a7ac_iftrue <= VAR_state_MUX_uart_mac_h_l85_c5_a7ac_iftrue;
     state_MUX_uart_mac_h_l85_c5_a7ac_iffalse <= VAR_state_MUX_uart_mac_h_l85_c5_a7ac_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l85_c5_a7ac_return_output := state_MUX_uart_mac_h_l85_c5_a7ac_return_output;

     -- bit_counter_MUX[uart_mac_h_l68_c5_f463] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l68_c5_f463_cond <= VAR_bit_counter_MUX_uart_mac_h_l68_c5_f463_cond;
     bit_counter_MUX_uart_mac_h_l68_c5_f463_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l68_c5_f463_iftrue;
     bit_counter_MUX_uart_mac_h_l68_c5_f463_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l68_c5_f463_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_f463_return_output := bit_counter_MUX_uart_mac_h_l68_c5_f463_return_output;

     -- Submodule level 4
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_d49b_iftrue := VAR_bit_counter_MUX_uart_mac_h_l68_c5_f463_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_d49b_iffalse := VAR_bit_counter_MUX_uart_mac_h_l81_c8_035d_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_d49b_iftrue := VAR_clk_counter_MUX_uart_mac_h_l68_c5_f463_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_d49b_iffalse := VAR_clk_counter_MUX_uart_mac_h_l81_c8_035d_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_iffalse := VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_035d_return_output;
     VAR_state_MUX_uart_mac_h_l65_c8_d49b_iftrue := VAR_state_MUX_uart_mac_h_l68_c5_f463_return_output;
     VAR_state_MUX_uart_mac_h_l81_c8_035d_iftrue := VAR_state_MUX_uart_mac_h_l85_c5_a7ac_return_output;
     -- bit_counter_MUX[uart_mac_h_l65_c8_d49b] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l65_c8_d49b_cond <= VAR_bit_counter_MUX_uart_mac_h_l65_c8_d49b_cond;
     bit_counter_MUX_uart_mac_h_l65_c8_d49b_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l65_c8_d49b_iftrue;
     bit_counter_MUX_uart_mac_h_l65_c8_d49b_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l65_c8_d49b_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_d49b_return_output := bit_counter_MUX_uart_mac_h_l65_c8_d49b_return_output;

     -- state_MUX[uart_mac_h_l81_c8_035d] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l81_c8_035d_cond <= VAR_state_MUX_uart_mac_h_l81_c8_035d_cond;
     state_MUX_uart_mac_h_l81_c8_035d_iftrue <= VAR_state_MUX_uart_mac_h_l81_c8_035d_iftrue;
     state_MUX_uart_mac_h_l81_c8_035d_iffalse <= VAR_state_MUX_uart_mac_h_l81_c8_035d_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l81_c8_035d_return_output := state_MUX_uart_mac_h_l81_c8_035d_return_output;

     -- clk_counter_MUX[uart_mac_h_l65_c8_d49b] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l65_c8_d49b_cond <= VAR_clk_counter_MUX_uart_mac_h_l65_c8_d49b_cond;
     clk_counter_MUX_uart_mac_h_l65_c8_d49b_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l65_c8_d49b_iftrue;
     clk_counter_MUX_uart_mac_h_l65_c8_d49b_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l65_c8_d49b_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_d49b_return_output := clk_counter_MUX_uart_mac_h_l65_c8_d49b_return_output;

     -- o_bit_stream_MUX[uart_mac_h_l65_c8_d49b] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_cond;
     o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_iftrue;
     o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_return_output := o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_return_output;

     -- Submodule level 5
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_6526_iffalse := VAR_bit_counter_MUX_uart_mac_h_l65_c8_d49b_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_6526_iffalse := VAR_clk_counter_MUX_uart_mac_h_l65_c8_d49b_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_6526_iffalse := VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_d49b_return_output;
     VAR_state_MUX_uart_mac_h_l65_c8_d49b_iffalse := VAR_state_MUX_uart_mac_h_l81_c8_035d_return_output;
     -- o_bit_stream_MUX[uart_mac_h_l55_c3_6526] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l55_c3_6526_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_6526_cond;
     o_bit_stream_MUX_uart_mac_h_l55_c3_6526_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_6526_iftrue;
     o_bit_stream_MUX_uart_mac_h_l55_c3_6526_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_6526_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_6526_return_output := o_bit_stream_MUX_uart_mac_h_l55_c3_6526_return_output;

     -- bit_counter_MUX[uart_mac_h_l55_c3_6526] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l55_c3_6526_cond <= VAR_bit_counter_MUX_uart_mac_h_l55_c3_6526_cond;
     bit_counter_MUX_uart_mac_h_l55_c3_6526_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l55_c3_6526_iftrue;
     bit_counter_MUX_uart_mac_h_l55_c3_6526_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l55_c3_6526_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_6526_return_output := bit_counter_MUX_uart_mac_h_l55_c3_6526_return_output;

     -- state_MUX[uart_mac_h_l65_c8_d49b] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l65_c8_d49b_cond <= VAR_state_MUX_uart_mac_h_l65_c8_d49b_cond;
     state_MUX_uart_mac_h_l65_c8_d49b_iftrue <= VAR_state_MUX_uart_mac_h_l65_c8_d49b_iftrue;
     state_MUX_uart_mac_h_l65_c8_d49b_iffalse <= VAR_state_MUX_uart_mac_h_l65_c8_d49b_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l65_c8_d49b_return_output := state_MUX_uart_mac_h_l65_c8_d49b_return_output;

     -- clk_counter_MUX[uart_mac_h_l55_c3_6526] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l55_c3_6526_cond <= VAR_clk_counter_MUX_uart_mac_h_l55_c3_6526_cond;
     clk_counter_MUX_uart_mac_h_l55_c3_6526_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l55_c3_6526_iftrue;
     clk_counter_MUX_uart_mac_h_l55_c3_6526_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l55_c3_6526_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_6526_return_output := clk_counter_MUX_uart_mac_h_l55_c3_6526_return_output;

     -- Submodule level 6
     REG_VAR_bit_counter := VAR_bit_counter_MUX_uart_mac_h_l55_c3_6526_return_output;
     REG_VAR_clk_counter := VAR_clk_counter_MUX_uart_mac_h_l55_c3_6526_return_output;
     VAR_state_MUX_uart_mac_h_l55_c3_6526_iffalse := VAR_state_MUX_uart_mac_h_l65_c8_d49b_return_output;
     -- CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690[uart_mac_h_l103_c16_af6e] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690_uart_mac_h_l103_c16_af6e_return_output := CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690(
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_6526_return_output);

     -- state_MUX[uart_mac_h_l55_c3_6526] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l55_c3_6526_cond <= VAR_state_MUX_uart_mac_h_l55_c3_6526_cond;
     state_MUX_uart_mac_h_l55_c3_6526_iftrue <= VAR_state_MUX_uart_mac_h_l55_c3_6526_iftrue;
     state_MUX_uart_mac_h_l55_c3_6526_iffalse <= VAR_state_MUX_uart_mac_h_l55_c3_6526_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l55_c3_6526_return_output := state_MUX_uart_mac_h_l55_c3_6526_return_output;

     -- Submodule level 7
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_96b3_left := VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690_uart_mac_h_l103_c16_af6e_return_output;
     REG_VAR_state := VAR_state_MUX_uart_mac_h_l55_c3_6526_return_output;
     -- BIN_OP_AND[uart_mac_h_l103_c16_96b3] LATENCY=0
     -- Inputs
     BIN_OP_AND_uart_mac_h_l103_c16_96b3_left <= VAR_BIN_OP_AND_uart_mac_h_l103_c16_96b3_left;
     BIN_OP_AND_uart_mac_h_l103_c16_96b3_right <= VAR_BIN_OP_AND_uart_mac_h_l103_c16_96b3_right;
     -- Outputs
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_96b3_return_output := BIN_OP_AND_uart_mac_h_l103_c16_96b3_return_output;

     -- Submodule level 8
     -- CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe[uart_mac_h_l104_c10_71ba] LATENCY=0
     VAR_CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe_uart_mac_h_l104_c10_71ba_return_output := CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe(
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_6526_return_output,
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_96b3_return_output);

     -- Submodule level 9
     VAR_return_output := VAR_CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe_uart_mac_h_l104_c10_71ba_return_output;
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
