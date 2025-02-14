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
-- Submodules: 21
entity uart_serializer_serializer_in_to_out_0CLK_73702545 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 in_data : in uint1_t_8;
 in_data_valid : in unsigned(0 downto 0);
 out_data_ready : in unsigned(0 downto 0);
 return_output : out uart_serializer_serializer_in_to_out_t);
end uart_serializer_serializer_in_to_out_0CLK_73702545;
architecture arch of uart_serializer_serializer_in_to_out_0CLK_73702545 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal in_buffer : uint1_t_8 := (others => to_unsigned(0, 1));
signal in_buffer_valid : unsigned(0 downto 0) := to_unsigned(0, 1);
signal out_counter : unsigned(31 downto 0) := to_unsigned(0, 32);
signal REG_COMB_in_buffer : uint1_t_8;
signal REG_COMB_in_buffer_valid : unsigned(0 downto 0);
signal REG_COMB_out_counter : unsigned(31 downto 0);

-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- BIN_OP_EQ[uart_mac_h_l196_c588_948e]
signal BIN_OP_EQ_uart_mac_h_l196_c588_948e_left : unsigned(31 downto 0);
signal BIN_OP_EQ_uart_mac_h_l196_c588_948e_right : unsigned(2 downto 0);
signal BIN_OP_EQ_uart_mac_h_l196_c588_948e_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[uart_mac_h_l196_c570_9f5a]
signal BIN_OP_AND_uart_mac_h_l196_c570_9f5a_left : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l196_c570_9f5a_right : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l196_c570_9f5a_return_output : unsigned(0 downto 0);

-- UNARY_OP_NOT[uart_mac_h_l196_c630_d19a]
signal UNARY_OP_NOT_uart_mac_h_l196_c630_d19a_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_uart_mac_h_l196_c630_d19a_return_output : unsigned(0 downto 0);

-- BIN_OP_OR[uart_mac_h_l196_c630_7f55]
signal BIN_OP_OR_uart_mac_h_l196_c630_7f55_left : unsigned(0 downto 0);
signal BIN_OP_OR_uart_mac_h_l196_c630_7f55_right : unsigned(0 downto 0);
signal BIN_OP_OR_uart_mac_h_l196_c630_7f55_return_output : unsigned(0 downto 0);

-- in_buffer_4_MUX[uart_mac_h_l196_c663_8988]
signal in_buffer_4_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
signal in_buffer_4_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
signal in_buffer_4_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
signal in_buffer_4_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);

-- in_buffer_5_MUX[uart_mac_h_l196_c663_8988]
signal in_buffer_5_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
signal in_buffer_5_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
signal in_buffer_5_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
signal in_buffer_5_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);

-- in_buffer_0_MUX[uart_mac_h_l196_c663_8988]
signal in_buffer_0_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
signal in_buffer_0_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
signal in_buffer_0_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
signal in_buffer_0_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);

-- in_buffer_2_MUX[uart_mac_h_l196_c663_8988]
signal in_buffer_2_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
signal in_buffer_2_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
signal in_buffer_2_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
signal in_buffer_2_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);

-- in_buffer_3_MUX[uart_mac_h_l196_c663_8988]
signal in_buffer_3_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
signal in_buffer_3_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
signal in_buffer_3_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
signal in_buffer_3_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);

-- in_buffer_6_MUX[uart_mac_h_l196_c663_8988]
signal in_buffer_6_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
signal in_buffer_6_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
signal in_buffer_6_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
signal in_buffer_6_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);

-- in_buffer_1_MUX[uart_mac_h_l196_c663_8988]
signal in_buffer_1_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
signal in_buffer_1_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
signal in_buffer_1_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
signal in_buffer_1_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);

-- in_buffer_valid_MUX[uart_mac_h_l196_c663_8988]
signal in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);

-- out_counter_MUX[uart_mac_h_l196_c663_8988]
signal out_counter_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(31 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(31 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(31 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l196_c851_8bc3]
signal BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_left : unsigned(31 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_return_output : unsigned(32 downto 0);

-- BIN_OP_EQ[uart_mac_h_l196_c872_4e6a]
signal BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_left : unsigned(31 downto 0);
signal BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_return_output : unsigned(0 downto 0);

-- in_buffer_valid_MUX[uart_mac_h_l196_c869_a306]
signal in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_cond : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_iftrue : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_iffalse : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_return_output : unsigned(0 downto 0);

-- in_buffer_MUX[uart_mac_h_l196_c915_6e44]
signal in_buffer_MUX_uart_mac_h_l196_c915_6e44_cond : unsigned(0 downto 0);
signal in_buffer_MUX_uart_mac_h_l196_c915_6e44_iftrue : uint1_t_8;
signal in_buffer_MUX_uart_mac_h_l196_c915_6e44_iffalse : uint1_t_8;
signal in_buffer_MUX_uart_mac_h_l196_c915_6e44_return_output : uint1_t_8;

-- in_buffer_valid_MUX[uart_mac_h_l196_c915_6e44]
signal in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_cond : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_iftrue : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_iffalse : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_return_output : unsigned(0 downto 0);

-- out_counter_MUX[uart_mac_h_l196_c915_6e44]
signal out_counter_MUX_uart_mac_h_l196_c915_6e44_cond : unsigned(0 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c915_6e44_iftrue : unsigned(31 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c915_6e44_iffalse : unsigned(31 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c915_6e44_return_output : unsigned(31 downto 0);

function CONST_REF_RD_uint1_t_8_uint1_t_8_5ceb( ref_toks_0 : uint1_t_8;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned;
 ref_toks_3 : unsigned;
 ref_toks_4 : unsigned;
 ref_toks_5 : unsigned;
 ref_toks_6 : unsigned;
 ref_toks_7 : unsigned) return uint1_t_8 is
 
  variable base : uint1_t_8; 
  variable return_output : uint1_t_8;
begin
      base := ref_toks_0;
      base(4) := ref_toks_1;
      base(5) := ref_toks_2;
      base(0) := ref_toks_3;
      base(2) := ref_toks_4;
      base(3) := ref_toks_5;
      base(6) := ref_toks_6;
      base(1) := ref_toks_7;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned) return uart_serializer_serializer_in_to_out_t is
 
  variable base : uart_serializer_serializer_in_to_out_t; 
  variable return_output : uart_serializer_serializer_in_to_out_t;
begin
      base.out_data(0) := ref_toks_0;
      base.out_data_valid := ref_toks_1;
      base.in_data_ready := ref_toks_2;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_uart_mac_h_l196_c588_948e : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l196_c588_948e : entity work.BIN_OP_EQ_uint32_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l196_c588_948e_left,
BIN_OP_EQ_uart_mac_h_l196_c588_948e_right,
BIN_OP_EQ_uart_mac_h_l196_c588_948e_return_output);

-- BIN_OP_AND_uart_mac_h_l196_c570_9f5a : 0 clocks latency
BIN_OP_AND_uart_mac_h_l196_c570_9f5a : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_uart_mac_h_l196_c570_9f5a_left,
BIN_OP_AND_uart_mac_h_l196_c570_9f5a_right,
BIN_OP_AND_uart_mac_h_l196_c570_9f5a_return_output);

-- UNARY_OP_NOT_uart_mac_h_l196_c630_d19a : 0 clocks latency
UNARY_OP_NOT_uart_mac_h_l196_c630_d19a : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_uart_mac_h_l196_c630_d19a_expr,
UNARY_OP_NOT_uart_mac_h_l196_c630_d19a_return_output);

-- BIN_OP_OR_uart_mac_h_l196_c630_7f55 : 0 clocks latency
BIN_OP_OR_uart_mac_h_l196_c630_7f55 : entity work.BIN_OP_OR_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_OR_uart_mac_h_l196_c630_7f55_left,
BIN_OP_OR_uart_mac_h_l196_c630_7f55_right,
BIN_OP_OR_uart_mac_h_l196_c630_7f55_return_output);

-- in_buffer_4_MUX_uart_mac_h_l196_c663_8988 : 0 clocks latency
in_buffer_4_MUX_uart_mac_h_l196_c663_8988 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_4_MUX_uart_mac_h_l196_c663_8988_cond,
in_buffer_4_MUX_uart_mac_h_l196_c663_8988_iftrue,
in_buffer_4_MUX_uart_mac_h_l196_c663_8988_iffalse,
in_buffer_4_MUX_uart_mac_h_l196_c663_8988_return_output);

-- in_buffer_5_MUX_uart_mac_h_l196_c663_8988 : 0 clocks latency
in_buffer_5_MUX_uart_mac_h_l196_c663_8988 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_5_MUX_uart_mac_h_l196_c663_8988_cond,
in_buffer_5_MUX_uart_mac_h_l196_c663_8988_iftrue,
in_buffer_5_MUX_uart_mac_h_l196_c663_8988_iffalse,
in_buffer_5_MUX_uart_mac_h_l196_c663_8988_return_output);

-- in_buffer_0_MUX_uart_mac_h_l196_c663_8988 : 0 clocks latency
in_buffer_0_MUX_uart_mac_h_l196_c663_8988 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_0_MUX_uart_mac_h_l196_c663_8988_cond,
in_buffer_0_MUX_uart_mac_h_l196_c663_8988_iftrue,
in_buffer_0_MUX_uart_mac_h_l196_c663_8988_iffalse,
in_buffer_0_MUX_uart_mac_h_l196_c663_8988_return_output);

-- in_buffer_2_MUX_uart_mac_h_l196_c663_8988 : 0 clocks latency
in_buffer_2_MUX_uart_mac_h_l196_c663_8988 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_2_MUX_uart_mac_h_l196_c663_8988_cond,
in_buffer_2_MUX_uart_mac_h_l196_c663_8988_iftrue,
in_buffer_2_MUX_uart_mac_h_l196_c663_8988_iffalse,
in_buffer_2_MUX_uart_mac_h_l196_c663_8988_return_output);

-- in_buffer_3_MUX_uart_mac_h_l196_c663_8988 : 0 clocks latency
in_buffer_3_MUX_uart_mac_h_l196_c663_8988 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_3_MUX_uart_mac_h_l196_c663_8988_cond,
in_buffer_3_MUX_uart_mac_h_l196_c663_8988_iftrue,
in_buffer_3_MUX_uart_mac_h_l196_c663_8988_iffalse,
in_buffer_3_MUX_uart_mac_h_l196_c663_8988_return_output);

-- in_buffer_6_MUX_uart_mac_h_l196_c663_8988 : 0 clocks latency
in_buffer_6_MUX_uart_mac_h_l196_c663_8988 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_6_MUX_uart_mac_h_l196_c663_8988_cond,
in_buffer_6_MUX_uart_mac_h_l196_c663_8988_iftrue,
in_buffer_6_MUX_uart_mac_h_l196_c663_8988_iffalse,
in_buffer_6_MUX_uart_mac_h_l196_c663_8988_return_output);

-- in_buffer_1_MUX_uart_mac_h_l196_c663_8988 : 0 clocks latency
in_buffer_1_MUX_uart_mac_h_l196_c663_8988 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_1_MUX_uart_mac_h_l196_c663_8988_cond,
in_buffer_1_MUX_uart_mac_h_l196_c663_8988_iftrue,
in_buffer_1_MUX_uart_mac_h_l196_c663_8988_iffalse,
in_buffer_1_MUX_uart_mac_h_l196_c663_8988_return_output);

-- in_buffer_valid_MUX_uart_mac_h_l196_c663_8988 : 0 clocks latency
in_buffer_valid_MUX_uart_mac_h_l196_c663_8988 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_cond,
in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_iftrue,
in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_iffalse,
in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_return_output);

-- out_counter_MUX_uart_mac_h_l196_c663_8988 : 0 clocks latency
out_counter_MUX_uart_mac_h_l196_c663_8988 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
out_counter_MUX_uart_mac_h_l196_c663_8988_cond,
out_counter_MUX_uart_mac_h_l196_c663_8988_iftrue,
out_counter_MUX_uart_mac_h_l196_c663_8988_iffalse,
out_counter_MUX_uart_mac_h_l196_c663_8988_return_output);

-- BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3 : entity work.BIN_OP_PLUS_uint32_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_left,
BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_right,
BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_return_output);

-- BIN_OP_EQ_uart_mac_h_l196_c872_4e6a : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l196_c872_4e6a : entity work.BIN_OP_EQ_uint32_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_left,
BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_right,
BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_return_output);

-- in_buffer_valid_MUX_uart_mac_h_l196_c869_a306 : 0 clocks latency
in_buffer_valid_MUX_uart_mac_h_l196_c869_a306 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_cond,
in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_iftrue,
in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_iffalse,
in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_return_output);

-- in_buffer_MUX_uart_mac_h_l196_c915_6e44 : 0 clocks latency
in_buffer_MUX_uart_mac_h_l196_c915_6e44 : entity work.MUX_uint1_t_uint1_t_8_uint1_t_8_0CLK_de264c78 port map (
in_buffer_MUX_uart_mac_h_l196_c915_6e44_cond,
in_buffer_MUX_uart_mac_h_l196_c915_6e44_iftrue,
in_buffer_MUX_uart_mac_h_l196_c915_6e44_iffalse,
in_buffer_MUX_uart_mac_h_l196_c915_6e44_return_output);

-- in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44 : 0 clocks latency
in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_cond,
in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_iftrue,
in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_iffalse,
in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_return_output);

-- out_counter_MUX_uart_mac_h_l196_c915_6e44 : 0 clocks latency
out_counter_MUX_uart_mac_h_l196_c915_6e44 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
out_counter_MUX_uart_mac_h_l196_c915_6e44_cond,
out_counter_MUX_uart_mac_h_l196_c915_6e44_iftrue,
out_counter_MUX_uart_mac_h_l196_c915_6e44_iffalse,
out_counter_MUX_uart_mac_h_l196_c915_6e44_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Inputs
 in_data,
 in_data_valid,
 out_data_ready,
 -- Registers
 in_buffer,
 in_buffer_valid,
 out_counter,
 -- All submodule outputs
 BIN_OP_EQ_uart_mac_h_l196_c588_948e_return_output,
 BIN_OP_AND_uart_mac_h_l196_c570_9f5a_return_output,
 UNARY_OP_NOT_uart_mac_h_l196_c630_d19a_return_output,
 BIN_OP_OR_uart_mac_h_l196_c630_7f55_return_output,
 in_buffer_4_MUX_uart_mac_h_l196_c663_8988_return_output,
 in_buffer_5_MUX_uart_mac_h_l196_c663_8988_return_output,
 in_buffer_0_MUX_uart_mac_h_l196_c663_8988_return_output,
 in_buffer_2_MUX_uart_mac_h_l196_c663_8988_return_output,
 in_buffer_3_MUX_uart_mac_h_l196_c663_8988_return_output,
 in_buffer_6_MUX_uart_mac_h_l196_c663_8988_return_output,
 in_buffer_1_MUX_uart_mac_h_l196_c663_8988_return_output,
 in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_return_output,
 out_counter_MUX_uart_mac_h_l196_c663_8988_return_output,
 BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_return_output,
 BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_return_output,
 in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_return_output,
 in_buffer_MUX_uart_mac_h_l196_c915_6e44_return_output,
 in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_return_output,
 out_counter_MUX_uart_mac_h_l196_c915_6e44_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : uart_serializer_serializer_in_to_out_t;
 variable VAR_in_data : uint1_t_8;
 variable VAR_in_data_valid : unsigned(0 downto 0);
 variable VAR_out_data_ready : unsigned(0 downto 0);
 variable VAR_rv : uart_serializer_serializer_in_to_out_t;
 variable VAR_i : unsigned(31 downto 0);
 variable VAR_last_outgoing : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l196_c570_9f5a_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c588_948e_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c588_948e_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c588_948e_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l196_c570_9f5a_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l196_c570_9f5a_return_output : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_d19a_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_d19a_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_uart_mac_h_l196_c630_7f55_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_uart_mac_h_l196_c630_7f55_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_uart_mac_h_l196_c630_7f55_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c663_8988_iftrue : unsigned(31 downto 0);
 variable VAR_out_counter_uart_mac_h_l196_c851_0647 : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c663_8988_iffalse : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c663_8988_return_output : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c663_8988_cond : unsigned(0 downto 0);
 variable VAR_ARRAY_SHIFT_DOWN_i : unsigned(31 downto 0);
 variable VAR_FOR_uart_mac_h_l196_c713_73ef_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_h_l196_c818_fbb6_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_return_output : unsigned(32 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_MUX_uart_mac_h_l196_c915_6e44_iftrue : uint1_t_8;
 variable VAR_in_buffer_MUX_uart_mac_h_l196_c915_6e44_iffalse : uint1_t_8;
 variable VAR_in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_5ceb_uart_mac_h_l196_c915_6e44_return_output : uint1_t_8;
 variable VAR_in_buffer_MUX_uart_mac_h_l196_c915_6e44_return_output : uint1_t_8;
 variable VAR_in_buffer_MUX_uart_mac_h_l196_c915_6e44_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_cond : unsigned(0 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c915_6e44_iftrue : unsigned(31 downto 0);
 variable VAR_out_counter_uart_mac_h_l196_c992_571f : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c915_6e44_iffalse : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c915_6e44_return_output : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c915_6e44_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9_uart_mac_h_l196_c1018_d501_return_output : uart_serializer_serializer_in_to_out_t;
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_h_l196_DUPLICATE_1f08_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l196_DUPLICATE_de15_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l196_DUPLICATE_88d3_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l196_DUPLICATE_2d1c_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l196_DUPLICATE_aadc_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l196_DUPLICATE_da13_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l196_DUPLICATE_1b7a_return_output : unsigned(0 downto 0);
 -- State registers comb logic variables
variable REG_VAR_in_buffer : uint1_t_8;
variable REG_VAR_in_buffer_valid : unsigned(0 downto 0);
variable REG_VAR_out_counter : unsigned(31 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_in_buffer := in_buffer;
  REG_VAR_in_buffer_valid := in_buffer_valid;
  REG_VAR_out_counter := out_counter;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_iftrue := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_right := to_unsigned(8, 4);
     VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_right := to_unsigned(1, 1);
     VAR_out_counter_uart_mac_h_l196_c992_571f := resize(to_unsigned(0, 1), 32);
     VAR_out_counter_MUX_uart_mac_h_l196_c915_6e44_iftrue := VAR_out_counter_uart_mac_h_l196_c992_571f;
     VAR_BIN_OP_EQ_uart_mac_h_l196_c588_948e_right := to_unsigned(7, 3);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;
     -- Mux in inputs
     VAR_in_data := in_data;
     VAR_in_data_valid := in_data_valid;
     VAR_out_data_ready := out_data_ready;

     -- Submodule level 0
     VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_d19a_expr := in_buffer_valid;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_iffalse := in_buffer_valid;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_iffalse := in_buffer_valid;
     VAR_in_buffer_MUX_uart_mac_h_l196_c915_6e44_iftrue := VAR_in_data;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_iftrue := VAR_in_data_valid;
     VAR_BIN_OP_EQ_uart_mac_h_l196_c588_948e_left := out_counter;
     VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_left := out_counter;
     VAR_out_counter_MUX_uart_mac_h_l196_c663_8988_iffalse := out_counter;
     VAR_BIN_OP_AND_uart_mac_h_l196_c570_9f5a_left := VAR_out_data_ready;
     VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_8988_cond := VAR_out_data_ready;
     VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_8988_cond := VAR_out_data_ready;
     VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_8988_cond := VAR_out_data_ready;
     VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_8988_cond := VAR_out_data_ready;
     VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_8988_cond := VAR_out_data_ready;
     VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_8988_cond := VAR_out_data_ready;
     VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_8988_cond := VAR_out_data_ready;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_cond := VAR_out_data_ready;
     VAR_out_counter_MUX_uart_mac_h_l196_c663_8988_cond := VAR_out_data_ready;
     -- CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l196_DUPLICATE_de15 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l196_DUPLICATE_de15_return_output := in_buffer(1);

     -- CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l196_DUPLICATE_88d3 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l196_DUPLICATE_88d3_return_output := in_buffer(2);

     -- CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l196_DUPLICATE_da13 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l196_DUPLICATE_da13_return_output := in_buffer(5);

     -- CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_h_l196_DUPLICATE_1f08 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_h_l196_DUPLICATE_1f08_return_output := in_buffer(0);

     -- UNARY_OP_NOT[uart_mac_h_l196_c630_d19a] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_uart_mac_h_l196_c630_d19a_expr <= VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_d19a_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_d19a_return_output := UNARY_OP_NOT_uart_mac_h_l196_c630_d19a_return_output;

     -- FOR_uart_mac_h_l196_c713_73ef_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d[uart_mac_h_l196_c818_fbb6] LATENCY=0
     VAR_FOR_uart_mac_h_l196_c713_73ef_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_h_l196_c818_fbb6_return_output := in_buffer(7);

     -- BIN_OP_PLUS[uart_mac_h_l196_c851_8bc3] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_left <= VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_left;
     BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_right <= VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_return_output := BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_return_output;

     -- BIN_OP_EQ[uart_mac_h_l196_c588_948e] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l196_c588_948e_left <= VAR_BIN_OP_EQ_uart_mac_h_l196_c588_948e_left;
     BIN_OP_EQ_uart_mac_h_l196_c588_948e_right <= VAR_BIN_OP_EQ_uart_mac_h_l196_c588_948e_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l196_c588_948e_return_output := BIN_OP_EQ_uart_mac_h_l196_c588_948e_return_output;

     -- CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l196_DUPLICATE_1b7a LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l196_DUPLICATE_1b7a_return_output := in_buffer(6);

     -- CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l196_DUPLICATE_2d1c LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l196_DUPLICATE_2d1c_return_output := in_buffer(3);

     -- CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l196_DUPLICATE_aadc LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l196_DUPLICATE_aadc_return_output := in_buffer(4);

     -- Submodule level 1
     VAR_BIN_OP_AND_uart_mac_h_l196_c570_9f5a_right := VAR_BIN_OP_EQ_uart_mac_h_l196_c588_948e_return_output;
     VAR_out_counter_uart_mac_h_l196_c851_0647 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8bc3_return_output, 32);
     VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_8988_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_h_l196_DUPLICATE_1f08_return_output;
     VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_8988_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l196_DUPLICATE_de15_return_output;
     VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_8988_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l196_DUPLICATE_de15_return_output;
     VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_8988_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l196_DUPLICATE_88d3_return_output;
     VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_8988_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l196_DUPLICATE_88d3_return_output;
     VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_8988_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l196_DUPLICATE_2d1c_return_output;
     VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_8988_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l196_DUPLICATE_2d1c_return_output;
     VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_8988_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l196_DUPLICATE_aadc_return_output;
     VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_8988_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l196_DUPLICATE_aadc_return_output;
     VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_8988_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l196_DUPLICATE_da13_return_output;
     VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_8988_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l196_DUPLICATE_da13_return_output;
     VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_8988_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l196_DUPLICATE_1b7a_return_output;
     VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_8988_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l196_DUPLICATE_1b7a_return_output;
     VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_8988_iftrue := VAR_FOR_uart_mac_h_l196_c713_73ef_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_h_l196_c818_fbb6_return_output;
     VAR_BIN_OP_OR_uart_mac_h_l196_c630_7f55_left := VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_d19a_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_left := VAR_out_counter_uart_mac_h_l196_c851_0647;
     VAR_out_counter_MUX_uart_mac_h_l196_c663_8988_iftrue := VAR_out_counter_uart_mac_h_l196_c851_0647;
     -- in_buffer_2_MUX[uart_mac_h_l196_c663_8988] LATENCY=0
     -- Inputs
     in_buffer_2_MUX_uart_mac_h_l196_c663_8988_cond <= VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_8988_cond;
     in_buffer_2_MUX_uart_mac_h_l196_c663_8988_iftrue <= VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_8988_iftrue;
     in_buffer_2_MUX_uart_mac_h_l196_c663_8988_iffalse <= VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_8988_iffalse;
     -- Outputs
     VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_8988_return_output := in_buffer_2_MUX_uart_mac_h_l196_c663_8988_return_output;

     -- out_counter_MUX[uart_mac_h_l196_c663_8988] LATENCY=0
     -- Inputs
     out_counter_MUX_uart_mac_h_l196_c663_8988_cond <= VAR_out_counter_MUX_uart_mac_h_l196_c663_8988_cond;
     out_counter_MUX_uart_mac_h_l196_c663_8988_iftrue <= VAR_out_counter_MUX_uart_mac_h_l196_c663_8988_iftrue;
     out_counter_MUX_uart_mac_h_l196_c663_8988_iffalse <= VAR_out_counter_MUX_uart_mac_h_l196_c663_8988_iffalse;
     -- Outputs
     VAR_out_counter_MUX_uart_mac_h_l196_c663_8988_return_output := out_counter_MUX_uart_mac_h_l196_c663_8988_return_output;

     -- BIN_OP_AND[uart_mac_h_l196_c570_9f5a] LATENCY=0
     -- Inputs
     BIN_OP_AND_uart_mac_h_l196_c570_9f5a_left <= VAR_BIN_OP_AND_uart_mac_h_l196_c570_9f5a_left;
     BIN_OP_AND_uart_mac_h_l196_c570_9f5a_right <= VAR_BIN_OP_AND_uart_mac_h_l196_c570_9f5a_right;
     -- Outputs
     VAR_BIN_OP_AND_uart_mac_h_l196_c570_9f5a_return_output := BIN_OP_AND_uart_mac_h_l196_c570_9f5a_return_output;

     -- BIN_OP_EQ[uart_mac_h_l196_c872_4e6a] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_left <= VAR_BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_left;
     BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_right <= VAR_BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_return_output := BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_return_output;

     -- in_buffer_6_MUX[uart_mac_h_l196_c663_8988] LATENCY=0
     -- Inputs
     in_buffer_6_MUX_uart_mac_h_l196_c663_8988_cond <= VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_8988_cond;
     in_buffer_6_MUX_uart_mac_h_l196_c663_8988_iftrue <= VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_8988_iftrue;
     in_buffer_6_MUX_uart_mac_h_l196_c663_8988_iffalse <= VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_8988_iffalse;
     -- Outputs
     VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_8988_return_output := in_buffer_6_MUX_uart_mac_h_l196_c663_8988_return_output;

     -- in_buffer_5_MUX[uart_mac_h_l196_c663_8988] LATENCY=0
     -- Inputs
     in_buffer_5_MUX_uart_mac_h_l196_c663_8988_cond <= VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_8988_cond;
     in_buffer_5_MUX_uart_mac_h_l196_c663_8988_iftrue <= VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_8988_iftrue;
     in_buffer_5_MUX_uart_mac_h_l196_c663_8988_iffalse <= VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_8988_iffalse;
     -- Outputs
     VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_8988_return_output := in_buffer_5_MUX_uart_mac_h_l196_c663_8988_return_output;

     -- in_buffer_3_MUX[uart_mac_h_l196_c663_8988] LATENCY=0
     -- Inputs
     in_buffer_3_MUX_uart_mac_h_l196_c663_8988_cond <= VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_8988_cond;
     in_buffer_3_MUX_uart_mac_h_l196_c663_8988_iftrue <= VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_8988_iftrue;
     in_buffer_3_MUX_uart_mac_h_l196_c663_8988_iffalse <= VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_8988_iffalse;
     -- Outputs
     VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_8988_return_output := in_buffer_3_MUX_uart_mac_h_l196_c663_8988_return_output;

     -- in_buffer_1_MUX[uart_mac_h_l196_c663_8988] LATENCY=0
     -- Inputs
     in_buffer_1_MUX_uart_mac_h_l196_c663_8988_cond <= VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_8988_cond;
     in_buffer_1_MUX_uart_mac_h_l196_c663_8988_iftrue <= VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_8988_iftrue;
     in_buffer_1_MUX_uart_mac_h_l196_c663_8988_iffalse <= VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_8988_iffalse;
     -- Outputs
     VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_8988_return_output := in_buffer_1_MUX_uart_mac_h_l196_c663_8988_return_output;

     -- in_buffer_0_MUX[uart_mac_h_l196_c663_8988] LATENCY=0
     -- Inputs
     in_buffer_0_MUX_uart_mac_h_l196_c663_8988_cond <= VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_8988_cond;
     in_buffer_0_MUX_uart_mac_h_l196_c663_8988_iftrue <= VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_8988_iftrue;
     in_buffer_0_MUX_uart_mac_h_l196_c663_8988_iffalse <= VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_8988_iffalse;
     -- Outputs
     VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_8988_return_output := in_buffer_0_MUX_uart_mac_h_l196_c663_8988_return_output;

     -- in_buffer_4_MUX[uart_mac_h_l196_c663_8988] LATENCY=0
     -- Inputs
     in_buffer_4_MUX_uart_mac_h_l196_c663_8988_cond <= VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_8988_cond;
     in_buffer_4_MUX_uart_mac_h_l196_c663_8988_iftrue <= VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_8988_iftrue;
     in_buffer_4_MUX_uart_mac_h_l196_c663_8988_iffalse <= VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_8988_iffalse;
     -- Outputs
     VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_8988_return_output := in_buffer_4_MUX_uart_mac_h_l196_c663_8988_return_output;

     -- Submodule level 2
     VAR_BIN_OP_OR_uart_mac_h_l196_c630_7f55_right := VAR_BIN_OP_AND_uart_mac_h_l196_c570_9f5a_return_output;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_cond := VAR_BIN_OP_EQ_uart_mac_h_l196_c872_4e6a_return_output;
     VAR_out_counter_MUX_uart_mac_h_l196_c915_6e44_iffalse := VAR_out_counter_MUX_uart_mac_h_l196_c663_8988_return_output;
     -- in_buffer_valid_MUX[uart_mac_h_l196_c869_a306] LATENCY=0
     -- Inputs
     in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_cond <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_cond;
     in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_iftrue <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_iftrue;
     in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_iffalse <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_iffalse;
     -- Outputs
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_return_output := in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_return_output;

     -- BIN_OP_OR[uart_mac_h_l196_c630_7f55] LATENCY=0
     -- Inputs
     BIN_OP_OR_uart_mac_h_l196_c630_7f55_left <= VAR_BIN_OP_OR_uart_mac_h_l196_c630_7f55_left;
     BIN_OP_OR_uart_mac_h_l196_c630_7f55_right <= VAR_BIN_OP_OR_uart_mac_h_l196_c630_7f55_right;
     -- Outputs
     VAR_BIN_OP_OR_uart_mac_h_l196_c630_7f55_return_output := BIN_OP_OR_uart_mac_h_l196_c630_7f55_return_output;

     -- in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_5ceb[uart_mac_h_l196_c915_6e44] LATENCY=0
     VAR_in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_5ceb_uart_mac_h_l196_c915_6e44_return_output := CONST_REF_RD_uint1_t_8_uint1_t_8_5ceb(
     in_buffer,
     VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_8988_return_output,
     VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_8988_return_output,
     VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_8988_return_output,
     VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_8988_return_output,
     VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_8988_return_output,
     VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_8988_return_output,
     VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_8988_return_output);

     -- Submodule level 3
     VAR_in_buffer_MUX_uart_mac_h_l196_c915_6e44_cond := VAR_BIN_OP_OR_uart_mac_h_l196_c630_7f55_return_output;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_cond := VAR_BIN_OP_OR_uart_mac_h_l196_c630_7f55_return_output;
     VAR_out_counter_MUX_uart_mac_h_l196_c915_6e44_cond := VAR_BIN_OP_OR_uart_mac_h_l196_c630_7f55_return_output;
     VAR_in_buffer_MUX_uart_mac_h_l196_c915_6e44_iffalse := VAR_in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_5ceb_uart_mac_h_l196_c915_6e44_return_output;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_iftrue := VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_a306_return_output;
     -- out_counter_MUX[uart_mac_h_l196_c915_6e44] LATENCY=0
     -- Inputs
     out_counter_MUX_uart_mac_h_l196_c915_6e44_cond <= VAR_out_counter_MUX_uart_mac_h_l196_c915_6e44_cond;
     out_counter_MUX_uart_mac_h_l196_c915_6e44_iftrue <= VAR_out_counter_MUX_uart_mac_h_l196_c915_6e44_iftrue;
     out_counter_MUX_uart_mac_h_l196_c915_6e44_iffalse <= VAR_out_counter_MUX_uart_mac_h_l196_c915_6e44_iffalse;
     -- Outputs
     VAR_out_counter_MUX_uart_mac_h_l196_c915_6e44_return_output := out_counter_MUX_uart_mac_h_l196_c915_6e44_return_output;

     -- in_buffer_MUX[uart_mac_h_l196_c915_6e44] LATENCY=0
     -- Inputs
     in_buffer_MUX_uart_mac_h_l196_c915_6e44_cond <= VAR_in_buffer_MUX_uart_mac_h_l196_c915_6e44_cond;
     in_buffer_MUX_uart_mac_h_l196_c915_6e44_iftrue <= VAR_in_buffer_MUX_uart_mac_h_l196_c915_6e44_iftrue;
     in_buffer_MUX_uart_mac_h_l196_c915_6e44_iffalse <= VAR_in_buffer_MUX_uart_mac_h_l196_c915_6e44_iffalse;
     -- Outputs
     VAR_in_buffer_MUX_uart_mac_h_l196_c915_6e44_return_output := in_buffer_MUX_uart_mac_h_l196_c915_6e44_return_output;

     -- in_buffer_valid_MUX[uart_mac_h_l196_c663_8988] LATENCY=0
     -- Inputs
     in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_cond <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_cond;
     in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_iftrue <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_iftrue;
     in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_iffalse <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_iffalse;
     -- Outputs
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_return_output := in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_return_output;

     -- CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9[uart_mac_h_l196_c1018_d501] LATENCY=0
     VAR_CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9_uart_mac_h_l196_c1018_d501_return_output := CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9(
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_h_l196_DUPLICATE_1f08_return_output,
     in_buffer_valid,
     VAR_BIN_OP_OR_uart_mac_h_l196_c630_7f55_return_output);

     -- Submodule level 4
     VAR_return_output := VAR_CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9_uart_mac_h_l196_c1018_d501_return_output;
     REG_VAR_in_buffer := VAR_in_buffer_MUX_uart_mac_h_l196_c915_6e44_return_output;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_iffalse := VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_8988_return_output;
     REG_VAR_out_counter := VAR_out_counter_MUX_uart_mac_h_l196_c915_6e44_return_output;
     -- in_buffer_valid_MUX[uart_mac_h_l196_c915_6e44] LATENCY=0
     -- Inputs
     in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_cond <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_cond;
     in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_iftrue <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_iftrue;
     in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_iffalse <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_iffalse;
     -- Outputs
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_return_output := in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_return_output;

     -- Submodule level 5
     REG_VAR_in_buffer_valid := VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_6e44_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_in_buffer <= REG_VAR_in_buffer;
REG_COMB_in_buffer_valid <= REG_VAR_in_buffer_valid;
REG_COMB_out_counter <= REG_VAR_out_counter;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if clk_en_internal='1' then
     in_buffer <= REG_COMB_in_buffer;
     in_buffer_valid <= REG_COMB_in_buffer_valid;
     out_counter <= REG_COMB_out_counter;
 end if;
 end if;
end process;

end arch;
