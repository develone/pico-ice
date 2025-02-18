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
entity rmii_eth_mac_rx_fifo_wr_skid_in_0CLK_d14799aa is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in rmii_eth_mac_rx_fifo_wr_skid_in_global_to_module_t;
 module_to_global : out rmii_eth_mac_rx_fifo_wr_skid_in_module_to_global_t);
end rmii_eth_mac_rx_fifo_wr_skid_in_0CLK_d14799aa;
architecture arch of rmii_eth_mac_rx_fifo_wr_skid_in_0CLK_d14799aa is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- skid_buf_rmii_eth_mac_rx_fifo[rmii_eth_mac_c_l8_c81_be32]
signal skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_CLOCK_ENABLE : unsigned(0 downto 0);
signal skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_stream_in : axis8_t_stream_t;
signal skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_ready_for_stream_out : unsigned(0 downto 0);
signal skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_return_output : skid_buf_rmii_eth_mac_rx_fifo_t;


begin

-- SUBMODULE INSTANCES 
-- skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32 : 0 clocks latency
skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32 : entity work.skid_buf_rmii_eth_mac_rx_fifo_0CLK_83e31706 port map (
clk,
skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_CLOCK_ENABLE,
skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_stream_in,
skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_ready_for_stream_out,
skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_rmii_eth_mac_rx_fifo_in : axis8_t_stream_t;
 variable VAR_no_skid_rmii_eth_mac_rx_fifo_in_ready : unsigned(0 downto 0);
 variable VAR_no_skid_rmii_eth_mac_rx_fifo_in : axis8_t_stream_t;
 variable VAR_rmii_eth_mac_rx_fifo_in_ready : unsigned(0 downto 0);
 variable VAR_skid : skid_buf_rmii_eth_mac_rx_fifo_t;
 variable VAR_skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_stream_in : axis8_t_stream_t;
 variable VAR_skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_ready_for_stream_out : unsigned(0 downto 0);
 variable VAR_skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_return_output : skid_buf_rmii_eth_mac_rx_fifo_t;
 variable VAR_CONST_REF_RD_axis8_t_stream_t_skid_buf_rmii_eth_mac_rx_fifo_t_stream_out_d41d_rmii_eth_mac_c_l8_c210_794a_return_output : axis8_t_stream_t;
 variable VAR_CONST_REF_RD_uint1_t_skid_buf_rmii_eth_mac_rx_fifo_t_ready_for_stream_in_d41d_rmii_eth_mac_c_l8_c259_5030_return_output : unsigned(0 downto 0);
begin
 -- Reads from global variables
     VAR_rmii_eth_mac_rx_fifo_in := global_to_module.rmii_eth_mac_rx_fifo_in;
     VAR_no_skid_rmii_eth_mac_rx_fifo_in_ready := global_to_module.no_skid_rmii_eth_mac_rx_fifo_in_ready;
     -- Submodule level 0
     VAR_skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_stream_in := VAR_rmii_eth_mac_rx_fifo_in;
     VAR_skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_ready_for_stream_out := VAR_no_skid_rmii_eth_mac_rx_fifo_in_ready;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

     -- Submodule level 0
     VAR_skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     -- skid_buf_rmii_eth_mac_rx_fifo[rmii_eth_mac_c_l8_c81_be32] LATENCY=0
     -- Clock enable
     skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_CLOCK_ENABLE <= VAR_skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_CLOCK_ENABLE;
     -- Inputs
     skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_stream_in <= VAR_skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_stream_in;
     skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_ready_for_stream_out <= VAR_skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_ready_for_stream_out;
     -- Outputs
     VAR_skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_return_output := skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_return_output;

     -- Submodule level 1
     -- CONST_REF_RD_axis8_t_stream_t_skid_buf_rmii_eth_mac_rx_fifo_t_stream_out_d41d[rmii_eth_mac_c_l8_c210_794a] LATENCY=0
     VAR_CONST_REF_RD_axis8_t_stream_t_skid_buf_rmii_eth_mac_rx_fifo_t_stream_out_d41d_rmii_eth_mac_c_l8_c210_794a_return_output := VAR_skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_return_output.stream_out;

     -- CONST_REF_RD_uint1_t_skid_buf_rmii_eth_mac_rx_fifo_t_ready_for_stream_in_d41d[rmii_eth_mac_c_l8_c259_5030] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_skid_buf_rmii_eth_mac_rx_fifo_t_ready_for_stream_in_d41d_rmii_eth_mac_c_l8_c259_5030_return_output := VAR_skid_buf_rmii_eth_mac_rx_fifo_rmii_eth_mac_c_l8_c81_be32_return_output.ready_for_stream_in;

     -- Submodule level 2
     VAR_no_skid_rmii_eth_mac_rx_fifo_in := VAR_CONST_REF_RD_axis8_t_stream_t_skid_buf_rmii_eth_mac_rx_fifo_t_stream_out_d41d_rmii_eth_mac_c_l8_c210_794a_return_output;
     VAR_rmii_eth_mac_rx_fifo_in_ready := VAR_CONST_REF_RD_uint1_t_skid_buf_rmii_eth_mac_rx_fifo_t_ready_for_stream_in_d41d_rmii_eth_mac_c_l8_c259_5030_return_output;
   end if;
 end loop;

-- Global wires driven various places in pipeline
if clk_en_internal='1' then
  module_to_global.no_skid_rmii_eth_mac_rx_fifo_in <= VAR_no_skid_rmii_eth_mac_rx_fifo_in;
else
  module_to_global.no_skid_rmii_eth_mac_rx_fifo_in <= axis8_t_stream_t_NULL;
end if;
end process;

end arch;
