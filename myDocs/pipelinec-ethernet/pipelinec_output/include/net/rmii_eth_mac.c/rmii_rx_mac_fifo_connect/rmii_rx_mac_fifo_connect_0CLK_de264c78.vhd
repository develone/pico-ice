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
-- Submodules: 0
entity rmii_rx_mac_fifo_connect_0CLK_de264c78 is
port(
 global_to_module : in rmii_rx_mac_fifo_connect_global_to_module_t;
 module_to_global : out rmii_rx_mac_fifo_connect_module_to_global_t);
end rmii_rx_mac_fifo_connect_0CLK_de264c78;
architecture arch of rmii_rx_mac_fifo_connect_0CLK_de264c78 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

begin



-- Combinatorial process for pipeline stages
process (
 -- Clock cross input
 global_to_module)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_eth_rx_mac_axis_out : axis8_t_stream_t;
 variable VAR_rmii_eth_mac_rx_fifo_out : axis8_t_stream_t;
 variable VAR_rmii_eth_mac_rx_fifo_out_ready : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_rmii_eth_mac_rx_fifo_out_ready := to_unsigned(1, 1);
 -- Reads from global variables
     VAR_rmii_eth_mac_rx_fifo_out := global_to_module.rmii_eth_mac_rx_fifo_out;
     -- Submodule level 0
     VAR_eth_rx_mac_axis_out := VAR_rmii_eth_mac_rx_fifo_out;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then

   end if;
 end loop;

-- Global wires driven various places in pipeline
module_to_global.eth_rx_mac_axis_out <= VAR_eth_rx_mac_axis_out;
module_to_global.rmii_eth_mac_rx_fifo_out_ready <= VAR_rmii_eth_mac_rx_fifo_out_ready;
end process;

end arch;
