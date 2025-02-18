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
-- Submodules: 2
entity loopback_headers_fifo_rd_stream_out_0CLK_6f2c5aad is
port(
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in loopback_headers_fifo_rd_stream_out_global_to_module_t;
 module_to_global : out loopback_headers_fifo_rd_stream_out_module_to_global_t);
end loopback_headers_fifo_rd_stream_out_0CLK_6f2c5aad;
architecture arch of loopback_headers_fifo_rd_stream_out_0CLK_6f2c5aad is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
function CONST_REF_RD_eth_header_t_stream_t_eth_header_t_stream_t_42b0( ref_toks_0 : eth_header_t;
 ref_toks_1 : unsigned) return eth_header_t_stream_t is
 
  variable base : eth_header_t_stream_t; 
  variable return_output : eth_header_t_stream_t;
begin
      base.data := ref_toks_0;
      base.valid := ref_toks_1;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 


-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Clock cross input
 global_to_module)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_loopback_headers_fifo_out_ready : unsigned(0 downto 0);
 variable VAR_loopback_headers_fifo_out : eth_header_t_stream_t;
 variable VAR_rd : loopback_headers_fifo_FIFO_read_t;
 variable VAR_loopback_headers_fifo_FIFO_READ_1_ethernet_top_c_l66_c85_8ab6_read_enable : unsigned(0 downto 0);
 variable VAR_loopback_headers_fifo_FIFO_READ_1_ethernet_top_c_l66_c85_8ab6_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_loopback_headers_fifo_FIFO_READ_1_ethernet_top_c_l66_c85_8ab6_return_output : loopback_headers_fifo_FIFO_read_t;
 variable VAR_CONST_REF_RD_eth_header_t_loopback_headers_fifo_FIFO_read_t_data_0_d41d_ethernet_top_c_l66_c186_1a02_return_output : eth_header_t;
 variable VAR_CONST_REF_RD_uint1_t_loopback_headers_fifo_FIFO_read_t_valid_d41d_ethernet_top_c_l66_c232_593c_return_output : unsigned(0 downto 0);
 variable VAR_loopback_headers_fifo_out_CONST_REF_RD_eth_header_t_stream_t_eth_header_t_stream_t_42b0_ethernet_top_c_l66_c7_2c9d_return_output : eth_header_t_stream_t;
begin
 -- Reads from global variables
     VAR_loopback_headers_fifo_out_ready := global_to_module.loopback_headers_fifo_out_ready;
     -- Submodule level 0
     VAR_loopback_headers_fifo_FIFO_READ_1_ethernet_top_c_l66_c85_8ab6_read_enable := VAR_loopback_headers_fifo_out_ready;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

     -- Submodule level 0
     VAR_loopback_headers_fifo_FIFO_READ_1_ethernet_top_c_l66_c85_8ab6_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     -- loopback_headers_fifo_FIFO_READ_1[ethernet_top_c_l66_c85_8ab6] LATENCY=0
     -- Clock enable
     module_to_global.loopback_headers_fifo_FIFO_READ_1_CLOCK_ENABLE <= VAR_loopback_headers_fifo_FIFO_READ_1_ethernet_top_c_l66_c85_8ab6_CLOCK_ENABLE;
     -- Inputs
     module_to_global.loopback_headers_fifo_FIFO_READ_1_read_enable <= VAR_loopback_headers_fifo_FIFO_READ_1_ethernet_top_c_l66_c85_8ab6_read_enable;
     -- Outputs
     VAR_loopback_headers_fifo_FIFO_READ_1_ethernet_top_c_l66_c85_8ab6_return_output := global_to_module.loopback_headers_fifo_FIFO_READ_1_return_output;

     -- Submodule level 1
     -- CONST_REF_RD_uint1_t_loopback_headers_fifo_FIFO_read_t_valid_d41d[ethernet_top_c_l66_c232_593c] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_loopback_headers_fifo_FIFO_read_t_valid_d41d_ethernet_top_c_l66_c232_593c_return_output := VAR_loopback_headers_fifo_FIFO_READ_1_ethernet_top_c_l66_c85_8ab6_return_output.valid;

     -- CONST_REF_RD_eth_header_t_loopback_headers_fifo_FIFO_read_t_data_0_d41d[ethernet_top_c_l66_c186_1a02] LATENCY=0
     VAR_CONST_REF_RD_eth_header_t_loopback_headers_fifo_FIFO_read_t_data_0_d41d_ethernet_top_c_l66_c186_1a02_return_output := VAR_loopback_headers_fifo_FIFO_READ_1_ethernet_top_c_l66_c85_8ab6_return_output.data(0);

     -- Submodule level 2
     -- loopback_headers_fifo_out_CONST_REF_RD_eth_header_t_stream_t_eth_header_t_stream_t_42b0[ethernet_top_c_l66_c7_2c9d] LATENCY=0
     VAR_loopback_headers_fifo_out_CONST_REF_RD_eth_header_t_stream_t_eth_header_t_stream_t_42b0_ethernet_top_c_l66_c7_2c9d_return_output := CONST_REF_RD_eth_header_t_stream_t_eth_header_t_stream_t_42b0(
     VAR_CONST_REF_RD_eth_header_t_loopback_headers_fifo_FIFO_read_t_data_0_d41d_ethernet_top_c_l66_c186_1a02_return_output,
     VAR_CONST_REF_RD_uint1_t_loopback_headers_fifo_FIFO_read_t_valid_d41d_ethernet_top_c_l66_c232_593c_return_output);

     -- Submodule level 3
     VAR_loopback_headers_fifo_out := VAR_loopback_headers_fifo_out_CONST_REF_RD_eth_header_t_stream_t_eth_header_t_stream_t_42b0_ethernet_top_c_l66_c7_2c9d_return_output;
   end if;
 end loop;

-- Global wires driven various places in pipeline
if clk_en_internal='1' then
  module_to_global.loopback_headers_fifo_out <= VAR_loopback_headers_fifo_out;
else
  module_to_global.loopback_headers_fifo_out <= eth_header_t_stream_t_NULL;
end if;
end process;

end arch;
