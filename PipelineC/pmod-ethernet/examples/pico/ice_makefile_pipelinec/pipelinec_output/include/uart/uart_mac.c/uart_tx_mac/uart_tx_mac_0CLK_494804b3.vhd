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
use work.global_wires_pkg.all;
-- Submodules: 12
entity uart_tx_mac_0CLK_494804b3 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 module_to_global : out uart_tx_mac_module_to_global_t);
end uart_tx_mac_0CLK_494804b3;
architecture arch of uart_tx_mac_0CLK_494804b3 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- Type holding all locally declared (feedback) wires of the func 
type feedback_vars_t is record
  -- Feedback vars
 ready_for_bit_stream : unsigned(0 downto 0);
end record;
-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Feedback vars in the func
signal feedback_vars : feedback_vars_t;
-- Each function instance gets signals
-- FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0[uart_mac_c_l57_c118_b0ef]
signal FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);

-- FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1[uart_mac_c_l57_c118_b0ef]
signal FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);

-- FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2[uart_mac_c_l57_c118_b0ef]
signal FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);

-- FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3[uart_mac_c_l57_c118_b0ef]
signal FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);

-- FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4[uart_mac_c_l57_c118_b0ef]
signal FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);

-- FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5[uart_mac_c_l57_c118_b0ef]
signal FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);

-- FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6[uart_mac_c_l57_c118_b0ef]
signal FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);

-- FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7[uart_mac_c_l57_c118_b0ef]
signal FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);

-- uart_serializer[uart_mac_c_l61_c29_fdb0]
signal uart_serializer_uart_mac_c_l61_c29_fdb0_CLOCK_ENABLE : unsigned(0 downto 0);
signal uart_serializer_uart_mac_c_l61_c29_fdb0_in_data : uint1_t_8;
signal uart_serializer_uart_mac_c_l61_c29_fdb0_in_data_valid : unsigned(0 downto 0);
signal uart_serializer_uart_mac_c_l61_c29_fdb0_out_data_ready : unsigned(0 downto 0);
signal uart_serializer_uart_mac_c_l61_c29_fdb0_return_output : uart_serializer_o_t;

-- uart_tx_1b[uart_mac_c_l72_c33_d7e1]
signal uart_tx_1b_uart_mac_c_l72_c33_d7e1_CLOCK_ENABLE : unsigned(0 downto 0);
signal uart_tx_1b_uart_mac_c_l72_c33_d7e1_bit_stream : uint1_t_stream_t;
signal uart_tx_1b_uart_mac_c_l72_c33_d7e1_return_output : uart_tx_1b_t;

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

function CONST_REF_RD_uint1_t_stream_t_uint1_t_stream_t_42b0( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned) return uint1_t_stream_t is
 
  variable base : uint1_t_stream_t; 
  variable return_output : uint1_t_stream_t;
begin
      base.data := ref_toks_0;
      base.valid := ref_toks_1;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0_uart_mac_c_l57_c118_b0ef : 0 clocks latency
FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0_uart_mac_c_l57_c118_b0ef : entity work.CONST_SR_0_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0_uart_mac_c_l57_c118_b0ef_x,
FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0_uart_mac_c_l57_c118_b0ef_return_output);

-- FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1_uart_mac_c_l57_c118_b0ef : 0 clocks latency
FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1_uart_mac_c_l57_c118_b0ef : entity work.CONST_SR_1_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1_uart_mac_c_l57_c118_b0ef_x,
FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1_uart_mac_c_l57_c118_b0ef_return_output);

-- FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2_uart_mac_c_l57_c118_b0ef : 0 clocks latency
FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2_uart_mac_c_l57_c118_b0ef : entity work.CONST_SR_2_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2_uart_mac_c_l57_c118_b0ef_x,
FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2_uart_mac_c_l57_c118_b0ef_return_output);

-- FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3_uart_mac_c_l57_c118_b0ef : 0 clocks latency
FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3_uart_mac_c_l57_c118_b0ef : entity work.CONST_SR_3_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3_uart_mac_c_l57_c118_b0ef_x,
FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3_uart_mac_c_l57_c118_b0ef_return_output);

-- FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4_uart_mac_c_l57_c118_b0ef : 0 clocks latency
FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4_uart_mac_c_l57_c118_b0ef : entity work.CONST_SR_4_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4_uart_mac_c_l57_c118_b0ef_x,
FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4_uart_mac_c_l57_c118_b0ef_return_output);

-- FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5_uart_mac_c_l57_c118_b0ef : 0 clocks latency
FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5_uart_mac_c_l57_c118_b0ef : entity work.CONST_SR_5_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5_uart_mac_c_l57_c118_b0ef_x,
FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5_uart_mac_c_l57_c118_b0ef_return_output);

-- FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6_uart_mac_c_l57_c118_b0ef : 0 clocks latency
FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6_uart_mac_c_l57_c118_b0ef : entity work.CONST_SR_6_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6_uart_mac_c_l57_c118_b0ef_x,
FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6_uart_mac_c_l57_c118_b0ef_return_output);

-- FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7_uart_mac_c_l57_c118_b0ef : 0 clocks latency
FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7_uart_mac_c_l57_c118_b0ef : entity work.CONST_SR_7_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7_uart_mac_c_l57_c118_b0ef_x,
FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7_uart_mac_c_l57_c118_b0ef_return_output);

-- uart_serializer_uart_mac_c_l61_c29_fdb0 : 0 clocks latency
uart_serializer_uart_mac_c_l61_c29_fdb0 : entity work.uart_serializer_0CLK_e02a63ae port map (
clk,
uart_serializer_uart_mac_c_l61_c29_fdb0_CLOCK_ENABLE,
uart_serializer_uart_mac_c_l61_c29_fdb0_in_data,
uart_serializer_uart_mac_c_l61_c29_fdb0_in_data_valid,
uart_serializer_uart_mac_c_l61_c29_fdb0_out_data_ready,
uart_serializer_uart_mac_c_l61_c29_fdb0_return_output);

-- uart_tx_1b_uart_mac_c_l72_c33_d7e1 : 0 clocks latency
uart_tx_1b_uart_mac_c_l72_c33_d7e1 : entity work.uart_tx_1b_0CLK_ad3e9e5d port map (
clk,
uart_tx_1b_uart_mac_c_l72_c33_d7e1_CLOCK_ENABLE,
uart_tx_1b_uart_mac_c_l72_c33_d7e1_bit_stream,
uart_tx_1b_uart_mac_c_l72_c33_d7e1_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Feedback vars
 feedback_vars,
 -- All submodule outputs
 FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0_uart_mac_c_l57_c118_b0ef_return_output,
 FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1_uart_mac_c_l57_c118_b0ef_return_output,
 FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2_uart_mac_c_l57_c118_b0ef_return_output,
 FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3_uart_mac_c_l57_c118_b0ef_return_output,
 FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4_uart_mac_c_l57_c118_b0ef_return_output,
 FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5_uart_mac_c_l57_c118_b0ef_return_output,
 FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6_uart_mac_c_l57_c118_b0ef_return_output,
 FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7_uart_mac_c_l57_c118_b0ef_return_output,
 uart_serializer_uart_mac_c_l61_c29_fdb0_return_output,
 uart_tx_1b_uart_mac_c_l72_c33_d7e1_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_uart_tx_mac_word_in : uint8_t_stream_t;
 variable VAR_uart_tx_mac_in_ready : unsigned(0 downto 0);
 variable VAR_uart_tx : unsigned(0 downto 0);
 variable VAR_word_in : uint1_t_8;
 variable VAR_UINT_TO_ARRAY_i : unsigned(31 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_0_word_in_0_uart_mac_c_l57_c91_22e0 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_1_word_in_1_uart_mac_c_l57_c91_22e0 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_2_word_in_2_uart_mac_c_l57_c91_22e0 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_3_word_in_3_uart_mac_c_l57_c91_22e0 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_4_word_in_4_uart_mac_c_l57_c91_22e0 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_5_word_in_5_uart_mac_c_l57_c91_22e0 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_6_word_in_6_uart_mac_c_l57_c91_22e0 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_7_word_in_7_uart_mac_c_l57_c91_22e0 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7_uart_mac_c_l57_c118_b0ef_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7_uart_mac_c_l57_c118_b0ef_x : unsigned(7 downto 0);
 variable VAR_ready_for_bit_stream : unsigned(0 downto 0);
 variable VAR_ser : uart_serializer_o_t;
 variable VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_in_data : uint1_t_8;
 variable VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_in_data_valid : unsigned(0 downto 0);
 variable VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_out_data_ready : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_8_uint1_t_8_52b8_uart_mac_c_l62_c5_74ec_return_output : uint1_t_8;
 variable VAR_CONST_REF_RD_uint1_t_uint8_t_stream_t_valid_d41d_uart_mac_c_l63_c5_4f4c_return_output : unsigned(0 downto 0);
 variable VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_return_output : uart_serializer_o_t;
 variable VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_in_data_ready_d41d_uart_mac_c_l66_c26_0aee_return_output : unsigned(0 downto 0);
 variable VAR_bit_stream : uint1_t_stream_t;
 variable VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_d41d_uart_mac_c_l68_c21_16a5_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_valid_d41d_uart_mac_c_l69_c22_ca17_return_output : unsigned(0 downto 0);
 variable VAR_uart_tx_1b_out : uart_tx_1b_t;
 variable VAR_uart_tx_1b_uart_mac_c_l72_c33_d7e1_bit_stream : uint1_t_stream_t;
 variable VAR_CONST_REF_RD_uint1_t_stream_t_uint1_t_stream_t_42b0_uart_mac_c_l73_c5_634d_return_output : uint1_t_stream_t;
 variable VAR_uart_tx_1b_uart_mac_c_l72_c33_d7e1_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_uart_tx_1b_uart_mac_c_l72_c33_d7e1_return_output : uart_tx_1b_t;
 variable VAR_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d_uart_mac_c_l75_c13_1cf2_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d_uart_mac_c_l77_c26_005b_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_uart_mac_c_l57_c118_f034_DUPLICATE_56f6_return_output : unsigned(7 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     -- CONST_REF_RD_uint1_t_uint8_t_stream_t_valid_d41d[uart_mac_c_l63_c5_4f4c] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint8_t_stream_t_valid_d41d_uart_mac_c_l63_c5_4f4c_return_output := uint8_t_stream_t_NULL.valid;

     -- CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d[uart_mac_c_l57_c118_f034]_DUPLICATE_56f6 LATENCY=0
     VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_uart_mac_c_l57_c118_f034_DUPLICATE_56f6_return_output := uint8_t_stream_t_NULL.data;

     -- Submodule level 1
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1_uart_mac_c_l57_c118_b0ef_x := VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_uart_mac_c_l57_c118_f034_DUPLICATE_56f6_return_output;
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6_uart_mac_c_l57_c118_b0ef_x := VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_uart_mac_c_l57_c118_f034_DUPLICATE_56f6_return_output;
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5_uart_mac_c_l57_c118_b0ef_x := VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_uart_mac_c_l57_c118_f034_DUPLICATE_56f6_return_output;
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3_uart_mac_c_l57_c118_b0ef_x := VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_uart_mac_c_l57_c118_f034_DUPLICATE_56f6_return_output;
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0_uart_mac_c_l57_c118_b0ef_x := VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_uart_mac_c_l57_c118_f034_DUPLICATE_56f6_return_output;
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2_uart_mac_c_l57_c118_b0ef_x := VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_uart_mac_c_l57_c118_f034_DUPLICATE_56f6_return_output;
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7_uart_mac_c_l57_c118_b0ef_x := VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_uart_mac_c_l57_c118_f034_DUPLICATE_56f6_return_output;
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4_uart_mac_c_l57_c118_b0ef_x := VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_uart_mac_c_l57_c118_f034_DUPLICATE_56f6_return_output;
     VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_in_data_valid := VAR_CONST_REF_RD_uint1_t_uint8_t_stream_t_valid_d41d_uart_mac_c_l63_c5_4f4c_return_output;
     -- FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5[uart_mac_c_l57_c118_b0ef] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5_uart_mac_c_l57_c118_b0ef_x <= VAR_FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5_uart_mac_c_l57_c118_b0ef_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5_uart_mac_c_l57_c118_b0ef_return_output := FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5_uart_mac_c_l57_c118_b0ef_return_output;

     -- FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7[uart_mac_c_l57_c118_b0ef] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7_uart_mac_c_l57_c118_b0ef_x <= VAR_FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7_uart_mac_c_l57_c118_b0ef_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7_uart_mac_c_l57_c118_b0ef_return_output := FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7_uart_mac_c_l57_c118_b0ef_return_output;

     -- FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2[uart_mac_c_l57_c118_b0ef] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2_uart_mac_c_l57_c118_b0ef_x <= VAR_FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2_uart_mac_c_l57_c118_b0ef_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2_uart_mac_c_l57_c118_b0ef_return_output := FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2_uart_mac_c_l57_c118_b0ef_return_output;

     -- FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0[uart_mac_c_l57_c118_b0ef] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0_uart_mac_c_l57_c118_b0ef_x <= VAR_FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0_uart_mac_c_l57_c118_b0ef_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0_uart_mac_c_l57_c118_b0ef_return_output := FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0_uart_mac_c_l57_c118_b0ef_return_output;

     -- FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6[uart_mac_c_l57_c118_b0ef] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6_uart_mac_c_l57_c118_b0ef_x <= VAR_FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6_uart_mac_c_l57_c118_b0ef_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6_uart_mac_c_l57_c118_b0ef_return_output := FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6_uart_mac_c_l57_c118_b0ef_return_output;

     -- FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3[uart_mac_c_l57_c118_b0ef] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3_uart_mac_c_l57_c118_b0ef_x <= VAR_FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3_uart_mac_c_l57_c118_b0ef_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3_uart_mac_c_l57_c118_b0ef_return_output := FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3_uart_mac_c_l57_c118_b0ef_return_output;

     -- FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1[uart_mac_c_l57_c118_b0ef] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1_uart_mac_c_l57_c118_b0ef_x <= VAR_FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1_uart_mac_c_l57_c118_b0ef_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1_uart_mac_c_l57_c118_b0ef_return_output := FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1_uart_mac_c_l57_c118_b0ef_return_output;

     -- FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4[uart_mac_c_l57_c118_b0ef] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4_uart_mac_c_l57_c118_b0ef_x <= VAR_FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4_uart_mac_c_l57_c118_b0ef_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4_uart_mac_c_l57_c118_b0ef_return_output := FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4_uart_mac_c_l57_c118_b0ef_return_output;

     -- Submodule level 2
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_5_word_in_5_uart_mac_c_l57_c91_22e0 := resize(VAR_FOR_uart_mac_c_l57_c29_f030_ITER_5_CONST_SR_5_uart_mac_c_l57_c118_b0ef_return_output, 1);
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_0_word_in_0_uart_mac_c_l57_c91_22e0 := resize(VAR_FOR_uart_mac_c_l57_c29_f030_ITER_0_CONST_SR_0_uart_mac_c_l57_c118_b0ef_return_output, 1);
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_2_word_in_2_uart_mac_c_l57_c91_22e0 := resize(VAR_FOR_uart_mac_c_l57_c29_f030_ITER_2_CONST_SR_2_uart_mac_c_l57_c118_b0ef_return_output, 1);
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_3_word_in_3_uart_mac_c_l57_c91_22e0 := resize(VAR_FOR_uart_mac_c_l57_c29_f030_ITER_3_CONST_SR_3_uart_mac_c_l57_c118_b0ef_return_output, 1);
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_4_word_in_4_uart_mac_c_l57_c91_22e0 := resize(VAR_FOR_uart_mac_c_l57_c29_f030_ITER_4_CONST_SR_4_uart_mac_c_l57_c118_b0ef_return_output, 1);
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_1_word_in_1_uart_mac_c_l57_c91_22e0 := resize(VAR_FOR_uart_mac_c_l57_c29_f030_ITER_1_CONST_SR_1_uart_mac_c_l57_c118_b0ef_return_output, 1);
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_6_word_in_6_uart_mac_c_l57_c91_22e0 := resize(VAR_FOR_uart_mac_c_l57_c29_f030_ITER_6_CONST_SR_6_uart_mac_c_l57_c118_b0ef_return_output, 1);
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_7_word_in_7_uart_mac_c_l57_c91_22e0 := resize(VAR_FOR_uart_mac_c_l57_c29_f030_ITER_7_CONST_SR_7_uart_mac_c_l57_c118_b0ef_return_output, 1);
     -- CONST_REF_RD_uint1_t_8_uint1_t_8_52b8[uart_mac_c_l62_c5_74ec] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_8_uint1_t_8_52b8_uart_mac_c_l62_c5_74ec_return_output := CONST_REF_RD_uint1_t_8_uint1_t_8_52b8(
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_0_word_in_0_uart_mac_c_l57_c91_22e0,
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_1_word_in_1_uart_mac_c_l57_c91_22e0,
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_2_word_in_2_uart_mac_c_l57_c91_22e0,
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_3_word_in_3_uart_mac_c_l57_c91_22e0,
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_4_word_in_4_uart_mac_c_l57_c91_22e0,
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_5_word_in_5_uart_mac_c_l57_c91_22e0,
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_6_word_in_6_uart_mac_c_l57_c91_22e0,
     VAR_FOR_uart_mac_c_l57_c29_f030_ITER_7_word_in_7_uart_mac_c_l57_c91_22e0);

     -- Submodule level 3
     VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_in_data := VAR_CONST_REF_RD_uint1_t_8_uint1_t_8_52b8_uart_mac_c_l62_c5_74ec_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

     -- Submodule level 0
     VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     VAR_uart_tx_1b_uart_mac_c_l72_c33_d7e1_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_out_data_ready := feedback_vars.ready_for_bit_stream;
     -- uart_serializer[uart_mac_c_l61_c29_fdb0] LATENCY=0
     -- Clock enable
     uart_serializer_uart_mac_c_l61_c29_fdb0_CLOCK_ENABLE <= VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_CLOCK_ENABLE;
     -- Inputs
     uart_serializer_uart_mac_c_l61_c29_fdb0_in_data <= VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_in_data;
     uart_serializer_uart_mac_c_l61_c29_fdb0_in_data_valid <= VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_in_data_valid;
     uart_serializer_uart_mac_c_l61_c29_fdb0_out_data_ready <= VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_out_data_ready;
     -- Outputs
     VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_return_output := uart_serializer_uart_mac_c_l61_c29_fdb0_return_output;

     -- Submodule level 1
     -- CONST_REF_RD_uint1_t_uart_serializer_o_t_in_data_ready_d41d[uart_mac_c_l66_c26_0aee] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_in_data_ready_d41d_uart_mac_c_l66_c26_0aee_return_output := VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_return_output.in_data_ready;

     -- CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_valid_d41d[uart_mac_c_l69_c22_ca17] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_valid_d41d_uart_mac_c_l69_c22_ca17_return_output := VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_return_output.out_data_valid;

     -- CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_d41d[uart_mac_c_l68_c21_16a5] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_d41d_uart_mac_c_l68_c21_16a5_return_output := VAR_uart_serializer_uart_mac_c_l61_c29_fdb0_return_output.out_data;

     -- Submodule level 2
     VAR_uart_tx_mac_in_ready := VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_in_data_ready_d41d_uart_mac_c_l66_c26_0aee_return_output;
     -- CONST_REF_RD_uint1_t_stream_t_uint1_t_stream_t_42b0[uart_mac_c_l73_c5_634d] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_stream_t_uint1_t_stream_t_42b0_uart_mac_c_l73_c5_634d_return_output := CONST_REF_RD_uint1_t_stream_t_uint1_t_stream_t_42b0(
     VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_d41d_uart_mac_c_l68_c21_16a5_return_output,
     VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_valid_d41d_uart_mac_c_l69_c22_ca17_return_output);

     -- Submodule level 3
     VAR_uart_tx_1b_uart_mac_c_l72_c33_d7e1_bit_stream := VAR_CONST_REF_RD_uint1_t_stream_t_uint1_t_stream_t_42b0_uart_mac_c_l73_c5_634d_return_output;
     -- uart_tx_1b[uart_mac_c_l72_c33_d7e1] LATENCY=0
     -- Clock enable
     uart_tx_1b_uart_mac_c_l72_c33_d7e1_CLOCK_ENABLE <= VAR_uart_tx_1b_uart_mac_c_l72_c33_d7e1_CLOCK_ENABLE;
     -- Inputs
     uart_tx_1b_uart_mac_c_l72_c33_d7e1_bit_stream <= VAR_uart_tx_1b_uart_mac_c_l72_c33_d7e1_bit_stream;
     -- Outputs
     VAR_uart_tx_1b_uart_mac_c_l72_c33_d7e1_return_output := uart_tx_1b_uart_mac_c_l72_c33_d7e1_return_output;

     -- Submodule level 4
     -- CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d[uart_mac_c_l75_c13_1cf2] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d_uart_mac_c_l75_c13_1cf2_return_output := VAR_uart_tx_1b_uart_mac_c_l72_c33_d7e1_return_output.output_wire;

     -- CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d[uart_mac_c_l77_c26_005b] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d_uart_mac_c_l77_c26_005b_return_output := VAR_uart_tx_1b_uart_mac_c_l72_c33_d7e1_return_output.ready_for_bit_stream;

     -- Submodule level 5
     VAR_uart_tx := VAR_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d_uart_mac_c_l75_c13_1cf2_return_output;
     feedback_vars.ready_for_bit_stream <= VAR_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d_uart_mac_c_l77_c26_005b_return_output;
   end if;
 end loop;

-- Global wires driven various places in pipeline
if clk_en_internal='1' then
  module_to_global.uart_tx <= VAR_uart_tx;
else
  module_to_global.uart_tx <= to_unsigned(0, 1);
end if;
end process;

end arch;
