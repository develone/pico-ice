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
-- Submodules: 6
entity uart_rx_mac_0CLK_6e5ceb01 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in uart_rx_mac_global_to_module_t;
 module_to_global : out uart_rx_mac_module_to_global_t);
end uart_rx_mac_0CLK_6e5ceb01;
architecture arch of uart_rx_mac_0CLK_6e5ceb01 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- uart_rx_1b[uart_mac_c_l24_c33_d054]
signal uart_rx_1b_uart_mac_c_l24_c33_d054_CLOCK_ENABLE : unsigned(0 downto 0);
signal uart_rx_1b_uart_mac_c_l24_c33_d054_input_wire : unsigned(0 downto 0);
signal uart_rx_1b_uart_mac_c_l24_c33_d054_ready_for_bit_stream : unsigned(0 downto 0);
signal uart_rx_1b_uart_mac_c_l24_c33_d054_return_output : uart_rx_1b_t;

-- uart_deserializer[uart_mac_c_l32_c33_f0d8]
signal uart_deserializer_uart_mac_c_l32_c33_f0d8_CLOCK_ENABLE : unsigned(0 downto 0);
signal uart_deserializer_uart_mac_c_l32_c33_f0d8_in_data : unsigned(0 downto 0);
signal uart_deserializer_uart_mac_c_l32_c33_f0d8_in_data_valid : unsigned(0 downto 0);
signal uart_deserializer_uart_mac_c_l32_c33_f0d8_out_data_ready : unsigned(0 downto 0);
signal uart_deserializer_uart_mac_c_l32_c33_f0d8_return_output : uart_deserializer_o_t;

-- UNARY_OP_NOT[uart_mac_c_l42_c35_6f0a]
signal UNARY_OP_NOT_uart_mac_c_l42_c35_6f0a_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_uart_mac_c_l42_c35_6f0a_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[uart_mac_c_l42_c5_ec20]
signal BIN_OP_AND_uart_mac_c_l42_c5_ec20_left : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_c_l42_c5_ec20_right : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_c_l42_c5_ec20_return_output : unsigned(0 downto 0);

function uint1_array8_le( x : uint1_t_8) return unsigned is

  --variable x : uint1_t_8;
  variable return_output : unsigned(7 downto 0);

begin
return_output := x(7)&x(6)&x(5)&x(4)&x(3)&x(2)&x(1)&x(0);
return return_output;
end function;

function CONST_REF_RD_uint8_t_stream_t_uint8_t_stream_t_42b0( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned) return uint8_t_stream_t is
 
  variable base : uint8_t_stream_t; 
  variable return_output : uint8_t_stream_t;
begin
      base.data := ref_toks_0;
      base.valid := ref_toks_1;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- uart_rx_1b_uart_mac_c_l24_c33_d054 : 0 clocks latency
uart_rx_1b_uart_mac_c_l24_c33_d054 : entity work.uart_rx_1b_0CLK_f4b54c86 port map (
clk,
uart_rx_1b_uart_mac_c_l24_c33_d054_CLOCK_ENABLE,
uart_rx_1b_uart_mac_c_l24_c33_d054_input_wire,
uart_rx_1b_uart_mac_c_l24_c33_d054_ready_for_bit_stream,
uart_rx_1b_uart_mac_c_l24_c33_d054_return_output);

-- uart_deserializer_uart_mac_c_l32_c33_f0d8 : 0 clocks latency
uart_deserializer_uart_mac_c_l32_c33_f0d8 : entity work.uart_deserializer_0CLK_f2389995 port map (
clk,
uart_deserializer_uart_mac_c_l32_c33_f0d8_CLOCK_ENABLE,
uart_deserializer_uart_mac_c_l32_c33_f0d8_in_data,
uart_deserializer_uart_mac_c_l32_c33_f0d8_in_data_valid,
uart_deserializer_uart_mac_c_l32_c33_f0d8_out_data_ready,
uart_deserializer_uart_mac_c_l32_c33_f0d8_return_output);

-- UNARY_OP_NOT_uart_mac_c_l42_c35_6f0a : 0 clocks latency
UNARY_OP_NOT_uart_mac_c_l42_c35_6f0a : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_uart_mac_c_l42_c35_6f0a_expr,
UNARY_OP_NOT_uart_mac_c_l42_c35_6f0a_return_output);

-- BIN_OP_AND_uart_mac_c_l42_c5_ec20 : 0 clocks latency
BIN_OP_AND_uart_mac_c_l42_c5_ec20 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_uart_mac_c_l42_c5_ec20_left,
BIN_OP_AND_uart_mac_c_l42_c5_ec20_right,
BIN_OP_AND_uart_mac_c_l42_c5_ec20_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 uart_rx_1b_uart_mac_c_l24_c33_d054_return_output,
 uart_deserializer_uart_mac_c_l32_c33_f0d8_return_output,
 UNARY_OP_NOT_uart_mac_c_l42_c35_6f0a_return_output,
 BIN_OP_AND_uart_mac_c_l42_c5_ec20_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_uart_rx : unsigned(0 downto 0);
 variable VAR_uart_rx_mac_word_out : uint8_t_stream_t;
 variable VAR_uart_rx_mac_overflow : unsigned(0 downto 0);
 variable VAR_uart_rx_mac_out_ready : unsigned(0 downto 0);
 variable VAR_ready_uart_rx_bit_stream : unsigned(0 downto 0);
 variable VAR_uart_rx_1b_out : uart_rx_1b_t;
 variable VAR_uart_rx_1b_uart_mac_c_l24_c33_d054_input_wire : unsigned(0 downto 0);
 variable VAR_uart_rx_1b_uart_mac_c_l24_c33_d054_ready_for_bit_stream : unsigned(0 downto 0);
 variable VAR_uart_rx_1b_uart_mac_c_l24_c33_d054_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_uart_rx_1b_uart_mac_c_l24_c33_d054_return_output : uart_rx_1b_t;
 variable VAR_ready_for_uart_rx_byte_stream : unsigned(0 downto 0);
 variable VAR_deser : uart_deserializer_o_t;
 variable VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_in_data : unsigned(0 downto 0);
 variable VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_in_data_valid : unsigned(0 downto 0);
 variable VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_out_data_ready : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_data_d41d_uart_mac_c_l33_c5_3019_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_d41d_uart_mac_c_l34_c5_0b15_return_output : unsigned(0 downto 0);
 variable VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_return_output : uart_deserializer_o_t;
 variable VAR_CONST_REF_RD_uint1_t_8_uart_deserializer_o_t_out_data_d41d_uart_mac_c_l37_c47_3ad2_return_output : uint1_t_8;
 variable VAR_uint1_array8_le_uart_mac_c_l37_c31_6043_return_output : unsigned(7 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uart_deserializer_o_t_out_data_valid_d41d_uart_mac_c_l38_c32_ea2f_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_c_l42_c5_ec20_left : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_c_l42_c35_6f0a_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_c_l42_c35_6f0a_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_c_l42_c5_ec20_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_c_l42_c5_ec20_return_output : unsigned(0 downto 0);
 variable VAR_uart_rx_mac_word_out_CONST_REF_RD_uint8_t_stream_t_uint8_t_stream_t_42b0_uart_mac_c_l18_c6_689a_return_output : uint8_t_stream_t;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_uart_rx_1b_uart_mac_c_l24_c33_d054_ready_for_bit_stream := to_unsigned(1, 1);
     VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_out_data_ready := to_unsigned(1, 1);
 -- Reads from global variables
     VAR_uart_rx := global_to_module.uart_rx;
     VAR_uart_rx_mac_out_ready := global_to_module.uart_rx_mac_out_ready;
     -- Submodule level 0
     VAR_UNARY_OP_NOT_uart_mac_c_l42_c35_6f0a_expr := VAR_uart_rx_mac_out_ready;
     VAR_uart_rx_1b_uart_mac_c_l24_c33_d054_input_wire := VAR_uart_rx;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

     -- Submodule level 0
     VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     VAR_uart_rx_1b_uart_mac_c_l24_c33_d054_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     -- UNARY_OP_NOT[uart_mac_c_l42_c35_6f0a] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_uart_mac_c_l42_c35_6f0a_expr <= VAR_UNARY_OP_NOT_uart_mac_c_l42_c35_6f0a_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_uart_mac_c_l42_c35_6f0a_return_output := UNARY_OP_NOT_uart_mac_c_l42_c35_6f0a_return_output;

     -- uart_rx_1b[uart_mac_c_l24_c33_d054] LATENCY=0
     -- Clock enable
     uart_rx_1b_uart_mac_c_l24_c33_d054_CLOCK_ENABLE <= VAR_uart_rx_1b_uart_mac_c_l24_c33_d054_CLOCK_ENABLE;
     -- Inputs
     uart_rx_1b_uart_mac_c_l24_c33_d054_input_wire <= VAR_uart_rx_1b_uart_mac_c_l24_c33_d054_input_wire;
     uart_rx_1b_uart_mac_c_l24_c33_d054_ready_for_bit_stream <= VAR_uart_rx_1b_uart_mac_c_l24_c33_d054_ready_for_bit_stream;
     -- Outputs
     VAR_uart_rx_1b_uart_mac_c_l24_c33_d054_return_output := uart_rx_1b_uart_mac_c_l24_c33_d054_return_output;

     -- Submodule level 1
     VAR_BIN_OP_AND_uart_mac_c_l42_c5_ec20_right := VAR_UNARY_OP_NOT_uart_mac_c_l42_c35_6f0a_return_output;
     -- CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_d41d[uart_mac_c_l34_c5_0b15] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_d41d_uart_mac_c_l34_c5_0b15_return_output := VAR_uart_rx_1b_uart_mac_c_l24_c33_d054_return_output.bit_stream.valid;

     -- CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_data_d41d[uart_mac_c_l33_c5_3019] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_data_d41d_uart_mac_c_l33_c5_3019_return_output := VAR_uart_rx_1b_uart_mac_c_l24_c33_d054_return_output.bit_stream.data;

     -- Submodule level 2
     VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_in_data := VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_data_d41d_uart_mac_c_l33_c5_3019_return_output;
     VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_in_data_valid := VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_d41d_uart_mac_c_l34_c5_0b15_return_output;
     -- uart_deserializer[uart_mac_c_l32_c33_f0d8] LATENCY=0
     -- Clock enable
     uart_deserializer_uart_mac_c_l32_c33_f0d8_CLOCK_ENABLE <= VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_CLOCK_ENABLE;
     -- Inputs
     uart_deserializer_uart_mac_c_l32_c33_f0d8_in_data <= VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_in_data;
     uart_deserializer_uart_mac_c_l32_c33_f0d8_in_data_valid <= VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_in_data_valid;
     uart_deserializer_uart_mac_c_l32_c33_f0d8_out_data_ready <= VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_out_data_ready;
     -- Outputs
     VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_return_output := uart_deserializer_uart_mac_c_l32_c33_f0d8_return_output;

     -- Submodule level 3
     -- CONST_REF_RD_uint1_t_8_uart_deserializer_o_t_out_data_d41d[uart_mac_c_l37_c47_3ad2] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_8_uart_deserializer_o_t_out_data_d41d_uart_mac_c_l37_c47_3ad2_return_output := VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_return_output.out_data;

     -- CONST_REF_RD_uint1_t_uart_deserializer_o_t_out_data_valid_d41d[uart_mac_c_l38_c32_ea2f] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_deserializer_o_t_out_data_valid_d41d_uart_mac_c_l38_c32_ea2f_return_output := VAR_uart_deserializer_uart_mac_c_l32_c33_f0d8_return_output.out_data_valid;

     -- Submodule level 4
     VAR_BIN_OP_AND_uart_mac_c_l42_c5_ec20_left := VAR_CONST_REF_RD_uint1_t_uart_deserializer_o_t_out_data_valid_d41d_uart_mac_c_l38_c32_ea2f_return_output;
     -- BIN_OP_AND[uart_mac_c_l42_c5_ec20] LATENCY=0
     -- Inputs
     BIN_OP_AND_uart_mac_c_l42_c5_ec20_left <= VAR_BIN_OP_AND_uart_mac_c_l42_c5_ec20_left;
     BIN_OP_AND_uart_mac_c_l42_c5_ec20_right <= VAR_BIN_OP_AND_uart_mac_c_l42_c5_ec20_right;
     -- Outputs
     VAR_BIN_OP_AND_uart_mac_c_l42_c5_ec20_return_output := BIN_OP_AND_uart_mac_c_l42_c5_ec20_return_output;

     -- uint1_array8_le[uart_mac_c_l37_c31_6043] LATENCY=0
     VAR_uint1_array8_le_uart_mac_c_l37_c31_6043_return_output := uint1_array8_le(
     VAR_CONST_REF_RD_uint1_t_8_uart_deserializer_o_t_out_data_d41d_uart_mac_c_l37_c47_3ad2_return_output);

     -- Submodule level 5
     VAR_uart_rx_mac_overflow := VAR_BIN_OP_AND_uart_mac_c_l42_c5_ec20_return_output;
     -- uart_rx_mac_word_out_CONST_REF_RD_uint8_t_stream_t_uint8_t_stream_t_42b0[uart_mac_c_l18_c6_689a] LATENCY=0
     VAR_uart_rx_mac_word_out_CONST_REF_RD_uint8_t_stream_t_uint8_t_stream_t_42b0_uart_mac_c_l18_c6_689a_return_output := CONST_REF_RD_uint8_t_stream_t_uint8_t_stream_t_42b0(
     VAR_uint1_array8_le_uart_mac_c_l37_c31_6043_return_output,
     VAR_CONST_REF_RD_uint1_t_uart_deserializer_o_t_out_data_valid_d41d_uart_mac_c_l38_c32_ea2f_return_output);

     -- Submodule level 6
     VAR_uart_rx_mac_word_out := VAR_uart_rx_mac_word_out_CONST_REF_RD_uint8_t_stream_t_uint8_t_stream_t_42b0_uart_mac_c_l18_c6_689a_return_output;
   end if;
 end loop;

-- Global wires driven various places in pipeline
if clk_en_internal='1' then
  module_to_global.uart_rx_mac_word_out <= VAR_uart_rx_mac_word_out;
else
  module_to_global.uart_rx_mac_word_out <= uint8_t_stream_t_NULL;
end if;
end process;

end arch;
