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
-- Submodules: 2
entity uart_serializer_0CLK_e02a63ae is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 in_data : in uint1_t_8;
 in_data_valid : in unsigned(0 downto 0);
 out_data_ready : in unsigned(0 downto 0);
 return_output : out uart_serializer_o_t);
end uart_serializer_0CLK_e02a63ae;
architecture arch of uart_serializer_0CLK_e02a63ae is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- uart_serializer_serializer_in_to_out[uart_mac_h_l196_c1331_f796]
signal uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_CLOCK_ENABLE : unsigned(0 downto 0);
signal uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_in_data : uint1_t_8;
signal uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_in_data_valid : unsigned(0 downto 0);
signal uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_out_data_ready : unsigned(0 downto 0);
signal uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_return_output : uart_serializer_serializer_in_to_out_t;

function CONST_REF_RD_uart_serializer_o_t_uart_serializer_o_t_fd4a( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned) return uart_serializer_o_t is
 
  variable base : uart_serializer_o_t; 
  variable return_output : uart_serializer_o_t;
begin
      base.out_data := ref_toks_0;
      base.out_data_valid := ref_toks_1;
      base.in_data_ready := ref_toks_2;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796 : 0 clocks latency
uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796 : entity work.uart_serializer_serializer_in_to_out_0CLK_73702545 port map (
clk,
uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_CLOCK_ENABLE,
uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_in_data,
uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_in_data_valid,
uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_out_data_ready,
uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_return_output);



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
 -- All submodule outputs
 uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : uart_serializer_o_t;
 variable VAR_in_data : uint1_t_8;
 variable VAR_in_data_valid : unsigned(0 downto 0);
 variable VAR_out_data_ready : unsigned(0 downto 0);
 variable VAR_o : uart_serializer_o_t;
 variable VAR_ser_in_to_out : uart_serializer_serializer_in_to_out_t;
 variable VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_in_data : uint1_t_8;
 variable VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_in_data_valid : unsigned(0 downto 0);
 variable VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_out_data_ready : unsigned(0 downto 0);
 variable VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_return_output : uart_serializer_serializer_in_to_out_t;
 variable VAR_CONST_REF_RD_uint1_t_uart_serializer_serializer_in_to_out_t_out_data_0_d41d_uart_mac_h_l196_c1422_9c41_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uart_serializer_serializer_in_to_out_t_out_data_valid_d41d_uart_mac_h_l196_c1468_300b_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uart_serializer_serializer_in_to_out_t_in_data_ready_d41d_uart_mac_h_l196_c1516_0780_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uart_serializer_o_t_uart_serializer_o_t_fd4a_uart_mac_h_l196_c1552_27c3_return_output : uart_serializer_o_t;
begin

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
     VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_in_data := VAR_in_data;
     VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_in_data_valid := VAR_in_data_valid;
     VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_out_data_ready := VAR_out_data_ready;
     -- uart_serializer_serializer_in_to_out[uart_mac_h_l196_c1331_f796] LATENCY=0
     -- Clock enable
     uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_CLOCK_ENABLE <= VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_CLOCK_ENABLE;
     -- Inputs
     uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_in_data <= VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_in_data;
     uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_in_data_valid <= VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_in_data_valid;
     uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_out_data_ready <= VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_out_data_ready;
     -- Outputs
     VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_return_output := uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_return_output;

     -- Submodule level 1
     -- CONST_REF_RD_uint1_t_uart_serializer_serializer_in_to_out_t_in_data_ready_d41d[uart_mac_h_l196_c1516_0780] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_serializer_serializer_in_to_out_t_in_data_ready_d41d_uart_mac_h_l196_c1516_0780_return_output := VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_return_output.in_data_ready;

     -- CONST_REF_RD_uint1_t_uart_serializer_serializer_in_to_out_t_out_data_0_d41d[uart_mac_h_l196_c1422_9c41] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_serializer_serializer_in_to_out_t_out_data_0_d41d_uart_mac_h_l196_c1422_9c41_return_output := VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_return_output.out_data(0);

     -- CONST_REF_RD_uint1_t_uart_serializer_serializer_in_to_out_t_out_data_valid_d41d[uart_mac_h_l196_c1468_300b] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_serializer_serializer_in_to_out_t_out_data_valid_d41d_uart_mac_h_l196_c1468_300b_return_output := VAR_uart_serializer_serializer_in_to_out_uart_mac_h_l196_c1331_f796_return_output.out_data_valid;

     -- Submodule level 2
     -- CONST_REF_RD_uart_serializer_o_t_uart_serializer_o_t_fd4a[uart_mac_h_l196_c1552_27c3] LATENCY=0
     VAR_CONST_REF_RD_uart_serializer_o_t_uart_serializer_o_t_fd4a_uart_mac_h_l196_c1552_27c3_return_output := CONST_REF_RD_uart_serializer_o_t_uart_serializer_o_t_fd4a(
     VAR_CONST_REF_RD_uint1_t_uart_serializer_serializer_in_to_out_t_out_data_0_d41d_uart_mac_h_l196_c1422_9c41_return_output,
     VAR_CONST_REF_RD_uint1_t_uart_serializer_serializer_in_to_out_t_out_data_valid_d41d_uart_mac_h_l196_c1468_300b_return_output,
     VAR_CONST_REF_RD_uint1_t_uart_serializer_serializer_in_to_out_t_in_data_ready_d41d_uart_mac_h_l196_c1516_0780_return_output);

     -- Submodule level 3
     VAR_return_output := VAR_CONST_REF_RD_uart_serializer_o_t_uart_serializer_o_t_fd4a_uart_mac_h_l196_c1552_27c3_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
