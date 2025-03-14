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
-- BIN_OP_EQ[uart_mac_h_l196_c588_d460]
signal BIN_OP_EQ_uart_mac_h_l196_c588_d460_left : unsigned(31 downto 0);
signal BIN_OP_EQ_uart_mac_h_l196_c588_d460_right : unsigned(2 downto 0);
signal BIN_OP_EQ_uart_mac_h_l196_c588_d460_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[uart_mac_h_l196_c570_406d]
signal BIN_OP_AND_uart_mac_h_l196_c570_406d_left : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l196_c570_406d_right : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l196_c570_406d_return_output : unsigned(0 downto 0);

-- UNARY_OP_NOT[uart_mac_h_l196_c630_beba]
signal UNARY_OP_NOT_uart_mac_h_l196_c630_beba_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_uart_mac_h_l196_c630_beba_return_output : unsigned(0 downto 0);

-- BIN_OP_OR[uart_mac_h_l196_c630_7b03]
signal BIN_OP_OR_uart_mac_h_l196_c630_7b03_left : unsigned(0 downto 0);
signal BIN_OP_OR_uart_mac_h_l196_c630_7b03_right : unsigned(0 downto 0);
signal BIN_OP_OR_uart_mac_h_l196_c630_7b03_return_output : unsigned(0 downto 0);

-- in_buffer_4_MUX[uart_mac_h_l196_c663_655b]
signal in_buffer_4_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
signal in_buffer_4_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
signal in_buffer_4_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
signal in_buffer_4_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);

-- in_buffer_2_MUX[uart_mac_h_l196_c663_655b]
signal in_buffer_2_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
signal in_buffer_2_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
signal in_buffer_2_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
signal in_buffer_2_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);

-- in_buffer_3_MUX[uart_mac_h_l196_c663_655b]
signal in_buffer_3_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
signal in_buffer_3_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
signal in_buffer_3_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
signal in_buffer_3_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);

-- in_buffer_5_MUX[uart_mac_h_l196_c663_655b]
signal in_buffer_5_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
signal in_buffer_5_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
signal in_buffer_5_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
signal in_buffer_5_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);

-- in_buffer_0_MUX[uart_mac_h_l196_c663_655b]
signal in_buffer_0_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
signal in_buffer_0_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
signal in_buffer_0_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
signal in_buffer_0_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);

-- in_buffer_6_MUX[uart_mac_h_l196_c663_655b]
signal in_buffer_6_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
signal in_buffer_6_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
signal in_buffer_6_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
signal in_buffer_6_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);

-- in_buffer_1_MUX[uart_mac_h_l196_c663_655b]
signal in_buffer_1_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
signal in_buffer_1_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
signal in_buffer_1_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
signal in_buffer_1_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);

-- in_buffer_valid_MUX[uart_mac_h_l196_c663_655b]
signal in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);

-- out_counter_MUX[uart_mac_h_l196_c663_655b]
signal out_counter_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(31 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(31 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(31 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l196_c851_1349]
signal BIN_OP_PLUS_uart_mac_h_l196_c851_1349_left : unsigned(31 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l196_c851_1349_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l196_c851_1349_return_output : unsigned(32 downto 0);

-- BIN_OP_EQ[uart_mac_h_l196_c872_da9b]
signal BIN_OP_EQ_uart_mac_h_l196_c872_da9b_left : unsigned(31 downto 0);
signal BIN_OP_EQ_uart_mac_h_l196_c872_da9b_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l196_c872_da9b_return_output : unsigned(0 downto 0);

-- in_buffer_valid_MUX[uart_mac_h_l196_c869_2cf2]
signal in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_cond : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_iftrue : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_iffalse : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_return_output : unsigned(0 downto 0);

-- in_buffer_MUX[uart_mac_h_l196_c915_a847]
signal in_buffer_MUX_uart_mac_h_l196_c915_a847_cond : unsigned(0 downto 0);
signal in_buffer_MUX_uart_mac_h_l196_c915_a847_iftrue : uint1_t_8;
signal in_buffer_MUX_uart_mac_h_l196_c915_a847_iffalse : uint1_t_8;
signal in_buffer_MUX_uart_mac_h_l196_c915_a847_return_output : uint1_t_8;

-- in_buffer_valid_MUX[uart_mac_h_l196_c915_a847]
signal in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_cond : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_iftrue : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_iffalse : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_return_output : unsigned(0 downto 0);

-- out_counter_MUX[uart_mac_h_l196_c915_a847]
signal out_counter_MUX_uart_mac_h_l196_c915_a847_cond : unsigned(0 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c915_a847_iftrue : unsigned(31 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c915_a847_iffalse : unsigned(31 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c915_a847_return_output : unsigned(31 downto 0);

function CONST_REF_RD_uint1_t_8_uint1_t_8_111d( ref_toks_0 : uint1_t_8;
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
      base(2) := ref_toks_2;
      base(3) := ref_toks_3;
      base(5) := ref_toks_4;
      base(0) := ref_toks_5;
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
-- BIN_OP_EQ_uart_mac_h_l196_c588_d460 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l196_c588_d460 : entity work.BIN_OP_EQ_uint32_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l196_c588_d460_left,
BIN_OP_EQ_uart_mac_h_l196_c588_d460_right,
BIN_OP_EQ_uart_mac_h_l196_c588_d460_return_output);

-- BIN_OP_AND_uart_mac_h_l196_c570_406d : 0 clocks latency
BIN_OP_AND_uart_mac_h_l196_c570_406d : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_uart_mac_h_l196_c570_406d_left,
BIN_OP_AND_uart_mac_h_l196_c570_406d_right,
BIN_OP_AND_uart_mac_h_l196_c570_406d_return_output);

-- UNARY_OP_NOT_uart_mac_h_l196_c630_beba : 0 clocks latency
UNARY_OP_NOT_uart_mac_h_l196_c630_beba : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_uart_mac_h_l196_c630_beba_expr,
UNARY_OP_NOT_uart_mac_h_l196_c630_beba_return_output);

-- BIN_OP_OR_uart_mac_h_l196_c630_7b03 : 0 clocks latency
BIN_OP_OR_uart_mac_h_l196_c630_7b03 : entity work.BIN_OP_OR_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_OR_uart_mac_h_l196_c630_7b03_left,
BIN_OP_OR_uart_mac_h_l196_c630_7b03_right,
BIN_OP_OR_uart_mac_h_l196_c630_7b03_return_output);

-- in_buffer_4_MUX_uart_mac_h_l196_c663_655b : 0 clocks latency
in_buffer_4_MUX_uart_mac_h_l196_c663_655b : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_4_MUX_uart_mac_h_l196_c663_655b_cond,
in_buffer_4_MUX_uart_mac_h_l196_c663_655b_iftrue,
in_buffer_4_MUX_uart_mac_h_l196_c663_655b_iffalse,
in_buffer_4_MUX_uart_mac_h_l196_c663_655b_return_output);

-- in_buffer_2_MUX_uart_mac_h_l196_c663_655b : 0 clocks latency
in_buffer_2_MUX_uart_mac_h_l196_c663_655b : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_2_MUX_uart_mac_h_l196_c663_655b_cond,
in_buffer_2_MUX_uart_mac_h_l196_c663_655b_iftrue,
in_buffer_2_MUX_uart_mac_h_l196_c663_655b_iffalse,
in_buffer_2_MUX_uart_mac_h_l196_c663_655b_return_output);

-- in_buffer_3_MUX_uart_mac_h_l196_c663_655b : 0 clocks latency
in_buffer_3_MUX_uart_mac_h_l196_c663_655b : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_3_MUX_uart_mac_h_l196_c663_655b_cond,
in_buffer_3_MUX_uart_mac_h_l196_c663_655b_iftrue,
in_buffer_3_MUX_uart_mac_h_l196_c663_655b_iffalse,
in_buffer_3_MUX_uart_mac_h_l196_c663_655b_return_output);

-- in_buffer_5_MUX_uart_mac_h_l196_c663_655b : 0 clocks latency
in_buffer_5_MUX_uart_mac_h_l196_c663_655b : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_5_MUX_uart_mac_h_l196_c663_655b_cond,
in_buffer_5_MUX_uart_mac_h_l196_c663_655b_iftrue,
in_buffer_5_MUX_uart_mac_h_l196_c663_655b_iffalse,
in_buffer_5_MUX_uart_mac_h_l196_c663_655b_return_output);

-- in_buffer_0_MUX_uart_mac_h_l196_c663_655b : 0 clocks latency
in_buffer_0_MUX_uart_mac_h_l196_c663_655b : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_0_MUX_uart_mac_h_l196_c663_655b_cond,
in_buffer_0_MUX_uart_mac_h_l196_c663_655b_iftrue,
in_buffer_0_MUX_uart_mac_h_l196_c663_655b_iffalse,
in_buffer_0_MUX_uart_mac_h_l196_c663_655b_return_output);

-- in_buffer_6_MUX_uart_mac_h_l196_c663_655b : 0 clocks latency
in_buffer_6_MUX_uart_mac_h_l196_c663_655b : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_6_MUX_uart_mac_h_l196_c663_655b_cond,
in_buffer_6_MUX_uart_mac_h_l196_c663_655b_iftrue,
in_buffer_6_MUX_uart_mac_h_l196_c663_655b_iffalse,
in_buffer_6_MUX_uart_mac_h_l196_c663_655b_return_output);

-- in_buffer_1_MUX_uart_mac_h_l196_c663_655b : 0 clocks latency
in_buffer_1_MUX_uart_mac_h_l196_c663_655b : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_1_MUX_uart_mac_h_l196_c663_655b_cond,
in_buffer_1_MUX_uart_mac_h_l196_c663_655b_iftrue,
in_buffer_1_MUX_uart_mac_h_l196_c663_655b_iffalse,
in_buffer_1_MUX_uart_mac_h_l196_c663_655b_return_output);

-- in_buffer_valid_MUX_uart_mac_h_l196_c663_655b : 0 clocks latency
in_buffer_valid_MUX_uart_mac_h_l196_c663_655b : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_cond,
in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_iftrue,
in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_iffalse,
in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_return_output);

-- out_counter_MUX_uart_mac_h_l196_c663_655b : 0 clocks latency
out_counter_MUX_uart_mac_h_l196_c663_655b : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
out_counter_MUX_uart_mac_h_l196_c663_655b_cond,
out_counter_MUX_uart_mac_h_l196_c663_655b_iftrue,
out_counter_MUX_uart_mac_h_l196_c663_655b_iffalse,
out_counter_MUX_uart_mac_h_l196_c663_655b_return_output);

-- BIN_OP_PLUS_uart_mac_h_l196_c851_1349 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l196_c851_1349 : entity work.BIN_OP_PLUS_uint32_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l196_c851_1349_left,
BIN_OP_PLUS_uart_mac_h_l196_c851_1349_right,
BIN_OP_PLUS_uart_mac_h_l196_c851_1349_return_output);

-- BIN_OP_EQ_uart_mac_h_l196_c872_da9b : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l196_c872_da9b : entity work.BIN_OP_EQ_uint32_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l196_c872_da9b_left,
BIN_OP_EQ_uart_mac_h_l196_c872_da9b_right,
BIN_OP_EQ_uart_mac_h_l196_c872_da9b_return_output);

-- in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2 : 0 clocks latency
in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_cond,
in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_iftrue,
in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_iffalse,
in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_return_output);

-- in_buffer_MUX_uart_mac_h_l196_c915_a847 : 0 clocks latency
in_buffer_MUX_uart_mac_h_l196_c915_a847 : entity work.MUX_uint1_t_uint1_t_8_uint1_t_8_0CLK_de264c78 port map (
in_buffer_MUX_uart_mac_h_l196_c915_a847_cond,
in_buffer_MUX_uart_mac_h_l196_c915_a847_iftrue,
in_buffer_MUX_uart_mac_h_l196_c915_a847_iffalse,
in_buffer_MUX_uart_mac_h_l196_c915_a847_return_output);

-- in_buffer_valid_MUX_uart_mac_h_l196_c915_a847 : 0 clocks latency
in_buffer_valid_MUX_uart_mac_h_l196_c915_a847 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_cond,
in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_iftrue,
in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_iffalse,
in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_return_output);

-- out_counter_MUX_uart_mac_h_l196_c915_a847 : 0 clocks latency
out_counter_MUX_uart_mac_h_l196_c915_a847 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
out_counter_MUX_uart_mac_h_l196_c915_a847_cond,
out_counter_MUX_uart_mac_h_l196_c915_a847_iftrue,
out_counter_MUX_uart_mac_h_l196_c915_a847_iffalse,
out_counter_MUX_uart_mac_h_l196_c915_a847_return_output);



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
 BIN_OP_EQ_uart_mac_h_l196_c588_d460_return_output,
 BIN_OP_AND_uart_mac_h_l196_c570_406d_return_output,
 UNARY_OP_NOT_uart_mac_h_l196_c630_beba_return_output,
 BIN_OP_OR_uart_mac_h_l196_c630_7b03_return_output,
 in_buffer_4_MUX_uart_mac_h_l196_c663_655b_return_output,
 in_buffer_2_MUX_uart_mac_h_l196_c663_655b_return_output,
 in_buffer_3_MUX_uart_mac_h_l196_c663_655b_return_output,
 in_buffer_5_MUX_uart_mac_h_l196_c663_655b_return_output,
 in_buffer_0_MUX_uart_mac_h_l196_c663_655b_return_output,
 in_buffer_6_MUX_uart_mac_h_l196_c663_655b_return_output,
 in_buffer_1_MUX_uart_mac_h_l196_c663_655b_return_output,
 in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_return_output,
 out_counter_MUX_uart_mac_h_l196_c663_655b_return_output,
 BIN_OP_PLUS_uart_mac_h_l196_c851_1349_return_output,
 BIN_OP_EQ_uart_mac_h_l196_c872_da9b_return_output,
 in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_return_output,
 in_buffer_MUX_uart_mac_h_l196_c915_a847_return_output,
 in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_return_output,
 out_counter_MUX_uart_mac_h_l196_c915_a847_return_output)
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
 variable VAR_BIN_OP_AND_uart_mac_h_l196_c570_406d_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c588_d460_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c588_d460_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c588_d460_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l196_c570_406d_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l196_c570_406d_return_output : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_beba_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_beba_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_uart_mac_h_l196_c630_7b03_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_uart_mac_h_l196_c630_7b03_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_uart_mac_h_l196_c630_7b03_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c663_655b_iftrue : unsigned(31 downto 0);
 variable VAR_out_counter_uart_mac_h_l196_c851_4590 : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c663_655b_iffalse : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c663_655b_return_output : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c663_655b_cond : unsigned(0 downto 0);
 variable VAR_ARRAY_SHIFT_DOWN_i : unsigned(31 downto 0);
 variable VAR_FOR_uart_mac_h_l196_c713_b071_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_h_l196_c818_53de_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_1349_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_1349_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_1349_return_output : unsigned(32 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c872_da9b_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c872_da9b_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c872_da9b_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_MUX_uart_mac_h_l196_c915_a847_iftrue : uint1_t_8;
 variable VAR_in_buffer_MUX_uart_mac_h_l196_c915_a847_iffalse : uint1_t_8;
 variable VAR_in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_111d_uart_mac_h_l196_c915_a847_return_output : uint1_t_8;
 variable VAR_in_buffer_MUX_uart_mac_h_l196_c915_a847_return_output : uint1_t_8;
 variable VAR_in_buffer_MUX_uart_mac_h_l196_c915_a847_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_cond : unsigned(0 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c915_a847_iftrue : unsigned(31 downto 0);
 variable VAR_out_counter_uart_mac_h_l196_c992_802c : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c915_a847_iffalse : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c915_a847_return_output : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c915_a847_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9_uart_mac_h_l196_c1018_93f0_return_output : uart_serializer_serializer_in_to_out_t;
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_h_l196_DUPLICATE_6708_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l196_DUPLICATE_3803_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l196_DUPLICATE_87ce_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l196_DUPLICATE_caff_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l196_DUPLICATE_fad5_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l196_DUPLICATE_d012_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l196_DUPLICATE_d71f_return_output : unsigned(0 downto 0);
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
     VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_1349_right := to_unsigned(1, 1);
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_iftrue := to_unsigned(0, 1);
     VAR_out_counter_uart_mac_h_l196_c992_802c := resize(to_unsigned(0, 1), 32);
     VAR_out_counter_MUX_uart_mac_h_l196_c915_a847_iftrue := VAR_out_counter_uart_mac_h_l196_c992_802c;
     VAR_BIN_OP_EQ_uart_mac_h_l196_c872_da9b_right := to_unsigned(8, 4);
     VAR_BIN_OP_EQ_uart_mac_h_l196_c588_d460_right := to_unsigned(7, 3);

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
     VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_beba_expr := in_buffer_valid;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_iffalse := in_buffer_valid;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_iffalse := in_buffer_valid;
     VAR_in_buffer_MUX_uart_mac_h_l196_c915_a847_iftrue := VAR_in_data;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_iftrue := VAR_in_data_valid;
     VAR_BIN_OP_EQ_uart_mac_h_l196_c588_d460_left := out_counter;
     VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_1349_left := out_counter;
     VAR_out_counter_MUX_uart_mac_h_l196_c663_655b_iffalse := out_counter;
     VAR_BIN_OP_AND_uart_mac_h_l196_c570_406d_left := VAR_out_data_ready;
     VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_655b_cond := VAR_out_data_ready;
     VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_655b_cond := VAR_out_data_ready;
     VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_655b_cond := VAR_out_data_ready;
     VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_655b_cond := VAR_out_data_ready;
     VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_655b_cond := VAR_out_data_ready;
     VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_655b_cond := VAR_out_data_ready;
     VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_655b_cond := VAR_out_data_ready;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_cond := VAR_out_data_ready;
     VAR_out_counter_MUX_uart_mac_h_l196_c663_655b_cond := VAR_out_data_ready;
     -- CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_h_l196_DUPLICATE_6708 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_h_l196_DUPLICATE_6708_return_output := in_buffer(0);

     -- FOR_uart_mac_h_l196_c713_b071_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d[uart_mac_h_l196_c818_53de] LATENCY=0
     VAR_FOR_uart_mac_h_l196_c713_b071_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_h_l196_c818_53de_return_output := in_buffer(7);

     -- CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l196_DUPLICATE_d71f LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l196_DUPLICATE_d71f_return_output := in_buffer(6);

     -- UNARY_OP_NOT[uart_mac_h_l196_c630_beba] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_uart_mac_h_l196_c630_beba_expr <= VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_beba_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_beba_return_output := UNARY_OP_NOT_uart_mac_h_l196_c630_beba_return_output;

     -- CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l196_DUPLICATE_d012 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l196_DUPLICATE_d012_return_output := in_buffer(5);

     -- CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l196_DUPLICATE_fad5 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l196_DUPLICATE_fad5_return_output := in_buffer(4);

     -- CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l196_DUPLICATE_caff LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l196_DUPLICATE_caff_return_output := in_buffer(3);

     -- BIN_OP_PLUS[uart_mac_h_l196_c851_1349] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l196_c851_1349_left <= VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_1349_left;
     BIN_OP_PLUS_uart_mac_h_l196_c851_1349_right <= VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_1349_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_1349_return_output := BIN_OP_PLUS_uart_mac_h_l196_c851_1349_return_output;

     -- BIN_OP_EQ[uart_mac_h_l196_c588_d460] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l196_c588_d460_left <= VAR_BIN_OP_EQ_uart_mac_h_l196_c588_d460_left;
     BIN_OP_EQ_uart_mac_h_l196_c588_d460_right <= VAR_BIN_OP_EQ_uart_mac_h_l196_c588_d460_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l196_c588_d460_return_output := BIN_OP_EQ_uart_mac_h_l196_c588_d460_return_output;

     -- CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l196_DUPLICATE_87ce LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l196_DUPLICATE_87ce_return_output := in_buffer(2);

     -- CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l196_DUPLICATE_3803 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l196_DUPLICATE_3803_return_output := in_buffer(1);

     -- Submodule level 1
     VAR_BIN_OP_AND_uart_mac_h_l196_c570_406d_right := VAR_BIN_OP_EQ_uart_mac_h_l196_c588_d460_return_output;
     VAR_out_counter_uart_mac_h_l196_c851_4590 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_1349_return_output, 32);
     VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_655b_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_h_l196_DUPLICATE_6708_return_output;
     VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_655b_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l196_DUPLICATE_3803_return_output;
     VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_655b_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l196_DUPLICATE_3803_return_output;
     VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_655b_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l196_DUPLICATE_87ce_return_output;
     VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_655b_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l196_DUPLICATE_87ce_return_output;
     VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_655b_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l196_DUPLICATE_caff_return_output;
     VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_655b_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l196_DUPLICATE_caff_return_output;
     VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_655b_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l196_DUPLICATE_fad5_return_output;
     VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_655b_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l196_DUPLICATE_fad5_return_output;
     VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_655b_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l196_DUPLICATE_d012_return_output;
     VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_655b_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l196_DUPLICATE_d012_return_output;
     VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_655b_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l196_DUPLICATE_d71f_return_output;
     VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_655b_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l196_DUPLICATE_d71f_return_output;
     VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_655b_iftrue := VAR_FOR_uart_mac_h_l196_c713_b071_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_h_l196_c818_53de_return_output;
     VAR_BIN_OP_OR_uart_mac_h_l196_c630_7b03_left := VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_beba_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l196_c872_da9b_left := VAR_out_counter_uart_mac_h_l196_c851_4590;
     VAR_out_counter_MUX_uart_mac_h_l196_c663_655b_iftrue := VAR_out_counter_uart_mac_h_l196_c851_4590;
     -- in_buffer_4_MUX[uart_mac_h_l196_c663_655b] LATENCY=0
     -- Inputs
     in_buffer_4_MUX_uart_mac_h_l196_c663_655b_cond <= VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_655b_cond;
     in_buffer_4_MUX_uart_mac_h_l196_c663_655b_iftrue <= VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_655b_iftrue;
     in_buffer_4_MUX_uart_mac_h_l196_c663_655b_iffalse <= VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_655b_iffalse;
     -- Outputs
     VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_655b_return_output := in_buffer_4_MUX_uart_mac_h_l196_c663_655b_return_output;

     -- in_buffer_0_MUX[uart_mac_h_l196_c663_655b] LATENCY=0
     -- Inputs
     in_buffer_0_MUX_uart_mac_h_l196_c663_655b_cond <= VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_655b_cond;
     in_buffer_0_MUX_uart_mac_h_l196_c663_655b_iftrue <= VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_655b_iftrue;
     in_buffer_0_MUX_uart_mac_h_l196_c663_655b_iffalse <= VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_655b_iffalse;
     -- Outputs
     VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_655b_return_output := in_buffer_0_MUX_uart_mac_h_l196_c663_655b_return_output;

     -- in_buffer_3_MUX[uart_mac_h_l196_c663_655b] LATENCY=0
     -- Inputs
     in_buffer_3_MUX_uart_mac_h_l196_c663_655b_cond <= VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_655b_cond;
     in_buffer_3_MUX_uart_mac_h_l196_c663_655b_iftrue <= VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_655b_iftrue;
     in_buffer_3_MUX_uart_mac_h_l196_c663_655b_iffalse <= VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_655b_iffalse;
     -- Outputs
     VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_655b_return_output := in_buffer_3_MUX_uart_mac_h_l196_c663_655b_return_output;

     -- BIN_OP_AND[uart_mac_h_l196_c570_406d] LATENCY=0
     -- Inputs
     BIN_OP_AND_uart_mac_h_l196_c570_406d_left <= VAR_BIN_OP_AND_uart_mac_h_l196_c570_406d_left;
     BIN_OP_AND_uart_mac_h_l196_c570_406d_right <= VAR_BIN_OP_AND_uart_mac_h_l196_c570_406d_right;
     -- Outputs
     VAR_BIN_OP_AND_uart_mac_h_l196_c570_406d_return_output := BIN_OP_AND_uart_mac_h_l196_c570_406d_return_output;

     -- in_buffer_2_MUX[uart_mac_h_l196_c663_655b] LATENCY=0
     -- Inputs
     in_buffer_2_MUX_uart_mac_h_l196_c663_655b_cond <= VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_655b_cond;
     in_buffer_2_MUX_uart_mac_h_l196_c663_655b_iftrue <= VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_655b_iftrue;
     in_buffer_2_MUX_uart_mac_h_l196_c663_655b_iffalse <= VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_655b_iffalse;
     -- Outputs
     VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_655b_return_output := in_buffer_2_MUX_uart_mac_h_l196_c663_655b_return_output;

     -- in_buffer_6_MUX[uart_mac_h_l196_c663_655b] LATENCY=0
     -- Inputs
     in_buffer_6_MUX_uart_mac_h_l196_c663_655b_cond <= VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_655b_cond;
     in_buffer_6_MUX_uart_mac_h_l196_c663_655b_iftrue <= VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_655b_iftrue;
     in_buffer_6_MUX_uart_mac_h_l196_c663_655b_iffalse <= VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_655b_iffalse;
     -- Outputs
     VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_655b_return_output := in_buffer_6_MUX_uart_mac_h_l196_c663_655b_return_output;

     -- out_counter_MUX[uart_mac_h_l196_c663_655b] LATENCY=0
     -- Inputs
     out_counter_MUX_uart_mac_h_l196_c663_655b_cond <= VAR_out_counter_MUX_uart_mac_h_l196_c663_655b_cond;
     out_counter_MUX_uart_mac_h_l196_c663_655b_iftrue <= VAR_out_counter_MUX_uart_mac_h_l196_c663_655b_iftrue;
     out_counter_MUX_uart_mac_h_l196_c663_655b_iffalse <= VAR_out_counter_MUX_uart_mac_h_l196_c663_655b_iffalse;
     -- Outputs
     VAR_out_counter_MUX_uart_mac_h_l196_c663_655b_return_output := out_counter_MUX_uart_mac_h_l196_c663_655b_return_output;

     -- in_buffer_1_MUX[uart_mac_h_l196_c663_655b] LATENCY=0
     -- Inputs
     in_buffer_1_MUX_uart_mac_h_l196_c663_655b_cond <= VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_655b_cond;
     in_buffer_1_MUX_uart_mac_h_l196_c663_655b_iftrue <= VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_655b_iftrue;
     in_buffer_1_MUX_uart_mac_h_l196_c663_655b_iffalse <= VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_655b_iffalse;
     -- Outputs
     VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_655b_return_output := in_buffer_1_MUX_uart_mac_h_l196_c663_655b_return_output;

     -- BIN_OP_EQ[uart_mac_h_l196_c872_da9b] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l196_c872_da9b_left <= VAR_BIN_OP_EQ_uart_mac_h_l196_c872_da9b_left;
     BIN_OP_EQ_uart_mac_h_l196_c872_da9b_right <= VAR_BIN_OP_EQ_uart_mac_h_l196_c872_da9b_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l196_c872_da9b_return_output := BIN_OP_EQ_uart_mac_h_l196_c872_da9b_return_output;

     -- in_buffer_5_MUX[uart_mac_h_l196_c663_655b] LATENCY=0
     -- Inputs
     in_buffer_5_MUX_uart_mac_h_l196_c663_655b_cond <= VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_655b_cond;
     in_buffer_5_MUX_uart_mac_h_l196_c663_655b_iftrue <= VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_655b_iftrue;
     in_buffer_5_MUX_uart_mac_h_l196_c663_655b_iffalse <= VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_655b_iffalse;
     -- Outputs
     VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_655b_return_output := in_buffer_5_MUX_uart_mac_h_l196_c663_655b_return_output;

     -- Submodule level 2
     VAR_BIN_OP_OR_uart_mac_h_l196_c630_7b03_right := VAR_BIN_OP_AND_uart_mac_h_l196_c570_406d_return_output;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_cond := VAR_BIN_OP_EQ_uart_mac_h_l196_c872_da9b_return_output;
     VAR_out_counter_MUX_uart_mac_h_l196_c915_a847_iffalse := VAR_out_counter_MUX_uart_mac_h_l196_c663_655b_return_output;
     -- in_buffer_valid_MUX[uart_mac_h_l196_c869_2cf2] LATENCY=0
     -- Inputs
     in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_cond <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_cond;
     in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_iftrue <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_iftrue;
     in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_iffalse <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_iffalse;
     -- Outputs
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_return_output := in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_return_output;

     -- BIN_OP_OR[uart_mac_h_l196_c630_7b03] LATENCY=0
     -- Inputs
     BIN_OP_OR_uart_mac_h_l196_c630_7b03_left <= VAR_BIN_OP_OR_uart_mac_h_l196_c630_7b03_left;
     BIN_OP_OR_uart_mac_h_l196_c630_7b03_right <= VAR_BIN_OP_OR_uart_mac_h_l196_c630_7b03_right;
     -- Outputs
     VAR_BIN_OP_OR_uart_mac_h_l196_c630_7b03_return_output := BIN_OP_OR_uart_mac_h_l196_c630_7b03_return_output;

     -- in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_111d[uart_mac_h_l196_c915_a847] LATENCY=0
     VAR_in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_111d_uart_mac_h_l196_c915_a847_return_output := CONST_REF_RD_uint1_t_8_uint1_t_8_111d(
     in_buffer,
     VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_655b_return_output,
     VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_655b_return_output,
     VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_655b_return_output,
     VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_655b_return_output,
     VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_655b_return_output,
     VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_655b_return_output,
     VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_655b_return_output);

     -- Submodule level 3
     VAR_in_buffer_MUX_uart_mac_h_l196_c915_a847_cond := VAR_BIN_OP_OR_uart_mac_h_l196_c630_7b03_return_output;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_cond := VAR_BIN_OP_OR_uart_mac_h_l196_c630_7b03_return_output;
     VAR_out_counter_MUX_uart_mac_h_l196_c915_a847_cond := VAR_BIN_OP_OR_uart_mac_h_l196_c630_7b03_return_output;
     VAR_in_buffer_MUX_uart_mac_h_l196_c915_a847_iffalse := VAR_in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_111d_uart_mac_h_l196_c915_a847_return_output;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_iftrue := VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_2cf2_return_output;
     -- in_buffer_MUX[uart_mac_h_l196_c915_a847] LATENCY=0
     -- Inputs
     in_buffer_MUX_uart_mac_h_l196_c915_a847_cond <= VAR_in_buffer_MUX_uart_mac_h_l196_c915_a847_cond;
     in_buffer_MUX_uart_mac_h_l196_c915_a847_iftrue <= VAR_in_buffer_MUX_uart_mac_h_l196_c915_a847_iftrue;
     in_buffer_MUX_uart_mac_h_l196_c915_a847_iffalse <= VAR_in_buffer_MUX_uart_mac_h_l196_c915_a847_iffalse;
     -- Outputs
     VAR_in_buffer_MUX_uart_mac_h_l196_c915_a847_return_output := in_buffer_MUX_uart_mac_h_l196_c915_a847_return_output;

     -- in_buffer_valid_MUX[uart_mac_h_l196_c663_655b] LATENCY=0
     -- Inputs
     in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_cond <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_cond;
     in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_iftrue <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_iftrue;
     in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_iffalse <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_iffalse;
     -- Outputs
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_return_output := in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_return_output;

     -- CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9[uart_mac_h_l196_c1018_93f0] LATENCY=0
     VAR_CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9_uart_mac_h_l196_c1018_93f0_return_output := CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9(
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_h_l196_DUPLICATE_6708_return_output,
     in_buffer_valid,
     VAR_BIN_OP_OR_uart_mac_h_l196_c630_7b03_return_output);

     -- out_counter_MUX[uart_mac_h_l196_c915_a847] LATENCY=0
     -- Inputs
     out_counter_MUX_uart_mac_h_l196_c915_a847_cond <= VAR_out_counter_MUX_uart_mac_h_l196_c915_a847_cond;
     out_counter_MUX_uart_mac_h_l196_c915_a847_iftrue <= VAR_out_counter_MUX_uart_mac_h_l196_c915_a847_iftrue;
     out_counter_MUX_uart_mac_h_l196_c915_a847_iffalse <= VAR_out_counter_MUX_uart_mac_h_l196_c915_a847_iffalse;
     -- Outputs
     VAR_out_counter_MUX_uart_mac_h_l196_c915_a847_return_output := out_counter_MUX_uart_mac_h_l196_c915_a847_return_output;

     -- Submodule level 4
     VAR_return_output := VAR_CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9_uart_mac_h_l196_c1018_93f0_return_output;
     REG_VAR_in_buffer := VAR_in_buffer_MUX_uart_mac_h_l196_c915_a847_return_output;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_iffalse := VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_655b_return_output;
     REG_VAR_out_counter := VAR_out_counter_MUX_uart_mac_h_l196_c915_a847_return_output;
     -- in_buffer_valid_MUX[uart_mac_h_l196_c915_a847] LATENCY=0
     -- Inputs
     in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_cond <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_cond;
     in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_iftrue <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_iftrue;
     in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_iffalse <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_iffalse;
     -- Outputs
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_return_output := in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_return_output;

     -- Submodule level 5
     REG_VAR_in_buffer_valid := VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_a847_return_output;
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
