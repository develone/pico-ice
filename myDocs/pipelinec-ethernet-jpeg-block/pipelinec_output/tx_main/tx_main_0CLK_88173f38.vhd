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
-- Submodules: 7
entity tx_main_0CLK_88173f38 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in tx_main_global_to_module_t;
 module_to_global : out tx_main_module_to_global_t);
end tx_main_0CLK_88173f38;
architecture arch of tx_main_0CLK_88173f38 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- BIN_OP_AND[ethernet_top_c_l102_c17_9ccb]
signal BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_left : unsigned(0 downto 0);
signal BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_right : unsigned(0 downto 0);
signal BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_return_output : unsigned(0 downto 0);

-- eth_8_tx[ethernet_top_c_l105_c23_7ff4]
signal eth_8_tx_ethernet_top_c_l105_c23_7ff4_CLOCK_ENABLE : unsigned(0 downto 0);
signal eth_8_tx_ethernet_top_c_l105_c23_7ff4_frame : eth8_frame_t_stream_t;
signal eth_8_tx_ethernet_top_c_l105_c23_7ff4_mac_axis_ready : unsigned(0 downto 0);
signal eth_8_tx_ethernet_top_c_l105_c23_7ff4_return_output : eth_8_tx_t;

-- BIN_OP_AND[ethernet_top_c_l109_c29_2b71]
signal BIN_OP_AND_ethernet_top_c_l109_c29_2b71_left : unsigned(0 downto 0);
signal BIN_OP_AND_ethernet_top_c_l109_c29_2b71_right : unsigned(0 downto 0);
signal BIN_OP_AND_ethernet_top_c_l109_c29_2b71_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[ethernet_top_c_l113_c37_13a6]
signal BIN_OP_AND_ethernet_top_c_l113_c37_13a6_left : unsigned(0 downto 0);
signal BIN_OP_AND_ethernet_top_c_l113_c37_13a6_right : unsigned(0 downto 0);
signal BIN_OP_AND_ethernet_top_c_l113_c37_13a6_return_output : unsigned(0 downto 0);

function CONST_REF_RD_uint48_t_eth8_frame_t_stream_t_data_header_src_mac_8ae6( ref_toks_0 : eth_header_t) return unsigned is
 
  variable base : eth8_frame_t_stream_t; 
  variable return_output : unsigned(47 downto 0);
begin
      base.data.header := ref_toks_0;

      return_output := base.data.header.src_mac;
      return return_output; 
end function;

function CONST_REF_RD_eth8_frame_t_stream_t_eth8_frame_t_stream_t_906d( ref_toks_0 : eth8_frame_t_stream_t;
 ref_toks_1 : eth_header_t;
 ref_toks_2 : unsigned;
 ref_toks_3 : unsigned;
 ref_toks_4 : axis8_t;
 ref_toks_5 : unsigned) return eth8_frame_t_stream_t is
 
  variable base : eth8_frame_t_stream_t; 
  variable return_output : eth8_frame_t_stream_t;
begin
      base := ref_toks_0;
      base.data.header := ref_toks_1;
      base.data.header.dst_mac := ref_toks_2;
      base.data.header.src_mac := ref_toks_3;
      base.data.payload := ref_toks_4;
      base.valid := ref_toks_5;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_data_payload_tlast_ab7f( ref_toks_0 : axis8_t) return unsigned is
 
  variable base : eth8_frame_t_stream_t; 
  variable return_output : unsigned(0 downto 0);
begin
      base.data.payload := ref_toks_0;

      return_output := base.data.payload.tlast;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_AND_ethernet_top_c_l102_c17_9ccb : 0 clocks latency
BIN_OP_AND_ethernet_top_c_l102_c17_9ccb : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_left,
BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_right,
BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_return_output);

-- eth_8_tx_ethernet_top_c_l105_c23_7ff4 : 0 clocks latency
eth_8_tx_ethernet_top_c_l105_c23_7ff4 : entity work.eth_8_tx_0CLK_67fe881f port map (
clk,
eth_8_tx_ethernet_top_c_l105_c23_7ff4_CLOCK_ENABLE,
eth_8_tx_ethernet_top_c_l105_c23_7ff4_frame,
eth_8_tx_ethernet_top_c_l105_c23_7ff4_mac_axis_ready,
eth_8_tx_ethernet_top_c_l105_c23_7ff4_return_output);

-- BIN_OP_AND_ethernet_top_c_l109_c29_2b71 : 0 clocks latency
BIN_OP_AND_ethernet_top_c_l109_c29_2b71 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_ethernet_top_c_l109_c29_2b71_left,
BIN_OP_AND_ethernet_top_c_l109_c29_2b71_right,
BIN_OP_AND_ethernet_top_c_l109_c29_2b71_return_output);

-- BIN_OP_AND_ethernet_top_c_l113_c37_13a6 : 0 clocks latency
BIN_OP_AND_ethernet_top_c_l113_c37_13a6 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_ethernet_top_c_l113_c37_13a6_left,
BIN_OP_AND_ethernet_top_c_l113_c37_13a6_right,
BIN_OP_AND_ethernet_top_c_l113_c37_13a6_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_return_output,
 eth_8_tx_ethernet_top_c_l105_c23_7ff4_return_output,
 BIN_OP_AND_ethernet_top_c_l109_c29_2b71_return_output,
 BIN_OP_AND_ethernet_top_c_l113_c37_13a6_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_loopback_headers_fifo_out : eth_header_t_stream_t;
 variable VAR_loopback_payload_fifo_out : axis8_t_stream_t;
 variable VAR_eth_tx_mac_input_ready : unsigned(0 downto 0);
 variable VAR_eth_tx_mac_axis_in : axis8_t_stream_t;
 variable VAR_loopback_payload_fifo_out_ready : unsigned(0 downto 0);
 variable VAR_loopback_headers_fifo_out_ready : unsigned(0 downto 0);
 variable VAR_frame : eth8_frame_t_stream_t;
 variable VAR_CONST_REF_RD_eth_header_t_eth_header_t_stream_t_data_d41d_ethernet_top_c_l97_c23_fa9b_return_output : eth_header_t;
 variable VAR_CONST_REF_RD_uint48_t_eth8_frame_t_stream_t_data_header_src_mac_8ae6_ethernet_top_c_l98_c31_d4c7_return_output : unsigned(47 downto 0);
 variable VAR_CONST_REF_RD_axis8_t_axis8_t_stream_t_data_d41d_ethernet_top_c_l101_c24_e076_return_output : axis8_t;
 variable VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_ethernet_top_c_l102_c17_4ced_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_left : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_eth_header_t_stream_t_valid_d41d_ethernet_top_c_l102_c51_c953_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_return_output : unsigned(0 downto 0);
 variable VAR_eth_tx : eth_8_tx_t;
 variable VAR_eth_8_tx_ethernet_top_c_l105_c23_7ff4_frame : eth8_frame_t_stream_t;
 variable VAR_eth_8_tx_ethernet_top_c_l105_c23_7ff4_mac_axis_ready : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_eth8_frame_t_stream_t_eth8_frame_t_stream_t_906d_ethernet_top_c_l105_c32_df16_return_output : eth8_frame_t_stream_t;
 variable VAR_eth_8_tx_ethernet_top_c_l105_c23_7ff4_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_eth_8_tx_ethernet_top_c_l105_c23_7ff4_return_output : eth_8_tx_t;
 variable VAR_CONST_REF_RD_axis8_t_stream_t_eth_8_tx_t_mac_axis_d41d_ethernet_top_c_l106_c24_bdcc_return_output : axis8_t_stream_t;
 variable VAR_valid_and_ready : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l109_c29_2b71_left : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_eth_8_tx_t_frame_ready_d41d_ethernet_top_c_l109_c43_2add_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l109_c29_2b71_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l109_c29_2b71_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_data_payload_tlast_ab7f_ethernet_top_c_l113_c37_48a3_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l113_c37_13a6_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l113_c37_13a6_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l113_c37_13a6_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
 -- Reads from global variables
     VAR_loopback_headers_fifo_out := global_to_module.loopback_headers_fifo_out;
     VAR_loopback_payload_fifo_out := global_to_module.loopback_payload_fifo_out;
     VAR_eth_tx_mac_input_ready := global_to_module.eth_tx_mac_input_ready;
     -- Submodule level 0
     VAR_eth_8_tx_ethernet_top_c_l105_c23_7ff4_mac_axis_ready := VAR_eth_tx_mac_input_ready;
     -- CONST_REF_RD_eth_header_t_eth_header_t_stream_t_data_d41d[ethernet_top_c_l97_c23_fa9b] LATENCY=0
     VAR_CONST_REF_RD_eth_header_t_eth_header_t_stream_t_data_d41d_ethernet_top_c_l97_c23_fa9b_return_output := VAR_loopback_headers_fifo_out.data;

     -- CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d[ethernet_top_c_l102_c17_4ced] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_ethernet_top_c_l102_c17_4ced_return_output := VAR_loopback_payload_fifo_out.valid;

     -- CONST_REF_RD_axis8_t_axis8_t_stream_t_data_d41d[ethernet_top_c_l101_c24_e076] LATENCY=0
     VAR_CONST_REF_RD_axis8_t_axis8_t_stream_t_data_d41d_ethernet_top_c_l101_c24_e076_return_output := VAR_loopback_payload_fifo_out.data;

     -- CONST_REF_RD_uint1_t_eth_header_t_stream_t_valid_d41d[ethernet_top_c_l102_c51_c953] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_eth_header_t_stream_t_valid_d41d_ethernet_top_c_l102_c51_c953_return_output := VAR_loopback_headers_fifo_out.valid;

     -- Submodule level 1
     VAR_BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_right := VAR_CONST_REF_RD_uint1_t_eth_header_t_stream_t_valid_d41d_ethernet_top_c_l102_c51_c953_return_output;
     VAR_BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_left := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_ethernet_top_c_l102_c17_4ced_return_output;
     -- CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_data_payload_tlast_ab7f[ethernet_top_c_l113_c37_48a3] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_data_payload_tlast_ab7f_ethernet_top_c_l113_c37_48a3_return_output := CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_data_payload_tlast_ab7f(
     VAR_CONST_REF_RD_axis8_t_axis8_t_stream_t_data_d41d_ethernet_top_c_l101_c24_e076_return_output);

     -- CONST_REF_RD_uint48_t_eth8_frame_t_stream_t_data_header_src_mac_8ae6[ethernet_top_c_l98_c31_d4c7] LATENCY=0
     VAR_CONST_REF_RD_uint48_t_eth8_frame_t_stream_t_data_header_src_mac_8ae6_ethernet_top_c_l98_c31_d4c7_return_output := CONST_REF_RD_uint48_t_eth8_frame_t_stream_t_data_header_src_mac_8ae6(
     VAR_CONST_REF_RD_eth_header_t_eth_header_t_stream_t_data_d41d_ethernet_top_c_l97_c23_fa9b_return_output);

     -- Submodule level 2
     VAR_BIN_OP_AND_ethernet_top_c_l113_c37_13a6_left := VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_data_payload_tlast_ab7f_ethernet_top_c_l113_c37_48a3_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

     -- Submodule level 0
     VAR_eth_8_tx_ethernet_top_c_l105_c23_7ff4_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     -- BIN_OP_AND[ethernet_top_c_l102_c17_9ccb] LATENCY=0
     -- Inputs
     BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_left <= VAR_BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_left;
     BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_right <= VAR_BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_right;
     -- Outputs
     VAR_BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_return_output := BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_return_output;

     -- Submodule level 1
     VAR_BIN_OP_AND_ethernet_top_c_l109_c29_2b71_left := VAR_BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_return_output;
     -- CONST_REF_RD_eth8_frame_t_stream_t_eth8_frame_t_stream_t_906d[ethernet_top_c_l105_c32_df16] LATENCY=0
     VAR_CONST_REF_RD_eth8_frame_t_stream_t_eth8_frame_t_stream_t_906d_ethernet_top_c_l105_c32_df16_return_output := CONST_REF_RD_eth8_frame_t_stream_t_eth8_frame_t_stream_t_906d(
     eth8_frame_t_stream_t_NULL,
     VAR_CONST_REF_RD_eth_header_t_eth_header_t_stream_t_data_d41d_ethernet_top_c_l97_c23_fa9b_return_output,
     VAR_CONST_REF_RD_uint48_t_eth8_frame_t_stream_t_data_header_src_mac_8ae6_ethernet_top_c_l98_c31_d4c7_return_output,
     unsigned'(X"a0b1c2d3e4f5"),
     VAR_CONST_REF_RD_axis8_t_axis8_t_stream_t_data_d41d_ethernet_top_c_l101_c24_e076_return_output,
     VAR_BIN_OP_AND_ethernet_top_c_l102_c17_9ccb_return_output);

     -- Submodule level 2
     VAR_eth_8_tx_ethernet_top_c_l105_c23_7ff4_frame := VAR_CONST_REF_RD_eth8_frame_t_stream_t_eth8_frame_t_stream_t_906d_ethernet_top_c_l105_c32_df16_return_output;
     -- eth_8_tx[ethernet_top_c_l105_c23_7ff4] LATENCY=0
     -- Clock enable
     eth_8_tx_ethernet_top_c_l105_c23_7ff4_CLOCK_ENABLE <= VAR_eth_8_tx_ethernet_top_c_l105_c23_7ff4_CLOCK_ENABLE;
     -- Inputs
     eth_8_tx_ethernet_top_c_l105_c23_7ff4_frame <= VAR_eth_8_tx_ethernet_top_c_l105_c23_7ff4_frame;
     eth_8_tx_ethernet_top_c_l105_c23_7ff4_mac_axis_ready <= VAR_eth_8_tx_ethernet_top_c_l105_c23_7ff4_mac_axis_ready;
     -- Outputs
     VAR_eth_8_tx_ethernet_top_c_l105_c23_7ff4_return_output := eth_8_tx_ethernet_top_c_l105_c23_7ff4_return_output;

     -- Submodule level 3
     -- CONST_REF_RD_uint1_t_eth_8_tx_t_frame_ready_d41d[ethernet_top_c_l109_c43_2add] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_eth_8_tx_t_frame_ready_d41d_ethernet_top_c_l109_c43_2add_return_output := VAR_eth_8_tx_ethernet_top_c_l105_c23_7ff4_return_output.frame_ready;

     -- CONST_REF_RD_axis8_t_stream_t_eth_8_tx_t_mac_axis_d41d[ethernet_top_c_l106_c24_bdcc] LATENCY=0
     VAR_CONST_REF_RD_axis8_t_stream_t_eth_8_tx_t_mac_axis_d41d_ethernet_top_c_l106_c24_bdcc_return_output := VAR_eth_8_tx_ethernet_top_c_l105_c23_7ff4_return_output.mac_axis;

     -- Submodule level 4
     VAR_eth_tx_mac_axis_in := VAR_CONST_REF_RD_axis8_t_stream_t_eth_8_tx_t_mac_axis_d41d_ethernet_top_c_l106_c24_bdcc_return_output;
     VAR_BIN_OP_AND_ethernet_top_c_l109_c29_2b71_right := VAR_CONST_REF_RD_uint1_t_eth_8_tx_t_frame_ready_d41d_ethernet_top_c_l109_c43_2add_return_output;
     -- BIN_OP_AND[ethernet_top_c_l109_c29_2b71] LATENCY=0
     -- Inputs
     BIN_OP_AND_ethernet_top_c_l109_c29_2b71_left <= VAR_BIN_OP_AND_ethernet_top_c_l109_c29_2b71_left;
     BIN_OP_AND_ethernet_top_c_l109_c29_2b71_right <= VAR_BIN_OP_AND_ethernet_top_c_l109_c29_2b71_right;
     -- Outputs
     VAR_BIN_OP_AND_ethernet_top_c_l109_c29_2b71_return_output := BIN_OP_AND_ethernet_top_c_l109_c29_2b71_return_output;

     -- Submodule level 5
     VAR_BIN_OP_AND_ethernet_top_c_l113_c37_13a6_right := VAR_BIN_OP_AND_ethernet_top_c_l109_c29_2b71_return_output;
     VAR_loopback_payload_fifo_out_ready := VAR_BIN_OP_AND_ethernet_top_c_l109_c29_2b71_return_output;
     -- BIN_OP_AND[ethernet_top_c_l113_c37_13a6] LATENCY=0
     -- Inputs
     BIN_OP_AND_ethernet_top_c_l113_c37_13a6_left <= VAR_BIN_OP_AND_ethernet_top_c_l113_c37_13a6_left;
     BIN_OP_AND_ethernet_top_c_l113_c37_13a6_right <= VAR_BIN_OP_AND_ethernet_top_c_l113_c37_13a6_right;
     -- Outputs
     VAR_BIN_OP_AND_ethernet_top_c_l113_c37_13a6_return_output := BIN_OP_AND_ethernet_top_c_l113_c37_13a6_return_output;

     -- Submodule level 6
     VAR_loopback_headers_fifo_out_ready := VAR_BIN_OP_AND_ethernet_top_c_l113_c37_13a6_return_output;
   end if;
 end loop;

-- Global wires driven various places in pipeline
if clk_en_internal='1' then
  module_to_global.eth_tx_mac_axis_in <= VAR_eth_tx_mac_axis_in;
else
  module_to_global.eth_tx_mac_axis_in <= axis8_t_stream_t_NULL;
end if;
if clk_en_internal='1' then
  module_to_global.loopback_payload_fifo_out_ready <= VAR_loopback_payload_fifo_out_ready;
else
  module_to_global.loopback_payload_fifo_out_ready <= to_unsigned(0, 1);
end if;
if clk_en_internal='1' then
  module_to_global.loopback_headers_fifo_out_ready <= VAR_loopback_headers_fifo_out_ready;
else
  module_to_global.loopback_headers_fifo_out_ready <= to_unsigned(0, 1);
end if;
end process;

end arch;
