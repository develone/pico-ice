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
-- Submodules: 8
entity rx_main_0CLK_e35f392a is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in rx_main_global_to_module_t;
 module_to_global : out rx_main_module_to_global_t);
end rx_main_0CLK_e35f392a;
architecture arch of rx_main_0CLK_e35f392a is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- BIN_OP_AND[ethernet_top_c_l73_c30_488d]
signal BIN_OP_AND_ethernet_top_c_l73_c30_488d_left : unsigned(0 downto 0);
signal BIN_OP_AND_ethernet_top_c_l73_c30_488d_right : unsigned(0 downto 0);
signal BIN_OP_AND_ethernet_top_c_l73_c30_488d_return_output : unsigned(0 downto 0);

-- eth_8_rx[ethernet_top_c_l76_c23_9df2]
signal eth_8_rx_ethernet_top_c_l76_c23_9df2_CLOCK_ENABLE : unsigned(0 downto 0);
signal eth_8_rx_ethernet_top_c_l76_c23_9df2_mac_axis : axis8_t_stream_t;
signal eth_8_rx_ethernet_top_c_l76_c23_9df2_frame_ready : unsigned(0 downto 0);
signal eth_8_rx_ethernet_top_c_l76_c23_9df2_return_output : eth_8_rx_t;

-- BIN_OP_EQ[ethernet_top_c_l79_c23_49e6]
signal BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_left : unsigned(47 downto 0);
signal BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_right : unsigned(47 downto 0);
signal BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[ethernet_top_c_l82_c29_ebba]
signal BIN_OP_AND_ethernet_top_c_l82_c29_ebba_left : unsigned(0 downto 0);
signal BIN_OP_AND_ethernet_top_c_l82_c29_ebba_right : unsigned(0 downto 0);
signal BIN_OP_AND_ethernet_top_c_l82_c29_ebba_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[ethernet_top_c_l82_c29_c8cd]
signal BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_left : unsigned(0 downto 0);
signal BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_right : unsigned(0 downto 0);
signal BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[ethernet_top_c_l88_c36_4b6b]
signal BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_left : unsigned(0 downto 0);
signal BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_right : unsigned(0 downto 0);
signal BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_return_output : unsigned(0 downto 0);

function CONST_REF_RD_axis8_t_stream_t_axis8_t_stream_t_42b0( ref_toks_0 : axis8_t;
 ref_toks_1 : unsigned) return axis8_t_stream_t is
 
  variable base : axis8_t_stream_t; 
  variable return_output : axis8_t_stream_t;
begin
      base.data := ref_toks_0;
      base.valid := ref_toks_1;

      return_output := base;
      return return_output; 
end function;

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
-- BIN_OP_AND_ethernet_top_c_l73_c30_488d : 0 clocks latency
BIN_OP_AND_ethernet_top_c_l73_c30_488d : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_ethernet_top_c_l73_c30_488d_left,
BIN_OP_AND_ethernet_top_c_l73_c30_488d_right,
BIN_OP_AND_ethernet_top_c_l73_c30_488d_return_output);

-- eth_8_rx_ethernet_top_c_l76_c23_9df2 : 0 clocks latency
eth_8_rx_ethernet_top_c_l76_c23_9df2 : entity work.eth_8_rx_0CLK_5110df32 port map (
clk,
eth_8_rx_ethernet_top_c_l76_c23_9df2_CLOCK_ENABLE,
eth_8_rx_ethernet_top_c_l76_c23_9df2_mac_axis,
eth_8_rx_ethernet_top_c_l76_c23_9df2_frame_ready,
eth_8_rx_ethernet_top_c_l76_c23_9df2_return_output);

-- BIN_OP_EQ_ethernet_top_c_l79_c23_49e6 : 0 clocks latency
BIN_OP_EQ_ethernet_top_c_l79_c23_49e6 : entity work.BIN_OP_EQ_uint48_t_uint48_t_0CLK_de264c78 port map (
BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_left,
BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_right,
BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_return_output);

-- BIN_OP_AND_ethernet_top_c_l82_c29_ebba : 0 clocks latency
BIN_OP_AND_ethernet_top_c_l82_c29_ebba : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_ethernet_top_c_l82_c29_ebba_left,
BIN_OP_AND_ethernet_top_c_l82_c29_ebba_right,
BIN_OP_AND_ethernet_top_c_l82_c29_ebba_return_output);

-- BIN_OP_AND_ethernet_top_c_l82_c29_c8cd : 0 clocks latency
BIN_OP_AND_ethernet_top_c_l82_c29_c8cd : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_left,
BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_right,
BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_return_output);

-- BIN_OP_AND_ethernet_top_c_l88_c36_4b6b : 0 clocks latency
BIN_OP_AND_ethernet_top_c_l88_c36_4b6b : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_left,
BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_right,
BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 BIN_OP_AND_ethernet_top_c_l73_c30_488d_return_output,
 eth_8_rx_ethernet_top_c_l76_c23_9df2_return_output,
 BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_return_output,
 BIN_OP_AND_ethernet_top_c_l82_c29_ebba_return_output,
 BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_return_output,
 BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_loopback_payload_fifo_in_ready : unsigned(0 downto 0);
 variable VAR_loopback_headers_fifo_in_ready : unsigned(0 downto 0);
 variable VAR_eth_rx_mac_axis_out : axis8_t_stream_t;
 variable VAR_loopback_payload_fifo_in : axis8_t_stream_t;
 variable VAR_loopback_headers_fifo_in : eth_header_t_stream_t;
 variable VAR_eth_rx_out_ready : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l73_c30_488d_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l73_c30_488d_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l73_c30_488d_return_output : unsigned(0 downto 0);
 variable VAR_eth_rx : eth_8_rx_t;
 variable VAR_eth_8_rx_ethernet_top_c_l76_c23_9df2_mac_axis : axis8_t_stream_t;
 variable VAR_eth_8_rx_ethernet_top_c_l76_c23_9df2_frame_ready : unsigned(0 downto 0);
 variable VAR_eth_8_rx_ethernet_top_c_l76_c23_9df2_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_eth_8_rx_ethernet_top_c_l76_c23_9df2_return_output : eth_8_rx_t;
 variable VAR_frame : eth8_frame_t_stream_t;
 variable VAR_CONST_REF_RD_eth8_frame_t_stream_t_eth_8_rx_t_frame_d41d_ethernet_top_c_l77_c33_9e90_return_output : eth8_frame_t_stream_t;
 variable VAR_mac_match : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint48_t_eth8_frame_t_stream_t_data_header_dst_mac_d41d_ethernet_top_c_l79_c23_0c32_return_output : unsigned(47 downto 0);
 variable VAR_BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_left : unsigned(47 downto 0);
 variable VAR_BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_right : unsigned(47 downto 0);
 variable VAR_BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_return_output : unsigned(0 downto 0);
 variable VAR_valid_and_ready : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_valid_d41d_ethernet_top_c_l82_c29_8334_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l82_c29_ebba_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l82_c29_ebba_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l82_c29_ebba_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_axis8_t_eth8_frame_t_stream_t_data_payload_d41d_ethernet_top_c_l84_c35_a4a2_return_output : axis8_t;
 variable VAR_CONST_REF_RD_eth_header_t_eth8_frame_t_stream_t_data_header_d41d_ethernet_top_c_l87_c35_fa5c_return_output : eth_header_t;
 variable VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_data_start_of_payload_d41d_ethernet_top_c_l88_c36_b860_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_return_output : unsigned(0 downto 0);
 variable VAR_loopback_payload_fifo_in_CONST_REF_RD_axis8_t_stream_t_axis8_t_stream_t_42b0_ethernet_top_c_l69_c6_b7a4_return_output : axis8_t_stream_t;
 variable VAR_loopback_headers_fifo_in_CONST_REF_RD_eth_header_t_stream_t_eth_header_t_stream_t_42b0_ethernet_top_c_l69_c6_b7a4_return_output : eth_header_t_stream_t;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_right := unsigned'(X"a0b1c2d3e4f5");
 -- Reads from global variables
     VAR_loopback_payload_fifo_in_ready := global_to_module.loopback_payload_fifo_in_ready;
     VAR_loopback_headers_fifo_in_ready := global_to_module.loopback_headers_fifo_in_ready;
     VAR_eth_rx_mac_axis_out := global_to_module.eth_rx_mac_axis_out;
     -- Submodule level 0
     VAR_BIN_OP_AND_ethernet_top_c_l73_c30_488d_left := VAR_loopback_payload_fifo_in_ready;
     VAR_BIN_OP_AND_ethernet_top_c_l73_c30_488d_right := VAR_loopback_headers_fifo_in_ready;
     VAR_eth_8_rx_ethernet_top_c_l76_c23_9df2_mac_axis := VAR_eth_rx_mac_axis_out;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

     -- Submodule level 0
     VAR_eth_8_rx_ethernet_top_c_l76_c23_9df2_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     -- BIN_OP_AND[ethernet_top_c_l73_c30_488d] LATENCY=0
     -- Inputs
     BIN_OP_AND_ethernet_top_c_l73_c30_488d_left <= VAR_BIN_OP_AND_ethernet_top_c_l73_c30_488d_left;
     BIN_OP_AND_ethernet_top_c_l73_c30_488d_right <= VAR_BIN_OP_AND_ethernet_top_c_l73_c30_488d_right;
     -- Outputs
     VAR_BIN_OP_AND_ethernet_top_c_l73_c30_488d_return_output := BIN_OP_AND_ethernet_top_c_l73_c30_488d_return_output;

     -- Submodule level 1
     VAR_BIN_OP_AND_ethernet_top_c_l82_c29_ebba_right := VAR_BIN_OP_AND_ethernet_top_c_l73_c30_488d_return_output;
     VAR_eth_8_rx_ethernet_top_c_l76_c23_9df2_frame_ready := VAR_BIN_OP_AND_ethernet_top_c_l73_c30_488d_return_output;
     -- eth_8_rx[ethernet_top_c_l76_c23_9df2] LATENCY=0
     -- Clock enable
     eth_8_rx_ethernet_top_c_l76_c23_9df2_CLOCK_ENABLE <= VAR_eth_8_rx_ethernet_top_c_l76_c23_9df2_CLOCK_ENABLE;
     -- Inputs
     eth_8_rx_ethernet_top_c_l76_c23_9df2_mac_axis <= VAR_eth_8_rx_ethernet_top_c_l76_c23_9df2_mac_axis;
     eth_8_rx_ethernet_top_c_l76_c23_9df2_frame_ready <= VAR_eth_8_rx_ethernet_top_c_l76_c23_9df2_frame_ready;
     -- Outputs
     VAR_eth_8_rx_ethernet_top_c_l76_c23_9df2_return_output := eth_8_rx_ethernet_top_c_l76_c23_9df2_return_output;

     -- Submodule level 2
     -- CONST_REF_RD_eth8_frame_t_stream_t_eth_8_rx_t_frame_d41d[ethernet_top_c_l77_c33_9e90] LATENCY=0
     VAR_CONST_REF_RD_eth8_frame_t_stream_t_eth_8_rx_t_frame_d41d_ethernet_top_c_l77_c33_9e90_return_output := VAR_eth_8_rx_ethernet_top_c_l76_c23_9df2_return_output.frame;

     -- Submodule level 3
     -- CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_data_start_of_payload_d41d[ethernet_top_c_l88_c36_b860] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_data_start_of_payload_d41d_ethernet_top_c_l88_c36_b860_return_output := VAR_CONST_REF_RD_eth8_frame_t_stream_t_eth_8_rx_t_frame_d41d_ethernet_top_c_l77_c33_9e90_return_output.data.start_of_payload;

     -- CONST_REF_RD_uint48_t_eth8_frame_t_stream_t_data_header_dst_mac_d41d[ethernet_top_c_l79_c23_0c32] LATENCY=0
     VAR_CONST_REF_RD_uint48_t_eth8_frame_t_stream_t_data_header_dst_mac_d41d_ethernet_top_c_l79_c23_0c32_return_output := VAR_CONST_REF_RD_eth8_frame_t_stream_t_eth_8_rx_t_frame_d41d_ethernet_top_c_l77_c33_9e90_return_output.data.header.dst_mac;

     -- CONST_REF_RD_eth_header_t_eth8_frame_t_stream_t_data_header_d41d[ethernet_top_c_l87_c35_fa5c] LATENCY=0
     VAR_CONST_REF_RD_eth_header_t_eth8_frame_t_stream_t_data_header_d41d_ethernet_top_c_l87_c35_fa5c_return_output := VAR_CONST_REF_RD_eth8_frame_t_stream_t_eth_8_rx_t_frame_d41d_ethernet_top_c_l77_c33_9e90_return_output.data.header;

     -- CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_valid_d41d[ethernet_top_c_l82_c29_8334] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_valid_d41d_ethernet_top_c_l82_c29_8334_return_output := VAR_CONST_REF_RD_eth8_frame_t_stream_t_eth_8_rx_t_frame_d41d_ethernet_top_c_l77_c33_9e90_return_output.valid;

     -- CONST_REF_RD_axis8_t_eth8_frame_t_stream_t_data_payload_d41d[ethernet_top_c_l84_c35_a4a2] LATENCY=0
     VAR_CONST_REF_RD_axis8_t_eth8_frame_t_stream_t_data_payload_d41d_ethernet_top_c_l84_c35_a4a2_return_output := VAR_CONST_REF_RD_eth8_frame_t_stream_t_eth_8_rx_t_frame_d41d_ethernet_top_c_l77_c33_9e90_return_output.data.payload;

     -- Submodule level 4
     VAR_BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_left := VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_data_start_of_payload_d41d_ethernet_top_c_l88_c36_b860_return_output;
     VAR_BIN_OP_AND_ethernet_top_c_l82_c29_ebba_left := VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_valid_d41d_ethernet_top_c_l82_c29_8334_return_output;
     VAR_BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_left := VAR_CONST_REF_RD_uint48_t_eth8_frame_t_stream_t_data_header_dst_mac_d41d_ethernet_top_c_l79_c23_0c32_return_output;
     -- BIN_OP_EQ[ethernet_top_c_l79_c23_49e6] LATENCY=0
     -- Inputs
     BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_left <= VAR_BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_left;
     BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_right <= VAR_BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_right;
     -- Outputs
     VAR_BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_return_output := BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_return_output;

     -- BIN_OP_AND[ethernet_top_c_l82_c29_ebba] LATENCY=0
     -- Inputs
     BIN_OP_AND_ethernet_top_c_l82_c29_ebba_left <= VAR_BIN_OP_AND_ethernet_top_c_l82_c29_ebba_left;
     BIN_OP_AND_ethernet_top_c_l82_c29_ebba_right <= VAR_BIN_OP_AND_ethernet_top_c_l82_c29_ebba_right;
     -- Outputs
     VAR_BIN_OP_AND_ethernet_top_c_l82_c29_ebba_return_output := BIN_OP_AND_ethernet_top_c_l82_c29_ebba_return_output;

     -- Submodule level 5
     VAR_BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_left := VAR_BIN_OP_AND_ethernet_top_c_l82_c29_ebba_return_output;
     VAR_BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_right := VAR_BIN_OP_EQ_ethernet_top_c_l79_c23_49e6_return_output;
     -- BIN_OP_AND[ethernet_top_c_l82_c29_c8cd] LATENCY=0
     -- Inputs
     BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_left <= VAR_BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_left;
     BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_right <= VAR_BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_right;
     -- Outputs
     VAR_BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_return_output := BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_return_output;

     -- Submodule level 6
     VAR_BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_right := VAR_BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_return_output;
     -- BIN_OP_AND[ethernet_top_c_l88_c36_4b6b] LATENCY=0
     -- Inputs
     BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_left <= VAR_BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_left;
     BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_right <= VAR_BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_right;
     -- Outputs
     VAR_BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_return_output := BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_return_output;

     -- loopback_payload_fifo_in_CONST_REF_RD_axis8_t_stream_t_axis8_t_stream_t_42b0[ethernet_top_c_l69_c6_b7a4] LATENCY=0
     VAR_loopback_payload_fifo_in_CONST_REF_RD_axis8_t_stream_t_axis8_t_stream_t_42b0_ethernet_top_c_l69_c6_b7a4_return_output := CONST_REF_RD_axis8_t_stream_t_axis8_t_stream_t_42b0(
     VAR_CONST_REF_RD_axis8_t_eth8_frame_t_stream_t_data_payload_d41d_ethernet_top_c_l84_c35_a4a2_return_output,
     VAR_BIN_OP_AND_ethernet_top_c_l82_c29_c8cd_return_output);

     -- Submodule level 7
     VAR_loopback_payload_fifo_in := VAR_loopback_payload_fifo_in_CONST_REF_RD_axis8_t_stream_t_axis8_t_stream_t_42b0_ethernet_top_c_l69_c6_b7a4_return_output;
     -- loopback_headers_fifo_in_CONST_REF_RD_eth_header_t_stream_t_eth_header_t_stream_t_42b0[ethernet_top_c_l69_c6_b7a4] LATENCY=0
     VAR_loopback_headers_fifo_in_CONST_REF_RD_eth_header_t_stream_t_eth_header_t_stream_t_42b0_ethernet_top_c_l69_c6_b7a4_return_output := CONST_REF_RD_eth_header_t_stream_t_eth_header_t_stream_t_42b0(
     VAR_CONST_REF_RD_eth_header_t_eth8_frame_t_stream_t_data_header_d41d_ethernet_top_c_l87_c35_fa5c_return_output,
     VAR_BIN_OP_AND_ethernet_top_c_l88_c36_4b6b_return_output);

     -- Submodule level 8
     VAR_loopback_headers_fifo_in := VAR_loopback_headers_fifo_in_CONST_REF_RD_eth_header_t_stream_t_eth_header_t_stream_t_42b0_ethernet_top_c_l69_c6_b7a4_return_output;
   end if;
 end loop;

-- Global wires driven various places in pipeline
if clk_en_internal='1' then
  module_to_global.loopback_payload_fifo_in <= VAR_loopback_payload_fifo_in;
else
  module_to_global.loopback_payload_fifo_in <= axis8_t_stream_t_NULL;
end if;
if clk_en_internal='1' then
  module_to_global.loopback_headers_fifo_in <= VAR_loopback_headers_fifo_in;
else
  module_to_global.loopback_headers_fifo_in <= eth_header_t_stream_t_NULL;
end if;
end process;

end arch;
