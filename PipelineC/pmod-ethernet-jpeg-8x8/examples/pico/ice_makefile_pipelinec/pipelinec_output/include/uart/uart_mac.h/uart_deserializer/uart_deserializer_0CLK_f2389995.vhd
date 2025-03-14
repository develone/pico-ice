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
-- Submodules: 13
entity uart_deserializer_0CLK_f2389995 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 in_data : in unsigned(0 downto 0);
 in_data_valid : in unsigned(0 downto 0);
 out_data_ready : in unsigned(0 downto 0);
 return_output : out uart_deserializer_o_t);
end uart_deserializer_0CLK_f2389995;
architecture arch of uart_deserializer_0CLK_f2389995 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal uart_deserializer_out_buffer_valid : unsigned(0 downto 0) := to_unsigned(0, 1);
signal uart_deserializer_out_counter : unsigned(31 downto 0) := to_unsigned(0, 32);
signal uart_deserializer_out_buffer : uint1_t_8 := (others => to_unsigned(0, 1));
signal REG_COMB_uart_deserializer_out_buffer_valid : unsigned(0 downto 0);
signal REG_COMB_uart_deserializer_out_counter : unsigned(31 downto 0);
signal REG_COMB_uart_deserializer_out_buffer : uint1_t_8;

-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- UNARY_OP_NOT[uart_mac_h_l193_c409_b0bf]
signal UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[uart_mac_h_l193_c548_fc9c]
signal BIN_OP_AND_uart_mac_h_l193_c548_fc9c_left : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l193_c548_fc9c_right : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l193_c548_fc9c_return_output : unsigned(0 downto 0);

-- uart_deserializer_out_counter_MUX[uart_mac_h_l193_c545_a9d5]
signal uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_cond : unsigned(0 downto 0);
signal uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_iftrue : unsigned(31 downto 0);
signal uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_iffalse : unsigned(31 downto 0);
signal uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_return_output : unsigned(31 downto 0);

-- uart_deserializer_out_buffer_valid_MUX[uart_mac_h_l193_c545_a9d5]
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_cond : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_iftrue : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_iffalse : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[uart_mac_h_l193_c683_5ddf]
signal BIN_OP_AND_uart_mac_h_l193_c683_5ddf_left : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l193_c683_5ddf_right : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l193_c683_5ddf_return_output : unsigned(0 downto 0);

-- uart_deserializer_out_counter_MUX[uart_mac_h_l193_c680_4e89]
signal uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_cond : unsigned(0 downto 0);
signal uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_iftrue : unsigned(31 downto 0);
signal uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_iffalse : unsigned(31 downto 0);
signal uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_return_output : unsigned(31 downto 0);

-- uart_deserializer_out_buffer_valid_MUX[uart_mac_h_l193_c680_4e89]
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_cond : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_iftrue : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_iffalse : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_return_output : unsigned(0 downto 0);

-- uart_deserializer_out_buffer_MUX[uart_mac_h_l193_c680_4e89]
signal uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_cond : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_iftrue : uint1_t_8;
signal uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_iffalse : uint1_t_8;
signal uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_return_output : uint1_t_8;

-- BIN_OP_PLUS[uart_mac_h_l193_c874_7614]
signal BIN_OP_PLUS_uart_mac_h_l193_c874_7614_left : unsigned(31 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l193_c874_7614_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l193_c874_7614_return_output : unsigned(32 downto 0);

-- BIN_OP_EQ[uart_mac_h_l193_c913_53e9]
signal BIN_OP_EQ_uart_mac_h_l193_c913_53e9_left : unsigned(31 downto 0);
signal BIN_OP_EQ_uart_mac_h_l193_c913_53e9_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l193_c913_53e9_return_output : unsigned(0 downto 0);

-- uart_deserializer_out_buffer_valid_MUX[uart_mac_h_l193_c910_e636]
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_cond : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_iftrue : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_iffalse : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_return_output : unsigned(0 downto 0);

function CONST_REF_RD_uint1_t_8_uint1_t_8_52b8( ref_toks_0 : unsigned;
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
      base(0) := ref_toks_0;
      base(1) := ref_toks_1;
      base(2) := ref_toks_2;
      base(3) := ref_toks_3;
      base(4) := ref_toks_4;
      base(5) := ref_toks_5;
      base(6) := ref_toks_6;
      base(7) := ref_toks_7;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_uart_deserializer_o_t_uart_deserializer_o_t_5e5b( ref_toks_0 : unsigned;
 ref_toks_1 : uint1_t_8;
 ref_toks_2 : unsigned) return uart_deserializer_o_t is
 
  variable base : uart_deserializer_o_t; 
  variable return_output : uart_deserializer_o_t;
begin
      base.in_data_ready := ref_toks_0;
      base.out_data := ref_toks_1;
      base.out_data_valid := ref_toks_2;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf : 0 clocks latency
UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf_expr,
UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf_return_output);

-- BIN_OP_AND_uart_mac_h_l193_c548_fc9c : 0 clocks latency
BIN_OP_AND_uart_mac_h_l193_c548_fc9c : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_uart_mac_h_l193_c548_fc9c_left,
BIN_OP_AND_uart_mac_h_l193_c548_fc9c_right,
BIN_OP_AND_uart_mac_h_l193_c548_fc9c_return_output);

-- uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5 : 0 clocks latency
uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_cond,
uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_iftrue,
uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_iffalse,
uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_return_output);

-- uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5 : 0 clocks latency
uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_cond,
uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_iftrue,
uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_iffalse,
uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_return_output);

-- BIN_OP_AND_uart_mac_h_l193_c683_5ddf : 0 clocks latency
BIN_OP_AND_uart_mac_h_l193_c683_5ddf : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_uart_mac_h_l193_c683_5ddf_left,
BIN_OP_AND_uart_mac_h_l193_c683_5ddf_right,
BIN_OP_AND_uart_mac_h_l193_c683_5ddf_return_output);

-- uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89 : 0 clocks latency
uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_cond,
uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_iftrue,
uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_iffalse,
uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_return_output);

-- uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89 : 0 clocks latency
uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_cond,
uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_iftrue,
uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_iffalse,
uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_return_output);

-- uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89 : 0 clocks latency
uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89 : entity work.MUX_uint1_t_uint1_t_8_uint1_t_8_0CLK_de264c78 port map (
uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_cond,
uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_iftrue,
uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_iffalse,
uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_return_output);

-- BIN_OP_PLUS_uart_mac_h_l193_c874_7614 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l193_c874_7614 : entity work.BIN_OP_PLUS_uint32_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l193_c874_7614_left,
BIN_OP_PLUS_uart_mac_h_l193_c874_7614_right,
BIN_OP_PLUS_uart_mac_h_l193_c874_7614_return_output);

-- BIN_OP_EQ_uart_mac_h_l193_c913_53e9 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l193_c913_53e9 : entity work.BIN_OP_EQ_uint32_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l193_c913_53e9_left,
BIN_OP_EQ_uart_mac_h_l193_c913_53e9_right,
BIN_OP_EQ_uart_mac_h_l193_c913_53e9_return_output);

-- uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636 : 0 clocks latency
uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_cond,
uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_iftrue,
uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_iffalse,
uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_return_output);



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
 uart_deserializer_out_buffer_valid,
 uart_deserializer_out_counter,
 uart_deserializer_out_buffer,
 -- All submodule outputs
 UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf_return_output,
 BIN_OP_AND_uart_mac_h_l193_c548_fc9c_return_output,
 uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_return_output,
 uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_return_output,
 BIN_OP_AND_uart_mac_h_l193_c683_5ddf_return_output,
 uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_return_output,
 uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_return_output,
 uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_return_output,
 BIN_OP_PLUS_uart_mac_h_l193_c874_7614_return_output,
 BIN_OP_EQ_uart_mac_h_l193_c913_53e9_return_output,
 uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : uart_deserializer_o_t;
 variable VAR_in_data : unsigned(0 downto 0);
 variable VAR_in_data_valid : unsigned(0 downto 0);
 variable VAR_out_data_ready : unsigned(0 downto 0);
 variable VAR_rv : uart_deserializer_o_t;
 variable VAR_UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l193_c548_fc9c_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l193_c548_fc9c_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l193_c548_fc9c_return_output : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_iftrue : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_uart_mac_h_l193_c643_96fd : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_iffalse : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_return_output : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_cond : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_iftrue : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_iffalse : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_return_output : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l193_c683_5ddf_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l193_c683_5ddf_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l193_c683_5ddf_return_output : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_iftrue : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_uart_mac_h_l193_c874_0dbb : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_iffalse : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_return_output : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_cond : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_iftrue : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_return_output : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_iffalse : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_return_output : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_cond : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_iftrue : uint1_t_8;
 variable VAR_uart_deserializer_out_buffer_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_52b8_uart_mac_h_l193_c680_4e89_return_output : uint1_t_8;
 variable VAR_uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_iffalse : uint1_t_8;
 variable VAR_uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_return_output : uint1_t_8;
 variable VAR_uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_cond : unsigned(0 downto 0);
 variable VAR_i : unsigned(31 downto 0);
 variable VAR_FOR_uart_mac_h_l193_c731_407a_ITER_0_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l193_c791_8186_return_output : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_h_l193_c731_407a_ITER_1_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l193_c791_8186_return_output : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_h_l193_c731_407a_ITER_2_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l193_c791_8186_return_output : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_h_l193_c731_407a_ITER_3_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l193_c791_8186_return_output : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_h_l193_c731_407a_ITER_4_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l193_c791_8186_return_output : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_h_l193_c731_407a_ITER_5_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l193_c791_8186_return_output : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_h_l193_c731_407a_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_h_l193_c791_8186_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l193_c874_7614_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l193_c874_7614_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l193_c874_7614_return_output : unsigned(32 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l193_c913_53e9_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l193_c913_53e9_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l193_c913_53e9_return_output : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_iftrue : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_iffalse : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uart_deserializer_o_t_uart_deserializer_o_t_5e5b_uart_mac_h_l193_c1000_016c_return_output : uart_deserializer_o_t;
 -- State registers comb logic variables
variable REG_VAR_uart_deserializer_out_buffer_valid : unsigned(0 downto 0);
variable REG_VAR_uart_deserializer_out_counter : unsigned(31 downto 0);
variable REG_VAR_uart_deserializer_out_buffer : uint1_t_8;
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_uart_deserializer_out_buffer_valid := uart_deserializer_out_buffer_valid;
  REG_VAR_uart_deserializer_out_counter := uart_deserializer_out_counter;
  REG_VAR_uart_deserializer_out_buffer := uart_deserializer_out_buffer;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_uart_deserializer_out_counter_uart_mac_h_l193_c643_96fd := resize(to_unsigned(0, 1), 32);
     VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_iftrue := VAR_uart_deserializer_out_counter_uart_mac_h_l193_c643_96fd;
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_iftrue := to_unsigned(0, 1);
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_h_l193_c913_53e9_right := to_unsigned(8, 4);
     VAR_BIN_OP_PLUS_uart_mac_h_l193_c874_7614_right := to_unsigned(1, 1);

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
     VAR_BIN_OP_AND_uart_mac_h_l193_c683_5ddf_right := VAR_in_data_valid;
     VAR_BIN_OP_AND_uart_mac_h_l193_c548_fc9c_left := VAR_out_data_ready;
     VAR_uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_iffalse := uart_deserializer_out_buffer;
     VAR_BIN_OP_AND_uart_mac_h_l193_c548_fc9c_right := uart_deserializer_out_buffer_valid;
     VAR_UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf_expr := uart_deserializer_out_buffer_valid;
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_iffalse := uart_deserializer_out_buffer_valid;
     VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_iffalse := uart_deserializer_out_counter;
     -- FOR_uart_mac_h_l193_c731_407a_ITER_0_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d[uart_mac_h_l193_c791_8186] LATENCY=0
     VAR_FOR_uart_mac_h_l193_c731_407a_ITER_0_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l193_c791_8186_return_output := uart_deserializer_out_buffer(1);

     -- FOR_uart_mac_h_l193_c731_407a_ITER_2_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d[uart_mac_h_l193_c791_8186] LATENCY=0
     VAR_FOR_uart_mac_h_l193_c731_407a_ITER_2_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l193_c791_8186_return_output := uart_deserializer_out_buffer(3);

     -- BIN_OP_AND[uart_mac_h_l193_c548_fc9c] LATENCY=0
     -- Inputs
     BIN_OP_AND_uart_mac_h_l193_c548_fc9c_left <= VAR_BIN_OP_AND_uart_mac_h_l193_c548_fc9c_left;
     BIN_OP_AND_uart_mac_h_l193_c548_fc9c_right <= VAR_BIN_OP_AND_uart_mac_h_l193_c548_fc9c_right;
     -- Outputs
     VAR_BIN_OP_AND_uart_mac_h_l193_c548_fc9c_return_output := BIN_OP_AND_uart_mac_h_l193_c548_fc9c_return_output;

     -- FOR_uart_mac_h_l193_c731_407a_ITER_3_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d[uart_mac_h_l193_c791_8186] LATENCY=0
     VAR_FOR_uart_mac_h_l193_c731_407a_ITER_3_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l193_c791_8186_return_output := uart_deserializer_out_buffer(4);

     -- FOR_uart_mac_h_l193_c731_407a_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d[uart_mac_h_l193_c791_8186] LATENCY=0
     VAR_FOR_uart_mac_h_l193_c731_407a_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_h_l193_c791_8186_return_output := uart_deserializer_out_buffer(7);

     -- UNARY_OP_NOT[uart_mac_h_l193_c409_b0bf] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf_expr <= VAR_UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf_return_output := UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf_return_output;

     -- FOR_uart_mac_h_l193_c731_407a_ITER_5_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d[uart_mac_h_l193_c791_8186] LATENCY=0
     VAR_FOR_uart_mac_h_l193_c731_407a_ITER_5_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l193_c791_8186_return_output := uart_deserializer_out_buffer(6);

     -- FOR_uart_mac_h_l193_c731_407a_ITER_4_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d[uart_mac_h_l193_c791_8186] LATENCY=0
     VAR_FOR_uart_mac_h_l193_c731_407a_ITER_4_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l193_c791_8186_return_output := uart_deserializer_out_buffer(5);

     -- FOR_uart_mac_h_l193_c731_407a_ITER_1_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d[uart_mac_h_l193_c791_8186] LATENCY=0
     VAR_FOR_uart_mac_h_l193_c731_407a_ITER_1_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l193_c791_8186_return_output := uart_deserializer_out_buffer(2);

     -- Submodule level 1
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_cond := VAR_BIN_OP_AND_uart_mac_h_l193_c548_fc9c_return_output;
     VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_cond := VAR_BIN_OP_AND_uart_mac_h_l193_c548_fc9c_return_output;
     VAR_BIN_OP_AND_uart_mac_h_l193_c683_5ddf_left := VAR_UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf_return_output;
     -- uart_deserializer_out_counter_MUX[uart_mac_h_l193_c545_a9d5] LATENCY=0
     -- Inputs
     uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_cond <= VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_cond;
     uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_iftrue <= VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_iftrue;
     uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_iffalse <= VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_iffalse;
     -- Outputs
     VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_return_output := uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_return_output;

     -- uart_deserializer_out_buffer_valid_MUX[uart_mac_h_l193_c545_a9d5] LATENCY=0
     -- Inputs
     uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_cond <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_cond;
     uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_iftrue <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_iftrue;
     uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_iffalse <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_iffalse;
     -- Outputs
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_return_output := uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_return_output;

     -- CONST_REF_RD_uart_deserializer_o_t_uart_deserializer_o_t_5e5b[uart_mac_h_l193_c1000_016c] LATENCY=0
     VAR_CONST_REF_RD_uart_deserializer_o_t_uart_deserializer_o_t_5e5b_uart_mac_h_l193_c1000_016c_return_output := CONST_REF_RD_uart_deserializer_o_t_uart_deserializer_o_t_5e5b(
     VAR_UNARY_OP_NOT_uart_mac_h_l193_c409_b0bf_return_output,
     uart_deserializer_out_buffer,
     uart_deserializer_out_buffer_valid);

     -- BIN_OP_AND[uart_mac_h_l193_c683_5ddf] LATENCY=0
     -- Inputs
     BIN_OP_AND_uart_mac_h_l193_c683_5ddf_left <= VAR_BIN_OP_AND_uart_mac_h_l193_c683_5ddf_left;
     BIN_OP_AND_uart_mac_h_l193_c683_5ddf_right <= VAR_BIN_OP_AND_uart_mac_h_l193_c683_5ddf_right;
     -- Outputs
     VAR_BIN_OP_AND_uart_mac_h_l193_c683_5ddf_return_output := BIN_OP_AND_uart_mac_h_l193_c683_5ddf_return_output;

     -- uart_deserializer_out_buffer_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_52b8[uart_mac_h_l193_c680_4e89] LATENCY=0
     VAR_uart_deserializer_out_buffer_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_52b8_uart_mac_h_l193_c680_4e89_return_output := CONST_REF_RD_uint1_t_8_uint1_t_8_52b8(
     VAR_FOR_uart_mac_h_l193_c731_407a_ITER_0_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l193_c791_8186_return_output,
     VAR_FOR_uart_mac_h_l193_c731_407a_ITER_1_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l193_c791_8186_return_output,
     VAR_FOR_uart_mac_h_l193_c731_407a_ITER_2_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l193_c791_8186_return_output,
     VAR_FOR_uart_mac_h_l193_c731_407a_ITER_3_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l193_c791_8186_return_output,
     VAR_FOR_uart_mac_h_l193_c731_407a_ITER_4_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l193_c791_8186_return_output,
     VAR_FOR_uart_mac_h_l193_c731_407a_ITER_5_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l193_c791_8186_return_output,
     VAR_FOR_uart_mac_h_l193_c731_407a_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_h_l193_c791_8186_return_output,
     VAR_in_data);

     -- Submodule level 2
     VAR_uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_cond := VAR_BIN_OP_AND_uart_mac_h_l193_c683_5ddf_return_output;
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_cond := VAR_BIN_OP_AND_uart_mac_h_l193_c683_5ddf_return_output;
     VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_cond := VAR_BIN_OP_AND_uart_mac_h_l193_c683_5ddf_return_output;
     VAR_return_output := VAR_CONST_REF_RD_uart_deserializer_o_t_uart_deserializer_o_t_5e5b_uart_mac_h_l193_c1000_016c_return_output;
     VAR_uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_iftrue := VAR_uart_deserializer_out_buffer_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_52b8_uart_mac_h_l193_c680_4e89_return_output;
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_iffalse := VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_return_output;
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_iffalse := VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c545_a9d5_return_output;
     VAR_BIN_OP_PLUS_uart_mac_h_l193_c874_7614_left := VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_return_output;
     VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_iffalse := VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c545_a9d5_return_output;
     -- BIN_OP_PLUS[uart_mac_h_l193_c874_7614] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l193_c874_7614_left <= VAR_BIN_OP_PLUS_uart_mac_h_l193_c874_7614_left;
     BIN_OP_PLUS_uart_mac_h_l193_c874_7614_right <= VAR_BIN_OP_PLUS_uart_mac_h_l193_c874_7614_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l193_c874_7614_return_output := BIN_OP_PLUS_uart_mac_h_l193_c874_7614_return_output;

     -- uart_deserializer_out_buffer_MUX[uart_mac_h_l193_c680_4e89] LATENCY=0
     -- Inputs
     uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_cond <= VAR_uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_cond;
     uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_iftrue <= VAR_uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_iftrue;
     uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_iffalse <= VAR_uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_iffalse;
     -- Outputs
     VAR_uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_return_output := uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_return_output;

     -- Submodule level 3
     VAR_uart_deserializer_out_counter_uart_mac_h_l193_c874_0dbb := resize(VAR_BIN_OP_PLUS_uart_mac_h_l193_c874_7614_return_output, 32);
     REG_VAR_uart_deserializer_out_buffer := VAR_uart_deserializer_out_buffer_MUX_uart_mac_h_l193_c680_4e89_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l193_c913_53e9_left := VAR_uart_deserializer_out_counter_uart_mac_h_l193_c874_0dbb;
     VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_iftrue := VAR_uart_deserializer_out_counter_uart_mac_h_l193_c874_0dbb;
     -- BIN_OP_EQ[uart_mac_h_l193_c913_53e9] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l193_c913_53e9_left <= VAR_BIN_OP_EQ_uart_mac_h_l193_c913_53e9_left;
     BIN_OP_EQ_uart_mac_h_l193_c913_53e9_right <= VAR_BIN_OP_EQ_uart_mac_h_l193_c913_53e9_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l193_c913_53e9_return_output := BIN_OP_EQ_uart_mac_h_l193_c913_53e9_return_output;

     -- uart_deserializer_out_counter_MUX[uart_mac_h_l193_c680_4e89] LATENCY=0
     -- Inputs
     uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_cond <= VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_cond;
     uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_iftrue <= VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_iftrue;
     uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_iffalse <= VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_iffalse;
     -- Outputs
     VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_return_output := uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_return_output;

     -- Submodule level 4
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_cond := VAR_BIN_OP_EQ_uart_mac_h_l193_c913_53e9_return_output;
     REG_VAR_uart_deserializer_out_counter := VAR_uart_deserializer_out_counter_MUX_uart_mac_h_l193_c680_4e89_return_output;
     -- uart_deserializer_out_buffer_valid_MUX[uart_mac_h_l193_c910_e636] LATENCY=0
     -- Inputs
     uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_cond <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_cond;
     uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_iftrue <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_iftrue;
     uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_iffalse <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_iffalse;
     -- Outputs
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_return_output := uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_return_output;

     -- Submodule level 5
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_iftrue := VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c910_e636_return_output;
     -- uart_deserializer_out_buffer_valid_MUX[uart_mac_h_l193_c680_4e89] LATENCY=0
     -- Inputs
     uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_cond <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_cond;
     uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_iftrue <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_iftrue;
     uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_iffalse <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_iffalse;
     -- Outputs
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_return_output := uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_return_output;

     -- Submodule level 6
     REG_VAR_uart_deserializer_out_buffer_valid := VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_h_l193_c680_4e89_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_uart_deserializer_out_buffer_valid <= REG_VAR_uart_deserializer_out_buffer_valid;
REG_COMB_uart_deserializer_out_counter <= REG_VAR_uart_deserializer_out_counter;
REG_COMB_uart_deserializer_out_buffer <= REG_VAR_uart_deserializer_out_buffer;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if clk_en_internal='1' then
     uart_deserializer_out_buffer_valid <= REG_COMB_uart_deserializer_out_buffer_valid;
     uart_deserializer_out_counter <= REG_COMB_uart_deserializer_out_counter;
     uart_deserializer_out_buffer <= REG_COMB_uart_deserializer_out_buffer;
 end if;
 end if;
end process;

end arch;
