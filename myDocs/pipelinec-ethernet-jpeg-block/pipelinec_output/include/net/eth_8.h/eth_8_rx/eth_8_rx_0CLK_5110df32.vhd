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
-- Submodules: 69
entity eth_8_rx_0CLK_5110df32 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 mac_axis : in axis8_t_stream_t;
 frame_ready : in unsigned(0 downto 0);
 return_output : out eth_8_rx_t);
end eth_8_rx_0CLK_5110df32;
architecture arch of eth_8_rx_0CLK_5110df32 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal state : unsigned(1 downto 0) := unsigned(eth8_state_t_to_slv(eth8_state_t'left));
signal header : eth_header_t := eth_header_t_NULL;
signal counter : unsigned(2 downto 0) := to_unsigned(0, 3);
signal REG_COMB_state : unsigned(1 downto 0);
signal REG_COMB_header : eth_header_t;
signal REG_COMB_counter : unsigned(2 downto 0);

-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- BIN_OP_EQ[eth_8_h_l50_c6_a859]
signal BIN_OP_EQ_eth_8_h_l50_c6_a859_left : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l50_c6_a859_right : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l50_c6_a859_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l50_c3_f535]
signal counter_MUX_eth_8_h_l50_c3_f535_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l50_c3_f535_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l50_c3_f535_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l50_c3_f535_return_output : unsigned(2 downto 0);

-- header_MUX[eth_8_h_l50_c3_f535]
signal header_MUX_eth_8_h_l50_c3_f535_cond : unsigned(0 downto 0);
signal header_MUX_eth_8_h_l50_c3_f535_iftrue : eth_header_t;
signal header_MUX_eth_8_h_l50_c3_f535_iffalse : eth_header_t;
signal header_MUX_eth_8_h_l50_c3_f535_return_output : eth_header_t;

-- state_MUX[eth_8_h_l50_c3_f535]
signal state_MUX_eth_8_h_l50_c3_f535_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l50_c3_f535_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l50_c3_f535_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l50_c3_f535_return_output : unsigned(1 downto 0);

-- o_overflow_MUX[eth_8_h_l50_c3_f535]
signal o_overflow_MUX_eth_8_h_l50_c3_f535_cond : unsigned(0 downto 0);
signal o_overflow_MUX_eth_8_h_l50_c3_f535_iftrue : unsigned(0 downto 0);
signal o_overflow_MUX_eth_8_h_l50_c3_f535_iffalse : unsigned(0 downto 0);
signal o_overflow_MUX_eth_8_h_l50_c3_f535_return_output : unsigned(0 downto 0);

-- o_frame_data_payload_MUX[eth_8_h_l50_c3_f535]
signal o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_cond : unsigned(0 downto 0);
signal o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_iftrue : axis8_t;
signal o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_iffalse : axis8_t;
signal o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_return_output : axis8_t;

-- o_frame_valid_MUX[eth_8_h_l50_c3_f535]
signal o_frame_valid_MUX_eth_8_h_l50_c3_f535_cond : unsigned(0 downto 0);
signal o_frame_valid_MUX_eth_8_h_l50_c3_f535_iftrue : unsigned(0 downto 0);
signal o_frame_valid_MUX_eth_8_h_l50_c3_f535_iffalse : unsigned(0 downto 0);
signal o_frame_valid_MUX_eth_8_h_l50_c3_f535_return_output : unsigned(0 downto 0);

-- o_frame_data_start_of_payload_MUX[eth_8_h_l50_c3_f535]
signal o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_cond : unsigned(0 downto 0);
signal o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_iftrue : unsigned(0 downto 0);
signal o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_iffalse : unsigned(0 downto 0);
signal o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l51_c5_16b0]
signal counter_MUX_eth_8_h_l51_c5_16b0_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l51_c5_16b0_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l51_c5_16b0_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l51_c5_16b0_return_output : unsigned(2 downto 0);

-- header_dst_mac_MUX[eth_8_h_l51_c5_16b0]
signal header_dst_mac_MUX_eth_8_h_l51_c5_16b0_cond : unsigned(0 downto 0);
signal header_dst_mac_MUX_eth_8_h_l51_c5_16b0_iftrue : unsigned(47 downto 0);
signal header_dst_mac_MUX_eth_8_h_l51_c5_16b0_iffalse : unsigned(47 downto 0);
signal header_dst_mac_MUX_eth_8_h_l51_c5_16b0_return_output : unsigned(47 downto 0);

-- state_MUX[eth_8_h_l51_c5_16b0]
signal state_MUX_eth_8_h_l51_c5_16b0_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l51_c5_16b0_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l51_c5_16b0_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l51_c5_16b0_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[eth_8_h_l53_c10_35cc]
signal BIN_OP_EQ_eth_8_h_l53_c10_35cc_left : unsigned(2 downto 0);
signal BIN_OP_EQ_eth_8_h_l53_c10_35cc_right : unsigned(2 downto 0);
signal BIN_OP_EQ_eth_8_h_l53_c10_35cc_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l53_c7_4673]
signal counter_MUX_eth_8_h_l53_c7_4673_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l53_c7_4673_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l53_c7_4673_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l53_c7_4673_return_output : unsigned(2 downto 0);

-- state_MUX[eth_8_h_l53_c7_4673]
signal state_MUX_eth_8_h_l53_c7_4673_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l53_c7_4673_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l53_c7_4673_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l53_c7_4673_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[eth_8_h_l57_c9_1115]
signal BIN_OP_PLUS_eth_8_h_l57_c9_1115_left : unsigned(2 downto 0);
signal BIN_OP_PLUS_eth_8_h_l57_c9_1115_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_eth_8_h_l57_c9_1115_return_output : unsigned(3 downto 0);

-- BIN_OP_EQ[eth_8_h_l60_c12_56f4]
signal BIN_OP_EQ_eth_8_h_l60_c12_56f4_left : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l60_c12_56f4_right : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l60_c12_56f4_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l60_c9_5ef1]
signal counter_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l60_c9_5ef1_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l60_c9_5ef1_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l60_c9_5ef1_return_output : unsigned(2 downto 0);

-- header_src_mac_MUX[eth_8_h_l60_c9_5ef1]
signal header_src_mac_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
signal header_src_mac_MUX_eth_8_h_l60_c9_5ef1_iftrue : unsigned(47 downto 0);
signal header_src_mac_MUX_eth_8_h_l60_c9_5ef1_iffalse : unsigned(47 downto 0);
signal header_src_mac_MUX_eth_8_h_l60_c9_5ef1_return_output : unsigned(47 downto 0);

-- header_ethertype_MUX[eth_8_h_l60_c9_5ef1]
signal header_ethertype_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
signal header_ethertype_MUX_eth_8_h_l60_c9_5ef1_iftrue : unsigned(15 downto 0);
signal header_ethertype_MUX_eth_8_h_l60_c9_5ef1_iffalse : unsigned(15 downto 0);
signal header_ethertype_MUX_eth_8_h_l60_c9_5ef1_return_output : unsigned(15 downto 0);

-- state_MUX[eth_8_h_l60_c9_5ef1]
signal state_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l60_c9_5ef1_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l60_c9_5ef1_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l60_c9_5ef1_return_output : unsigned(1 downto 0);

-- o_overflow_MUX[eth_8_h_l60_c9_5ef1]
signal o_overflow_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
signal o_overflow_MUX_eth_8_h_l60_c9_5ef1_iftrue : unsigned(0 downto 0);
signal o_overflow_MUX_eth_8_h_l60_c9_5ef1_iffalse : unsigned(0 downto 0);
signal o_overflow_MUX_eth_8_h_l60_c9_5ef1_return_output : unsigned(0 downto 0);

-- o_frame_data_payload_MUX[eth_8_h_l60_c9_5ef1]
signal o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
signal o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_iftrue : axis8_t;
signal o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_iffalse : axis8_t;
signal o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_return_output : axis8_t;

-- o_frame_valid_MUX[eth_8_h_l60_c9_5ef1]
signal o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
signal o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_iftrue : unsigned(0 downto 0);
signal o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_iffalse : unsigned(0 downto 0);
signal o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_return_output : unsigned(0 downto 0);

-- o_frame_data_start_of_payload_MUX[eth_8_h_l60_c9_5ef1]
signal o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
signal o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_iftrue : unsigned(0 downto 0);
signal o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_iffalse : unsigned(0 downto 0);
signal o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l61_c5_c13f]
signal counter_MUX_eth_8_h_l61_c5_c13f_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l61_c5_c13f_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l61_c5_c13f_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l61_c5_c13f_return_output : unsigned(2 downto 0);

-- header_src_mac_MUX[eth_8_h_l61_c5_c13f]
signal header_src_mac_MUX_eth_8_h_l61_c5_c13f_cond : unsigned(0 downto 0);
signal header_src_mac_MUX_eth_8_h_l61_c5_c13f_iftrue : unsigned(47 downto 0);
signal header_src_mac_MUX_eth_8_h_l61_c5_c13f_iffalse : unsigned(47 downto 0);
signal header_src_mac_MUX_eth_8_h_l61_c5_c13f_return_output : unsigned(47 downto 0);

-- state_MUX[eth_8_h_l61_c5_c13f]
signal state_MUX_eth_8_h_l61_c5_c13f_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l61_c5_c13f_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l61_c5_c13f_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l61_c5_c13f_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[eth_8_h_l63_c10_8902]
signal BIN_OP_EQ_eth_8_h_l63_c10_8902_left : unsigned(2 downto 0);
signal BIN_OP_EQ_eth_8_h_l63_c10_8902_right : unsigned(2 downto 0);
signal BIN_OP_EQ_eth_8_h_l63_c10_8902_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l63_c7_b9b4]
signal counter_MUX_eth_8_h_l63_c7_b9b4_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l63_c7_b9b4_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l63_c7_b9b4_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l63_c7_b9b4_return_output : unsigned(2 downto 0);

-- state_MUX[eth_8_h_l63_c7_b9b4]
signal state_MUX_eth_8_h_l63_c7_b9b4_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l63_c7_b9b4_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l63_c7_b9b4_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l63_c7_b9b4_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[eth_8_h_l67_c9_efb0]
signal BIN_OP_PLUS_eth_8_h_l67_c9_efb0_left : unsigned(2 downto 0);
signal BIN_OP_PLUS_eth_8_h_l67_c9_efb0_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_eth_8_h_l67_c9_efb0_return_output : unsigned(3 downto 0);

-- BIN_OP_EQ[eth_8_h_l70_c12_d5ff]
signal BIN_OP_EQ_eth_8_h_l70_c12_d5ff_left : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l70_c12_d5ff_right : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l70_c12_d5ff_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l70_c9_012a]
signal counter_MUX_eth_8_h_l70_c9_012a_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l70_c9_012a_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l70_c9_012a_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l70_c9_012a_return_output : unsigned(2 downto 0);

-- header_ethertype_MUX[eth_8_h_l70_c9_012a]
signal header_ethertype_MUX_eth_8_h_l70_c9_012a_cond : unsigned(0 downto 0);
signal header_ethertype_MUX_eth_8_h_l70_c9_012a_iftrue : unsigned(15 downto 0);
signal header_ethertype_MUX_eth_8_h_l70_c9_012a_iffalse : unsigned(15 downto 0);
signal header_ethertype_MUX_eth_8_h_l70_c9_012a_return_output : unsigned(15 downto 0);

-- state_MUX[eth_8_h_l70_c9_012a]
signal state_MUX_eth_8_h_l70_c9_012a_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l70_c9_012a_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l70_c9_012a_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l70_c9_012a_return_output : unsigned(1 downto 0);

-- o_overflow_MUX[eth_8_h_l70_c9_012a]
signal o_overflow_MUX_eth_8_h_l70_c9_012a_cond : unsigned(0 downto 0);
signal o_overflow_MUX_eth_8_h_l70_c9_012a_iftrue : unsigned(0 downto 0);
signal o_overflow_MUX_eth_8_h_l70_c9_012a_iffalse : unsigned(0 downto 0);
signal o_overflow_MUX_eth_8_h_l70_c9_012a_return_output : unsigned(0 downto 0);

-- o_frame_data_payload_MUX[eth_8_h_l70_c9_012a]
signal o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_cond : unsigned(0 downto 0);
signal o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_iftrue : axis8_t;
signal o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_iffalse : axis8_t;
signal o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_return_output : axis8_t;

-- o_frame_valid_MUX[eth_8_h_l70_c9_012a]
signal o_frame_valid_MUX_eth_8_h_l70_c9_012a_cond : unsigned(0 downto 0);
signal o_frame_valid_MUX_eth_8_h_l70_c9_012a_iftrue : unsigned(0 downto 0);
signal o_frame_valid_MUX_eth_8_h_l70_c9_012a_iffalse : unsigned(0 downto 0);
signal o_frame_valid_MUX_eth_8_h_l70_c9_012a_return_output : unsigned(0 downto 0);

-- o_frame_data_start_of_payload_MUX[eth_8_h_l70_c9_012a]
signal o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_cond : unsigned(0 downto 0);
signal o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_iftrue : unsigned(0 downto 0);
signal o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_iffalse : unsigned(0 downto 0);
signal o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l71_c5_ae50]
signal counter_MUX_eth_8_h_l71_c5_ae50_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l71_c5_ae50_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l71_c5_ae50_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l71_c5_ae50_return_output : unsigned(2 downto 0);

-- header_ethertype_MUX[eth_8_h_l71_c5_ae50]
signal header_ethertype_MUX_eth_8_h_l71_c5_ae50_cond : unsigned(0 downto 0);
signal header_ethertype_MUX_eth_8_h_l71_c5_ae50_iftrue : unsigned(15 downto 0);
signal header_ethertype_MUX_eth_8_h_l71_c5_ae50_iffalse : unsigned(15 downto 0);
signal header_ethertype_MUX_eth_8_h_l71_c5_ae50_return_output : unsigned(15 downto 0);

-- state_MUX[eth_8_h_l71_c5_ae50]
signal state_MUX_eth_8_h_l71_c5_ae50_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l71_c5_ae50_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l71_c5_ae50_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l71_c5_ae50_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[eth_8_h_l73_c10_a057]
signal BIN_OP_EQ_eth_8_h_l73_c10_a057_left : unsigned(2 downto 0);
signal BIN_OP_EQ_eth_8_h_l73_c10_a057_right : unsigned(0 downto 0);
signal BIN_OP_EQ_eth_8_h_l73_c10_a057_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l73_c7_f3c7]
signal counter_MUX_eth_8_h_l73_c7_f3c7_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l73_c7_f3c7_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l73_c7_f3c7_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l73_c7_f3c7_return_output : unsigned(2 downto 0);

-- state_MUX[eth_8_h_l73_c7_f3c7]
signal state_MUX_eth_8_h_l73_c7_f3c7_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l73_c7_f3c7_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l73_c7_f3c7_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l73_c7_f3c7_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[eth_8_h_l77_c9_dc15]
signal BIN_OP_PLUS_eth_8_h_l77_c9_dc15_left : unsigned(2 downto 0);
signal BIN_OP_PLUS_eth_8_h_l77_c9_dc15_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_eth_8_h_l77_c9_dc15_return_output : unsigned(3 downto 0);

-- BIN_OP_EQ[eth_8_h_l82_c11_e225]
signal BIN_OP_EQ_eth_8_h_l82_c11_e225_left : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l82_c11_e225_right : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l82_c11_e225_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l82_c8_74fe]
signal counter_MUX_eth_8_h_l82_c8_74fe_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l82_c8_74fe_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l82_c8_74fe_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l82_c8_74fe_return_output : unsigned(2 downto 0);

-- state_MUX[eth_8_h_l82_c8_74fe]
signal state_MUX_eth_8_h_l82_c8_74fe_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l82_c8_74fe_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l82_c8_74fe_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l82_c8_74fe_return_output : unsigned(1 downto 0);

-- o_overflow_MUX[eth_8_h_l82_c8_74fe]
signal o_overflow_MUX_eth_8_h_l82_c8_74fe_cond : unsigned(0 downto 0);
signal o_overflow_MUX_eth_8_h_l82_c8_74fe_iftrue : unsigned(0 downto 0);
signal o_overflow_MUX_eth_8_h_l82_c8_74fe_iffalse : unsigned(0 downto 0);
signal o_overflow_MUX_eth_8_h_l82_c8_74fe_return_output : unsigned(0 downto 0);

-- o_frame_data_payload_MUX[eth_8_h_l82_c8_74fe]
signal o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_cond : unsigned(0 downto 0);
signal o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_iftrue : axis8_t;
signal o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_iffalse : axis8_t;
signal o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_return_output : axis8_t;

-- o_frame_valid_MUX[eth_8_h_l82_c8_74fe]
signal o_frame_valid_MUX_eth_8_h_l82_c8_74fe_cond : unsigned(0 downto 0);
signal o_frame_valid_MUX_eth_8_h_l82_c8_74fe_iftrue : unsigned(0 downto 0);
signal o_frame_valid_MUX_eth_8_h_l82_c8_74fe_iffalse : unsigned(0 downto 0);
signal o_frame_valid_MUX_eth_8_h_l82_c8_74fe_return_output : unsigned(0 downto 0);

-- o_frame_data_start_of_payload_MUX[eth_8_h_l82_c8_74fe]
signal o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_cond : unsigned(0 downto 0);
signal o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_iftrue : unsigned(0 downto 0);
signal o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_iffalse : unsigned(0 downto 0);
signal o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[eth_8_h_l85_c37_7ca6]
signal BIN_OP_EQ_eth_8_h_l85_c37_7ca6_left : unsigned(2 downto 0);
signal BIN_OP_EQ_eth_8_h_l85_c37_7ca6_right : unsigned(0 downto 0);
signal BIN_OP_EQ_eth_8_h_l85_c37_7ca6_return_output : unsigned(0 downto 0);

-- UNARY_OP_NOT[eth_8_h_l88_c35_e40c]
signal UNARY_OP_NOT_eth_8_h_l88_c35_e40c_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_eth_8_h_l88_c35_e40c_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[eth_8_h_l88_c18_9160]
signal BIN_OP_AND_eth_8_h_l88_c18_9160_left : unsigned(0 downto 0);
signal BIN_OP_AND_eth_8_h_l88_c18_9160_right : unsigned(0 downto 0);
signal BIN_OP_AND_eth_8_h_l88_c18_9160_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l89_c5_3ee4]
signal counter_MUX_eth_8_h_l89_c5_3ee4_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l89_c5_3ee4_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l89_c5_3ee4_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l89_c5_3ee4_return_output : unsigned(2 downto 0);

-- state_MUX[eth_8_h_l89_c5_3ee4]
signal state_MUX_eth_8_h_l89_c5_3ee4_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l89_c5_3ee4_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l89_c5_3ee4_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l89_c5_3ee4_return_output : unsigned(1 downto 0);

-- counter_MUX[eth_8_h_l90_c7_41fc]
signal counter_MUX_eth_8_h_l90_c7_41fc_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l90_c7_41fc_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l90_c7_41fc_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l90_c7_41fc_return_output : unsigned(2 downto 0);

-- BIN_OP_PLUS[eth_8_h_l91_c9_1e4e]
signal BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_left : unsigned(2 downto 0);
signal BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_return_output : unsigned(3 downto 0);

-- counter_MUX[eth_8_h_l93_c7_9bdc]
signal counter_MUX_eth_8_h_l93_c7_9bdc_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l93_c7_9bdc_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l93_c7_9bdc_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l93_c7_9bdc_return_output : unsigned(2 downto 0);

-- state_MUX[eth_8_h_l93_c7_9bdc]
signal state_MUX_eth_8_h_l93_c7_9bdc_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l93_c7_9bdc_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l93_c7_9bdc_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l93_c7_9bdc_return_output : unsigned(1 downto 0);

function uint40_uint8( x : unsigned;
 y : unsigned) return unsigned is

  --variable x : unsigned(39 downto 0);
  --variable y : unsigned(7 downto 0);
  variable return_output : unsigned(47 downto 0);

begin

    return_output := unsigned(std_logic_vector(x)) & unsigned(std_logic_vector(y));
    return return_output;

end function;

function CONST_REF_RD_eth_header_t_eth_header_t_e484( ref_toks_0 : eth_header_t;
 ref_toks_1 : unsigned) return eth_header_t is
 
  variable base : eth_header_t; 
  variable return_output : eth_header_t;
begin
      base := ref_toks_0;
      base.dst_mac := ref_toks_1;

      return_output := base;
      return return_output; 
end function;

function uint8_uint8( x : unsigned;
 y : unsigned) return unsigned is

  --variable x : unsigned(7 downto 0);
  --variable y : unsigned(7 downto 0);
  variable return_output : unsigned(15 downto 0);

begin

    return_output := unsigned(std_logic_vector(x)) & unsigned(std_logic_vector(y));
    return return_output;

end function;

function CONST_REF_RD_uint1_t_eth_8_rx_t_frame_data_payload_tlast_30a7( ref_toks_0 : axis8_t) return unsigned is
 
  variable base : eth_8_rx_t; 
  variable return_output : unsigned(0 downto 0);
begin
      base.frame.data.payload := ref_toks_0;

      return_output := base.frame.data.payload.tlast;
      return return_output; 
end function;

function CONST_REF_RD_eth_header_t_eth_header_t_488d( ref_toks_0 : eth_header_t;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned) return eth_header_t is
 
  variable base : eth_header_t; 
  variable return_output : eth_header_t;
begin
      base := ref_toks_0;
      base.src_mac := ref_toks_1;
      base.ethertype := ref_toks_2;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_eth_8_rx_t_eth_8_rx_t_7b39( ref_toks_0 : eth_header_t;
 ref_toks_1 : unsigned;
 ref_toks_2 : axis8_t;
 ref_toks_3 : unsigned;
 ref_toks_4 : unsigned) return eth_8_rx_t is
 
  variable base : eth_8_rx_t; 
  variable return_output : eth_8_rx_t;
begin
      base.frame.data.header := ref_toks_0;
      base.overflow := ref_toks_1;
      base.frame.data.payload := ref_toks_2;
      base.frame.valid := ref_toks_3;
      base.frame.data.start_of_payload := ref_toks_4;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_eth_8_h_l50_c6_a859 : 0 clocks latency
BIN_OP_EQ_eth_8_h_l50_c6_a859 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l50_c6_a859_left,
BIN_OP_EQ_eth_8_h_l50_c6_a859_right,
BIN_OP_EQ_eth_8_h_l50_c6_a859_return_output);

-- counter_MUX_eth_8_h_l50_c3_f535 : 0 clocks latency
counter_MUX_eth_8_h_l50_c3_f535 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l50_c3_f535_cond,
counter_MUX_eth_8_h_l50_c3_f535_iftrue,
counter_MUX_eth_8_h_l50_c3_f535_iffalse,
counter_MUX_eth_8_h_l50_c3_f535_return_output);

-- header_MUX_eth_8_h_l50_c3_f535 : 0 clocks latency
header_MUX_eth_8_h_l50_c3_f535 : entity work.MUX_uint1_t_eth_header_t_eth_header_t_0CLK_de264c78 port map (
header_MUX_eth_8_h_l50_c3_f535_cond,
header_MUX_eth_8_h_l50_c3_f535_iftrue,
header_MUX_eth_8_h_l50_c3_f535_iffalse,
header_MUX_eth_8_h_l50_c3_f535_return_output);

-- state_MUX_eth_8_h_l50_c3_f535 : 0 clocks latency
state_MUX_eth_8_h_l50_c3_f535 : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l50_c3_f535_cond,
state_MUX_eth_8_h_l50_c3_f535_iftrue,
state_MUX_eth_8_h_l50_c3_f535_iffalse,
state_MUX_eth_8_h_l50_c3_f535_return_output);

-- o_overflow_MUX_eth_8_h_l50_c3_f535 : 0 clocks latency
o_overflow_MUX_eth_8_h_l50_c3_f535 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_overflow_MUX_eth_8_h_l50_c3_f535_cond,
o_overflow_MUX_eth_8_h_l50_c3_f535_iftrue,
o_overflow_MUX_eth_8_h_l50_c3_f535_iffalse,
o_overflow_MUX_eth_8_h_l50_c3_f535_return_output);

-- o_frame_data_payload_MUX_eth_8_h_l50_c3_f535 : 0 clocks latency
o_frame_data_payload_MUX_eth_8_h_l50_c3_f535 : entity work.MUX_uint1_t_axis8_t_axis8_t_0CLK_de264c78 port map (
o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_cond,
o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_iftrue,
o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_iffalse,
o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_return_output);

-- o_frame_valid_MUX_eth_8_h_l50_c3_f535 : 0 clocks latency
o_frame_valid_MUX_eth_8_h_l50_c3_f535 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_frame_valid_MUX_eth_8_h_l50_c3_f535_cond,
o_frame_valid_MUX_eth_8_h_l50_c3_f535_iftrue,
o_frame_valid_MUX_eth_8_h_l50_c3_f535_iffalse,
o_frame_valid_MUX_eth_8_h_l50_c3_f535_return_output);

-- o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535 : 0 clocks latency
o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_cond,
o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_iftrue,
o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_iffalse,
o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_return_output);

-- counter_MUX_eth_8_h_l51_c5_16b0 : 0 clocks latency
counter_MUX_eth_8_h_l51_c5_16b0 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l51_c5_16b0_cond,
counter_MUX_eth_8_h_l51_c5_16b0_iftrue,
counter_MUX_eth_8_h_l51_c5_16b0_iffalse,
counter_MUX_eth_8_h_l51_c5_16b0_return_output);

-- header_dst_mac_MUX_eth_8_h_l51_c5_16b0 : 0 clocks latency
header_dst_mac_MUX_eth_8_h_l51_c5_16b0 : entity work.MUX_uint1_t_uint48_t_uint48_t_0CLK_de264c78 port map (
header_dst_mac_MUX_eth_8_h_l51_c5_16b0_cond,
header_dst_mac_MUX_eth_8_h_l51_c5_16b0_iftrue,
header_dst_mac_MUX_eth_8_h_l51_c5_16b0_iffalse,
header_dst_mac_MUX_eth_8_h_l51_c5_16b0_return_output);

-- state_MUX_eth_8_h_l51_c5_16b0 : 0 clocks latency
state_MUX_eth_8_h_l51_c5_16b0 : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l51_c5_16b0_cond,
state_MUX_eth_8_h_l51_c5_16b0_iftrue,
state_MUX_eth_8_h_l51_c5_16b0_iffalse,
state_MUX_eth_8_h_l51_c5_16b0_return_output);

-- BIN_OP_EQ_eth_8_h_l53_c10_35cc : 0 clocks latency
BIN_OP_EQ_eth_8_h_l53_c10_35cc : entity work.BIN_OP_EQ_uint3_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l53_c10_35cc_left,
BIN_OP_EQ_eth_8_h_l53_c10_35cc_right,
BIN_OP_EQ_eth_8_h_l53_c10_35cc_return_output);

-- counter_MUX_eth_8_h_l53_c7_4673 : 0 clocks latency
counter_MUX_eth_8_h_l53_c7_4673 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l53_c7_4673_cond,
counter_MUX_eth_8_h_l53_c7_4673_iftrue,
counter_MUX_eth_8_h_l53_c7_4673_iffalse,
counter_MUX_eth_8_h_l53_c7_4673_return_output);

-- state_MUX_eth_8_h_l53_c7_4673 : 0 clocks latency
state_MUX_eth_8_h_l53_c7_4673 : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l53_c7_4673_cond,
state_MUX_eth_8_h_l53_c7_4673_iftrue,
state_MUX_eth_8_h_l53_c7_4673_iffalse,
state_MUX_eth_8_h_l53_c7_4673_return_output);

-- BIN_OP_PLUS_eth_8_h_l57_c9_1115 : 0 clocks latency
BIN_OP_PLUS_eth_8_h_l57_c9_1115 : entity work.BIN_OP_PLUS_uint3_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_eth_8_h_l57_c9_1115_left,
BIN_OP_PLUS_eth_8_h_l57_c9_1115_right,
BIN_OP_PLUS_eth_8_h_l57_c9_1115_return_output);

-- BIN_OP_EQ_eth_8_h_l60_c12_56f4 : 0 clocks latency
BIN_OP_EQ_eth_8_h_l60_c12_56f4 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l60_c12_56f4_left,
BIN_OP_EQ_eth_8_h_l60_c12_56f4_right,
BIN_OP_EQ_eth_8_h_l60_c12_56f4_return_output);

-- counter_MUX_eth_8_h_l60_c9_5ef1 : 0 clocks latency
counter_MUX_eth_8_h_l60_c9_5ef1 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l60_c9_5ef1_cond,
counter_MUX_eth_8_h_l60_c9_5ef1_iftrue,
counter_MUX_eth_8_h_l60_c9_5ef1_iffalse,
counter_MUX_eth_8_h_l60_c9_5ef1_return_output);

-- header_src_mac_MUX_eth_8_h_l60_c9_5ef1 : 0 clocks latency
header_src_mac_MUX_eth_8_h_l60_c9_5ef1 : entity work.MUX_uint1_t_uint48_t_uint48_t_0CLK_de264c78 port map (
header_src_mac_MUX_eth_8_h_l60_c9_5ef1_cond,
header_src_mac_MUX_eth_8_h_l60_c9_5ef1_iftrue,
header_src_mac_MUX_eth_8_h_l60_c9_5ef1_iffalse,
header_src_mac_MUX_eth_8_h_l60_c9_5ef1_return_output);

-- header_ethertype_MUX_eth_8_h_l60_c9_5ef1 : 0 clocks latency
header_ethertype_MUX_eth_8_h_l60_c9_5ef1 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
header_ethertype_MUX_eth_8_h_l60_c9_5ef1_cond,
header_ethertype_MUX_eth_8_h_l60_c9_5ef1_iftrue,
header_ethertype_MUX_eth_8_h_l60_c9_5ef1_iffalse,
header_ethertype_MUX_eth_8_h_l60_c9_5ef1_return_output);

-- state_MUX_eth_8_h_l60_c9_5ef1 : 0 clocks latency
state_MUX_eth_8_h_l60_c9_5ef1 : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l60_c9_5ef1_cond,
state_MUX_eth_8_h_l60_c9_5ef1_iftrue,
state_MUX_eth_8_h_l60_c9_5ef1_iffalse,
state_MUX_eth_8_h_l60_c9_5ef1_return_output);

-- o_overflow_MUX_eth_8_h_l60_c9_5ef1 : 0 clocks latency
o_overflow_MUX_eth_8_h_l60_c9_5ef1 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_overflow_MUX_eth_8_h_l60_c9_5ef1_cond,
o_overflow_MUX_eth_8_h_l60_c9_5ef1_iftrue,
o_overflow_MUX_eth_8_h_l60_c9_5ef1_iffalse,
o_overflow_MUX_eth_8_h_l60_c9_5ef1_return_output);

-- o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1 : 0 clocks latency
o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1 : entity work.MUX_uint1_t_axis8_t_axis8_t_0CLK_de264c78 port map (
o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_cond,
o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_iftrue,
o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_iffalse,
o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_return_output);

-- o_frame_valid_MUX_eth_8_h_l60_c9_5ef1 : 0 clocks latency
o_frame_valid_MUX_eth_8_h_l60_c9_5ef1 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_cond,
o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_iftrue,
o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_iffalse,
o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_return_output);

-- o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1 : 0 clocks latency
o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_cond,
o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_iftrue,
o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_iffalse,
o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_return_output);

-- counter_MUX_eth_8_h_l61_c5_c13f : 0 clocks latency
counter_MUX_eth_8_h_l61_c5_c13f : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l61_c5_c13f_cond,
counter_MUX_eth_8_h_l61_c5_c13f_iftrue,
counter_MUX_eth_8_h_l61_c5_c13f_iffalse,
counter_MUX_eth_8_h_l61_c5_c13f_return_output);

-- header_src_mac_MUX_eth_8_h_l61_c5_c13f : 0 clocks latency
header_src_mac_MUX_eth_8_h_l61_c5_c13f : entity work.MUX_uint1_t_uint48_t_uint48_t_0CLK_de264c78 port map (
header_src_mac_MUX_eth_8_h_l61_c5_c13f_cond,
header_src_mac_MUX_eth_8_h_l61_c5_c13f_iftrue,
header_src_mac_MUX_eth_8_h_l61_c5_c13f_iffalse,
header_src_mac_MUX_eth_8_h_l61_c5_c13f_return_output);

-- state_MUX_eth_8_h_l61_c5_c13f : 0 clocks latency
state_MUX_eth_8_h_l61_c5_c13f : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l61_c5_c13f_cond,
state_MUX_eth_8_h_l61_c5_c13f_iftrue,
state_MUX_eth_8_h_l61_c5_c13f_iffalse,
state_MUX_eth_8_h_l61_c5_c13f_return_output);

-- BIN_OP_EQ_eth_8_h_l63_c10_8902 : 0 clocks latency
BIN_OP_EQ_eth_8_h_l63_c10_8902 : entity work.BIN_OP_EQ_uint3_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l63_c10_8902_left,
BIN_OP_EQ_eth_8_h_l63_c10_8902_right,
BIN_OP_EQ_eth_8_h_l63_c10_8902_return_output);

-- counter_MUX_eth_8_h_l63_c7_b9b4 : 0 clocks latency
counter_MUX_eth_8_h_l63_c7_b9b4 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l63_c7_b9b4_cond,
counter_MUX_eth_8_h_l63_c7_b9b4_iftrue,
counter_MUX_eth_8_h_l63_c7_b9b4_iffalse,
counter_MUX_eth_8_h_l63_c7_b9b4_return_output);

-- state_MUX_eth_8_h_l63_c7_b9b4 : 0 clocks latency
state_MUX_eth_8_h_l63_c7_b9b4 : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l63_c7_b9b4_cond,
state_MUX_eth_8_h_l63_c7_b9b4_iftrue,
state_MUX_eth_8_h_l63_c7_b9b4_iffalse,
state_MUX_eth_8_h_l63_c7_b9b4_return_output);

-- BIN_OP_PLUS_eth_8_h_l67_c9_efb0 : 0 clocks latency
BIN_OP_PLUS_eth_8_h_l67_c9_efb0 : entity work.BIN_OP_PLUS_uint3_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_eth_8_h_l67_c9_efb0_left,
BIN_OP_PLUS_eth_8_h_l67_c9_efb0_right,
BIN_OP_PLUS_eth_8_h_l67_c9_efb0_return_output);

-- BIN_OP_EQ_eth_8_h_l70_c12_d5ff : 0 clocks latency
BIN_OP_EQ_eth_8_h_l70_c12_d5ff : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l70_c12_d5ff_left,
BIN_OP_EQ_eth_8_h_l70_c12_d5ff_right,
BIN_OP_EQ_eth_8_h_l70_c12_d5ff_return_output);

-- counter_MUX_eth_8_h_l70_c9_012a : 0 clocks latency
counter_MUX_eth_8_h_l70_c9_012a : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l70_c9_012a_cond,
counter_MUX_eth_8_h_l70_c9_012a_iftrue,
counter_MUX_eth_8_h_l70_c9_012a_iffalse,
counter_MUX_eth_8_h_l70_c9_012a_return_output);

-- header_ethertype_MUX_eth_8_h_l70_c9_012a : 0 clocks latency
header_ethertype_MUX_eth_8_h_l70_c9_012a : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
header_ethertype_MUX_eth_8_h_l70_c9_012a_cond,
header_ethertype_MUX_eth_8_h_l70_c9_012a_iftrue,
header_ethertype_MUX_eth_8_h_l70_c9_012a_iffalse,
header_ethertype_MUX_eth_8_h_l70_c9_012a_return_output);

-- state_MUX_eth_8_h_l70_c9_012a : 0 clocks latency
state_MUX_eth_8_h_l70_c9_012a : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l70_c9_012a_cond,
state_MUX_eth_8_h_l70_c9_012a_iftrue,
state_MUX_eth_8_h_l70_c9_012a_iffalse,
state_MUX_eth_8_h_l70_c9_012a_return_output);

-- o_overflow_MUX_eth_8_h_l70_c9_012a : 0 clocks latency
o_overflow_MUX_eth_8_h_l70_c9_012a : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_overflow_MUX_eth_8_h_l70_c9_012a_cond,
o_overflow_MUX_eth_8_h_l70_c9_012a_iftrue,
o_overflow_MUX_eth_8_h_l70_c9_012a_iffalse,
o_overflow_MUX_eth_8_h_l70_c9_012a_return_output);

-- o_frame_data_payload_MUX_eth_8_h_l70_c9_012a : 0 clocks latency
o_frame_data_payload_MUX_eth_8_h_l70_c9_012a : entity work.MUX_uint1_t_axis8_t_axis8_t_0CLK_de264c78 port map (
o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_cond,
o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_iftrue,
o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_iffalse,
o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_return_output);

-- o_frame_valid_MUX_eth_8_h_l70_c9_012a : 0 clocks latency
o_frame_valid_MUX_eth_8_h_l70_c9_012a : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_frame_valid_MUX_eth_8_h_l70_c9_012a_cond,
o_frame_valid_MUX_eth_8_h_l70_c9_012a_iftrue,
o_frame_valid_MUX_eth_8_h_l70_c9_012a_iffalse,
o_frame_valid_MUX_eth_8_h_l70_c9_012a_return_output);

-- o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a : 0 clocks latency
o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_cond,
o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_iftrue,
o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_iffalse,
o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_return_output);

-- counter_MUX_eth_8_h_l71_c5_ae50 : 0 clocks latency
counter_MUX_eth_8_h_l71_c5_ae50 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l71_c5_ae50_cond,
counter_MUX_eth_8_h_l71_c5_ae50_iftrue,
counter_MUX_eth_8_h_l71_c5_ae50_iffalse,
counter_MUX_eth_8_h_l71_c5_ae50_return_output);

-- header_ethertype_MUX_eth_8_h_l71_c5_ae50 : 0 clocks latency
header_ethertype_MUX_eth_8_h_l71_c5_ae50 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
header_ethertype_MUX_eth_8_h_l71_c5_ae50_cond,
header_ethertype_MUX_eth_8_h_l71_c5_ae50_iftrue,
header_ethertype_MUX_eth_8_h_l71_c5_ae50_iffalse,
header_ethertype_MUX_eth_8_h_l71_c5_ae50_return_output);

-- state_MUX_eth_8_h_l71_c5_ae50 : 0 clocks latency
state_MUX_eth_8_h_l71_c5_ae50 : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l71_c5_ae50_cond,
state_MUX_eth_8_h_l71_c5_ae50_iftrue,
state_MUX_eth_8_h_l71_c5_ae50_iffalse,
state_MUX_eth_8_h_l71_c5_ae50_return_output);

-- BIN_OP_EQ_eth_8_h_l73_c10_a057 : 0 clocks latency
BIN_OP_EQ_eth_8_h_l73_c10_a057 : entity work.BIN_OP_EQ_uint3_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l73_c10_a057_left,
BIN_OP_EQ_eth_8_h_l73_c10_a057_right,
BIN_OP_EQ_eth_8_h_l73_c10_a057_return_output);

-- counter_MUX_eth_8_h_l73_c7_f3c7 : 0 clocks latency
counter_MUX_eth_8_h_l73_c7_f3c7 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l73_c7_f3c7_cond,
counter_MUX_eth_8_h_l73_c7_f3c7_iftrue,
counter_MUX_eth_8_h_l73_c7_f3c7_iffalse,
counter_MUX_eth_8_h_l73_c7_f3c7_return_output);

-- state_MUX_eth_8_h_l73_c7_f3c7 : 0 clocks latency
state_MUX_eth_8_h_l73_c7_f3c7 : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l73_c7_f3c7_cond,
state_MUX_eth_8_h_l73_c7_f3c7_iftrue,
state_MUX_eth_8_h_l73_c7_f3c7_iffalse,
state_MUX_eth_8_h_l73_c7_f3c7_return_output);

-- BIN_OP_PLUS_eth_8_h_l77_c9_dc15 : 0 clocks latency
BIN_OP_PLUS_eth_8_h_l77_c9_dc15 : entity work.BIN_OP_PLUS_uint3_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_eth_8_h_l77_c9_dc15_left,
BIN_OP_PLUS_eth_8_h_l77_c9_dc15_right,
BIN_OP_PLUS_eth_8_h_l77_c9_dc15_return_output);

-- BIN_OP_EQ_eth_8_h_l82_c11_e225 : 0 clocks latency
BIN_OP_EQ_eth_8_h_l82_c11_e225 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l82_c11_e225_left,
BIN_OP_EQ_eth_8_h_l82_c11_e225_right,
BIN_OP_EQ_eth_8_h_l82_c11_e225_return_output);

-- counter_MUX_eth_8_h_l82_c8_74fe : 0 clocks latency
counter_MUX_eth_8_h_l82_c8_74fe : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l82_c8_74fe_cond,
counter_MUX_eth_8_h_l82_c8_74fe_iftrue,
counter_MUX_eth_8_h_l82_c8_74fe_iffalse,
counter_MUX_eth_8_h_l82_c8_74fe_return_output);

-- state_MUX_eth_8_h_l82_c8_74fe : 0 clocks latency
state_MUX_eth_8_h_l82_c8_74fe : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l82_c8_74fe_cond,
state_MUX_eth_8_h_l82_c8_74fe_iftrue,
state_MUX_eth_8_h_l82_c8_74fe_iffalse,
state_MUX_eth_8_h_l82_c8_74fe_return_output);

-- o_overflow_MUX_eth_8_h_l82_c8_74fe : 0 clocks latency
o_overflow_MUX_eth_8_h_l82_c8_74fe : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_overflow_MUX_eth_8_h_l82_c8_74fe_cond,
o_overflow_MUX_eth_8_h_l82_c8_74fe_iftrue,
o_overflow_MUX_eth_8_h_l82_c8_74fe_iffalse,
o_overflow_MUX_eth_8_h_l82_c8_74fe_return_output);

-- o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe : 0 clocks latency
o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe : entity work.MUX_uint1_t_axis8_t_axis8_t_0CLK_de264c78 port map (
o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_cond,
o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_iftrue,
o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_iffalse,
o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_return_output);

-- o_frame_valid_MUX_eth_8_h_l82_c8_74fe : 0 clocks latency
o_frame_valid_MUX_eth_8_h_l82_c8_74fe : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_frame_valid_MUX_eth_8_h_l82_c8_74fe_cond,
o_frame_valid_MUX_eth_8_h_l82_c8_74fe_iftrue,
o_frame_valid_MUX_eth_8_h_l82_c8_74fe_iffalse,
o_frame_valid_MUX_eth_8_h_l82_c8_74fe_return_output);

-- o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe : 0 clocks latency
o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_cond,
o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_iftrue,
o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_iffalse,
o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_return_output);

-- BIN_OP_EQ_eth_8_h_l85_c37_7ca6 : 0 clocks latency
BIN_OP_EQ_eth_8_h_l85_c37_7ca6 : entity work.BIN_OP_EQ_uint3_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l85_c37_7ca6_left,
BIN_OP_EQ_eth_8_h_l85_c37_7ca6_right,
BIN_OP_EQ_eth_8_h_l85_c37_7ca6_return_output);

-- UNARY_OP_NOT_eth_8_h_l88_c35_e40c : 0 clocks latency
UNARY_OP_NOT_eth_8_h_l88_c35_e40c : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_eth_8_h_l88_c35_e40c_expr,
UNARY_OP_NOT_eth_8_h_l88_c35_e40c_return_output);

-- BIN_OP_AND_eth_8_h_l88_c18_9160 : 0 clocks latency
BIN_OP_AND_eth_8_h_l88_c18_9160 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_eth_8_h_l88_c18_9160_left,
BIN_OP_AND_eth_8_h_l88_c18_9160_right,
BIN_OP_AND_eth_8_h_l88_c18_9160_return_output);

-- counter_MUX_eth_8_h_l89_c5_3ee4 : 0 clocks latency
counter_MUX_eth_8_h_l89_c5_3ee4 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l89_c5_3ee4_cond,
counter_MUX_eth_8_h_l89_c5_3ee4_iftrue,
counter_MUX_eth_8_h_l89_c5_3ee4_iffalse,
counter_MUX_eth_8_h_l89_c5_3ee4_return_output);

-- state_MUX_eth_8_h_l89_c5_3ee4 : 0 clocks latency
state_MUX_eth_8_h_l89_c5_3ee4 : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l89_c5_3ee4_cond,
state_MUX_eth_8_h_l89_c5_3ee4_iftrue,
state_MUX_eth_8_h_l89_c5_3ee4_iffalse,
state_MUX_eth_8_h_l89_c5_3ee4_return_output);

-- counter_MUX_eth_8_h_l90_c7_41fc : 0 clocks latency
counter_MUX_eth_8_h_l90_c7_41fc : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l90_c7_41fc_cond,
counter_MUX_eth_8_h_l90_c7_41fc_iftrue,
counter_MUX_eth_8_h_l90_c7_41fc_iffalse,
counter_MUX_eth_8_h_l90_c7_41fc_return_output);

-- BIN_OP_PLUS_eth_8_h_l91_c9_1e4e : 0 clocks latency
BIN_OP_PLUS_eth_8_h_l91_c9_1e4e : entity work.BIN_OP_PLUS_uint3_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_left,
BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_right,
BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_return_output);

-- counter_MUX_eth_8_h_l93_c7_9bdc : 0 clocks latency
counter_MUX_eth_8_h_l93_c7_9bdc : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l93_c7_9bdc_cond,
counter_MUX_eth_8_h_l93_c7_9bdc_iftrue,
counter_MUX_eth_8_h_l93_c7_9bdc_iffalse,
counter_MUX_eth_8_h_l93_c7_9bdc_return_output);

-- state_MUX_eth_8_h_l93_c7_9bdc : 0 clocks latency
state_MUX_eth_8_h_l93_c7_9bdc : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l93_c7_9bdc_cond,
state_MUX_eth_8_h_l93_c7_9bdc_iftrue,
state_MUX_eth_8_h_l93_c7_9bdc_iffalse,
state_MUX_eth_8_h_l93_c7_9bdc_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Inputs
 mac_axis,
 frame_ready,
 -- Registers
 state,
 header,
 counter,
 -- All submodule outputs
 BIN_OP_EQ_eth_8_h_l50_c6_a859_return_output,
 counter_MUX_eth_8_h_l50_c3_f535_return_output,
 header_MUX_eth_8_h_l50_c3_f535_return_output,
 state_MUX_eth_8_h_l50_c3_f535_return_output,
 o_overflow_MUX_eth_8_h_l50_c3_f535_return_output,
 o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_return_output,
 o_frame_valid_MUX_eth_8_h_l50_c3_f535_return_output,
 o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_return_output,
 counter_MUX_eth_8_h_l51_c5_16b0_return_output,
 header_dst_mac_MUX_eth_8_h_l51_c5_16b0_return_output,
 state_MUX_eth_8_h_l51_c5_16b0_return_output,
 BIN_OP_EQ_eth_8_h_l53_c10_35cc_return_output,
 counter_MUX_eth_8_h_l53_c7_4673_return_output,
 state_MUX_eth_8_h_l53_c7_4673_return_output,
 BIN_OP_PLUS_eth_8_h_l57_c9_1115_return_output,
 BIN_OP_EQ_eth_8_h_l60_c12_56f4_return_output,
 counter_MUX_eth_8_h_l60_c9_5ef1_return_output,
 header_src_mac_MUX_eth_8_h_l60_c9_5ef1_return_output,
 header_ethertype_MUX_eth_8_h_l60_c9_5ef1_return_output,
 state_MUX_eth_8_h_l60_c9_5ef1_return_output,
 o_overflow_MUX_eth_8_h_l60_c9_5ef1_return_output,
 o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_return_output,
 o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_return_output,
 o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_return_output,
 counter_MUX_eth_8_h_l61_c5_c13f_return_output,
 header_src_mac_MUX_eth_8_h_l61_c5_c13f_return_output,
 state_MUX_eth_8_h_l61_c5_c13f_return_output,
 BIN_OP_EQ_eth_8_h_l63_c10_8902_return_output,
 counter_MUX_eth_8_h_l63_c7_b9b4_return_output,
 state_MUX_eth_8_h_l63_c7_b9b4_return_output,
 BIN_OP_PLUS_eth_8_h_l67_c9_efb0_return_output,
 BIN_OP_EQ_eth_8_h_l70_c12_d5ff_return_output,
 counter_MUX_eth_8_h_l70_c9_012a_return_output,
 header_ethertype_MUX_eth_8_h_l70_c9_012a_return_output,
 state_MUX_eth_8_h_l70_c9_012a_return_output,
 o_overflow_MUX_eth_8_h_l70_c9_012a_return_output,
 o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_return_output,
 o_frame_valid_MUX_eth_8_h_l70_c9_012a_return_output,
 o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_return_output,
 counter_MUX_eth_8_h_l71_c5_ae50_return_output,
 header_ethertype_MUX_eth_8_h_l71_c5_ae50_return_output,
 state_MUX_eth_8_h_l71_c5_ae50_return_output,
 BIN_OP_EQ_eth_8_h_l73_c10_a057_return_output,
 counter_MUX_eth_8_h_l73_c7_f3c7_return_output,
 state_MUX_eth_8_h_l73_c7_f3c7_return_output,
 BIN_OP_PLUS_eth_8_h_l77_c9_dc15_return_output,
 BIN_OP_EQ_eth_8_h_l82_c11_e225_return_output,
 counter_MUX_eth_8_h_l82_c8_74fe_return_output,
 state_MUX_eth_8_h_l82_c8_74fe_return_output,
 o_overflow_MUX_eth_8_h_l82_c8_74fe_return_output,
 o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_return_output,
 o_frame_valid_MUX_eth_8_h_l82_c8_74fe_return_output,
 o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_return_output,
 BIN_OP_EQ_eth_8_h_l85_c37_7ca6_return_output,
 UNARY_OP_NOT_eth_8_h_l88_c35_e40c_return_output,
 BIN_OP_AND_eth_8_h_l88_c18_9160_return_output,
 counter_MUX_eth_8_h_l89_c5_3ee4_return_output,
 state_MUX_eth_8_h_l89_c5_3ee4_return_output,
 counter_MUX_eth_8_h_l90_c7_41fc_return_output,
 BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_return_output,
 counter_MUX_eth_8_h_l93_c7_9bdc_return_output,
 state_MUX_eth_8_h_l93_c7_9bdc_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : eth_8_rx_t;
 variable VAR_mac_axis : axis8_t_stream_t;
 variable VAR_frame_ready : unsigned(0 downto 0);
 variable VAR_o : eth_8_rx_t;
 variable VAR_BIN_OP_EQ_eth_8_h_l50_c6_a859_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l50_c6_a859_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l50_c6_a859_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l50_c3_f535_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l51_c5_16b0_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l50_c3_f535_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l60_c9_5ef1_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l50_c3_f535_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l50_c3_f535_cond : unsigned(0 downto 0);
 variable VAR_header_MUX_eth_8_h_l50_c3_f535_iftrue : eth_header_t;
 variable VAR_header_TRUE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_e484_eth_8_h_l50_c3_f535_return_output : eth_header_t;
 variable VAR_header_MUX_eth_8_h_l50_c3_f535_iffalse : eth_header_t;
 variable VAR_header_FALSE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_488d_eth_8_h_l50_c3_f535_return_output : eth_header_t;
 variable VAR_header_MUX_eth_8_h_l50_c3_f535_return_output : eth_header_t;
 variable VAR_header_MUX_eth_8_h_l50_c3_f535_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l50_c3_f535_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l51_c5_16b0_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l50_c3_f535_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l60_c9_5ef1_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l50_c3_f535_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l50_c3_f535_cond : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l50_c3_f535_iftrue : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l50_c3_f535_iffalse : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l60_c9_5ef1_return_output : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l50_c3_f535_return_output : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l50_c3_f535_cond : unsigned(0 downto 0);
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_iftrue : axis8_t;
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_iffalse : axis8_t;
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_return_output : axis8_t;
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_return_output : axis8_t;
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_cond : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l50_c3_f535_iftrue : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l50_c3_f535_iffalse : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_return_output : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l50_c3_f535_return_output : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l50_c3_f535_cond : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_iftrue : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_iffalse : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_return_output : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_return_output : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_cond : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l51_c5_16b0_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l53_c7_4673_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l51_c5_16b0_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l51_c5_16b0_cond : unsigned(0 downto 0);
 variable VAR_header_dst_mac_MUX_eth_8_h_l51_c5_16b0_iftrue : unsigned(47 downto 0);
 variable VAR_header_dst_mac_MUX_eth_8_h_l51_c5_16b0_iffalse : unsigned(47 downto 0);
 variable VAR_header_dst_mac_MUX_eth_8_h_l51_c5_16b0_return_output : unsigned(47 downto 0);
 variable VAR_header_dst_mac_MUX_eth_8_h_l51_c5_16b0_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l51_c5_16b0_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l53_c7_4673_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l51_c5_16b0_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l51_c5_16b0_cond : unsigned(0 downto 0);
 variable VAR_uint40_uint8_eth_8_h_l52_c24_8fbc_return_output : unsigned(47 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l53_c10_35cc_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l53_c10_35cc_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l53_c10_35cc_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l53_c7_4673_iftrue : unsigned(2 downto 0);
 variable VAR_counter_eth_8_h_l55_c9_cc99 : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l53_c7_4673_iffalse : unsigned(2 downto 0);
 variable VAR_counter_eth_8_h_l57_c9_d56c : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l53_c7_4673_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l53_c7_4673_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l53_c7_4673_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l53_c7_4673_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l57_c9_1115_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l57_c9_1115_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l57_c9_1115_return_output : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l60_c9_5ef1_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l61_c5_c13f_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l60_c9_5ef1_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l70_c9_012a_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l60_c9_5ef1_iftrue : unsigned(47 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l61_c5_c13f_return_output : unsigned(47 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l60_c9_5ef1_iffalse : unsigned(47 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l60_c9_5ef1_return_output : unsigned(47 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l60_c9_5ef1_iftrue : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l60_c9_5ef1_iffalse : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l70_c9_012a_return_output : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l60_c9_5ef1_return_output : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l60_c9_5ef1_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l61_c5_c13f_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l60_c9_5ef1_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l70_c9_012a_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l60_c9_5ef1_iftrue : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l60_c9_5ef1_iffalse : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l70_c9_012a_return_output : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_iftrue : axis8_t;
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_iffalse : axis8_t;
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_return_output : axis8_t;
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_iftrue : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_iffalse : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l70_c9_012a_return_output : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_iftrue : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_iffalse : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_return_output : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_cond : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l61_c5_c13f_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l63_c7_b9b4_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l61_c5_c13f_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l61_c5_c13f_cond : unsigned(0 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l61_c5_c13f_iftrue : unsigned(47 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l61_c5_c13f_iffalse : unsigned(47 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l61_c5_c13f_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l61_c5_c13f_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l63_c7_b9b4_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l61_c5_c13f_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l61_c5_c13f_cond : unsigned(0 downto 0);
 variable VAR_uint40_uint8_eth_8_h_l62_c24_ccc2_return_output : unsigned(47 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l63_c10_8902_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l63_c10_8902_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l63_c10_8902_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l63_c7_b9b4_iftrue : unsigned(2 downto 0);
 variable VAR_counter_eth_8_h_l65_c9_6f90 : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l63_c7_b9b4_iffalse : unsigned(2 downto 0);
 variable VAR_counter_eth_8_h_l67_c9_0ade : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l63_c7_b9b4_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l63_c7_b9b4_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l63_c7_b9b4_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l63_c7_b9b4_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l67_c9_efb0_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l67_c9_efb0_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l67_c9_efb0_return_output : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l70_c12_d5ff_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l70_c12_d5ff_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l70_c12_d5ff_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l70_c9_012a_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l71_c5_ae50_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l70_c9_012a_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l82_c8_74fe_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l70_c9_012a_cond : unsigned(0 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l70_c9_012a_iftrue : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l71_c5_ae50_return_output : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l70_c9_012a_iffalse : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l70_c9_012a_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l70_c9_012a_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l71_c5_ae50_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l70_c9_012a_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l82_c8_74fe_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l70_c9_012a_cond : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l70_c9_012a_iftrue : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l70_c9_012a_iffalse : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l82_c8_74fe_return_output : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l70_c9_012a_cond : unsigned(0 downto 0);
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_iftrue : axis8_t;
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_iffalse : axis8_t;
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_return_output : axis8_t;
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_cond : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l70_c9_012a_iftrue : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l70_c9_012a_iffalse : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l82_c8_74fe_return_output : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l70_c9_012a_cond : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_iftrue : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_iffalse : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_return_output : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_cond : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l71_c5_ae50_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l73_c7_f3c7_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l71_c5_ae50_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l71_c5_ae50_cond : unsigned(0 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l71_c5_ae50_iftrue : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l71_c5_ae50_iffalse : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l71_c5_ae50_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l71_c5_ae50_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l73_c7_f3c7_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l71_c5_ae50_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l71_c5_ae50_cond : unsigned(0 downto 0);
 variable VAR_uint8_uint8_eth_8_h_l72_c26_6b94_return_output : unsigned(15 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l73_c10_a057_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l73_c10_a057_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l73_c10_a057_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l73_c7_f3c7_iftrue : unsigned(2 downto 0);
 variable VAR_counter_eth_8_h_l75_c9_bc90 : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l73_c7_f3c7_iffalse : unsigned(2 downto 0);
 variable VAR_counter_eth_8_h_l77_c9_1d26 : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l73_c7_f3c7_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l73_c7_f3c7_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l73_c7_f3c7_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l73_c7_f3c7_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l77_c9_dc15_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l77_c9_dc15_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l77_c9_dc15_return_output : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l82_c11_e225_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l82_c11_e225_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l82_c11_e225_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l82_c8_74fe_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l89_c5_3ee4_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l82_c8_74fe_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l82_c8_74fe_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l82_c8_74fe_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l89_c5_3ee4_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l82_c8_74fe_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l82_c8_74fe_cond : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l82_c8_74fe_iftrue : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l82_c8_74fe_iffalse : unsigned(0 downto 0);
 variable VAR_o_overflow_MUX_eth_8_h_l82_c8_74fe_cond : unsigned(0 downto 0);
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_iftrue : axis8_t;
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_iffalse : axis8_t;
 variable VAR_o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_cond : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l82_c8_74fe_iftrue : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l82_c8_74fe_iffalse : unsigned(0 downto 0);
 variable VAR_o_frame_valid_MUX_eth_8_h_l82_c8_74fe_cond : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_iftrue : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_iffalse : unsigned(0 downto 0);
 variable VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_axis8_t_axis8_t_stream_t_data_d41d_eth_8_h_l84_c28_3a9e_return_output : axis8_t;
 variable VAR_BIN_OP_EQ_eth_8_h_l85_c37_7ca6_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l85_c37_7ca6_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l85_c37_7ca6_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_eth_8_h_l88_c18_9160_left : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_eth_8_h_l88_c35_e40c_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_eth_8_h_l88_c35_e40c_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_eth_8_h_l88_c18_9160_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_eth_8_h_l88_c18_9160_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l89_c5_3ee4_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l93_c7_9bdc_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l89_c5_3ee4_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l89_c5_3ee4_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l89_c5_3ee4_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l93_c7_9bdc_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l89_c5_3ee4_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l89_c5_3ee4_cond : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l90_c7_41fc_iftrue : unsigned(2 downto 0);
 variable VAR_counter_eth_8_h_l91_c9_a9ba : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l90_c7_41fc_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l90_c7_41fc_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l90_c7_41fc_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_return_output : unsigned(3 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_eth_8_rx_t_frame_data_payload_tlast_30a7_eth_8_h_l93_c10_e9be_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l93_c7_9bdc_iftrue : unsigned(2 downto 0);
 variable VAR_counter_eth_8_h_l95_c9_e1cf : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l93_c7_9bdc_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l93_c7_9bdc_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l93_c7_9bdc_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l93_c7_9bdc_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l93_c7_9bdc_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_eth_8_rx_t_eth_8_rx_t_7b39_eth_8_h_l99_c10_ab17_return_output : eth_8_rx_t;
 variable VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint48_t_eth_header_t_dst_mac_d41d_eth_8_h_l51_l52_DUPLICATE_58ee_return_output : unsigned(47 downto 0);
 variable VAR_CONST_REF_RD_uint8_t_axis8_t_stream_t_data_tdata_0_d41d_eth_8_h_l52_l62_l72_DUPLICATE_85f6_return_output : unsigned(7 downto 0);
 variable VAR_CONST_REF_RD_axis8_t_eth_8_rx_t_frame_data_payload_d41d_eth_8_h_l60_l70_l50_l82_DUPLICATE_c56c_return_output : axis8_t;
 variable VAR_CONST_REF_RD_uint48_t_eth_header_t_src_mac_d41d_eth_8_h_l61_l60_l62_DUPLICATE_df80_return_output : unsigned(47 downto 0);
 variable VAR_CONST_REF_RD_uint16_t_eth_header_t_ethertype_d41d_eth_8_h_l71_l60_l70_l72_DUPLICATE_cb33_return_output : unsigned(15 downto 0);
 -- State registers comb logic variables
variable REG_VAR_state : unsigned(1 downto 0);
variable REG_VAR_header : eth_header_t;
variable REG_VAR_counter : unsigned(2 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_state := state;
  REG_VAR_header := header;
  REG_VAR_counter := counter;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_state_MUX_eth_8_h_l53_c7_4673_iftrue := unsigned(eth8_state_t_to_slv(SRC_MAC));
     VAR_BIN_OP_EQ_eth_8_h_l50_c6_a859_right := unsigned(eth8_state_t_to_slv(IDLE_DST_MAC));
     VAR_BIN_OP_EQ_eth_8_h_l85_c37_7ca6_right := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_eth_8_h_l70_c12_d5ff_right := unsigned(eth8_state_t_to_slv(LEN_TYPE));
     VAR_counter_eth_8_h_l55_c9_cc99 := resize(to_unsigned(0, 1), 3);
     VAR_counter_MUX_eth_8_h_l53_c7_4673_iftrue := VAR_counter_eth_8_h_l55_c9_cc99;
     VAR_BIN_OP_EQ_eth_8_h_l73_c10_a057_right := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_eth_8_h_l57_c9_1115_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_eth_8_h_l53_c10_35cc_right := to_unsigned(5, 3);
     VAR_o_frame_valid_MUX_eth_8_h_l82_c8_74fe_iffalse := to_unsigned(0, 1);
     VAR_o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_iftrue := to_unsigned(0, 1);
     VAR_o_frame_valid_MUX_eth_8_h_l50_c3_f535_iftrue := to_unsigned(0, 1);
     VAR_o_frame_valid_MUX_eth_8_h_l70_c9_012a_iftrue := to_unsigned(0, 1);
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_iftrue := to_unsigned(0, 1);
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_iftrue := to_unsigned(0, 1);
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_iffalse := to_unsigned(0, 1);
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_iftrue := to_unsigned(0, 1);
     VAR_o_overflow_MUX_eth_8_h_l50_c3_f535_iftrue := to_unsigned(0, 1);
     VAR_o_overflow_MUX_eth_8_h_l70_c9_012a_iftrue := to_unsigned(0, 1);
     VAR_o_overflow_MUX_eth_8_h_l60_c9_5ef1_iftrue := to_unsigned(0, 1);
     VAR_o_overflow_MUX_eth_8_h_l82_c8_74fe_iffalse := to_unsigned(0, 1);
     VAR_state_MUX_eth_8_h_l73_c7_f3c7_iftrue := unsigned(eth8_state_t_to_slv(PAYLOAD));
     VAR_state_MUX_eth_8_h_l63_c7_b9b4_iftrue := unsigned(eth8_state_t_to_slv(LEN_TYPE));
     VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_right := unsigned(eth8_state_t_to_slv(SRC_MAC));
     VAR_state_MUX_eth_8_h_l93_c7_9bdc_iftrue := unsigned(eth8_state_t_to_slv(IDLE_DST_MAC));
     VAR_counter_eth_8_h_l65_c9_6f90 := resize(to_unsigned(0, 1), 3);
     VAR_counter_MUX_eth_8_h_l63_c7_b9b4_iftrue := VAR_counter_eth_8_h_l65_c9_6f90;
     VAR_BIN_OP_EQ_eth_8_h_l82_c11_e225_right := unsigned(eth8_state_t_to_slv(PAYLOAD));
     VAR_BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_right := to_unsigned(1, 1);
     VAR_counter_eth_8_h_l75_c9_bc90 := resize(to_unsigned(0, 1), 3);
     VAR_counter_MUX_eth_8_h_l73_c7_f3c7_iftrue := VAR_counter_eth_8_h_l75_c9_bc90;
     VAR_BIN_OP_EQ_eth_8_h_l63_c10_8902_right := to_unsigned(5, 3);
     VAR_BIN_OP_PLUS_eth_8_h_l67_c9_efb0_right := to_unsigned(1, 1);
     VAR_counter_eth_8_h_l95_c9_e1cf := resize(to_unsigned(0, 1), 3);
     VAR_counter_MUX_eth_8_h_l93_c7_9bdc_iftrue := VAR_counter_eth_8_h_l95_c9_e1cf;
     VAR_BIN_OP_PLUS_eth_8_h_l77_c9_dc15_right := to_unsigned(1, 1);
     -- CONST_REF_RD_axis8_t_eth_8_rx_t_frame_data_payload_d41d_eth_8_h_l60_l70_l50_l82_DUPLICATE_c56c LATENCY=0
     VAR_CONST_REF_RD_axis8_t_eth_8_rx_t_frame_data_payload_d41d_eth_8_h_l60_l70_l50_l82_DUPLICATE_c56c_return_output := eth_8_rx_t_NULL.frame.data.payload;

     -- Submodule level 1
     VAR_o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_iftrue := VAR_CONST_REF_RD_axis8_t_eth_8_rx_t_frame_data_payload_d41d_eth_8_h_l60_l70_l50_l82_DUPLICATE_c56c_return_output;
     VAR_o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_iffalse := VAR_CONST_REF_RD_axis8_t_eth_8_rx_t_frame_data_payload_d41d_eth_8_h_l60_l70_l50_l82_DUPLICATE_c56c_return_output;
     VAR_o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_iftrue := VAR_CONST_REF_RD_axis8_t_eth_8_rx_t_frame_data_payload_d41d_eth_8_h_l60_l70_l50_l82_DUPLICATE_c56c_return_output;
     VAR_o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_iftrue := VAR_CONST_REF_RD_axis8_t_eth_8_rx_t_frame_data_payload_d41d_eth_8_h_l60_l70_l50_l82_DUPLICATE_c56c_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;
     -- Mux in inputs
     VAR_mac_axis := mac_axis;
     VAR_frame_ready := frame_ready;

     -- Submodule level 0
     VAR_BIN_OP_EQ_eth_8_h_l53_c10_35cc_left := counter;
     VAR_BIN_OP_EQ_eth_8_h_l63_c10_8902_left := counter;
     VAR_BIN_OP_EQ_eth_8_h_l73_c10_a057_left := counter;
     VAR_BIN_OP_EQ_eth_8_h_l85_c37_7ca6_left := counter;
     VAR_BIN_OP_PLUS_eth_8_h_l57_c9_1115_left := counter;
     VAR_BIN_OP_PLUS_eth_8_h_l67_c9_efb0_left := counter;
     VAR_BIN_OP_PLUS_eth_8_h_l77_c9_dc15_left := counter;
     VAR_BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_left := counter;
     VAR_counter_MUX_eth_8_h_l51_c5_16b0_iffalse := counter;
     VAR_counter_MUX_eth_8_h_l61_c5_c13f_iffalse := counter;
     VAR_counter_MUX_eth_8_h_l71_c5_ae50_iffalse := counter;
     VAR_counter_MUX_eth_8_h_l82_c8_74fe_iffalse := counter;
     VAR_counter_MUX_eth_8_h_l89_c5_3ee4_iffalse := counter;
     VAR_counter_MUX_eth_8_h_l90_c7_41fc_iffalse := counter;
     VAR_UNARY_OP_NOT_eth_8_h_l88_c35_e40c_expr := VAR_frame_ready;
     VAR_BIN_OP_EQ_eth_8_h_l50_c6_a859_left := state;
     VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_left := state;
     VAR_BIN_OP_EQ_eth_8_h_l70_c12_d5ff_left := state;
     VAR_BIN_OP_EQ_eth_8_h_l82_c11_e225_left := state;
     VAR_state_MUX_eth_8_h_l51_c5_16b0_iffalse := state;
     VAR_state_MUX_eth_8_h_l53_c7_4673_iffalse := state;
     VAR_state_MUX_eth_8_h_l61_c5_c13f_iffalse := state;
     VAR_state_MUX_eth_8_h_l63_c7_b9b4_iffalse := state;
     VAR_state_MUX_eth_8_h_l71_c5_ae50_iffalse := state;
     VAR_state_MUX_eth_8_h_l73_c7_f3c7_iffalse := state;
     VAR_state_MUX_eth_8_h_l82_c8_74fe_iffalse := state;
     VAR_state_MUX_eth_8_h_l89_c5_3ee4_iffalse := state;
     VAR_state_MUX_eth_8_h_l93_c7_9bdc_iffalse := state;
     -- BIN_OP_EQ[eth_8_h_l70_c12_d5ff] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l70_c12_d5ff_left <= VAR_BIN_OP_EQ_eth_8_h_l70_c12_d5ff_left;
     BIN_OP_EQ_eth_8_h_l70_c12_d5ff_right <= VAR_BIN_OP_EQ_eth_8_h_l70_c12_d5ff_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l70_c12_d5ff_return_output := BIN_OP_EQ_eth_8_h_l70_c12_d5ff_return_output;

     -- BIN_OP_EQ[eth_8_h_l60_c12_56f4] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l60_c12_56f4_left <= VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_left;
     BIN_OP_EQ_eth_8_h_l60_c12_56f4_right <= VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_return_output := BIN_OP_EQ_eth_8_h_l60_c12_56f4_return_output;

     -- BIN_OP_EQ[eth_8_h_l63_c10_8902] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l63_c10_8902_left <= VAR_BIN_OP_EQ_eth_8_h_l63_c10_8902_left;
     BIN_OP_EQ_eth_8_h_l63_c10_8902_right <= VAR_BIN_OP_EQ_eth_8_h_l63_c10_8902_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l63_c10_8902_return_output := BIN_OP_EQ_eth_8_h_l63_c10_8902_return_output;

     -- BIN_OP_EQ[eth_8_h_l82_c11_e225] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l82_c11_e225_left <= VAR_BIN_OP_EQ_eth_8_h_l82_c11_e225_left;
     BIN_OP_EQ_eth_8_h_l82_c11_e225_right <= VAR_BIN_OP_EQ_eth_8_h_l82_c11_e225_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l82_c11_e225_return_output := BIN_OP_EQ_eth_8_h_l82_c11_e225_return_output;

     -- BIN_OP_EQ[eth_8_h_l73_c10_a057] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l73_c10_a057_left <= VAR_BIN_OP_EQ_eth_8_h_l73_c10_a057_left;
     BIN_OP_EQ_eth_8_h_l73_c10_a057_right <= VAR_BIN_OP_EQ_eth_8_h_l73_c10_a057_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l73_c10_a057_return_output := BIN_OP_EQ_eth_8_h_l73_c10_a057_return_output;

     -- BIN_OP_PLUS[eth_8_h_l57_c9_1115] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_eth_8_h_l57_c9_1115_left <= VAR_BIN_OP_PLUS_eth_8_h_l57_c9_1115_left;
     BIN_OP_PLUS_eth_8_h_l57_c9_1115_right <= VAR_BIN_OP_PLUS_eth_8_h_l57_c9_1115_right;
     -- Outputs
     VAR_BIN_OP_PLUS_eth_8_h_l57_c9_1115_return_output := BIN_OP_PLUS_eth_8_h_l57_c9_1115_return_output;

     -- CONST_REF_RD_uint48_t_eth_header_t_src_mac_d41d_eth_8_h_l61_l60_l62_DUPLICATE_df80 LATENCY=0
     VAR_CONST_REF_RD_uint48_t_eth_header_t_src_mac_d41d_eth_8_h_l61_l60_l62_DUPLICATE_df80_return_output := header.src_mac;

     -- BIN_OP_PLUS[eth_8_h_l67_c9_efb0] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_eth_8_h_l67_c9_efb0_left <= VAR_BIN_OP_PLUS_eth_8_h_l67_c9_efb0_left;
     BIN_OP_PLUS_eth_8_h_l67_c9_efb0_right <= VAR_BIN_OP_PLUS_eth_8_h_l67_c9_efb0_right;
     -- Outputs
     VAR_BIN_OP_PLUS_eth_8_h_l67_c9_efb0_return_output := BIN_OP_PLUS_eth_8_h_l67_c9_efb0_return_output;

     -- BIN_OP_EQ[eth_8_h_l85_c37_7ca6] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l85_c37_7ca6_left <= VAR_BIN_OP_EQ_eth_8_h_l85_c37_7ca6_left;
     BIN_OP_EQ_eth_8_h_l85_c37_7ca6_right <= VAR_BIN_OP_EQ_eth_8_h_l85_c37_7ca6_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l85_c37_7ca6_return_output := BIN_OP_EQ_eth_8_h_l85_c37_7ca6_return_output;

     -- BIN_OP_PLUS[eth_8_h_l77_c9_dc15] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_eth_8_h_l77_c9_dc15_left <= VAR_BIN_OP_PLUS_eth_8_h_l77_c9_dc15_left;
     BIN_OP_PLUS_eth_8_h_l77_c9_dc15_right <= VAR_BIN_OP_PLUS_eth_8_h_l77_c9_dc15_right;
     -- Outputs
     VAR_BIN_OP_PLUS_eth_8_h_l77_c9_dc15_return_output := BIN_OP_PLUS_eth_8_h_l77_c9_dc15_return_output;

     -- CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4_return_output := VAR_mac_axis.valid;

     -- UNARY_OP_NOT[eth_8_h_l88_c35_e40c] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_eth_8_h_l88_c35_e40c_expr <= VAR_UNARY_OP_NOT_eth_8_h_l88_c35_e40c_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_eth_8_h_l88_c35_e40c_return_output := UNARY_OP_NOT_eth_8_h_l88_c35_e40c_return_output;

     -- BIN_OP_EQ[eth_8_h_l53_c10_35cc] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l53_c10_35cc_left <= VAR_BIN_OP_EQ_eth_8_h_l53_c10_35cc_left;
     BIN_OP_EQ_eth_8_h_l53_c10_35cc_right <= VAR_BIN_OP_EQ_eth_8_h_l53_c10_35cc_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l53_c10_35cc_return_output := BIN_OP_EQ_eth_8_h_l53_c10_35cc_return_output;

     -- BIN_OP_PLUS[eth_8_h_l91_c9_1e4e] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_left <= VAR_BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_left;
     BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_right <= VAR_BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_right;
     -- Outputs
     VAR_BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_return_output := BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_return_output;

     -- CONST_REF_RD_axis8_t_axis8_t_stream_t_data_d41d[eth_8_h_l84_c28_3a9e] LATENCY=0
     VAR_CONST_REF_RD_axis8_t_axis8_t_stream_t_data_d41d_eth_8_h_l84_c28_3a9e_return_output := VAR_mac_axis.data;

     -- BIN_OP_EQ[eth_8_h_l50_c6_a859] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l50_c6_a859_left <= VAR_BIN_OP_EQ_eth_8_h_l50_c6_a859_left;
     BIN_OP_EQ_eth_8_h_l50_c6_a859_right <= VAR_BIN_OP_EQ_eth_8_h_l50_c6_a859_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l50_c6_a859_return_output := BIN_OP_EQ_eth_8_h_l50_c6_a859_return_output;

     -- CONST_REF_RD_uint16_t_eth_header_t_ethertype_d41d_eth_8_h_l71_l60_l70_l72_DUPLICATE_cb33 LATENCY=0
     VAR_CONST_REF_RD_uint16_t_eth_header_t_ethertype_d41d_eth_8_h_l71_l60_l70_l72_DUPLICATE_cb33_return_output := header.ethertype;

     -- CONST_REF_RD_uint48_t_eth_header_t_dst_mac_d41d_eth_8_h_l51_l52_DUPLICATE_58ee LATENCY=0
     VAR_CONST_REF_RD_uint48_t_eth_header_t_dst_mac_d41d_eth_8_h_l51_l52_DUPLICATE_58ee_return_output := header.dst_mac;

     -- CONST_REF_RD_uint8_t_axis8_t_stream_t_data_tdata_0_d41d_eth_8_h_l52_l62_l72_DUPLICATE_85f6 LATENCY=0
     VAR_CONST_REF_RD_uint8_t_axis8_t_stream_t_data_tdata_0_d41d_eth_8_h_l52_l62_l72_DUPLICATE_85f6_return_output := VAR_mac_axis.data.tdata(0);

     -- Submodule level 1
     VAR_counter_MUX_eth_8_h_l50_c3_f535_cond := VAR_BIN_OP_EQ_eth_8_h_l50_c6_a859_return_output;
     VAR_header_MUX_eth_8_h_l50_c3_f535_cond := VAR_BIN_OP_EQ_eth_8_h_l50_c6_a859_return_output;
     VAR_o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_cond := VAR_BIN_OP_EQ_eth_8_h_l50_c6_a859_return_output;
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_cond := VAR_BIN_OP_EQ_eth_8_h_l50_c6_a859_return_output;
     VAR_o_frame_valid_MUX_eth_8_h_l50_c3_f535_cond := VAR_BIN_OP_EQ_eth_8_h_l50_c6_a859_return_output;
     VAR_o_overflow_MUX_eth_8_h_l50_c3_f535_cond := VAR_BIN_OP_EQ_eth_8_h_l50_c6_a859_return_output;
     VAR_state_MUX_eth_8_h_l50_c3_f535_cond := VAR_BIN_OP_EQ_eth_8_h_l50_c6_a859_return_output;
     VAR_counter_MUX_eth_8_h_l53_c7_4673_cond := VAR_BIN_OP_EQ_eth_8_h_l53_c10_35cc_return_output;
     VAR_state_MUX_eth_8_h_l53_c7_4673_cond := VAR_BIN_OP_EQ_eth_8_h_l53_c10_35cc_return_output;
     VAR_counter_MUX_eth_8_h_l60_c9_5ef1_cond := VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l60_c9_5ef1_cond := VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_return_output;
     VAR_header_src_mac_MUX_eth_8_h_l60_c9_5ef1_cond := VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_return_output;
     VAR_o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_cond := VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_return_output;
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_cond := VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_return_output;
     VAR_o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_cond := VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_return_output;
     VAR_o_overflow_MUX_eth_8_h_l60_c9_5ef1_cond := VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_return_output;
     VAR_state_MUX_eth_8_h_l60_c9_5ef1_cond := VAR_BIN_OP_EQ_eth_8_h_l60_c12_56f4_return_output;
     VAR_counter_MUX_eth_8_h_l63_c7_b9b4_cond := VAR_BIN_OP_EQ_eth_8_h_l63_c10_8902_return_output;
     VAR_state_MUX_eth_8_h_l63_c7_b9b4_cond := VAR_BIN_OP_EQ_eth_8_h_l63_c10_8902_return_output;
     VAR_counter_MUX_eth_8_h_l70_c9_012a_cond := VAR_BIN_OP_EQ_eth_8_h_l70_c12_d5ff_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l70_c9_012a_cond := VAR_BIN_OP_EQ_eth_8_h_l70_c12_d5ff_return_output;
     VAR_o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_cond := VAR_BIN_OP_EQ_eth_8_h_l70_c12_d5ff_return_output;
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_cond := VAR_BIN_OP_EQ_eth_8_h_l70_c12_d5ff_return_output;
     VAR_o_frame_valid_MUX_eth_8_h_l70_c9_012a_cond := VAR_BIN_OP_EQ_eth_8_h_l70_c12_d5ff_return_output;
     VAR_o_overflow_MUX_eth_8_h_l70_c9_012a_cond := VAR_BIN_OP_EQ_eth_8_h_l70_c12_d5ff_return_output;
     VAR_state_MUX_eth_8_h_l70_c9_012a_cond := VAR_BIN_OP_EQ_eth_8_h_l70_c12_d5ff_return_output;
     VAR_counter_MUX_eth_8_h_l73_c7_f3c7_cond := VAR_BIN_OP_EQ_eth_8_h_l73_c10_a057_return_output;
     VAR_state_MUX_eth_8_h_l73_c7_f3c7_cond := VAR_BIN_OP_EQ_eth_8_h_l73_c10_a057_return_output;
     VAR_counter_MUX_eth_8_h_l82_c8_74fe_cond := VAR_BIN_OP_EQ_eth_8_h_l82_c11_e225_return_output;
     VAR_o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_cond := VAR_BIN_OP_EQ_eth_8_h_l82_c11_e225_return_output;
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_cond := VAR_BIN_OP_EQ_eth_8_h_l82_c11_e225_return_output;
     VAR_o_frame_valid_MUX_eth_8_h_l82_c8_74fe_cond := VAR_BIN_OP_EQ_eth_8_h_l82_c11_e225_return_output;
     VAR_o_overflow_MUX_eth_8_h_l82_c8_74fe_cond := VAR_BIN_OP_EQ_eth_8_h_l82_c11_e225_return_output;
     VAR_state_MUX_eth_8_h_l82_c8_74fe_cond := VAR_BIN_OP_EQ_eth_8_h_l82_c11_e225_return_output;
     VAR_counter_MUX_eth_8_h_l90_c7_41fc_cond := VAR_BIN_OP_EQ_eth_8_h_l85_c37_7ca6_return_output;
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_iftrue := VAR_BIN_OP_EQ_eth_8_h_l85_c37_7ca6_return_output;
     VAR_counter_eth_8_h_l57_c9_d56c := resize(VAR_BIN_OP_PLUS_eth_8_h_l57_c9_1115_return_output, 3);
     VAR_counter_eth_8_h_l67_c9_0ade := resize(VAR_BIN_OP_PLUS_eth_8_h_l67_c9_efb0_return_output, 3);
     VAR_counter_eth_8_h_l77_c9_1d26 := resize(VAR_BIN_OP_PLUS_eth_8_h_l77_c9_dc15_return_output, 3);
     VAR_counter_eth_8_h_l91_c9_a9ba := resize(VAR_BIN_OP_PLUS_eth_8_h_l91_c9_1e4e_return_output, 3);
     VAR_o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_iftrue := VAR_CONST_REF_RD_axis8_t_axis8_t_stream_t_data_d41d_eth_8_h_l84_c28_3a9e_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l60_c9_5ef1_iftrue := VAR_CONST_REF_RD_uint16_t_eth_header_t_ethertype_d41d_eth_8_h_l71_l60_l70_l72_DUPLICATE_cb33_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l70_c9_012a_iffalse := VAR_CONST_REF_RD_uint16_t_eth_header_t_ethertype_d41d_eth_8_h_l71_l60_l70_l72_DUPLICATE_cb33_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l71_c5_ae50_iffalse := VAR_CONST_REF_RD_uint16_t_eth_header_t_ethertype_d41d_eth_8_h_l71_l60_l70_l72_DUPLICATE_cb33_return_output;
     VAR_BIN_OP_AND_eth_8_h_l88_c18_9160_left := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4_return_output;
     VAR_counter_MUX_eth_8_h_l51_c5_16b0_cond := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4_return_output;
     VAR_counter_MUX_eth_8_h_l61_c5_c13f_cond := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4_return_output;
     VAR_counter_MUX_eth_8_h_l71_c5_ae50_cond := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4_return_output;
     VAR_counter_MUX_eth_8_h_l89_c5_3ee4_cond := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4_return_output;
     VAR_header_dst_mac_MUX_eth_8_h_l51_c5_16b0_cond := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l71_c5_ae50_cond := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4_return_output;
     VAR_header_src_mac_MUX_eth_8_h_l61_c5_c13f_cond := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4_return_output;
     VAR_o_frame_valid_MUX_eth_8_h_l82_c8_74fe_iftrue := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4_return_output;
     VAR_state_MUX_eth_8_h_l51_c5_16b0_cond := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4_return_output;
     VAR_state_MUX_eth_8_h_l61_c5_c13f_cond := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4_return_output;
     VAR_state_MUX_eth_8_h_l71_c5_ae50_cond := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4_return_output;
     VAR_state_MUX_eth_8_h_l89_c5_3ee4_cond := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_eth_8_h_l61_l51_l71_l86_DUPLICATE_1cd4_return_output;
     VAR_header_dst_mac_MUX_eth_8_h_l51_c5_16b0_iffalse := VAR_CONST_REF_RD_uint48_t_eth_header_t_dst_mac_d41d_eth_8_h_l51_l52_DUPLICATE_58ee_return_output;
     VAR_header_src_mac_MUX_eth_8_h_l60_c9_5ef1_iffalse := VAR_CONST_REF_RD_uint48_t_eth_header_t_src_mac_d41d_eth_8_h_l61_l60_l62_DUPLICATE_df80_return_output;
     VAR_header_src_mac_MUX_eth_8_h_l61_c5_c13f_iffalse := VAR_CONST_REF_RD_uint48_t_eth_header_t_src_mac_d41d_eth_8_h_l61_l60_l62_DUPLICATE_df80_return_output;
     VAR_BIN_OP_AND_eth_8_h_l88_c18_9160_right := VAR_UNARY_OP_NOT_eth_8_h_l88_c35_e40c_return_output;
     VAR_counter_MUX_eth_8_h_l53_c7_4673_iffalse := VAR_counter_eth_8_h_l57_c9_d56c;
     VAR_counter_MUX_eth_8_h_l63_c7_b9b4_iffalse := VAR_counter_eth_8_h_l67_c9_0ade;
     VAR_counter_MUX_eth_8_h_l73_c7_f3c7_iffalse := VAR_counter_eth_8_h_l77_c9_1d26;
     VAR_counter_MUX_eth_8_h_l90_c7_41fc_iftrue := VAR_counter_eth_8_h_l91_c9_a9ba;
     -- counter_MUX[eth_8_h_l53_c7_4673] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l53_c7_4673_cond <= VAR_counter_MUX_eth_8_h_l53_c7_4673_cond;
     counter_MUX_eth_8_h_l53_c7_4673_iftrue <= VAR_counter_MUX_eth_8_h_l53_c7_4673_iftrue;
     counter_MUX_eth_8_h_l53_c7_4673_iffalse <= VAR_counter_MUX_eth_8_h_l53_c7_4673_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l53_c7_4673_return_output := counter_MUX_eth_8_h_l53_c7_4673_return_output;

     -- state_MUX[eth_8_h_l63_c7_b9b4] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l63_c7_b9b4_cond <= VAR_state_MUX_eth_8_h_l63_c7_b9b4_cond;
     state_MUX_eth_8_h_l63_c7_b9b4_iftrue <= VAR_state_MUX_eth_8_h_l63_c7_b9b4_iftrue;
     state_MUX_eth_8_h_l63_c7_b9b4_iffalse <= VAR_state_MUX_eth_8_h_l63_c7_b9b4_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l63_c7_b9b4_return_output := state_MUX_eth_8_h_l63_c7_b9b4_return_output;

     -- state_MUX[eth_8_h_l73_c7_f3c7] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l73_c7_f3c7_cond <= VAR_state_MUX_eth_8_h_l73_c7_f3c7_cond;
     state_MUX_eth_8_h_l73_c7_f3c7_iftrue <= VAR_state_MUX_eth_8_h_l73_c7_f3c7_iftrue;
     state_MUX_eth_8_h_l73_c7_f3c7_iffalse <= VAR_state_MUX_eth_8_h_l73_c7_f3c7_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l73_c7_f3c7_return_output := state_MUX_eth_8_h_l73_c7_f3c7_return_output;

     -- counter_MUX[eth_8_h_l73_c7_f3c7] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l73_c7_f3c7_cond <= VAR_counter_MUX_eth_8_h_l73_c7_f3c7_cond;
     counter_MUX_eth_8_h_l73_c7_f3c7_iftrue <= VAR_counter_MUX_eth_8_h_l73_c7_f3c7_iftrue;
     counter_MUX_eth_8_h_l73_c7_f3c7_iffalse <= VAR_counter_MUX_eth_8_h_l73_c7_f3c7_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l73_c7_f3c7_return_output := counter_MUX_eth_8_h_l73_c7_f3c7_return_output;

     -- o_frame_valid_MUX[eth_8_h_l82_c8_74fe] LATENCY=0
     -- Inputs
     o_frame_valid_MUX_eth_8_h_l82_c8_74fe_cond <= VAR_o_frame_valid_MUX_eth_8_h_l82_c8_74fe_cond;
     o_frame_valid_MUX_eth_8_h_l82_c8_74fe_iftrue <= VAR_o_frame_valid_MUX_eth_8_h_l82_c8_74fe_iftrue;
     o_frame_valid_MUX_eth_8_h_l82_c8_74fe_iffalse <= VAR_o_frame_valid_MUX_eth_8_h_l82_c8_74fe_iffalse;
     -- Outputs
     VAR_o_frame_valid_MUX_eth_8_h_l82_c8_74fe_return_output := o_frame_valid_MUX_eth_8_h_l82_c8_74fe_return_output;

     -- uint40_uint8[eth_8_h_l52_c24_8fbc] LATENCY=0
     VAR_uint40_uint8_eth_8_h_l52_c24_8fbc_return_output := uint40_uint8(
     resize(VAR_CONST_REF_RD_uint48_t_eth_header_t_dst_mac_d41d_eth_8_h_l51_l52_DUPLICATE_58ee_return_output, 40),
     VAR_CONST_REF_RD_uint8_t_axis8_t_stream_t_data_tdata_0_d41d_eth_8_h_l52_l62_l72_DUPLICATE_85f6_return_output);

     -- uint8_uint8[eth_8_h_l72_c26_6b94] LATENCY=0
     VAR_uint8_uint8_eth_8_h_l72_c26_6b94_return_output := uint8_uint8(
     resize(VAR_CONST_REF_RD_uint16_t_eth_header_t_ethertype_d41d_eth_8_h_l71_l60_l70_l72_DUPLICATE_cb33_return_output, 8),
     VAR_CONST_REF_RD_uint8_t_axis8_t_stream_t_data_tdata_0_d41d_eth_8_h_l52_l62_l72_DUPLICATE_85f6_return_output);

     -- uint40_uint8[eth_8_h_l62_c24_ccc2] LATENCY=0
     VAR_uint40_uint8_eth_8_h_l62_c24_ccc2_return_output := uint40_uint8(
     resize(VAR_CONST_REF_RD_uint48_t_eth_header_t_src_mac_d41d_eth_8_h_l61_l60_l62_DUPLICATE_df80_return_output, 40),
     VAR_CONST_REF_RD_uint8_t_axis8_t_stream_t_data_tdata_0_d41d_eth_8_h_l52_l62_l72_DUPLICATE_85f6_return_output);

     -- o_frame_data_payload_MUX[eth_8_h_l82_c8_74fe] LATENCY=0
     -- Inputs
     o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_cond <= VAR_o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_cond;
     o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_iftrue <= VAR_o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_iftrue;
     o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_iffalse <= VAR_o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_iffalse;
     -- Outputs
     VAR_o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_return_output := o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_return_output;

     -- counter_MUX[eth_8_h_l63_c7_b9b4] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l63_c7_b9b4_cond <= VAR_counter_MUX_eth_8_h_l63_c7_b9b4_cond;
     counter_MUX_eth_8_h_l63_c7_b9b4_iftrue <= VAR_counter_MUX_eth_8_h_l63_c7_b9b4_iftrue;
     counter_MUX_eth_8_h_l63_c7_b9b4_iffalse <= VAR_counter_MUX_eth_8_h_l63_c7_b9b4_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l63_c7_b9b4_return_output := counter_MUX_eth_8_h_l63_c7_b9b4_return_output;

     -- counter_MUX[eth_8_h_l90_c7_41fc] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l90_c7_41fc_cond <= VAR_counter_MUX_eth_8_h_l90_c7_41fc_cond;
     counter_MUX_eth_8_h_l90_c7_41fc_iftrue <= VAR_counter_MUX_eth_8_h_l90_c7_41fc_iftrue;
     counter_MUX_eth_8_h_l90_c7_41fc_iffalse <= VAR_counter_MUX_eth_8_h_l90_c7_41fc_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l90_c7_41fc_return_output := counter_MUX_eth_8_h_l90_c7_41fc_return_output;

     -- o_frame_data_start_of_payload_MUX[eth_8_h_l82_c8_74fe] LATENCY=0
     -- Inputs
     o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_cond <= VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_cond;
     o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_iftrue <= VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_iftrue;
     o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_iffalse <= VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_iffalse;
     -- Outputs
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_return_output := o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_return_output;

     -- CONST_REF_RD_uint1_t_eth_8_rx_t_frame_data_payload_tlast_30a7[eth_8_h_l93_c10_e9be] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_eth_8_rx_t_frame_data_payload_tlast_30a7_eth_8_h_l93_c10_e9be_return_output := CONST_REF_RD_uint1_t_eth_8_rx_t_frame_data_payload_tlast_30a7(
     VAR_CONST_REF_RD_axis8_t_axis8_t_stream_t_data_d41d_eth_8_h_l84_c28_3a9e_return_output);

     -- state_MUX[eth_8_h_l53_c7_4673] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l53_c7_4673_cond <= VAR_state_MUX_eth_8_h_l53_c7_4673_cond;
     state_MUX_eth_8_h_l53_c7_4673_iftrue <= VAR_state_MUX_eth_8_h_l53_c7_4673_iftrue;
     state_MUX_eth_8_h_l53_c7_4673_iffalse <= VAR_state_MUX_eth_8_h_l53_c7_4673_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l53_c7_4673_return_output := state_MUX_eth_8_h_l53_c7_4673_return_output;

     -- BIN_OP_AND[eth_8_h_l88_c18_9160] LATENCY=0
     -- Inputs
     BIN_OP_AND_eth_8_h_l88_c18_9160_left <= VAR_BIN_OP_AND_eth_8_h_l88_c18_9160_left;
     BIN_OP_AND_eth_8_h_l88_c18_9160_right <= VAR_BIN_OP_AND_eth_8_h_l88_c18_9160_right;
     -- Outputs
     VAR_BIN_OP_AND_eth_8_h_l88_c18_9160_return_output := BIN_OP_AND_eth_8_h_l88_c18_9160_return_output;

     -- Submodule level 2
     VAR_o_overflow_MUX_eth_8_h_l82_c8_74fe_iftrue := VAR_BIN_OP_AND_eth_8_h_l88_c18_9160_return_output;
     VAR_counter_MUX_eth_8_h_l93_c7_9bdc_cond := VAR_CONST_REF_RD_uint1_t_eth_8_rx_t_frame_data_payload_tlast_30a7_eth_8_h_l93_c10_e9be_return_output;
     VAR_state_MUX_eth_8_h_l93_c7_9bdc_cond := VAR_CONST_REF_RD_uint1_t_eth_8_rx_t_frame_data_payload_tlast_30a7_eth_8_h_l93_c10_e9be_return_output;
     VAR_counter_MUX_eth_8_h_l51_c5_16b0_iftrue := VAR_counter_MUX_eth_8_h_l53_c7_4673_return_output;
     VAR_counter_MUX_eth_8_h_l61_c5_c13f_iftrue := VAR_counter_MUX_eth_8_h_l63_c7_b9b4_return_output;
     VAR_counter_MUX_eth_8_h_l71_c5_ae50_iftrue := VAR_counter_MUX_eth_8_h_l73_c7_f3c7_return_output;
     VAR_counter_MUX_eth_8_h_l93_c7_9bdc_iffalse := VAR_counter_MUX_eth_8_h_l90_c7_41fc_return_output;
     VAR_o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_iffalse := VAR_o_frame_data_payload_MUX_eth_8_h_l82_c8_74fe_return_output;
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_iffalse := VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l82_c8_74fe_return_output;
     VAR_o_frame_valid_MUX_eth_8_h_l70_c9_012a_iffalse := VAR_o_frame_valid_MUX_eth_8_h_l82_c8_74fe_return_output;
     VAR_state_MUX_eth_8_h_l51_c5_16b0_iftrue := VAR_state_MUX_eth_8_h_l53_c7_4673_return_output;
     VAR_state_MUX_eth_8_h_l61_c5_c13f_iftrue := VAR_state_MUX_eth_8_h_l63_c7_b9b4_return_output;
     VAR_state_MUX_eth_8_h_l71_c5_ae50_iftrue := VAR_state_MUX_eth_8_h_l73_c7_f3c7_return_output;
     VAR_header_dst_mac_MUX_eth_8_h_l51_c5_16b0_iftrue := VAR_uint40_uint8_eth_8_h_l52_c24_8fbc_return_output;
     VAR_header_src_mac_MUX_eth_8_h_l61_c5_c13f_iftrue := VAR_uint40_uint8_eth_8_h_l62_c24_ccc2_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l71_c5_ae50_iftrue := VAR_uint8_uint8_eth_8_h_l72_c26_6b94_return_output;
     -- o_frame_data_payload_MUX[eth_8_h_l70_c9_012a] LATENCY=0
     -- Inputs
     o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_cond <= VAR_o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_cond;
     o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_iftrue <= VAR_o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_iftrue;
     o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_iffalse <= VAR_o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_iffalse;
     -- Outputs
     VAR_o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_return_output := o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_return_output;

     -- header_dst_mac_MUX[eth_8_h_l51_c5_16b0] LATENCY=0
     -- Inputs
     header_dst_mac_MUX_eth_8_h_l51_c5_16b0_cond <= VAR_header_dst_mac_MUX_eth_8_h_l51_c5_16b0_cond;
     header_dst_mac_MUX_eth_8_h_l51_c5_16b0_iftrue <= VAR_header_dst_mac_MUX_eth_8_h_l51_c5_16b0_iftrue;
     header_dst_mac_MUX_eth_8_h_l51_c5_16b0_iffalse <= VAR_header_dst_mac_MUX_eth_8_h_l51_c5_16b0_iffalse;
     -- Outputs
     VAR_header_dst_mac_MUX_eth_8_h_l51_c5_16b0_return_output := header_dst_mac_MUX_eth_8_h_l51_c5_16b0_return_output;

     -- counter_MUX[eth_8_h_l51_c5_16b0] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l51_c5_16b0_cond <= VAR_counter_MUX_eth_8_h_l51_c5_16b0_cond;
     counter_MUX_eth_8_h_l51_c5_16b0_iftrue <= VAR_counter_MUX_eth_8_h_l51_c5_16b0_iftrue;
     counter_MUX_eth_8_h_l51_c5_16b0_iffalse <= VAR_counter_MUX_eth_8_h_l51_c5_16b0_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l51_c5_16b0_return_output := counter_MUX_eth_8_h_l51_c5_16b0_return_output;

     -- state_MUX[eth_8_h_l71_c5_ae50] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l71_c5_ae50_cond <= VAR_state_MUX_eth_8_h_l71_c5_ae50_cond;
     state_MUX_eth_8_h_l71_c5_ae50_iftrue <= VAR_state_MUX_eth_8_h_l71_c5_ae50_iftrue;
     state_MUX_eth_8_h_l71_c5_ae50_iffalse <= VAR_state_MUX_eth_8_h_l71_c5_ae50_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l71_c5_ae50_return_output := state_MUX_eth_8_h_l71_c5_ae50_return_output;

     -- header_src_mac_MUX[eth_8_h_l61_c5_c13f] LATENCY=0
     -- Inputs
     header_src_mac_MUX_eth_8_h_l61_c5_c13f_cond <= VAR_header_src_mac_MUX_eth_8_h_l61_c5_c13f_cond;
     header_src_mac_MUX_eth_8_h_l61_c5_c13f_iftrue <= VAR_header_src_mac_MUX_eth_8_h_l61_c5_c13f_iftrue;
     header_src_mac_MUX_eth_8_h_l61_c5_c13f_iffalse <= VAR_header_src_mac_MUX_eth_8_h_l61_c5_c13f_iffalse;
     -- Outputs
     VAR_header_src_mac_MUX_eth_8_h_l61_c5_c13f_return_output := header_src_mac_MUX_eth_8_h_l61_c5_c13f_return_output;

     -- counter_MUX[eth_8_h_l93_c7_9bdc] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l93_c7_9bdc_cond <= VAR_counter_MUX_eth_8_h_l93_c7_9bdc_cond;
     counter_MUX_eth_8_h_l93_c7_9bdc_iftrue <= VAR_counter_MUX_eth_8_h_l93_c7_9bdc_iftrue;
     counter_MUX_eth_8_h_l93_c7_9bdc_iffalse <= VAR_counter_MUX_eth_8_h_l93_c7_9bdc_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l93_c7_9bdc_return_output := counter_MUX_eth_8_h_l93_c7_9bdc_return_output;

     -- header_ethertype_MUX[eth_8_h_l71_c5_ae50] LATENCY=0
     -- Inputs
     header_ethertype_MUX_eth_8_h_l71_c5_ae50_cond <= VAR_header_ethertype_MUX_eth_8_h_l71_c5_ae50_cond;
     header_ethertype_MUX_eth_8_h_l71_c5_ae50_iftrue <= VAR_header_ethertype_MUX_eth_8_h_l71_c5_ae50_iftrue;
     header_ethertype_MUX_eth_8_h_l71_c5_ae50_iffalse <= VAR_header_ethertype_MUX_eth_8_h_l71_c5_ae50_iffalse;
     -- Outputs
     VAR_header_ethertype_MUX_eth_8_h_l71_c5_ae50_return_output := header_ethertype_MUX_eth_8_h_l71_c5_ae50_return_output;

     -- o_frame_data_start_of_payload_MUX[eth_8_h_l70_c9_012a] LATENCY=0
     -- Inputs
     o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_cond <= VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_cond;
     o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_iftrue <= VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_iftrue;
     o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_iffalse <= VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_iffalse;
     -- Outputs
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_return_output := o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_return_output;

     -- counter_MUX[eth_8_h_l71_c5_ae50] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l71_c5_ae50_cond <= VAR_counter_MUX_eth_8_h_l71_c5_ae50_cond;
     counter_MUX_eth_8_h_l71_c5_ae50_iftrue <= VAR_counter_MUX_eth_8_h_l71_c5_ae50_iftrue;
     counter_MUX_eth_8_h_l71_c5_ae50_iffalse <= VAR_counter_MUX_eth_8_h_l71_c5_ae50_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l71_c5_ae50_return_output := counter_MUX_eth_8_h_l71_c5_ae50_return_output;

     -- state_MUX[eth_8_h_l61_c5_c13f] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l61_c5_c13f_cond <= VAR_state_MUX_eth_8_h_l61_c5_c13f_cond;
     state_MUX_eth_8_h_l61_c5_c13f_iftrue <= VAR_state_MUX_eth_8_h_l61_c5_c13f_iftrue;
     state_MUX_eth_8_h_l61_c5_c13f_iffalse <= VAR_state_MUX_eth_8_h_l61_c5_c13f_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l61_c5_c13f_return_output := state_MUX_eth_8_h_l61_c5_c13f_return_output;

     -- o_overflow_MUX[eth_8_h_l82_c8_74fe] LATENCY=0
     -- Inputs
     o_overflow_MUX_eth_8_h_l82_c8_74fe_cond <= VAR_o_overflow_MUX_eth_8_h_l82_c8_74fe_cond;
     o_overflow_MUX_eth_8_h_l82_c8_74fe_iftrue <= VAR_o_overflow_MUX_eth_8_h_l82_c8_74fe_iftrue;
     o_overflow_MUX_eth_8_h_l82_c8_74fe_iffalse <= VAR_o_overflow_MUX_eth_8_h_l82_c8_74fe_iffalse;
     -- Outputs
     VAR_o_overflow_MUX_eth_8_h_l82_c8_74fe_return_output := o_overflow_MUX_eth_8_h_l82_c8_74fe_return_output;

     -- o_frame_valid_MUX[eth_8_h_l70_c9_012a] LATENCY=0
     -- Inputs
     o_frame_valid_MUX_eth_8_h_l70_c9_012a_cond <= VAR_o_frame_valid_MUX_eth_8_h_l70_c9_012a_cond;
     o_frame_valid_MUX_eth_8_h_l70_c9_012a_iftrue <= VAR_o_frame_valid_MUX_eth_8_h_l70_c9_012a_iftrue;
     o_frame_valid_MUX_eth_8_h_l70_c9_012a_iffalse <= VAR_o_frame_valid_MUX_eth_8_h_l70_c9_012a_iffalse;
     -- Outputs
     VAR_o_frame_valid_MUX_eth_8_h_l70_c9_012a_return_output := o_frame_valid_MUX_eth_8_h_l70_c9_012a_return_output;

     -- state_MUX[eth_8_h_l51_c5_16b0] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l51_c5_16b0_cond <= VAR_state_MUX_eth_8_h_l51_c5_16b0_cond;
     state_MUX_eth_8_h_l51_c5_16b0_iftrue <= VAR_state_MUX_eth_8_h_l51_c5_16b0_iftrue;
     state_MUX_eth_8_h_l51_c5_16b0_iffalse <= VAR_state_MUX_eth_8_h_l51_c5_16b0_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l51_c5_16b0_return_output := state_MUX_eth_8_h_l51_c5_16b0_return_output;

     -- counter_MUX[eth_8_h_l61_c5_c13f] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l61_c5_c13f_cond <= VAR_counter_MUX_eth_8_h_l61_c5_c13f_cond;
     counter_MUX_eth_8_h_l61_c5_c13f_iftrue <= VAR_counter_MUX_eth_8_h_l61_c5_c13f_iftrue;
     counter_MUX_eth_8_h_l61_c5_c13f_iffalse <= VAR_counter_MUX_eth_8_h_l61_c5_c13f_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l61_c5_c13f_return_output := counter_MUX_eth_8_h_l61_c5_c13f_return_output;

     -- state_MUX[eth_8_h_l93_c7_9bdc] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l93_c7_9bdc_cond <= VAR_state_MUX_eth_8_h_l93_c7_9bdc_cond;
     state_MUX_eth_8_h_l93_c7_9bdc_iftrue <= VAR_state_MUX_eth_8_h_l93_c7_9bdc_iftrue;
     state_MUX_eth_8_h_l93_c7_9bdc_iffalse <= VAR_state_MUX_eth_8_h_l93_c7_9bdc_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l93_c7_9bdc_return_output := state_MUX_eth_8_h_l93_c7_9bdc_return_output;

     -- Submodule level 3
     VAR_counter_MUX_eth_8_h_l50_c3_f535_iftrue := VAR_counter_MUX_eth_8_h_l51_c5_16b0_return_output;
     VAR_counter_MUX_eth_8_h_l60_c9_5ef1_iftrue := VAR_counter_MUX_eth_8_h_l61_c5_c13f_return_output;
     VAR_counter_MUX_eth_8_h_l70_c9_012a_iftrue := VAR_counter_MUX_eth_8_h_l71_c5_ae50_return_output;
     VAR_counter_MUX_eth_8_h_l89_c5_3ee4_iftrue := VAR_counter_MUX_eth_8_h_l93_c7_9bdc_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l70_c9_012a_iftrue := VAR_header_ethertype_MUX_eth_8_h_l71_c5_ae50_return_output;
     VAR_header_src_mac_MUX_eth_8_h_l60_c9_5ef1_iftrue := VAR_header_src_mac_MUX_eth_8_h_l61_c5_c13f_return_output;
     VAR_o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_iffalse := VAR_o_frame_data_payload_MUX_eth_8_h_l70_c9_012a_return_output;
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_iffalse := VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l70_c9_012a_return_output;
     VAR_o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_iffalse := VAR_o_frame_valid_MUX_eth_8_h_l70_c9_012a_return_output;
     VAR_o_overflow_MUX_eth_8_h_l70_c9_012a_iffalse := VAR_o_overflow_MUX_eth_8_h_l82_c8_74fe_return_output;
     VAR_state_MUX_eth_8_h_l50_c3_f535_iftrue := VAR_state_MUX_eth_8_h_l51_c5_16b0_return_output;
     VAR_state_MUX_eth_8_h_l60_c9_5ef1_iftrue := VAR_state_MUX_eth_8_h_l61_c5_c13f_return_output;
     VAR_state_MUX_eth_8_h_l70_c9_012a_iftrue := VAR_state_MUX_eth_8_h_l71_c5_ae50_return_output;
     VAR_state_MUX_eth_8_h_l89_c5_3ee4_iftrue := VAR_state_MUX_eth_8_h_l93_c7_9bdc_return_output;
     -- header_ethertype_MUX[eth_8_h_l70_c9_012a] LATENCY=0
     -- Inputs
     header_ethertype_MUX_eth_8_h_l70_c9_012a_cond <= VAR_header_ethertype_MUX_eth_8_h_l70_c9_012a_cond;
     header_ethertype_MUX_eth_8_h_l70_c9_012a_iftrue <= VAR_header_ethertype_MUX_eth_8_h_l70_c9_012a_iftrue;
     header_ethertype_MUX_eth_8_h_l70_c9_012a_iffalse <= VAR_header_ethertype_MUX_eth_8_h_l70_c9_012a_iffalse;
     -- Outputs
     VAR_header_ethertype_MUX_eth_8_h_l70_c9_012a_return_output := header_ethertype_MUX_eth_8_h_l70_c9_012a_return_output;

     -- o_frame_valid_MUX[eth_8_h_l60_c9_5ef1] LATENCY=0
     -- Inputs
     o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_cond <= VAR_o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_cond;
     o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_iftrue <= VAR_o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_iftrue;
     o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_iffalse <= VAR_o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_iffalse;
     -- Outputs
     VAR_o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_return_output := o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_return_output;

     -- header_TRUE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_e484[eth_8_h_l50_c3_f535] LATENCY=0
     VAR_header_TRUE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_e484_eth_8_h_l50_c3_f535_return_output := CONST_REF_RD_eth_header_t_eth_header_t_e484(
     header,
     VAR_header_dst_mac_MUX_eth_8_h_l51_c5_16b0_return_output);

     -- header_src_mac_MUX[eth_8_h_l60_c9_5ef1] LATENCY=0
     -- Inputs
     header_src_mac_MUX_eth_8_h_l60_c9_5ef1_cond <= VAR_header_src_mac_MUX_eth_8_h_l60_c9_5ef1_cond;
     header_src_mac_MUX_eth_8_h_l60_c9_5ef1_iftrue <= VAR_header_src_mac_MUX_eth_8_h_l60_c9_5ef1_iftrue;
     header_src_mac_MUX_eth_8_h_l60_c9_5ef1_iffalse <= VAR_header_src_mac_MUX_eth_8_h_l60_c9_5ef1_iffalse;
     -- Outputs
     VAR_header_src_mac_MUX_eth_8_h_l60_c9_5ef1_return_output := header_src_mac_MUX_eth_8_h_l60_c9_5ef1_return_output;

     -- o_frame_data_payload_MUX[eth_8_h_l60_c9_5ef1] LATENCY=0
     -- Inputs
     o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_cond <= VAR_o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_cond;
     o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_iftrue <= VAR_o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_iftrue;
     o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_iffalse <= VAR_o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_iffalse;
     -- Outputs
     VAR_o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_return_output := o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_return_output;

     -- o_overflow_MUX[eth_8_h_l70_c9_012a] LATENCY=0
     -- Inputs
     o_overflow_MUX_eth_8_h_l70_c9_012a_cond <= VAR_o_overflow_MUX_eth_8_h_l70_c9_012a_cond;
     o_overflow_MUX_eth_8_h_l70_c9_012a_iftrue <= VAR_o_overflow_MUX_eth_8_h_l70_c9_012a_iftrue;
     o_overflow_MUX_eth_8_h_l70_c9_012a_iffalse <= VAR_o_overflow_MUX_eth_8_h_l70_c9_012a_iffalse;
     -- Outputs
     VAR_o_overflow_MUX_eth_8_h_l70_c9_012a_return_output := o_overflow_MUX_eth_8_h_l70_c9_012a_return_output;

     -- o_frame_data_start_of_payload_MUX[eth_8_h_l60_c9_5ef1] LATENCY=0
     -- Inputs
     o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_cond <= VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_cond;
     o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_iftrue <= VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_iftrue;
     o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_iffalse <= VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_iffalse;
     -- Outputs
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_return_output := o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_return_output;

     -- state_MUX[eth_8_h_l89_c5_3ee4] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l89_c5_3ee4_cond <= VAR_state_MUX_eth_8_h_l89_c5_3ee4_cond;
     state_MUX_eth_8_h_l89_c5_3ee4_iftrue <= VAR_state_MUX_eth_8_h_l89_c5_3ee4_iftrue;
     state_MUX_eth_8_h_l89_c5_3ee4_iffalse <= VAR_state_MUX_eth_8_h_l89_c5_3ee4_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l89_c5_3ee4_return_output := state_MUX_eth_8_h_l89_c5_3ee4_return_output;

     -- counter_MUX[eth_8_h_l89_c5_3ee4] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l89_c5_3ee4_cond <= VAR_counter_MUX_eth_8_h_l89_c5_3ee4_cond;
     counter_MUX_eth_8_h_l89_c5_3ee4_iftrue <= VAR_counter_MUX_eth_8_h_l89_c5_3ee4_iftrue;
     counter_MUX_eth_8_h_l89_c5_3ee4_iffalse <= VAR_counter_MUX_eth_8_h_l89_c5_3ee4_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l89_c5_3ee4_return_output := counter_MUX_eth_8_h_l89_c5_3ee4_return_output;

     -- Submodule level 4
     VAR_counter_MUX_eth_8_h_l82_c8_74fe_iftrue := VAR_counter_MUX_eth_8_h_l89_c5_3ee4_return_output;
     VAR_header_MUX_eth_8_h_l50_c3_f535_iftrue := VAR_header_TRUE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_e484_eth_8_h_l50_c3_f535_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l60_c9_5ef1_iffalse := VAR_header_ethertype_MUX_eth_8_h_l70_c9_012a_return_output;
     VAR_o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_iffalse := VAR_o_frame_data_payload_MUX_eth_8_h_l60_c9_5ef1_return_output;
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_iffalse := VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l60_c9_5ef1_return_output;
     VAR_o_frame_valid_MUX_eth_8_h_l50_c3_f535_iffalse := VAR_o_frame_valid_MUX_eth_8_h_l60_c9_5ef1_return_output;
     VAR_o_overflow_MUX_eth_8_h_l60_c9_5ef1_iffalse := VAR_o_overflow_MUX_eth_8_h_l70_c9_012a_return_output;
     VAR_state_MUX_eth_8_h_l82_c8_74fe_iftrue := VAR_state_MUX_eth_8_h_l89_c5_3ee4_return_output;
     -- o_frame_data_start_of_payload_MUX[eth_8_h_l50_c3_f535] LATENCY=0
     -- Inputs
     o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_cond <= VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_cond;
     o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_iftrue <= VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_iftrue;
     o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_iffalse <= VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_iffalse;
     -- Outputs
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_return_output := o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_return_output;

     -- header_ethertype_MUX[eth_8_h_l60_c9_5ef1] LATENCY=0
     -- Inputs
     header_ethertype_MUX_eth_8_h_l60_c9_5ef1_cond <= VAR_header_ethertype_MUX_eth_8_h_l60_c9_5ef1_cond;
     header_ethertype_MUX_eth_8_h_l60_c9_5ef1_iftrue <= VAR_header_ethertype_MUX_eth_8_h_l60_c9_5ef1_iftrue;
     header_ethertype_MUX_eth_8_h_l60_c9_5ef1_iffalse <= VAR_header_ethertype_MUX_eth_8_h_l60_c9_5ef1_iffalse;
     -- Outputs
     VAR_header_ethertype_MUX_eth_8_h_l60_c9_5ef1_return_output := header_ethertype_MUX_eth_8_h_l60_c9_5ef1_return_output;

     -- o_frame_data_payload_MUX[eth_8_h_l50_c3_f535] LATENCY=0
     -- Inputs
     o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_cond <= VAR_o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_cond;
     o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_iftrue <= VAR_o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_iftrue;
     o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_iffalse <= VAR_o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_iffalse;
     -- Outputs
     VAR_o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_return_output := o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_return_output;

     -- o_overflow_MUX[eth_8_h_l60_c9_5ef1] LATENCY=0
     -- Inputs
     o_overflow_MUX_eth_8_h_l60_c9_5ef1_cond <= VAR_o_overflow_MUX_eth_8_h_l60_c9_5ef1_cond;
     o_overflow_MUX_eth_8_h_l60_c9_5ef1_iftrue <= VAR_o_overflow_MUX_eth_8_h_l60_c9_5ef1_iftrue;
     o_overflow_MUX_eth_8_h_l60_c9_5ef1_iffalse <= VAR_o_overflow_MUX_eth_8_h_l60_c9_5ef1_iffalse;
     -- Outputs
     VAR_o_overflow_MUX_eth_8_h_l60_c9_5ef1_return_output := o_overflow_MUX_eth_8_h_l60_c9_5ef1_return_output;

     -- state_MUX[eth_8_h_l82_c8_74fe] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l82_c8_74fe_cond <= VAR_state_MUX_eth_8_h_l82_c8_74fe_cond;
     state_MUX_eth_8_h_l82_c8_74fe_iftrue <= VAR_state_MUX_eth_8_h_l82_c8_74fe_iftrue;
     state_MUX_eth_8_h_l82_c8_74fe_iffalse <= VAR_state_MUX_eth_8_h_l82_c8_74fe_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l82_c8_74fe_return_output := state_MUX_eth_8_h_l82_c8_74fe_return_output;

     -- o_frame_valid_MUX[eth_8_h_l50_c3_f535] LATENCY=0
     -- Inputs
     o_frame_valid_MUX_eth_8_h_l50_c3_f535_cond <= VAR_o_frame_valid_MUX_eth_8_h_l50_c3_f535_cond;
     o_frame_valid_MUX_eth_8_h_l50_c3_f535_iftrue <= VAR_o_frame_valid_MUX_eth_8_h_l50_c3_f535_iftrue;
     o_frame_valid_MUX_eth_8_h_l50_c3_f535_iffalse <= VAR_o_frame_valid_MUX_eth_8_h_l50_c3_f535_iffalse;
     -- Outputs
     VAR_o_frame_valid_MUX_eth_8_h_l50_c3_f535_return_output := o_frame_valid_MUX_eth_8_h_l50_c3_f535_return_output;

     -- counter_MUX[eth_8_h_l82_c8_74fe] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l82_c8_74fe_cond <= VAR_counter_MUX_eth_8_h_l82_c8_74fe_cond;
     counter_MUX_eth_8_h_l82_c8_74fe_iftrue <= VAR_counter_MUX_eth_8_h_l82_c8_74fe_iftrue;
     counter_MUX_eth_8_h_l82_c8_74fe_iffalse <= VAR_counter_MUX_eth_8_h_l82_c8_74fe_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l82_c8_74fe_return_output := counter_MUX_eth_8_h_l82_c8_74fe_return_output;

     -- Submodule level 5
     VAR_counter_MUX_eth_8_h_l70_c9_012a_iffalse := VAR_counter_MUX_eth_8_h_l82_c8_74fe_return_output;
     VAR_o_overflow_MUX_eth_8_h_l50_c3_f535_iffalse := VAR_o_overflow_MUX_eth_8_h_l60_c9_5ef1_return_output;
     VAR_state_MUX_eth_8_h_l70_c9_012a_iffalse := VAR_state_MUX_eth_8_h_l82_c8_74fe_return_output;
     -- header_FALSE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_488d[eth_8_h_l50_c3_f535] LATENCY=0
     VAR_header_FALSE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_488d_eth_8_h_l50_c3_f535_return_output := CONST_REF_RD_eth_header_t_eth_header_t_488d(
     header,
     VAR_header_src_mac_MUX_eth_8_h_l60_c9_5ef1_return_output,
     VAR_header_ethertype_MUX_eth_8_h_l60_c9_5ef1_return_output);

     -- o_overflow_MUX[eth_8_h_l50_c3_f535] LATENCY=0
     -- Inputs
     o_overflow_MUX_eth_8_h_l50_c3_f535_cond <= VAR_o_overflow_MUX_eth_8_h_l50_c3_f535_cond;
     o_overflow_MUX_eth_8_h_l50_c3_f535_iftrue <= VAR_o_overflow_MUX_eth_8_h_l50_c3_f535_iftrue;
     o_overflow_MUX_eth_8_h_l50_c3_f535_iffalse <= VAR_o_overflow_MUX_eth_8_h_l50_c3_f535_iffalse;
     -- Outputs
     VAR_o_overflow_MUX_eth_8_h_l50_c3_f535_return_output := o_overflow_MUX_eth_8_h_l50_c3_f535_return_output;

     -- state_MUX[eth_8_h_l70_c9_012a] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l70_c9_012a_cond <= VAR_state_MUX_eth_8_h_l70_c9_012a_cond;
     state_MUX_eth_8_h_l70_c9_012a_iftrue <= VAR_state_MUX_eth_8_h_l70_c9_012a_iftrue;
     state_MUX_eth_8_h_l70_c9_012a_iffalse <= VAR_state_MUX_eth_8_h_l70_c9_012a_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l70_c9_012a_return_output := state_MUX_eth_8_h_l70_c9_012a_return_output;

     -- counter_MUX[eth_8_h_l70_c9_012a] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l70_c9_012a_cond <= VAR_counter_MUX_eth_8_h_l70_c9_012a_cond;
     counter_MUX_eth_8_h_l70_c9_012a_iftrue <= VAR_counter_MUX_eth_8_h_l70_c9_012a_iftrue;
     counter_MUX_eth_8_h_l70_c9_012a_iffalse <= VAR_counter_MUX_eth_8_h_l70_c9_012a_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l70_c9_012a_return_output := counter_MUX_eth_8_h_l70_c9_012a_return_output;

     -- Submodule level 6
     VAR_counter_MUX_eth_8_h_l60_c9_5ef1_iffalse := VAR_counter_MUX_eth_8_h_l70_c9_012a_return_output;
     VAR_header_MUX_eth_8_h_l50_c3_f535_iffalse := VAR_header_FALSE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_488d_eth_8_h_l50_c3_f535_return_output;
     VAR_state_MUX_eth_8_h_l60_c9_5ef1_iffalse := VAR_state_MUX_eth_8_h_l70_c9_012a_return_output;
     -- header_MUX[eth_8_h_l50_c3_f535] LATENCY=0
     -- Inputs
     header_MUX_eth_8_h_l50_c3_f535_cond <= VAR_header_MUX_eth_8_h_l50_c3_f535_cond;
     header_MUX_eth_8_h_l50_c3_f535_iftrue <= VAR_header_MUX_eth_8_h_l50_c3_f535_iftrue;
     header_MUX_eth_8_h_l50_c3_f535_iffalse <= VAR_header_MUX_eth_8_h_l50_c3_f535_iffalse;
     -- Outputs
     VAR_header_MUX_eth_8_h_l50_c3_f535_return_output := header_MUX_eth_8_h_l50_c3_f535_return_output;

     -- CONST_REF_RD_eth_8_rx_t_eth_8_rx_t_7b39[eth_8_h_l99_c10_ab17] LATENCY=0
     VAR_CONST_REF_RD_eth_8_rx_t_eth_8_rx_t_7b39_eth_8_h_l99_c10_ab17_return_output := CONST_REF_RD_eth_8_rx_t_eth_8_rx_t_7b39(
     header,
     VAR_o_overflow_MUX_eth_8_h_l50_c3_f535_return_output,
     VAR_o_frame_data_payload_MUX_eth_8_h_l50_c3_f535_return_output,
     VAR_o_frame_valid_MUX_eth_8_h_l50_c3_f535_return_output,
     VAR_o_frame_data_start_of_payload_MUX_eth_8_h_l50_c3_f535_return_output);

     -- counter_MUX[eth_8_h_l60_c9_5ef1] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l60_c9_5ef1_cond <= VAR_counter_MUX_eth_8_h_l60_c9_5ef1_cond;
     counter_MUX_eth_8_h_l60_c9_5ef1_iftrue <= VAR_counter_MUX_eth_8_h_l60_c9_5ef1_iftrue;
     counter_MUX_eth_8_h_l60_c9_5ef1_iffalse <= VAR_counter_MUX_eth_8_h_l60_c9_5ef1_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l60_c9_5ef1_return_output := counter_MUX_eth_8_h_l60_c9_5ef1_return_output;

     -- state_MUX[eth_8_h_l60_c9_5ef1] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l60_c9_5ef1_cond <= VAR_state_MUX_eth_8_h_l60_c9_5ef1_cond;
     state_MUX_eth_8_h_l60_c9_5ef1_iftrue <= VAR_state_MUX_eth_8_h_l60_c9_5ef1_iftrue;
     state_MUX_eth_8_h_l60_c9_5ef1_iffalse <= VAR_state_MUX_eth_8_h_l60_c9_5ef1_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l60_c9_5ef1_return_output := state_MUX_eth_8_h_l60_c9_5ef1_return_output;

     -- Submodule level 7
     VAR_return_output := VAR_CONST_REF_RD_eth_8_rx_t_eth_8_rx_t_7b39_eth_8_h_l99_c10_ab17_return_output;
     VAR_counter_MUX_eth_8_h_l50_c3_f535_iffalse := VAR_counter_MUX_eth_8_h_l60_c9_5ef1_return_output;
     REG_VAR_header := VAR_header_MUX_eth_8_h_l50_c3_f535_return_output;
     VAR_state_MUX_eth_8_h_l50_c3_f535_iffalse := VAR_state_MUX_eth_8_h_l60_c9_5ef1_return_output;
     -- counter_MUX[eth_8_h_l50_c3_f535] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l50_c3_f535_cond <= VAR_counter_MUX_eth_8_h_l50_c3_f535_cond;
     counter_MUX_eth_8_h_l50_c3_f535_iftrue <= VAR_counter_MUX_eth_8_h_l50_c3_f535_iftrue;
     counter_MUX_eth_8_h_l50_c3_f535_iffalse <= VAR_counter_MUX_eth_8_h_l50_c3_f535_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l50_c3_f535_return_output := counter_MUX_eth_8_h_l50_c3_f535_return_output;

     -- state_MUX[eth_8_h_l50_c3_f535] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l50_c3_f535_cond <= VAR_state_MUX_eth_8_h_l50_c3_f535_cond;
     state_MUX_eth_8_h_l50_c3_f535_iftrue <= VAR_state_MUX_eth_8_h_l50_c3_f535_iftrue;
     state_MUX_eth_8_h_l50_c3_f535_iffalse <= VAR_state_MUX_eth_8_h_l50_c3_f535_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l50_c3_f535_return_output := state_MUX_eth_8_h_l50_c3_f535_return_output;

     -- Submodule level 8
     REG_VAR_counter := VAR_counter_MUX_eth_8_h_l50_c3_f535_return_output;
     REG_VAR_state := VAR_state_MUX_eth_8_h_l50_c3_f535_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_state <= REG_VAR_state;
REG_COMB_header <= REG_VAR_header;
REG_COMB_counter <= REG_VAR_counter;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if clk_en_internal='1' then
     state <= REG_COMB_state;
     header <= REG_COMB_header;
     counter <= REG_COMB_counter;
 end if;
 end if;
end process;

end arch;
