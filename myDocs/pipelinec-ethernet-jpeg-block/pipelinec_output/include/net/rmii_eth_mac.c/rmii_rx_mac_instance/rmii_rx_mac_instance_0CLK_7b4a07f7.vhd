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
entity rmii_rx_mac_instance_0CLK_7b4a07f7 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in rmii_rx_mac_instance_global_to_module_t;
 module_to_global : out rmii_rx_mac_instance_module_to_global_t);
end rmii_rx_mac_instance_0CLK_7b4a07f7;
architecture arch of rmii_rx_mac_instance_0CLK_7b4a07f7 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- rmii_rx_mac[rmii_eth_mac_c_l23_c27_4049]
signal rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_CLOCK_ENABLE : unsigned(0 downto 0);
signal rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_data_in : unsigned(1 downto 0);
signal rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_data_in_valid : unsigned(0 downto 0);
signal rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_return_output : rmii_rx_mac_t;


begin

-- SUBMODULE INSTANCES 
-- rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049 : 0 clocks latency
rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049 : entity work.rmii_rx_mac_0CLK_7b2e14c0 port map (
clk,
rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_CLOCK_ENABLE,
rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_data_in,
rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_data_in_valid,
rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_rmii_rx : unsigned(1 downto 0);
 variable VAR_rmii_crs_dv : unsigned(0 downto 0);
 variable VAR_rmii_eth_mac_rx_fifo_in : axis8_t_stream_t;
 variable VAR_eth_rx_mac_error : unsigned(0 downto 0);
 variable VAR_mac_out : rmii_rx_mac_t;
 variable VAR_rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_data_in : unsigned(1 downto 0);
 variable VAR_rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_data_in_valid : unsigned(0 downto 0);
 variable VAR_rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_return_output : rmii_rx_mac_t;
 variable VAR_CONST_REF_RD_axis8_t_stream_t_rmii_rx_mac_t_rx_mac_axis_out_d41d_rmii_eth_mac_c_l29_c29_5c98_return_output : axis8_t_stream_t;
 variable VAR_CONST_REF_RD_uint1_t_rmii_rx_mac_t_rx_mac_error_d41d_rmii_eth_mac_c_l30_c22_b80e_return_output : unsigned(0 downto 0);
begin
 -- Reads from global variables
     VAR_rmii_rx := global_to_module.rmii_rx;
     VAR_rmii_crs_dv := global_to_module.rmii_crs_dv;
     -- Submodule level 0
     VAR_rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_data_in_valid := VAR_rmii_crs_dv;
     VAR_rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_data_in := VAR_rmii_rx;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

     -- Submodule level 0
     VAR_rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     -- rmii_rx_mac[rmii_eth_mac_c_l23_c27_4049] LATENCY=0
     -- Clock enable
     rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_CLOCK_ENABLE <= VAR_rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_CLOCK_ENABLE;
     -- Inputs
     rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_data_in <= VAR_rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_data_in;
     rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_data_in_valid <= VAR_rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_data_in_valid;
     -- Outputs
     VAR_rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_return_output := rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_return_output;

     -- Submodule level 1
     -- CONST_REF_RD_axis8_t_stream_t_rmii_rx_mac_t_rx_mac_axis_out_d41d[rmii_eth_mac_c_l29_c29_5c98] LATENCY=0
     VAR_CONST_REF_RD_axis8_t_stream_t_rmii_rx_mac_t_rx_mac_axis_out_d41d_rmii_eth_mac_c_l29_c29_5c98_return_output := VAR_rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_return_output.rx_mac_axis_out;

     -- CONST_REF_RD_uint1_t_rmii_rx_mac_t_rx_mac_error_d41d[rmii_eth_mac_c_l30_c22_b80e] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_rmii_rx_mac_t_rx_mac_error_d41d_rmii_eth_mac_c_l30_c22_b80e_return_output := VAR_rmii_rx_mac_rmii_eth_mac_c_l23_c27_4049_return_output.rx_mac_error;

     -- Submodule level 2
     VAR_rmii_eth_mac_rx_fifo_in := VAR_CONST_REF_RD_axis8_t_stream_t_rmii_rx_mac_t_rx_mac_axis_out_d41d_rmii_eth_mac_c_l29_c29_5c98_return_output;
     VAR_eth_rx_mac_error := VAR_CONST_REF_RD_uint1_t_rmii_rx_mac_t_rx_mac_error_d41d_rmii_eth_mac_c_l30_c22_b80e_return_output;
   end if;
 end loop;

-- Global wires driven various places in pipeline
if clk_en_internal='1' then
  module_to_global.rmii_eth_mac_rx_fifo_in <= VAR_rmii_eth_mac_rx_fifo_in;
else
  module_to_global.rmii_eth_mac_rx_fifo_in <= axis8_t_stream_t_NULL;
end if;
end process;

end arch;
