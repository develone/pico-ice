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
-- Submodules: 1
entity rmii_tx_mac_instance_0CLK_715a9e3e is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in rmii_tx_mac_instance_global_to_module_t;
 module_to_global : out rmii_tx_mac_instance_module_to_global_t);
end rmii_tx_mac_instance_0CLK_715a9e3e;
architecture arch of rmii_tx_mac_instance_0CLK_715a9e3e is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- rmii_tx_mac[rmii_eth_mac_c_l57_c27_5ff0]
signal rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_CLOCK_ENABLE : unsigned(0 downto 0);
signal rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_axis_in : axis8_t_stream_t;
signal rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_return_output : rmii_tx_mac_t;


begin

-- SUBMODULE INSTANCES 
-- rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0 : 0 clocks latency
rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0 : entity work.rmii_tx_mac_0CLK_6e754937 port map (
clk,
rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_CLOCK_ENABLE,
rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_axis_in,
rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_rmii_eth_mac_tx_fifo_out : axis8_t_stream_t;
 variable VAR_rmii_eth_mac_tx_fifo_out_ready : unsigned(0 downto 0);
 variable VAR_rmii_tx : unsigned(1 downto 0);
 variable VAR_rmii_tx_en : unsigned(0 downto 0);
 variable VAR_mac_out : rmii_tx_mac_t;
 variable VAR_rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_axis_in : axis8_t_stream_t;
 variable VAR_rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_return_output : rmii_tx_mac_t;
 variable VAR_CONST_REF_RD_uint1_t_rmii_tx_mac_t_tx_mac_input_ready_d41d_rmii_eth_mac_c_l60_c36_5b8d_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint2_t_rmii_tx_mac_t_tx_mac_output_data_d41d_rmii_eth_mac_c_l68_c13_7e34_return_output : unsigned(1 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_rmii_tx_mac_t_tx_mac_output_valid_d41d_rmii_eth_mac_c_l69_c16_df39_return_output : unsigned(0 downto 0);
begin
 -- Reads from global variables
     VAR_rmii_eth_mac_tx_fifo_out := global_to_module.rmii_eth_mac_tx_fifo_out;
     -- Submodule level 0
     VAR_rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_axis_in := VAR_rmii_eth_mac_tx_fifo_out;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

     -- Submodule level 0
     VAR_rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     -- rmii_tx_mac[rmii_eth_mac_c_l57_c27_5ff0] LATENCY=0
     -- Clock enable
     rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_CLOCK_ENABLE <= VAR_rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_CLOCK_ENABLE;
     -- Inputs
     rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_axis_in <= VAR_rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_axis_in;
     -- Outputs
     VAR_rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_return_output := rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_return_output;

     -- Submodule level 1
     -- CONST_REF_RD_uint2_t_rmii_tx_mac_t_tx_mac_output_data_d41d[rmii_eth_mac_c_l68_c13_7e34] LATENCY=0
     VAR_CONST_REF_RD_uint2_t_rmii_tx_mac_t_tx_mac_output_data_d41d_rmii_eth_mac_c_l68_c13_7e34_return_output := VAR_rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_return_output.tx_mac_output_data;

     -- CONST_REF_RD_uint1_t_rmii_tx_mac_t_tx_mac_output_valid_d41d[rmii_eth_mac_c_l69_c16_df39] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_rmii_tx_mac_t_tx_mac_output_valid_d41d_rmii_eth_mac_c_l69_c16_df39_return_output := VAR_rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_return_output.tx_mac_output_valid;

     -- CONST_REF_RD_uint1_t_rmii_tx_mac_t_tx_mac_input_ready_d41d[rmii_eth_mac_c_l60_c36_5b8d] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_rmii_tx_mac_t_tx_mac_input_ready_d41d_rmii_eth_mac_c_l60_c36_5b8d_return_output := VAR_rmii_tx_mac_rmii_eth_mac_c_l57_c27_5ff0_return_output.tx_mac_input_ready;

     -- Submodule level 2
     VAR_rmii_eth_mac_tx_fifo_out_ready := VAR_CONST_REF_RD_uint1_t_rmii_tx_mac_t_tx_mac_input_ready_d41d_rmii_eth_mac_c_l60_c36_5b8d_return_output;
     VAR_rmii_tx_en := VAR_CONST_REF_RD_uint1_t_rmii_tx_mac_t_tx_mac_output_valid_d41d_rmii_eth_mac_c_l69_c16_df39_return_output;
     VAR_rmii_tx := VAR_CONST_REF_RD_uint2_t_rmii_tx_mac_t_tx_mac_output_data_d41d_rmii_eth_mac_c_l68_c13_7e34_return_output;
   end if;
 end loop;

-- Global wires driven various places in pipeline
if clk_en_internal='1' then
  module_to_global.rmii_eth_mac_tx_fifo_out_ready <= VAR_rmii_eth_mac_tx_fifo_out_ready;
else
  module_to_global.rmii_eth_mac_tx_fifo_out_ready <= to_unsigned(0, 1);
end if;
if clk_en_internal='1' then
  module_to_global.rmii_tx <= VAR_rmii_tx;
else
  module_to_global.rmii_tx <= to_unsigned(0, 2);
end if;
if clk_en_internal='1' then
  module_to_global.rmii_tx_en <= VAR_rmii_tx_en;
else
  module_to_global.rmii_tx_en <= to_unsigned(0, 1);
end if;
end process;

end arch;
