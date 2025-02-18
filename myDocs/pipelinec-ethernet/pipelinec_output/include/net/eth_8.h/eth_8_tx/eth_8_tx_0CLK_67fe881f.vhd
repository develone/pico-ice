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
-- Submodules: 67
entity eth_8_tx_0CLK_67fe881f is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 frame : in eth8_frame_t_stream_t;
 mac_axis_ready : in unsigned(0 downto 0);
 return_output : out eth_8_tx_t);
end eth_8_tx_0CLK_67fe881f;
architecture arch of eth_8_tx_0CLK_67fe881f is
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
-- BIN_OP_EQ[eth_8_h_l124_c6_b524]
signal BIN_OP_EQ_eth_8_h_l124_c6_b524_left : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l124_c6_b524_right : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l124_c6_b524_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l124_c3_97ab]
signal counter_MUX_eth_8_h_l124_c3_97ab_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l124_c3_97ab_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l124_c3_97ab_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l124_c3_97ab_return_output : unsigned(2 downto 0);

-- header_MUX[eth_8_h_l124_c3_97ab]
signal header_MUX_eth_8_h_l124_c3_97ab_cond : unsigned(0 downto 0);
signal header_MUX_eth_8_h_l124_c3_97ab_iftrue : eth_header_t;
signal header_MUX_eth_8_h_l124_c3_97ab_iffalse : eth_header_t;
signal header_MUX_eth_8_h_l124_c3_97ab_return_output : eth_header_t;

-- state_MUX[eth_8_h_l124_c3_97ab]
signal state_MUX_eth_8_h_l124_c3_97ab_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l124_c3_97ab_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l124_c3_97ab_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l124_c3_97ab_return_output : unsigned(1 downto 0);

-- o_MUX[eth_8_h_l124_c3_97ab]
signal o_MUX_eth_8_h_l124_c3_97ab_cond : unsigned(0 downto 0);
signal o_MUX_eth_8_h_l124_c3_97ab_iftrue : eth_8_tx_t;
signal o_MUX_eth_8_h_l124_c3_97ab_iffalse : eth_8_tx_t;
signal o_MUX_eth_8_h_l124_c3_97ab_return_output : eth_8_tx_t;

-- counter_MUX[eth_8_h_l126_c5_aa81]
signal counter_MUX_eth_8_h_l126_c5_aa81_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l126_c5_aa81_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l126_c5_aa81_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l126_c5_aa81_return_output : unsigned(2 downto 0);

-- header_MUX[eth_8_h_l126_c5_aa81]
signal header_MUX_eth_8_h_l126_c5_aa81_cond : unsigned(0 downto 0);
signal header_MUX_eth_8_h_l126_c5_aa81_iftrue : eth_header_t;
signal header_MUX_eth_8_h_l126_c5_aa81_iffalse : eth_header_t;
signal header_MUX_eth_8_h_l126_c5_aa81_return_output : eth_header_t;

-- state_MUX[eth_8_h_l126_c5_aa81]
signal state_MUX_eth_8_h_l126_c5_aa81_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l126_c5_aa81_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l126_c5_aa81_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l126_c5_aa81_return_output : unsigned(1 downto 0);

-- o_mac_axis_valid_MUX[eth_8_h_l126_c5_aa81]
signal o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_cond : unsigned(0 downto 0);
signal o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_iftrue : unsigned(0 downto 0);
signal o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_iffalse : unsigned(0 downto 0);
signal o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_return_output : unsigned(0 downto 0);

-- o_mac_axis_data_tdata_MUX[eth_8_h_l126_c5_aa81]
signal o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_cond : unsigned(0 downto 0);
signal o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_iftrue : uint8_t_1;
signal o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_iffalse : uint8_t_1;
signal o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_return_output : uint8_t_1;

-- BIN_OP_EQ[eth_8_h_l127_c10_c0b7]
signal BIN_OP_EQ_eth_8_h_l127_c10_c0b7_left : unsigned(2 downto 0);
signal BIN_OP_EQ_eth_8_h_l127_c10_c0b7_right : unsigned(0 downto 0);
signal BIN_OP_EQ_eth_8_h_l127_c10_c0b7_return_output : unsigned(0 downto 0);

-- header_MUX[eth_8_h_l127_c7_ae5a]
signal header_MUX_eth_8_h_l127_c7_ae5a_cond : unsigned(0 downto 0);
signal header_MUX_eth_8_h_l127_c7_ae5a_iftrue : eth_header_t;
signal header_MUX_eth_8_h_l127_c7_ae5a_iffalse : eth_header_t;
signal header_MUX_eth_8_h_l127_c7_ae5a_return_output : eth_header_t;

-- counter_MUX[eth_8_h_l132_c7_7fdf]
signal counter_MUX_eth_8_h_l132_c7_7fdf_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l132_c7_7fdf_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l132_c7_7fdf_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l132_c7_7fdf_return_output : unsigned(2 downto 0);

-- header_dst_mac_MUX[eth_8_h_l132_c7_7fdf]
signal header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_cond : unsigned(0 downto 0);
signal header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_iftrue : unsigned(47 downto 0);
signal header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_iffalse : unsigned(47 downto 0);
signal header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_return_output : unsigned(47 downto 0);

-- state_MUX[eth_8_h_l132_c7_7fdf]
signal state_MUX_eth_8_h_l132_c7_7fdf_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l132_c7_7fdf_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l132_c7_7fdf_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l132_c7_7fdf_return_output : unsigned(1 downto 0);

-- CONST_SL_8[eth_8_h_l133_c26_0e7c]
signal CONST_SL_8_eth_8_h_l133_c26_0e7c_x : unsigned(47 downto 0);
signal CONST_SL_8_eth_8_h_l133_c26_0e7c_return_output : unsigned(47 downto 0);

-- BIN_OP_EQ[eth_8_h_l134_c12_b9c4]
signal BIN_OP_EQ_eth_8_h_l134_c12_b9c4_left : unsigned(2 downto 0);
signal BIN_OP_EQ_eth_8_h_l134_c12_b9c4_right : unsigned(2 downto 0);
signal BIN_OP_EQ_eth_8_h_l134_c12_b9c4_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l134_c9_070e]
signal counter_MUX_eth_8_h_l134_c9_070e_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l134_c9_070e_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l134_c9_070e_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l134_c9_070e_return_output : unsigned(2 downto 0);

-- state_MUX[eth_8_h_l134_c9_070e]
signal state_MUX_eth_8_h_l134_c9_070e_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l134_c9_070e_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l134_c9_070e_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l134_c9_070e_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[eth_8_h_l138_c11_0162]
signal BIN_OP_PLUS_eth_8_h_l138_c11_0162_left : unsigned(2 downto 0);
signal BIN_OP_PLUS_eth_8_h_l138_c11_0162_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_eth_8_h_l138_c11_0162_return_output : unsigned(3 downto 0);

-- BIN_OP_EQ[eth_8_h_l142_c12_aa9e]
signal BIN_OP_EQ_eth_8_h_l142_c12_aa9e_left : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l142_c12_aa9e_right : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l142_c12_aa9e_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l142_c9_b3e5]
signal counter_MUX_eth_8_h_l142_c9_b3e5_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l142_c9_b3e5_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l142_c9_b3e5_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l142_c9_b3e5_return_output : unsigned(2 downto 0);

-- header_src_mac_MUX[eth_8_h_l142_c9_b3e5]
signal header_src_mac_MUX_eth_8_h_l142_c9_b3e5_cond : unsigned(0 downto 0);
signal header_src_mac_MUX_eth_8_h_l142_c9_b3e5_iftrue : unsigned(47 downto 0);
signal header_src_mac_MUX_eth_8_h_l142_c9_b3e5_iffalse : unsigned(47 downto 0);
signal header_src_mac_MUX_eth_8_h_l142_c9_b3e5_return_output : unsigned(47 downto 0);

-- header_ethertype_MUX[eth_8_h_l142_c9_b3e5]
signal header_ethertype_MUX_eth_8_h_l142_c9_b3e5_cond : unsigned(0 downto 0);
signal header_ethertype_MUX_eth_8_h_l142_c9_b3e5_iftrue : unsigned(15 downto 0);
signal header_ethertype_MUX_eth_8_h_l142_c9_b3e5_iffalse : unsigned(15 downto 0);
signal header_ethertype_MUX_eth_8_h_l142_c9_b3e5_return_output : unsigned(15 downto 0);

-- state_MUX[eth_8_h_l142_c9_b3e5]
signal state_MUX_eth_8_h_l142_c9_b3e5_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l142_c9_b3e5_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l142_c9_b3e5_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l142_c9_b3e5_return_output : unsigned(1 downto 0);

-- o_MUX[eth_8_h_l142_c9_b3e5]
signal o_MUX_eth_8_h_l142_c9_b3e5_cond : unsigned(0 downto 0);
signal o_MUX_eth_8_h_l142_c9_b3e5_iftrue : eth_8_tx_t;
signal o_MUX_eth_8_h_l142_c9_b3e5_iffalse : eth_8_tx_t;
signal o_MUX_eth_8_h_l142_c9_b3e5_return_output : eth_8_tx_t;

-- counter_MUX[eth_8_h_l145_c5_9dfd]
signal counter_MUX_eth_8_h_l145_c5_9dfd_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l145_c5_9dfd_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l145_c5_9dfd_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l145_c5_9dfd_return_output : unsigned(2 downto 0);

-- header_src_mac_MUX[eth_8_h_l145_c5_9dfd]
signal header_src_mac_MUX_eth_8_h_l145_c5_9dfd_cond : unsigned(0 downto 0);
signal header_src_mac_MUX_eth_8_h_l145_c5_9dfd_iftrue : unsigned(47 downto 0);
signal header_src_mac_MUX_eth_8_h_l145_c5_9dfd_iffalse : unsigned(47 downto 0);
signal header_src_mac_MUX_eth_8_h_l145_c5_9dfd_return_output : unsigned(47 downto 0);

-- state_MUX[eth_8_h_l145_c5_9dfd]
signal state_MUX_eth_8_h_l145_c5_9dfd_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l145_c5_9dfd_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l145_c5_9dfd_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l145_c5_9dfd_return_output : unsigned(1 downto 0);

-- CONST_SL_8[eth_8_h_l146_c24_dc62]
signal CONST_SL_8_eth_8_h_l146_c24_dc62_x : unsigned(47 downto 0);
signal CONST_SL_8_eth_8_h_l146_c24_dc62_return_output : unsigned(47 downto 0);

-- BIN_OP_EQ[eth_8_h_l147_c10_f711]
signal BIN_OP_EQ_eth_8_h_l147_c10_f711_left : unsigned(2 downto 0);
signal BIN_OP_EQ_eth_8_h_l147_c10_f711_right : unsigned(2 downto 0);
signal BIN_OP_EQ_eth_8_h_l147_c10_f711_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l147_c7_263d]
signal counter_MUX_eth_8_h_l147_c7_263d_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l147_c7_263d_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l147_c7_263d_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l147_c7_263d_return_output : unsigned(2 downto 0);

-- state_MUX[eth_8_h_l147_c7_263d]
signal state_MUX_eth_8_h_l147_c7_263d_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l147_c7_263d_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l147_c7_263d_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l147_c7_263d_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[eth_8_h_l151_c9_fdf7]
signal BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_left : unsigned(2 downto 0);
signal BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_return_output : unsigned(3 downto 0);

-- BIN_OP_EQ[eth_8_h_l154_c12_627a]
signal BIN_OP_EQ_eth_8_h_l154_c12_627a_left : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l154_c12_627a_right : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l154_c12_627a_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l154_c9_a57d]
signal counter_MUX_eth_8_h_l154_c9_a57d_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l154_c9_a57d_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l154_c9_a57d_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l154_c9_a57d_return_output : unsigned(2 downto 0);

-- header_ethertype_MUX[eth_8_h_l154_c9_a57d]
signal header_ethertype_MUX_eth_8_h_l154_c9_a57d_cond : unsigned(0 downto 0);
signal header_ethertype_MUX_eth_8_h_l154_c9_a57d_iftrue : unsigned(15 downto 0);
signal header_ethertype_MUX_eth_8_h_l154_c9_a57d_iffalse : unsigned(15 downto 0);
signal header_ethertype_MUX_eth_8_h_l154_c9_a57d_return_output : unsigned(15 downto 0);

-- state_MUX[eth_8_h_l154_c9_a57d]
signal state_MUX_eth_8_h_l154_c9_a57d_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l154_c9_a57d_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l154_c9_a57d_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l154_c9_a57d_return_output : unsigned(1 downto 0);

-- o_MUX[eth_8_h_l154_c9_a57d]
signal o_MUX_eth_8_h_l154_c9_a57d_cond : unsigned(0 downto 0);
signal o_MUX_eth_8_h_l154_c9_a57d_iftrue : eth_8_tx_t;
signal o_MUX_eth_8_h_l154_c9_a57d_iffalse : eth_8_tx_t;
signal o_MUX_eth_8_h_l154_c9_a57d_return_output : eth_8_tx_t;

-- counter_MUX[eth_8_h_l157_c5_ad07]
signal counter_MUX_eth_8_h_l157_c5_ad07_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l157_c5_ad07_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l157_c5_ad07_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l157_c5_ad07_return_output : unsigned(2 downto 0);

-- header_ethertype_MUX[eth_8_h_l157_c5_ad07]
signal header_ethertype_MUX_eth_8_h_l157_c5_ad07_cond : unsigned(0 downto 0);
signal header_ethertype_MUX_eth_8_h_l157_c5_ad07_iftrue : unsigned(15 downto 0);
signal header_ethertype_MUX_eth_8_h_l157_c5_ad07_iffalse : unsigned(15 downto 0);
signal header_ethertype_MUX_eth_8_h_l157_c5_ad07_return_output : unsigned(15 downto 0);

-- state_MUX[eth_8_h_l157_c5_ad07]
signal state_MUX_eth_8_h_l157_c5_ad07_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l157_c5_ad07_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l157_c5_ad07_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l157_c5_ad07_return_output : unsigned(1 downto 0);

-- CONST_SL_8[eth_8_h_l158_c26_de39]
signal CONST_SL_8_eth_8_h_l158_c26_de39_x : unsigned(15 downto 0);
signal CONST_SL_8_eth_8_h_l158_c26_de39_return_output : unsigned(15 downto 0);

-- BIN_OP_EQ[eth_8_h_l159_c10_ca94]
signal BIN_OP_EQ_eth_8_h_l159_c10_ca94_left : unsigned(2 downto 0);
signal BIN_OP_EQ_eth_8_h_l159_c10_ca94_right : unsigned(0 downto 0);
signal BIN_OP_EQ_eth_8_h_l159_c10_ca94_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l159_c7_a669]
signal counter_MUX_eth_8_h_l159_c7_a669_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l159_c7_a669_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l159_c7_a669_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l159_c7_a669_return_output : unsigned(2 downto 0);

-- state_MUX[eth_8_h_l159_c7_a669]
signal state_MUX_eth_8_h_l159_c7_a669_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l159_c7_a669_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l159_c7_a669_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l159_c7_a669_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[eth_8_h_l163_c9_0f8b]
signal BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_left : unsigned(2 downto 0);
signal BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_return_output : unsigned(3 downto 0);

-- BIN_OP_EQ[eth_8_h_l168_c11_3cdc]
signal BIN_OP_EQ_eth_8_h_l168_c11_3cdc_left : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l168_c11_3cdc_right : unsigned(1 downto 0);
signal BIN_OP_EQ_eth_8_h_l168_c11_3cdc_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l168_c8_2c73]
signal counter_MUX_eth_8_h_l168_c8_2c73_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l168_c8_2c73_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l168_c8_2c73_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l168_c8_2c73_return_output : unsigned(2 downto 0);

-- state_MUX[eth_8_h_l168_c8_2c73]
signal state_MUX_eth_8_h_l168_c8_2c73_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l168_c8_2c73_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l168_c8_2c73_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l168_c8_2c73_return_output : unsigned(1 downto 0);

-- o_MUX[eth_8_h_l168_c8_2c73]
signal o_MUX_eth_8_h_l168_c8_2c73_cond : unsigned(0 downto 0);
signal o_MUX_eth_8_h_l168_c8_2c73_iftrue : eth_8_tx_t;
signal o_MUX_eth_8_h_l168_c8_2c73_iffalse : eth_8_tx_t;
signal o_MUX_eth_8_h_l168_c8_2c73_return_output : eth_8_tx_t;

-- BIN_OP_AND[eth_8_h_l173_c8_c45c]
signal BIN_OP_AND_eth_8_h_l173_c8_c45c_left : unsigned(0 downto 0);
signal BIN_OP_AND_eth_8_h_l173_c8_c45c_right : unsigned(0 downto 0);
signal BIN_OP_AND_eth_8_h_l173_c8_c45c_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[eth_8_h_l173_c8_0dfd]
signal BIN_OP_AND_eth_8_h_l173_c8_0dfd_left : unsigned(0 downto 0);
signal BIN_OP_AND_eth_8_h_l173_c8_0dfd_right : unsigned(0 downto 0);
signal BIN_OP_AND_eth_8_h_l173_c8_0dfd_return_output : unsigned(0 downto 0);

-- counter_MUX[eth_8_h_l173_c5_36ba]
signal counter_MUX_eth_8_h_l173_c5_36ba_cond : unsigned(0 downto 0);
signal counter_MUX_eth_8_h_l173_c5_36ba_iftrue : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l173_c5_36ba_iffalse : unsigned(2 downto 0);
signal counter_MUX_eth_8_h_l173_c5_36ba_return_output : unsigned(2 downto 0);

-- state_MUX[eth_8_h_l173_c5_36ba]
signal state_MUX_eth_8_h_l173_c5_36ba_cond : unsigned(0 downto 0);
signal state_MUX_eth_8_h_l173_c5_36ba_iftrue : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l173_c5_36ba_iffalse : unsigned(1 downto 0);
signal state_MUX_eth_8_h_l173_c5_36ba_return_output : unsigned(1 downto 0);

function uint48_47_40( x : unsigned) return unsigned is
--variable x : unsigned(47 downto 0);
  variable return_output : unsigned(7 downto 0);
begin
return_output := unsigned(std_logic_vector(x(47 downto 40)));
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

function CONST_REF_RD_uint8_t_1_eth_8_tx_t_mac_axis_data_tdata_37d3( ref_toks_0 : unsigned) return uint8_t_1 is
 
  variable base : eth_8_tx_t; 
  variable return_output : uint8_t_1;
begin
      base.mac_axis.data.tdata(0) := ref_toks_0;

      return_output := base.mac_axis.data.tdata;
      return return_output; 
end function;

function CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_dc58( ref_toks_0 : eth_8_tx_t;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned;
 ref_toks_3 : uint8_t_1) return eth_8_tx_t is
 
  variable base : eth_8_tx_t; 
  variable return_output : eth_8_tx_t;
begin
      base := ref_toks_0;
      base.frame_ready := ref_toks_1;
      base.mac_axis.valid := ref_toks_2;
      base.mac_axis.data.tdata := ref_toks_3;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_893a( ref_toks_0 : eth_8_tx_t;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned;
 ref_toks_3 : unsigned) return eth_8_tx_t is
 
  variable base : eth_8_tx_t; 
  variable return_output : eth_8_tx_t;
begin
      base := ref_toks_0;
      base.frame_ready := ref_toks_1;
      base.mac_axis.valid := ref_toks_2;
      base.mac_axis.data.tdata(0) := ref_toks_3;

      return_output := base;
      return return_output; 
end function;

function uint16_15_8( x : unsigned) return unsigned is
--variable x : unsigned(15 downto 0);
  variable return_output : unsigned(7 downto 0);
begin
return_output := unsigned(std_logic_vector(x(15 downto 8)));
return return_output;
end function;

function CONST_REF_RD_uint1_t_eth_8_tx_t_mac_axis_data_tlast_e8d9( ref_toks_0 : axis8_t) return unsigned is
 
  variable base : eth_8_tx_t; 
  variable return_output : unsigned(0 downto 0);
begin
      base.mac_axis.data := ref_toks_0;

      return_output := base.mac_axis.data.tlast;
      return return_output; 
end function;

function CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_21d2( ref_toks_0 : axis8_t;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned) return eth_8_tx_t is
 
  variable base : eth_8_tx_t; 
  variable return_output : eth_8_tx_t;
begin
      base.mac_axis.data := ref_toks_0;
      base.mac_axis.valid := ref_toks_1;
      base.frame_ready := ref_toks_2;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_6c68( ref_toks_0 : eth_8_tx_t;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned) return eth_8_tx_t is
 
  variable base : eth_8_tx_t; 
  variable return_output : eth_8_tx_t;
begin
      base := ref_toks_0;
      base.mac_axis.valid := ref_toks_1;
      base.frame_ready := ref_toks_2;

      return_output := base;
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


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_eth_8_h_l124_c6_b524 : 0 clocks latency
BIN_OP_EQ_eth_8_h_l124_c6_b524 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l124_c6_b524_left,
BIN_OP_EQ_eth_8_h_l124_c6_b524_right,
BIN_OP_EQ_eth_8_h_l124_c6_b524_return_output);

-- counter_MUX_eth_8_h_l124_c3_97ab : 0 clocks latency
counter_MUX_eth_8_h_l124_c3_97ab : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l124_c3_97ab_cond,
counter_MUX_eth_8_h_l124_c3_97ab_iftrue,
counter_MUX_eth_8_h_l124_c3_97ab_iffalse,
counter_MUX_eth_8_h_l124_c3_97ab_return_output);

-- header_MUX_eth_8_h_l124_c3_97ab : 0 clocks latency
header_MUX_eth_8_h_l124_c3_97ab : entity work.MUX_uint1_t_eth_header_t_eth_header_t_0CLK_de264c78 port map (
header_MUX_eth_8_h_l124_c3_97ab_cond,
header_MUX_eth_8_h_l124_c3_97ab_iftrue,
header_MUX_eth_8_h_l124_c3_97ab_iffalse,
header_MUX_eth_8_h_l124_c3_97ab_return_output);

-- state_MUX_eth_8_h_l124_c3_97ab : 0 clocks latency
state_MUX_eth_8_h_l124_c3_97ab : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l124_c3_97ab_cond,
state_MUX_eth_8_h_l124_c3_97ab_iftrue,
state_MUX_eth_8_h_l124_c3_97ab_iffalse,
state_MUX_eth_8_h_l124_c3_97ab_return_output);

-- o_MUX_eth_8_h_l124_c3_97ab : 0 clocks latency
o_MUX_eth_8_h_l124_c3_97ab : entity work.MUX_uint1_t_eth_8_tx_t_eth_8_tx_t_0CLK_de264c78 port map (
o_MUX_eth_8_h_l124_c3_97ab_cond,
o_MUX_eth_8_h_l124_c3_97ab_iftrue,
o_MUX_eth_8_h_l124_c3_97ab_iffalse,
o_MUX_eth_8_h_l124_c3_97ab_return_output);

-- counter_MUX_eth_8_h_l126_c5_aa81 : 0 clocks latency
counter_MUX_eth_8_h_l126_c5_aa81 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l126_c5_aa81_cond,
counter_MUX_eth_8_h_l126_c5_aa81_iftrue,
counter_MUX_eth_8_h_l126_c5_aa81_iffalse,
counter_MUX_eth_8_h_l126_c5_aa81_return_output);

-- header_MUX_eth_8_h_l126_c5_aa81 : 0 clocks latency
header_MUX_eth_8_h_l126_c5_aa81 : entity work.MUX_uint1_t_eth_header_t_eth_header_t_0CLK_de264c78 port map (
header_MUX_eth_8_h_l126_c5_aa81_cond,
header_MUX_eth_8_h_l126_c5_aa81_iftrue,
header_MUX_eth_8_h_l126_c5_aa81_iffalse,
header_MUX_eth_8_h_l126_c5_aa81_return_output);

-- state_MUX_eth_8_h_l126_c5_aa81 : 0 clocks latency
state_MUX_eth_8_h_l126_c5_aa81 : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l126_c5_aa81_cond,
state_MUX_eth_8_h_l126_c5_aa81_iftrue,
state_MUX_eth_8_h_l126_c5_aa81_iffalse,
state_MUX_eth_8_h_l126_c5_aa81_return_output);

-- o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81 : 0 clocks latency
o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_cond,
o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_iftrue,
o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_iffalse,
o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_return_output);

-- o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81 : 0 clocks latency
o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81 : entity work.MUX_uint1_t_uint8_t_1_uint8_t_1_0CLK_de264c78 port map (
o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_cond,
o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_iftrue,
o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_iffalse,
o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_return_output);

-- BIN_OP_EQ_eth_8_h_l127_c10_c0b7 : 0 clocks latency
BIN_OP_EQ_eth_8_h_l127_c10_c0b7 : entity work.BIN_OP_EQ_uint3_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l127_c10_c0b7_left,
BIN_OP_EQ_eth_8_h_l127_c10_c0b7_right,
BIN_OP_EQ_eth_8_h_l127_c10_c0b7_return_output);

-- header_MUX_eth_8_h_l127_c7_ae5a : 0 clocks latency
header_MUX_eth_8_h_l127_c7_ae5a : entity work.MUX_uint1_t_eth_header_t_eth_header_t_0CLK_de264c78 port map (
header_MUX_eth_8_h_l127_c7_ae5a_cond,
header_MUX_eth_8_h_l127_c7_ae5a_iftrue,
header_MUX_eth_8_h_l127_c7_ae5a_iffalse,
header_MUX_eth_8_h_l127_c7_ae5a_return_output);

-- counter_MUX_eth_8_h_l132_c7_7fdf : 0 clocks latency
counter_MUX_eth_8_h_l132_c7_7fdf : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l132_c7_7fdf_cond,
counter_MUX_eth_8_h_l132_c7_7fdf_iftrue,
counter_MUX_eth_8_h_l132_c7_7fdf_iffalse,
counter_MUX_eth_8_h_l132_c7_7fdf_return_output);

-- header_dst_mac_MUX_eth_8_h_l132_c7_7fdf : 0 clocks latency
header_dst_mac_MUX_eth_8_h_l132_c7_7fdf : entity work.MUX_uint1_t_uint48_t_uint48_t_0CLK_de264c78 port map (
header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_cond,
header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_iftrue,
header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_iffalse,
header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_return_output);

-- state_MUX_eth_8_h_l132_c7_7fdf : 0 clocks latency
state_MUX_eth_8_h_l132_c7_7fdf : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l132_c7_7fdf_cond,
state_MUX_eth_8_h_l132_c7_7fdf_iftrue,
state_MUX_eth_8_h_l132_c7_7fdf_iffalse,
state_MUX_eth_8_h_l132_c7_7fdf_return_output);

-- CONST_SL_8_eth_8_h_l133_c26_0e7c : 0 clocks latency
CONST_SL_8_eth_8_h_l133_c26_0e7c : entity work.CONST_SL_8_uint48_t_0CLK_de264c78 port map (
CONST_SL_8_eth_8_h_l133_c26_0e7c_x,
CONST_SL_8_eth_8_h_l133_c26_0e7c_return_output);

-- BIN_OP_EQ_eth_8_h_l134_c12_b9c4 : 0 clocks latency
BIN_OP_EQ_eth_8_h_l134_c12_b9c4 : entity work.BIN_OP_EQ_uint3_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l134_c12_b9c4_left,
BIN_OP_EQ_eth_8_h_l134_c12_b9c4_right,
BIN_OP_EQ_eth_8_h_l134_c12_b9c4_return_output);

-- counter_MUX_eth_8_h_l134_c9_070e : 0 clocks latency
counter_MUX_eth_8_h_l134_c9_070e : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l134_c9_070e_cond,
counter_MUX_eth_8_h_l134_c9_070e_iftrue,
counter_MUX_eth_8_h_l134_c9_070e_iffalse,
counter_MUX_eth_8_h_l134_c9_070e_return_output);

-- state_MUX_eth_8_h_l134_c9_070e : 0 clocks latency
state_MUX_eth_8_h_l134_c9_070e : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l134_c9_070e_cond,
state_MUX_eth_8_h_l134_c9_070e_iftrue,
state_MUX_eth_8_h_l134_c9_070e_iffalse,
state_MUX_eth_8_h_l134_c9_070e_return_output);

-- BIN_OP_PLUS_eth_8_h_l138_c11_0162 : 0 clocks latency
BIN_OP_PLUS_eth_8_h_l138_c11_0162 : entity work.BIN_OP_PLUS_uint3_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_eth_8_h_l138_c11_0162_left,
BIN_OP_PLUS_eth_8_h_l138_c11_0162_right,
BIN_OP_PLUS_eth_8_h_l138_c11_0162_return_output);

-- BIN_OP_EQ_eth_8_h_l142_c12_aa9e : 0 clocks latency
BIN_OP_EQ_eth_8_h_l142_c12_aa9e : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l142_c12_aa9e_left,
BIN_OP_EQ_eth_8_h_l142_c12_aa9e_right,
BIN_OP_EQ_eth_8_h_l142_c12_aa9e_return_output);

-- counter_MUX_eth_8_h_l142_c9_b3e5 : 0 clocks latency
counter_MUX_eth_8_h_l142_c9_b3e5 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l142_c9_b3e5_cond,
counter_MUX_eth_8_h_l142_c9_b3e5_iftrue,
counter_MUX_eth_8_h_l142_c9_b3e5_iffalse,
counter_MUX_eth_8_h_l142_c9_b3e5_return_output);

-- header_src_mac_MUX_eth_8_h_l142_c9_b3e5 : 0 clocks latency
header_src_mac_MUX_eth_8_h_l142_c9_b3e5 : entity work.MUX_uint1_t_uint48_t_uint48_t_0CLK_de264c78 port map (
header_src_mac_MUX_eth_8_h_l142_c9_b3e5_cond,
header_src_mac_MUX_eth_8_h_l142_c9_b3e5_iftrue,
header_src_mac_MUX_eth_8_h_l142_c9_b3e5_iffalse,
header_src_mac_MUX_eth_8_h_l142_c9_b3e5_return_output);

-- header_ethertype_MUX_eth_8_h_l142_c9_b3e5 : 0 clocks latency
header_ethertype_MUX_eth_8_h_l142_c9_b3e5 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
header_ethertype_MUX_eth_8_h_l142_c9_b3e5_cond,
header_ethertype_MUX_eth_8_h_l142_c9_b3e5_iftrue,
header_ethertype_MUX_eth_8_h_l142_c9_b3e5_iffalse,
header_ethertype_MUX_eth_8_h_l142_c9_b3e5_return_output);

-- state_MUX_eth_8_h_l142_c9_b3e5 : 0 clocks latency
state_MUX_eth_8_h_l142_c9_b3e5 : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l142_c9_b3e5_cond,
state_MUX_eth_8_h_l142_c9_b3e5_iftrue,
state_MUX_eth_8_h_l142_c9_b3e5_iffalse,
state_MUX_eth_8_h_l142_c9_b3e5_return_output);

-- o_MUX_eth_8_h_l142_c9_b3e5 : 0 clocks latency
o_MUX_eth_8_h_l142_c9_b3e5 : entity work.MUX_uint1_t_eth_8_tx_t_eth_8_tx_t_0CLK_de264c78 port map (
o_MUX_eth_8_h_l142_c9_b3e5_cond,
o_MUX_eth_8_h_l142_c9_b3e5_iftrue,
o_MUX_eth_8_h_l142_c9_b3e5_iffalse,
o_MUX_eth_8_h_l142_c9_b3e5_return_output);

-- counter_MUX_eth_8_h_l145_c5_9dfd : 0 clocks latency
counter_MUX_eth_8_h_l145_c5_9dfd : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l145_c5_9dfd_cond,
counter_MUX_eth_8_h_l145_c5_9dfd_iftrue,
counter_MUX_eth_8_h_l145_c5_9dfd_iffalse,
counter_MUX_eth_8_h_l145_c5_9dfd_return_output);

-- header_src_mac_MUX_eth_8_h_l145_c5_9dfd : 0 clocks latency
header_src_mac_MUX_eth_8_h_l145_c5_9dfd : entity work.MUX_uint1_t_uint48_t_uint48_t_0CLK_de264c78 port map (
header_src_mac_MUX_eth_8_h_l145_c5_9dfd_cond,
header_src_mac_MUX_eth_8_h_l145_c5_9dfd_iftrue,
header_src_mac_MUX_eth_8_h_l145_c5_9dfd_iffalse,
header_src_mac_MUX_eth_8_h_l145_c5_9dfd_return_output);

-- state_MUX_eth_8_h_l145_c5_9dfd : 0 clocks latency
state_MUX_eth_8_h_l145_c5_9dfd : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l145_c5_9dfd_cond,
state_MUX_eth_8_h_l145_c5_9dfd_iftrue,
state_MUX_eth_8_h_l145_c5_9dfd_iffalse,
state_MUX_eth_8_h_l145_c5_9dfd_return_output);

-- CONST_SL_8_eth_8_h_l146_c24_dc62 : 0 clocks latency
CONST_SL_8_eth_8_h_l146_c24_dc62 : entity work.CONST_SL_8_uint48_t_0CLK_de264c78 port map (
CONST_SL_8_eth_8_h_l146_c24_dc62_x,
CONST_SL_8_eth_8_h_l146_c24_dc62_return_output);

-- BIN_OP_EQ_eth_8_h_l147_c10_f711 : 0 clocks latency
BIN_OP_EQ_eth_8_h_l147_c10_f711 : entity work.BIN_OP_EQ_uint3_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l147_c10_f711_left,
BIN_OP_EQ_eth_8_h_l147_c10_f711_right,
BIN_OP_EQ_eth_8_h_l147_c10_f711_return_output);

-- counter_MUX_eth_8_h_l147_c7_263d : 0 clocks latency
counter_MUX_eth_8_h_l147_c7_263d : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l147_c7_263d_cond,
counter_MUX_eth_8_h_l147_c7_263d_iftrue,
counter_MUX_eth_8_h_l147_c7_263d_iffalse,
counter_MUX_eth_8_h_l147_c7_263d_return_output);

-- state_MUX_eth_8_h_l147_c7_263d : 0 clocks latency
state_MUX_eth_8_h_l147_c7_263d : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l147_c7_263d_cond,
state_MUX_eth_8_h_l147_c7_263d_iftrue,
state_MUX_eth_8_h_l147_c7_263d_iffalse,
state_MUX_eth_8_h_l147_c7_263d_return_output);

-- BIN_OP_PLUS_eth_8_h_l151_c9_fdf7 : 0 clocks latency
BIN_OP_PLUS_eth_8_h_l151_c9_fdf7 : entity work.BIN_OP_PLUS_uint3_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_left,
BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_right,
BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_return_output);

-- BIN_OP_EQ_eth_8_h_l154_c12_627a : 0 clocks latency
BIN_OP_EQ_eth_8_h_l154_c12_627a : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l154_c12_627a_left,
BIN_OP_EQ_eth_8_h_l154_c12_627a_right,
BIN_OP_EQ_eth_8_h_l154_c12_627a_return_output);

-- counter_MUX_eth_8_h_l154_c9_a57d : 0 clocks latency
counter_MUX_eth_8_h_l154_c9_a57d : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l154_c9_a57d_cond,
counter_MUX_eth_8_h_l154_c9_a57d_iftrue,
counter_MUX_eth_8_h_l154_c9_a57d_iffalse,
counter_MUX_eth_8_h_l154_c9_a57d_return_output);

-- header_ethertype_MUX_eth_8_h_l154_c9_a57d : 0 clocks latency
header_ethertype_MUX_eth_8_h_l154_c9_a57d : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
header_ethertype_MUX_eth_8_h_l154_c9_a57d_cond,
header_ethertype_MUX_eth_8_h_l154_c9_a57d_iftrue,
header_ethertype_MUX_eth_8_h_l154_c9_a57d_iffalse,
header_ethertype_MUX_eth_8_h_l154_c9_a57d_return_output);

-- state_MUX_eth_8_h_l154_c9_a57d : 0 clocks latency
state_MUX_eth_8_h_l154_c9_a57d : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l154_c9_a57d_cond,
state_MUX_eth_8_h_l154_c9_a57d_iftrue,
state_MUX_eth_8_h_l154_c9_a57d_iffalse,
state_MUX_eth_8_h_l154_c9_a57d_return_output);

-- o_MUX_eth_8_h_l154_c9_a57d : 0 clocks latency
o_MUX_eth_8_h_l154_c9_a57d : entity work.MUX_uint1_t_eth_8_tx_t_eth_8_tx_t_0CLK_de264c78 port map (
o_MUX_eth_8_h_l154_c9_a57d_cond,
o_MUX_eth_8_h_l154_c9_a57d_iftrue,
o_MUX_eth_8_h_l154_c9_a57d_iffalse,
o_MUX_eth_8_h_l154_c9_a57d_return_output);

-- counter_MUX_eth_8_h_l157_c5_ad07 : 0 clocks latency
counter_MUX_eth_8_h_l157_c5_ad07 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l157_c5_ad07_cond,
counter_MUX_eth_8_h_l157_c5_ad07_iftrue,
counter_MUX_eth_8_h_l157_c5_ad07_iffalse,
counter_MUX_eth_8_h_l157_c5_ad07_return_output);

-- header_ethertype_MUX_eth_8_h_l157_c5_ad07 : 0 clocks latency
header_ethertype_MUX_eth_8_h_l157_c5_ad07 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
header_ethertype_MUX_eth_8_h_l157_c5_ad07_cond,
header_ethertype_MUX_eth_8_h_l157_c5_ad07_iftrue,
header_ethertype_MUX_eth_8_h_l157_c5_ad07_iffalse,
header_ethertype_MUX_eth_8_h_l157_c5_ad07_return_output);

-- state_MUX_eth_8_h_l157_c5_ad07 : 0 clocks latency
state_MUX_eth_8_h_l157_c5_ad07 : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l157_c5_ad07_cond,
state_MUX_eth_8_h_l157_c5_ad07_iftrue,
state_MUX_eth_8_h_l157_c5_ad07_iffalse,
state_MUX_eth_8_h_l157_c5_ad07_return_output);

-- CONST_SL_8_eth_8_h_l158_c26_de39 : 0 clocks latency
CONST_SL_8_eth_8_h_l158_c26_de39 : entity work.CONST_SL_8_uint16_t_0CLK_de264c78 port map (
CONST_SL_8_eth_8_h_l158_c26_de39_x,
CONST_SL_8_eth_8_h_l158_c26_de39_return_output);

-- BIN_OP_EQ_eth_8_h_l159_c10_ca94 : 0 clocks latency
BIN_OP_EQ_eth_8_h_l159_c10_ca94 : entity work.BIN_OP_EQ_uint3_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l159_c10_ca94_left,
BIN_OP_EQ_eth_8_h_l159_c10_ca94_right,
BIN_OP_EQ_eth_8_h_l159_c10_ca94_return_output);

-- counter_MUX_eth_8_h_l159_c7_a669 : 0 clocks latency
counter_MUX_eth_8_h_l159_c7_a669 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l159_c7_a669_cond,
counter_MUX_eth_8_h_l159_c7_a669_iftrue,
counter_MUX_eth_8_h_l159_c7_a669_iffalse,
counter_MUX_eth_8_h_l159_c7_a669_return_output);

-- state_MUX_eth_8_h_l159_c7_a669 : 0 clocks latency
state_MUX_eth_8_h_l159_c7_a669 : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l159_c7_a669_cond,
state_MUX_eth_8_h_l159_c7_a669_iftrue,
state_MUX_eth_8_h_l159_c7_a669_iffalse,
state_MUX_eth_8_h_l159_c7_a669_return_output);

-- BIN_OP_PLUS_eth_8_h_l163_c9_0f8b : 0 clocks latency
BIN_OP_PLUS_eth_8_h_l163_c9_0f8b : entity work.BIN_OP_PLUS_uint3_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_left,
BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_right,
BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_return_output);

-- BIN_OP_EQ_eth_8_h_l168_c11_3cdc : 0 clocks latency
BIN_OP_EQ_eth_8_h_l168_c11_3cdc : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_eth_8_h_l168_c11_3cdc_left,
BIN_OP_EQ_eth_8_h_l168_c11_3cdc_right,
BIN_OP_EQ_eth_8_h_l168_c11_3cdc_return_output);

-- counter_MUX_eth_8_h_l168_c8_2c73 : 0 clocks latency
counter_MUX_eth_8_h_l168_c8_2c73 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l168_c8_2c73_cond,
counter_MUX_eth_8_h_l168_c8_2c73_iftrue,
counter_MUX_eth_8_h_l168_c8_2c73_iffalse,
counter_MUX_eth_8_h_l168_c8_2c73_return_output);

-- state_MUX_eth_8_h_l168_c8_2c73 : 0 clocks latency
state_MUX_eth_8_h_l168_c8_2c73 : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l168_c8_2c73_cond,
state_MUX_eth_8_h_l168_c8_2c73_iftrue,
state_MUX_eth_8_h_l168_c8_2c73_iffalse,
state_MUX_eth_8_h_l168_c8_2c73_return_output);

-- o_MUX_eth_8_h_l168_c8_2c73 : 0 clocks latency
o_MUX_eth_8_h_l168_c8_2c73 : entity work.MUX_uint1_t_eth_8_tx_t_eth_8_tx_t_0CLK_de264c78 port map (
o_MUX_eth_8_h_l168_c8_2c73_cond,
o_MUX_eth_8_h_l168_c8_2c73_iftrue,
o_MUX_eth_8_h_l168_c8_2c73_iffalse,
o_MUX_eth_8_h_l168_c8_2c73_return_output);

-- BIN_OP_AND_eth_8_h_l173_c8_c45c : 0 clocks latency
BIN_OP_AND_eth_8_h_l173_c8_c45c : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_eth_8_h_l173_c8_c45c_left,
BIN_OP_AND_eth_8_h_l173_c8_c45c_right,
BIN_OP_AND_eth_8_h_l173_c8_c45c_return_output);

-- BIN_OP_AND_eth_8_h_l173_c8_0dfd : 0 clocks latency
BIN_OP_AND_eth_8_h_l173_c8_0dfd : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_eth_8_h_l173_c8_0dfd_left,
BIN_OP_AND_eth_8_h_l173_c8_0dfd_right,
BIN_OP_AND_eth_8_h_l173_c8_0dfd_return_output);

-- counter_MUX_eth_8_h_l173_c5_36ba : 0 clocks latency
counter_MUX_eth_8_h_l173_c5_36ba : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
counter_MUX_eth_8_h_l173_c5_36ba_cond,
counter_MUX_eth_8_h_l173_c5_36ba_iftrue,
counter_MUX_eth_8_h_l173_c5_36ba_iffalse,
counter_MUX_eth_8_h_l173_c5_36ba_return_output);

-- state_MUX_eth_8_h_l173_c5_36ba : 0 clocks latency
state_MUX_eth_8_h_l173_c5_36ba : entity work.MUX_uint1_t_eth8_state_t_eth8_state_t_0CLK_de264c78 port map (
state_MUX_eth_8_h_l173_c5_36ba_cond,
state_MUX_eth_8_h_l173_c5_36ba_iftrue,
state_MUX_eth_8_h_l173_c5_36ba_iffalse,
state_MUX_eth_8_h_l173_c5_36ba_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Inputs
 frame,
 mac_axis_ready,
 -- Registers
 state,
 header,
 counter,
 -- All submodule outputs
 BIN_OP_EQ_eth_8_h_l124_c6_b524_return_output,
 counter_MUX_eth_8_h_l124_c3_97ab_return_output,
 header_MUX_eth_8_h_l124_c3_97ab_return_output,
 state_MUX_eth_8_h_l124_c3_97ab_return_output,
 o_MUX_eth_8_h_l124_c3_97ab_return_output,
 counter_MUX_eth_8_h_l126_c5_aa81_return_output,
 header_MUX_eth_8_h_l126_c5_aa81_return_output,
 state_MUX_eth_8_h_l126_c5_aa81_return_output,
 o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_return_output,
 o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_return_output,
 BIN_OP_EQ_eth_8_h_l127_c10_c0b7_return_output,
 header_MUX_eth_8_h_l127_c7_ae5a_return_output,
 counter_MUX_eth_8_h_l132_c7_7fdf_return_output,
 header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_return_output,
 state_MUX_eth_8_h_l132_c7_7fdf_return_output,
 CONST_SL_8_eth_8_h_l133_c26_0e7c_return_output,
 BIN_OP_EQ_eth_8_h_l134_c12_b9c4_return_output,
 counter_MUX_eth_8_h_l134_c9_070e_return_output,
 state_MUX_eth_8_h_l134_c9_070e_return_output,
 BIN_OP_PLUS_eth_8_h_l138_c11_0162_return_output,
 BIN_OP_EQ_eth_8_h_l142_c12_aa9e_return_output,
 counter_MUX_eth_8_h_l142_c9_b3e5_return_output,
 header_src_mac_MUX_eth_8_h_l142_c9_b3e5_return_output,
 header_ethertype_MUX_eth_8_h_l142_c9_b3e5_return_output,
 state_MUX_eth_8_h_l142_c9_b3e5_return_output,
 o_MUX_eth_8_h_l142_c9_b3e5_return_output,
 counter_MUX_eth_8_h_l145_c5_9dfd_return_output,
 header_src_mac_MUX_eth_8_h_l145_c5_9dfd_return_output,
 state_MUX_eth_8_h_l145_c5_9dfd_return_output,
 CONST_SL_8_eth_8_h_l146_c24_dc62_return_output,
 BIN_OP_EQ_eth_8_h_l147_c10_f711_return_output,
 counter_MUX_eth_8_h_l147_c7_263d_return_output,
 state_MUX_eth_8_h_l147_c7_263d_return_output,
 BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_return_output,
 BIN_OP_EQ_eth_8_h_l154_c12_627a_return_output,
 counter_MUX_eth_8_h_l154_c9_a57d_return_output,
 header_ethertype_MUX_eth_8_h_l154_c9_a57d_return_output,
 state_MUX_eth_8_h_l154_c9_a57d_return_output,
 o_MUX_eth_8_h_l154_c9_a57d_return_output,
 counter_MUX_eth_8_h_l157_c5_ad07_return_output,
 header_ethertype_MUX_eth_8_h_l157_c5_ad07_return_output,
 state_MUX_eth_8_h_l157_c5_ad07_return_output,
 CONST_SL_8_eth_8_h_l158_c26_de39_return_output,
 BIN_OP_EQ_eth_8_h_l159_c10_ca94_return_output,
 counter_MUX_eth_8_h_l159_c7_a669_return_output,
 state_MUX_eth_8_h_l159_c7_a669_return_output,
 BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_return_output,
 BIN_OP_EQ_eth_8_h_l168_c11_3cdc_return_output,
 counter_MUX_eth_8_h_l168_c8_2c73_return_output,
 state_MUX_eth_8_h_l168_c8_2c73_return_output,
 o_MUX_eth_8_h_l168_c8_2c73_return_output,
 BIN_OP_AND_eth_8_h_l173_c8_c45c_return_output,
 BIN_OP_AND_eth_8_h_l173_c8_0dfd_return_output,
 counter_MUX_eth_8_h_l173_c5_36ba_return_output,
 state_MUX_eth_8_h_l173_c5_36ba_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : eth_8_tx_t;
 variable VAR_frame : eth8_frame_t_stream_t;
 variable VAR_mac_axis_ready : unsigned(0 downto 0);
 variable VAR_o : eth_8_tx_t;
 variable VAR_BIN_OP_EQ_eth_8_h_l124_c6_b524_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l124_c6_b524_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l124_c6_b524_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l124_c3_97ab_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l126_c5_aa81_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l124_c3_97ab_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l142_c9_b3e5_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l124_c3_97ab_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l124_c3_97ab_cond : unsigned(0 downto 0);
 variable VAR_header_MUX_eth_8_h_l124_c3_97ab_iftrue : eth_header_t;
 variable VAR_header_MUX_eth_8_h_l126_c5_aa81_return_output : eth_header_t;
 variable VAR_header_MUX_eth_8_h_l124_c3_97ab_iffalse : eth_header_t;
 variable VAR_header_FALSE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_488d_eth_8_h_l124_c3_97ab_return_output : eth_header_t;
 variable VAR_header_MUX_eth_8_h_l124_c3_97ab_return_output : eth_header_t;
 variable VAR_header_MUX_eth_8_h_l124_c3_97ab_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l124_c3_97ab_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l126_c5_aa81_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l124_c3_97ab_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l142_c9_b3e5_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l124_c3_97ab_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l124_c3_97ab_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_eth_8_h_l124_c3_97ab_iftrue : eth_8_tx_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_dc58_eth_8_h_l124_c3_97ab_return_output : eth_8_tx_t;
 variable VAR_o_MUX_eth_8_h_l124_c3_97ab_iffalse : eth_8_tx_t;
 variable VAR_o_MUX_eth_8_h_l142_c9_b3e5_return_output : eth_8_tx_t;
 variable VAR_o_MUX_eth_8_h_l124_c3_97ab_return_output : eth_8_tx_t;
 variable VAR_o_MUX_eth_8_h_l124_c3_97ab_cond : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l126_c5_aa81_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l132_c7_7fdf_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l126_c5_aa81_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l126_c5_aa81_cond : unsigned(0 downto 0);
 variable VAR_header_MUX_eth_8_h_l126_c5_aa81_iftrue : eth_header_t;
 variable VAR_header_TRUE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_e484_eth_8_h_l126_c5_aa81_return_output : eth_header_t;
 variable VAR_header_MUX_eth_8_h_l126_c5_aa81_iffalse : eth_header_t;
 variable VAR_header_MUX_eth_8_h_l126_c5_aa81_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l126_c5_aa81_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l132_c7_7fdf_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l126_c5_aa81_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l126_c5_aa81_cond : unsigned(0 downto 0);
 variable VAR_o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_iftrue : unsigned(0 downto 0);
 variable VAR_o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_iffalse : unsigned(0 downto 0);
 variable VAR_o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_return_output : unsigned(0 downto 0);
 variable VAR_o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_cond : unsigned(0 downto 0);
 variable VAR_o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_iftrue : uint8_t_1;
 variable VAR_o_mac_axis_data_tdata_TRUE_INPUT_MUX_CONST_REF_RD_uint8_t_1_eth_8_tx_t_mac_axis_data_tdata_37d3_eth_8_h_l126_c5_aa81_return_output : uint8_t_1;
 variable VAR_o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_iffalse : uint8_t_1;
 variable VAR_o_mac_axis_data_tdata_FALSE_INPUT_MUX_CONST_REF_RD_uint8_t_1_eth_8_tx_t_mac_axis_data_tdata_d41d_eth_8_h_l126_c5_aa81_return_output : uint8_t_1;
 variable VAR_o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_return_output : uint8_t_1;
 variable VAR_o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l127_c10_c0b7_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l127_c10_c0b7_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l127_c10_c0b7_return_output : unsigned(0 downto 0);
 variable VAR_header_MUX_eth_8_h_l127_c7_ae5a_iftrue : eth_header_t;
 variable VAR_header_MUX_eth_8_h_l127_c7_ae5a_iffalse : eth_header_t;
 variable VAR_header_MUX_eth_8_h_l127_c7_ae5a_return_output : eth_header_t;
 variable VAR_header_MUX_eth_8_h_l127_c7_ae5a_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_eth_header_t_eth8_frame_t_stream_t_data_header_d41d_eth_8_h_l128_c18_33e7_return_output : eth_header_t;
 variable VAR_uint48_47_40_eth_8_h_l131_c34_43a3_return_output : unsigned(7 downto 0);
 variable VAR_counter_MUX_eth_8_h_l132_c7_7fdf_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l134_c9_070e_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l132_c7_7fdf_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l132_c7_7fdf_cond : unsigned(0 downto 0);
 variable VAR_header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_iftrue : unsigned(47 downto 0);
 variable VAR_header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_iffalse : unsigned(47 downto 0);
 variable VAR_header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_return_output : unsigned(47 downto 0);
 variable VAR_header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l132_c7_7fdf_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l134_c9_070e_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l132_c7_7fdf_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l132_c7_7fdf_cond : unsigned(0 downto 0);
 variable VAR_CONST_SL_8_eth_8_h_l133_c26_0e7c_return_output : unsigned(47 downto 0);
 variable VAR_CONST_SL_8_eth_8_h_l133_c26_0e7c_x : unsigned(47 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l134_c12_b9c4_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l134_c12_b9c4_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l134_c12_b9c4_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l134_c9_070e_iftrue : unsigned(2 downto 0);
 variable VAR_counter_eth_8_h_l136_c11_5f7e : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l134_c9_070e_iffalse : unsigned(2 downto 0);
 variable VAR_counter_eth_8_h_l138_c11_dd16 : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l134_c9_070e_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l134_c9_070e_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l134_c9_070e_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l134_c9_070e_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l138_c11_0162_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l138_c11_0162_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l138_c11_0162_return_output : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l142_c12_aa9e_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l142_c12_aa9e_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l142_c12_aa9e_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l142_c9_b3e5_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l145_c5_9dfd_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l142_c9_b3e5_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l154_c9_a57d_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l142_c9_b3e5_cond : unsigned(0 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l142_c9_b3e5_iftrue : unsigned(47 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l145_c5_9dfd_return_output : unsigned(47 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l142_c9_b3e5_iffalse : unsigned(47 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l142_c9_b3e5_return_output : unsigned(47 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l142_c9_b3e5_cond : unsigned(0 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l142_c9_b3e5_iftrue : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l142_c9_b3e5_iffalse : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l154_c9_a57d_return_output : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l142_c9_b3e5_return_output : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l142_c9_b3e5_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l142_c9_b3e5_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l145_c5_9dfd_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l142_c9_b3e5_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l154_c9_a57d_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l142_c9_b3e5_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_eth_8_h_l142_c9_b3e5_iftrue : eth_8_tx_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_893a_eth_8_h_l142_c9_b3e5_return_output : eth_8_tx_t;
 variable VAR_o_MUX_eth_8_h_l142_c9_b3e5_iffalse : eth_8_tx_t;
 variable VAR_o_MUX_eth_8_h_l154_c9_a57d_return_output : eth_8_tx_t;
 variable VAR_o_MUX_eth_8_h_l142_c9_b3e5_cond : unsigned(0 downto 0);
 variable VAR_uint48_47_40_eth_8_h_l144_c32_b5ef_return_output : unsigned(7 downto 0);
 variable VAR_counter_MUX_eth_8_h_l145_c5_9dfd_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l147_c7_263d_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l145_c5_9dfd_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l145_c5_9dfd_cond : unsigned(0 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l145_c5_9dfd_iftrue : unsigned(47 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l145_c5_9dfd_iffalse : unsigned(47 downto 0);
 variable VAR_header_src_mac_MUX_eth_8_h_l145_c5_9dfd_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l145_c5_9dfd_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l147_c7_263d_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l145_c5_9dfd_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l145_c5_9dfd_cond : unsigned(0 downto 0);
 variable VAR_CONST_SL_8_eth_8_h_l146_c24_dc62_return_output : unsigned(47 downto 0);
 variable VAR_CONST_SL_8_eth_8_h_l146_c24_dc62_x : unsigned(47 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l147_c10_f711_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l147_c10_f711_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l147_c10_f711_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l147_c7_263d_iftrue : unsigned(2 downto 0);
 variable VAR_counter_eth_8_h_l149_c9_1f4c : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l147_c7_263d_iffalse : unsigned(2 downto 0);
 variable VAR_counter_eth_8_h_l151_c9_baf5 : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l147_c7_263d_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l147_c7_263d_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l147_c7_263d_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l147_c7_263d_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_return_output : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l154_c12_627a_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l154_c12_627a_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l154_c12_627a_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l154_c9_a57d_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l157_c5_ad07_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l154_c9_a57d_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l168_c8_2c73_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l154_c9_a57d_cond : unsigned(0 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l154_c9_a57d_iftrue : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l157_c5_ad07_return_output : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l154_c9_a57d_iffalse : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l154_c9_a57d_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l154_c9_a57d_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l157_c5_ad07_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l154_c9_a57d_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l168_c8_2c73_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l154_c9_a57d_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_eth_8_h_l154_c9_a57d_iftrue : eth_8_tx_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_893a_eth_8_h_l154_c9_a57d_return_output : eth_8_tx_t;
 variable VAR_o_MUX_eth_8_h_l154_c9_a57d_iffalse : eth_8_tx_t;
 variable VAR_o_MUX_eth_8_h_l168_c8_2c73_return_output : eth_8_tx_t;
 variable VAR_o_MUX_eth_8_h_l154_c9_a57d_cond : unsigned(0 downto 0);
 variable VAR_uint16_15_8_eth_8_h_l156_c32_9efd_return_output : unsigned(7 downto 0);
 variable VAR_counter_MUX_eth_8_h_l157_c5_ad07_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l159_c7_a669_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l157_c5_ad07_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l157_c5_ad07_cond : unsigned(0 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l157_c5_ad07_iftrue : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l157_c5_ad07_iffalse : unsigned(15 downto 0);
 variable VAR_header_ethertype_MUX_eth_8_h_l157_c5_ad07_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l157_c5_ad07_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l159_c7_a669_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l157_c5_ad07_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l157_c5_ad07_cond : unsigned(0 downto 0);
 variable VAR_CONST_SL_8_eth_8_h_l158_c26_de39_return_output : unsigned(15 downto 0);
 variable VAR_CONST_SL_8_eth_8_h_l158_c26_de39_x : unsigned(15 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l159_c10_ca94_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l159_c10_ca94_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l159_c10_ca94_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l159_c7_a669_iftrue : unsigned(2 downto 0);
 variable VAR_counter_eth_8_h_l161_c9_ca6b : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l159_c7_a669_iffalse : unsigned(2 downto 0);
 variable VAR_counter_eth_8_h_l163_c9_eca9 : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l159_c7_a669_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l159_c7_a669_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l159_c7_a669_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l159_c7_a669_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_return_output : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l168_c11_3cdc_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l168_c11_3cdc_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_eth_8_h_l168_c11_3cdc_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l168_c8_2c73_iftrue : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l173_c5_36ba_return_output : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l168_c8_2c73_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l168_c8_2c73_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l168_c8_2c73_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l173_c5_36ba_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l168_c8_2c73_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l168_c8_2c73_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_eth_8_h_l168_c8_2c73_iftrue : eth_8_tx_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_21d2_eth_8_h_l168_c8_2c73_return_output : eth_8_tx_t;
 variable VAR_o_MUX_eth_8_h_l168_c8_2c73_iffalse : eth_8_tx_t;
 variable VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_6c68_eth_8_h_l168_c8_2c73_return_output : eth_8_tx_t;
 variable VAR_o_MUX_eth_8_h_l168_c8_2c73_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_axis8_t_eth8_frame_t_stream_t_data_payload_d41d_eth_8_h_l170_c23_1fed_return_output : axis8_t;
 variable VAR_CONST_REF_RD_uint1_t_eth_8_tx_t_mac_axis_data_tlast_e8d9_eth_8_h_l173_c8_db11_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_eth_8_h_l173_c8_c45c_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_eth_8_h_l173_c8_c45c_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_eth_8_h_l173_c8_c45c_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_eth_8_h_l173_c8_0dfd_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_eth_8_h_l173_c8_0dfd_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_eth_8_h_l173_c8_0dfd_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_eth_8_h_l173_c5_36ba_iftrue : unsigned(2 downto 0);
 variable VAR_counter_eth_8_h_l175_c7_8c75 : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l173_c5_36ba_iffalse : unsigned(2 downto 0);
 variable VAR_counter_MUX_eth_8_h_l173_c5_36ba_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_eth_8_h_l173_c5_36ba_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l173_c5_36ba_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_eth_8_h_l173_c5_36ba_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_valid_d41d_eth_8_h_l171_l126_DUPLICATE_9a54_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint48_t_eth_header_t_dst_mac_d41d_eth_8_h_l133_l131_l132_DUPLICATE_0e84_return_output : unsigned(47 downto 0);
 variable VAR_CONST_REF_RD_uint48_t_eth_header_t_src_mac_d41d_eth_8_h_l146_l144_l145_l142_DUPLICATE_9d38_return_output : unsigned(47 downto 0);
 variable VAR_CONST_REF_RD_uint16_t_eth_header_t_ethertype_d41d_eth_8_h_l157_l158_l142_l154_l156_DUPLICATE_90b7_return_output : unsigned(15 downto 0);
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
     VAR_state_MUX_eth_8_h_l134_c9_070e_iftrue := unsigned(eth8_state_t_to_slv(SRC_MAC));
     VAR_BIN_OP_EQ_eth_8_h_l154_c12_627a_right := unsigned(eth8_state_t_to_slv(LEN_TYPE));
     VAR_BIN_OP_EQ_eth_8_h_l142_c12_aa9e_right := unsigned(eth8_state_t_to_slv(SRC_MAC));
     VAR_state_MUX_eth_8_h_l147_c7_263d_iftrue := unsigned(eth8_state_t_to_slv(LEN_TYPE));
     VAR_BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_right := to_unsigned(1, 1);
     VAR_o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_iffalse := to_unsigned(0, 1);
     VAR_o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_iftrue := to_unsigned(1, 1);
     VAR_counter_eth_8_h_l161_c9_ca6b := resize(to_unsigned(0, 1), 3);
     VAR_counter_MUX_eth_8_h_l159_c7_a669_iftrue := VAR_counter_eth_8_h_l161_c9_ca6b;
     VAR_BIN_OP_EQ_eth_8_h_l147_c10_f711_right := to_unsigned(5, 3);
     VAR_BIN_OP_EQ_eth_8_h_l124_c6_b524_right := unsigned(eth8_state_t_to_slv(IDLE_DST_MAC));
     VAR_state_MUX_eth_8_h_l159_c7_a669_iftrue := unsigned(eth8_state_t_to_slv(PAYLOAD));
     VAR_counter_eth_8_h_l149_c9_1f4c := resize(to_unsigned(0, 1), 3);
     VAR_counter_MUX_eth_8_h_l147_c7_263d_iftrue := VAR_counter_eth_8_h_l149_c9_1f4c;
     VAR_BIN_OP_EQ_eth_8_h_l134_c12_b9c4_right := to_unsigned(5, 3);
     VAR_BIN_OP_EQ_eth_8_h_l168_c11_3cdc_right := unsigned(eth8_state_t_to_slv(PAYLOAD));
     VAR_counter_eth_8_h_l136_c11_5f7e := resize(to_unsigned(0, 1), 3);
     VAR_counter_MUX_eth_8_h_l134_c9_070e_iftrue := VAR_counter_eth_8_h_l136_c11_5f7e;
     VAR_counter_eth_8_h_l175_c7_8c75 := resize(to_unsigned(0, 1), 3);
     VAR_counter_MUX_eth_8_h_l173_c5_36ba_iftrue := VAR_counter_eth_8_h_l175_c7_8c75;
     VAR_BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_right := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_eth_8_h_l138_c11_0162_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_eth_8_h_l127_c10_c0b7_right := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_eth_8_h_l159_c10_ca94_right := to_unsigned(1, 1);
     VAR_state_MUX_eth_8_h_l173_c5_36ba_iftrue := unsigned(eth8_state_t_to_slv(IDLE_DST_MAC));
     -- o_FALSE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_6c68[eth_8_h_l168_c8_2c73] LATENCY=0
     VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_6c68_eth_8_h_l168_c8_2c73_return_output := CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_6c68(
     eth_8_tx_t_NULL,
     to_unsigned(0, 1),
     to_unsigned(0, 1));

     -- o_mac_axis_data_tdata_FALSE_INPUT_MUX_CONST_REF_RD_uint8_t_1_eth_8_tx_t_mac_axis_data_tdata_d41d[eth_8_h_l126_c5_aa81] LATENCY=0
     VAR_o_mac_axis_data_tdata_FALSE_INPUT_MUX_CONST_REF_RD_uint8_t_1_eth_8_tx_t_mac_axis_data_tdata_d41d_eth_8_h_l126_c5_aa81_return_output := eth_8_tx_t_NULL.mac_axis.data.tdata;

     -- Submodule level 1
     VAR_o_MUX_eth_8_h_l168_c8_2c73_iffalse := VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_6c68_eth_8_h_l168_c8_2c73_return_output;
     VAR_o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_iffalse := VAR_o_mac_axis_data_tdata_FALSE_INPUT_MUX_CONST_REF_RD_uint8_t_1_eth_8_tx_t_mac_axis_data_tdata_d41d_eth_8_h_l126_c5_aa81_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;
     -- Mux in inputs
     VAR_frame := frame;
     VAR_mac_axis_ready := mac_axis_ready;

     -- Submodule level 0
     VAR_BIN_OP_EQ_eth_8_h_l127_c10_c0b7_left := counter;
     VAR_BIN_OP_EQ_eth_8_h_l134_c12_b9c4_left := counter;
     VAR_BIN_OP_EQ_eth_8_h_l147_c10_f711_left := counter;
     VAR_BIN_OP_EQ_eth_8_h_l159_c10_ca94_left := counter;
     VAR_BIN_OP_PLUS_eth_8_h_l138_c11_0162_left := counter;
     VAR_BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_left := counter;
     VAR_BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_left := counter;
     VAR_counter_MUX_eth_8_h_l126_c5_aa81_iffalse := counter;
     VAR_counter_MUX_eth_8_h_l132_c7_7fdf_iffalse := counter;
     VAR_counter_MUX_eth_8_h_l145_c5_9dfd_iffalse := counter;
     VAR_counter_MUX_eth_8_h_l157_c5_ad07_iffalse := counter;
     VAR_counter_MUX_eth_8_h_l168_c8_2c73_iffalse := counter;
     VAR_counter_MUX_eth_8_h_l173_c5_36ba_iffalse := counter;
     VAR_header_MUX_eth_8_h_l126_c5_aa81_iffalse := header;
     VAR_header_MUX_eth_8_h_l127_c7_ae5a_iffalse := header;
     VAR_BIN_OP_AND_eth_8_h_l173_c8_0dfd_right := VAR_mac_axis_ready;
     VAR_counter_MUX_eth_8_h_l132_c7_7fdf_cond := VAR_mac_axis_ready;
     VAR_counter_MUX_eth_8_h_l145_c5_9dfd_cond := VAR_mac_axis_ready;
     VAR_counter_MUX_eth_8_h_l157_c5_ad07_cond := VAR_mac_axis_ready;
     VAR_header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_cond := VAR_mac_axis_ready;
     VAR_header_ethertype_MUX_eth_8_h_l157_c5_ad07_cond := VAR_mac_axis_ready;
     VAR_header_src_mac_MUX_eth_8_h_l145_c5_9dfd_cond := VAR_mac_axis_ready;
     VAR_state_MUX_eth_8_h_l132_c7_7fdf_cond := VAR_mac_axis_ready;
     VAR_state_MUX_eth_8_h_l145_c5_9dfd_cond := VAR_mac_axis_ready;
     VAR_state_MUX_eth_8_h_l157_c5_ad07_cond := VAR_mac_axis_ready;
     VAR_BIN_OP_EQ_eth_8_h_l124_c6_b524_left := state;
     VAR_BIN_OP_EQ_eth_8_h_l142_c12_aa9e_left := state;
     VAR_BIN_OP_EQ_eth_8_h_l154_c12_627a_left := state;
     VAR_BIN_OP_EQ_eth_8_h_l168_c11_3cdc_left := state;
     VAR_state_MUX_eth_8_h_l126_c5_aa81_iffalse := state;
     VAR_state_MUX_eth_8_h_l132_c7_7fdf_iffalse := state;
     VAR_state_MUX_eth_8_h_l134_c9_070e_iffalse := state;
     VAR_state_MUX_eth_8_h_l145_c5_9dfd_iffalse := state;
     VAR_state_MUX_eth_8_h_l147_c7_263d_iffalse := state;
     VAR_state_MUX_eth_8_h_l157_c5_ad07_iffalse := state;
     VAR_state_MUX_eth_8_h_l159_c7_a669_iffalse := state;
     VAR_state_MUX_eth_8_h_l168_c8_2c73_iffalse := state;
     VAR_state_MUX_eth_8_h_l173_c5_36ba_iffalse := state;
     -- CONST_REF_RD_uint48_t_eth_header_t_src_mac_d41d_eth_8_h_l146_l144_l145_l142_DUPLICATE_9d38 LATENCY=0
     VAR_CONST_REF_RD_uint48_t_eth_header_t_src_mac_d41d_eth_8_h_l146_l144_l145_l142_DUPLICATE_9d38_return_output := header.src_mac;

     -- CONST_REF_RD_eth_header_t_eth8_frame_t_stream_t_data_header_d41d[eth_8_h_l128_c18_33e7] LATENCY=0
     VAR_CONST_REF_RD_eth_header_t_eth8_frame_t_stream_t_data_header_d41d_eth_8_h_l128_c18_33e7_return_output := VAR_frame.data.header;

     -- BIN_OP_EQ[eth_8_h_l134_c12_b9c4] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l134_c12_b9c4_left <= VAR_BIN_OP_EQ_eth_8_h_l134_c12_b9c4_left;
     BIN_OP_EQ_eth_8_h_l134_c12_b9c4_right <= VAR_BIN_OP_EQ_eth_8_h_l134_c12_b9c4_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l134_c12_b9c4_return_output := BIN_OP_EQ_eth_8_h_l134_c12_b9c4_return_output;

     -- CONST_REF_RD_uint16_t_eth_header_t_ethertype_d41d_eth_8_h_l157_l158_l142_l154_l156_DUPLICATE_90b7 LATENCY=0
     VAR_CONST_REF_RD_uint16_t_eth_header_t_ethertype_d41d_eth_8_h_l157_l158_l142_l154_l156_DUPLICATE_90b7_return_output := header.ethertype;

     -- BIN_OP_EQ[eth_8_h_l147_c10_f711] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l147_c10_f711_left <= VAR_BIN_OP_EQ_eth_8_h_l147_c10_f711_left;
     BIN_OP_EQ_eth_8_h_l147_c10_f711_right <= VAR_BIN_OP_EQ_eth_8_h_l147_c10_f711_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l147_c10_f711_return_output := BIN_OP_EQ_eth_8_h_l147_c10_f711_return_output;

     -- BIN_OP_PLUS[eth_8_h_l138_c11_0162] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_eth_8_h_l138_c11_0162_left <= VAR_BIN_OP_PLUS_eth_8_h_l138_c11_0162_left;
     BIN_OP_PLUS_eth_8_h_l138_c11_0162_right <= VAR_BIN_OP_PLUS_eth_8_h_l138_c11_0162_right;
     -- Outputs
     VAR_BIN_OP_PLUS_eth_8_h_l138_c11_0162_return_output := BIN_OP_PLUS_eth_8_h_l138_c11_0162_return_output;

     -- BIN_OP_PLUS[eth_8_h_l151_c9_fdf7] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_left <= VAR_BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_left;
     BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_right <= VAR_BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_right;
     -- Outputs
     VAR_BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_return_output := BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_return_output;

     -- BIN_OP_EQ[eth_8_h_l142_c12_aa9e] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l142_c12_aa9e_left <= VAR_BIN_OP_EQ_eth_8_h_l142_c12_aa9e_left;
     BIN_OP_EQ_eth_8_h_l142_c12_aa9e_right <= VAR_BIN_OP_EQ_eth_8_h_l142_c12_aa9e_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l142_c12_aa9e_return_output := BIN_OP_EQ_eth_8_h_l142_c12_aa9e_return_output;

     -- BIN_OP_EQ[eth_8_h_l168_c11_3cdc] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l168_c11_3cdc_left <= VAR_BIN_OP_EQ_eth_8_h_l168_c11_3cdc_left;
     BIN_OP_EQ_eth_8_h_l168_c11_3cdc_right <= VAR_BIN_OP_EQ_eth_8_h_l168_c11_3cdc_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l168_c11_3cdc_return_output := BIN_OP_EQ_eth_8_h_l168_c11_3cdc_return_output;

     -- BIN_OP_EQ[eth_8_h_l127_c10_c0b7] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l127_c10_c0b7_left <= VAR_BIN_OP_EQ_eth_8_h_l127_c10_c0b7_left;
     BIN_OP_EQ_eth_8_h_l127_c10_c0b7_right <= VAR_BIN_OP_EQ_eth_8_h_l127_c10_c0b7_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l127_c10_c0b7_return_output := BIN_OP_EQ_eth_8_h_l127_c10_c0b7_return_output;

     -- BIN_OP_EQ[eth_8_h_l124_c6_b524] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l124_c6_b524_left <= VAR_BIN_OP_EQ_eth_8_h_l124_c6_b524_left;
     BIN_OP_EQ_eth_8_h_l124_c6_b524_right <= VAR_BIN_OP_EQ_eth_8_h_l124_c6_b524_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l124_c6_b524_return_output := BIN_OP_EQ_eth_8_h_l124_c6_b524_return_output;

     -- BIN_OP_EQ[eth_8_h_l154_c12_627a] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l154_c12_627a_left <= VAR_BIN_OP_EQ_eth_8_h_l154_c12_627a_left;
     BIN_OP_EQ_eth_8_h_l154_c12_627a_right <= VAR_BIN_OP_EQ_eth_8_h_l154_c12_627a_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l154_c12_627a_return_output := BIN_OP_EQ_eth_8_h_l154_c12_627a_return_output;

     -- BIN_OP_EQ[eth_8_h_l159_c10_ca94] LATENCY=0
     -- Inputs
     BIN_OP_EQ_eth_8_h_l159_c10_ca94_left <= VAR_BIN_OP_EQ_eth_8_h_l159_c10_ca94_left;
     BIN_OP_EQ_eth_8_h_l159_c10_ca94_right <= VAR_BIN_OP_EQ_eth_8_h_l159_c10_ca94_right;
     -- Outputs
     VAR_BIN_OP_EQ_eth_8_h_l159_c10_ca94_return_output := BIN_OP_EQ_eth_8_h_l159_c10_ca94_return_output;

     -- BIN_OP_PLUS[eth_8_h_l163_c9_0f8b] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_left <= VAR_BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_left;
     BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_right <= VAR_BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_right;
     -- Outputs
     VAR_BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_return_output := BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_return_output;

     -- CONST_REF_RD_axis8_t_eth8_frame_t_stream_t_data_payload_d41d[eth_8_h_l170_c23_1fed] LATENCY=0
     VAR_CONST_REF_RD_axis8_t_eth8_frame_t_stream_t_data_payload_d41d_eth_8_h_l170_c23_1fed_return_output := VAR_frame.data.payload;

     -- CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_valid_d41d_eth_8_h_l171_l126_DUPLICATE_9a54 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_valid_d41d_eth_8_h_l171_l126_DUPLICATE_9a54_return_output := VAR_frame.valid;

     -- Submodule level 1
     VAR_counter_MUX_eth_8_h_l124_c3_97ab_cond := VAR_BIN_OP_EQ_eth_8_h_l124_c6_b524_return_output;
     VAR_header_MUX_eth_8_h_l124_c3_97ab_cond := VAR_BIN_OP_EQ_eth_8_h_l124_c6_b524_return_output;
     VAR_o_MUX_eth_8_h_l124_c3_97ab_cond := VAR_BIN_OP_EQ_eth_8_h_l124_c6_b524_return_output;
     VAR_state_MUX_eth_8_h_l124_c3_97ab_cond := VAR_BIN_OP_EQ_eth_8_h_l124_c6_b524_return_output;
     VAR_header_MUX_eth_8_h_l127_c7_ae5a_cond := VAR_BIN_OP_EQ_eth_8_h_l127_c10_c0b7_return_output;
     VAR_counter_MUX_eth_8_h_l134_c9_070e_cond := VAR_BIN_OP_EQ_eth_8_h_l134_c12_b9c4_return_output;
     VAR_state_MUX_eth_8_h_l134_c9_070e_cond := VAR_BIN_OP_EQ_eth_8_h_l134_c12_b9c4_return_output;
     VAR_counter_MUX_eth_8_h_l142_c9_b3e5_cond := VAR_BIN_OP_EQ_eth_8_h_l142_c12_aa9e_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l142_c9_b3e5_cond := VAR_BIN_OP_EQ_eth_8_h_l142_c12_aa9e_return_output;
     VAR_header_src_mac_MUX_eth_8_h_l142_c9_b3e5_cond := VAR_BIN_OP_EQ_eth_8_h_l142_c12_aa9e_return_output;
     VAR_o_MUX_eth_8_h_l142_c9_b3e5_cond := VAR_BIN_OP_EQ_eth_8_h_l142_c12_aa9e_return_output;
     VAR_state_MUX_eth_8_h_l142_c9_b3e5_cond := VAR_BIN_OP_EQ_eth_8_h_l142_c12_aa9e_return_output;
     VAR_counter_MUX_eth_8_h_l147_c7_263d_cond := VAR_BIN_OP_EQ_eth_8_h_l147_c10_f711_return_output;
     VAR_state_MUX_eth_8_h_l147_c7_263d_cond := VAR_BIN_OP_EQ_eth_8_h_l147_c10_f711_return_output;
     VAR_counter_MUX_eth_8_h_l154_c9_a57d_cond := VAR_BIN_OP_EQ_eth_8_h_l154_c12_627a_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l154_c9_a57d_cond := VAR_BIN_OP_EQ_eth_8_h_l154_c12_627a_return_output;
     VAR_o_MUX_eth_8_h_l154_c9_a57d_cond := VAR_BIN_OP_EQ_eth_8_h_l154_c12_627a_return_output;
     VAR_state_MUX_eth_8_h_l154_c9_a57d_cond := VAR_BIN_OP_EQ_eth_8_h_l154_c12_627a_return_output;
     VAR_counter_MUX_eth_8_h_l159_c7_a669_cond := VAR_BIN_OP_EQ_eth_8_h_l159_c10_ca94_return_output;
     VAR_state_MUX_eth_8_h_l159_c7_a669_cond := VAR_BIN_OP_EQ_eth_8_h_l159_c10_ca94_return_output;
     VAR_counter_MUX_eth_8_h_l168_c8_2c73_cond := VAR_BIN_OP_EQ_eth_8_h_l168_c11_3cdc_return_output;
     VAR_o_MUX_eth_8_h_l168_c8_2c73_cond := VAR_BIN_OP_EQ_eth_8_h_l168_c11_3cdc_return_output;
     VAR_state_MUX_eth_8_h_l168_c8_2c73_cond := VAR_BIN_OP_EQ_eth_8_h_l168_c11_3cdc_return_output;
     VAR_counter_eth_8_h_l138_c11_dd16 := resize(VAR_BIN_OP_PLUS_eth_8_h_l138_c11_0162_return_output, 3);
     VAR_counter_eth_8_h_l151_c9_baf5 := resize(VAR_BIN_OP_PLUS_eth_8_h_l151_c9_fdf7_return_output, 3);
     VAR_counter_eth_8_h_l163_c9_eca9 := resize(VAR_BIN_OP_PLUS_eth_8_h_l163_c9_0f8b_return_output, 3);
     VAR_header_MUX_eth_8_h_l127_c7_ae5a_iftrue := VAR_CONST_REF_RD_eth_header_t_eth8_frame_t_stream_t_data_header_d41d_eth_8_h_l128_c18_33e7_return_output;
     VAR_CONST_SL_8_eth_8_h_l158_c26_de39_x := VAR_CONST_REF_RD_uint16_t_eth_header_t_ethertype_d41d_eth_8_h_l157_l158_l142_l154_l156_DUPLICATE_90b7_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l142_c9_b3e5_iftrue := VAR_CONST_REF_RD_uint16_t_eth_header_t_ethertype_d41d_eth_8_h_l157_l158_l142_l154_l156_DUPLICATE_90b7_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l154_c9_a57d_iffalse := VAR_CONST_REF_RD_uint16_t_eth_header_t_ethertype_d41d_eth_8_h_l157_l158_l142_l154_l156_DUPLICATE_90b7_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l157_c5_ad07_iffalse := VAR_CONST_REF_RD_uint16_t_eth_header_t_ethertype_d41d_eth_8_h_l157_l158_l142_l154_l156_DUPLICATE_90b7_return_output;
     VAR_BIN_OP_AND_eth_8_h_l173_c8_c45c_right := VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_valid_d41d_eth_8_h_l171_l126_DUPLICATE_9a54_return_output;
     VAR_counter_MUX_eth_8_h_l126_c5_aa81_cond := VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_valid_d41d_eth_8_h_l171_l126_DUPLICATE_9a54_return_output;
     VAR_header_MUX_eth_8_h_l126_c5_aa81_cond := VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_valid_d41d_eth_8_h_l171_l126_DUPLICATE_9a54_return_output;
     VAR_o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_cond := VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_valid_d41d_eth_8_h_l171_l126_DUPLICATE_9a54_return_output;
     VAR_o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_cond := VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_valid_d41d_eth_8_h_l171_l126_DUPLICATE_9a54_return_output;
     VAR_state_MUX_eth_8_h_l126_c5_aa81_cond := VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_valid_d41d_eth_8_h_l171_l126_DUPLICATE_9a54_return_output;
     VAR_CONST_SL_8_eth_8_h_l146_c24_dc62_x := VAR_CONST_REF_RD_uint48_t_eth_header_t_src_mac_d41d_eth_8_h_l146_l144_l145_l142_DUPLICATE_9d38_return_output;
     VAR_header_src_mac_MUX_eth_8_h_l142_c9_b3e5_iffalse := VAR_CONST_REF_RD_uint48_t_eth_header_t_src_mac_d41d_eth_8_h_l146_l144_l145_l142_DUPLICATE_9d38_return_output;
     VAR_header_src_mac_MUX_eth_8_h_l145_c5_9dfd_iffalse := VAR_CONST_REF_RD_uint48_t_eth_header_t_src_mac_d41d_eth_8_h_l146_l144_l145_l142_DUPLICATE_9d38_return_output;
     VAR_counter_MUX_eth_8_h_l134_c9_070e_iffalse := VAR_counter_eth_8_h_l138_c11_dd16;
     VAR_counter_MUX_eth_8_h_l147_c7_263d_iffalse := VAR_counter_eth_8_h_l151_c9_baf5;
     VAR_counter_MUX_eth_8_h_l159_c7_a669_iffalse := VAR_counter_eth_8_h_l163_c9_eca9;
     -- counter_MUX[eth_8_h_l159_c7_a669] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l159_c7_a669_cond <= VAR_counter_MUX_eth_8_h_l159_c7_a669_cond;
     counter_MUX_eth_8_h_l159_c7_a669_iftrue <= VAR_counter_MUX_eth_8_h_l159_c7_a669_iftrue;
     counter_MUX_eth_8_h_l159_c7_a669_iffalse <= VAR_counter_MUX_eth_8_h_l159_c7_a669_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l159_c7_a669_return_output := counter_MUX_eth_8_h_l159_c7_a669_return_output;

     -- o_mac_axis_valid_MUX[eth_8_h_l126_c5_aa81] LATENCY=0
     -- Inputs
     o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_cond <= VAR_o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_cond;
     o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_iftrue <= VAR_o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_iftrue;
     o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_iffalse <= VAR_o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_iffalse;
     -- Outputs
     VAR_o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_return_output := o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_return_output;

     -- o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_21d2[eth_8_h_l168_c8_2c73] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_21d2_eth_8_h_l168_c8_2c73_return_output := CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_21d2(
     VAR_CONST_REF_RD_axis8_t_eth8_frame_t_stream_t_data_payload_d41d_eth_8_h_l170_c23_1fed_return_output,
     VAR_CONST_REF_RD_uint1_t_eth8_frame_t_stream_t_valid_d41d_eth_8_h_l171_l126_DUPLICATE_9a54_return_output,
     VAR_mac_axis_ready);

     -- counter_MUX[eth_8_h_l134_c9_070e] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l134_c9_070e_cond <= VAR_counter_MUX_eth_8_h_l134_c9_070e_cond;
     counter_MUX_eth_8_h_l134_c9_070e_iftrue <= VAR_counter_MUX_eth_8_h_l134_c9_070e_iftrue;
     counter_MUX_eth_8_h_l134_c9_070e_iffalse <= VAR_counter_MUX_eth_8_h_l134_c9_070e_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l134_c9_070e_return_output := counter_MUX_eth_8_h_l134_c9_070e_return_output;

     -- CONST_SL_8[eth_8_h_l146_c24_dc62] LATENCY=0
     -- Inputs
     CONST_SL_8_eth_8_h_l146_c24_dc62_x <= VAR_CONST_SL_8_eth_8_h_l146_c24_dc62_x;
     -- Outputs
     VAR_CONST_SL_8_eth_8_h_l146_c24_dc62_return_output := CONST_SL_8_eth_8_h_l146_c24_dc62_return_output;

     -- uint48_47_40[eth_8_h_l144_c32_b5ef] LATENCY=0
     VAR_uint48_47_40_eth_8_h_l144_c32_b5ef_return_output := uint48_47_40(
     VAR_CONST_REF_RD_uint48_t_eth_header_t_src_mac_d41d_eth_8_h_l146_l144_l145_l142_DUPLICATE_9d38_return_output);

     -- CONST_SL_8[eth_8_h_l158_c26_de39] LATENCY=0
     -- Inputs
     CONST_SL_8_eth_8_h_l158_c26_de39_x <= VAR_CONST_SL_8_eth_8_h_l158_c26_de39_x;
     -- Outputs
     VAR_CONST_SL_8_eth_8_h_l158_c26_de39_return_output := CONST_SL_8_eth_8_h_l158_c26_de39_return_output;

     -- counter_MUX[eth_8_h_l147_c7_263d] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l147_c7_263d_cond <= VAR_counter_MUX_eth_8_h_l147_c7_263d_cond;
     counter_MUX_eth_8_h_l147_c7_263d_iftrue <= VAR_counter_MUX_eth_8_h_l147_c7_263d_iftrue;
     counter_MUX_eth_8_h_l147_c7_263d_iffalse <= VAR_counter_MUX_eth_8_h_l147_c7_263d_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l147_c7_263d_return_output := counter_MUX_eth_8_h_l147_c7_263d_return_output;

     -- CONST_REF_RD_uint1_t_eth_8_tx_t_mac_axis_data_tlast_e8d9[eth_8_h_l173_c8_db11] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_eth_8_tx_t_mac_axis_data_tlast_e8d9_eth_8_h_l173_c8_db11_return_output := CONST_REF_RD_uint1_t_eth_8_tx_t_mac_axis_data_tlast_e8d9(
     VAR_CONST_REF_RD_axis8_t_eth8_frame_t_stream_t_data_payload_d41d_eth_8_h_l170_c23_1fed_return_output);

     -- header_MUX[eth_8_h_l127_c7_ae5a] LATENCY=0
     -- Inputs
     header_MUX_eth_8_h_l127_c7_ae5a_cond <= VAR_header_MUX_eth_8_h_l127_c7_ae5a_cond;
     header_MUX_eth_8_h_l127_c7_ae5a_iftrue <= VAR_header_MUX_eth_8_h_l127_c7_ae5a_iftrue;
     header_MUX_eth_8_h_l127_c7_ae5a_iffalse <= VAR_header_MUX_eth_8_h_l127_c7_ae5a_iffalse;
     -- Outputs
     VAR_header_MUX_eth_8_h_l127_c7_ae5a_return_output := header_MUX_eth_8_h_l127_c7_ae5a_return_output;

     -- uint16_15_8[eth_8_h_l156_c32_9efd] LATENCY=0
     VAR_uint16_15_8_eth_8_h_l156_c32_9efd_return_output := uint16_15_8(
     VAR_CONST_REF_RD_uint16_t_eth_header_t_ethertype_d41d_eth_8_h_l157_l158_l142_l154_l156_DUPLICATE_90b7_return_output);

     -- state_MUX[eth_8_h_l159_c7_a669] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l159_c7_a669_cond <= VAR_state_MUX_eth_8_h_l159_c7_a669_cond;
     state_MUX_eth_8_h_l159_c7_a669_iftrue <= VAR_state_MUX_eth_8_h_l159_c7_a669_iftrue;
     state_MUX_eth_8_h_l159_c7_a669_iffalse <= VAR_state_MUX_eth_8_h_l159_c7_a669_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l159_c7_a669_return_output := state_MUX_eth_8_h_l159_c7_a669_return_output;

     -- state_MUX[eth_8_h_l147_c7_263d] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l147_c7_263d_cond <= VAR_state_MUX_eth_8_h_l147_c7_263d_cond;
     state_MUX_eth_8_h_l147_c7_263d_iftrue <= VAR_state_MUX_eth_8_h_l147_c7_263d_iftrue;
     state_MUX_eth_8_h_l147_c7_263d_iffalse <= VAR_state_MUX_eth_8_h_l147_c7_263d_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l147_c7_263d_return_output := state_MUX_eth_8_h_l147_c7_263d_return_output;

     -- state_MUX[eth_8_h_l134_c9_070e] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l134_c9_070e_cond <= VAR_state_MUX_eth_8_h_l134_c9_070e_cond;
     state_MUX_eth_8_h_l134_c9_070e_iftrue <= VAR_state_MUX_eth_8_h_l134_c9_070e_iftrue;
     state_MUX_eth_8_h_l134_c9_070e_iffalse <= VAR_state_MUX_eth_8_h_l134_c9_070e_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l134_c9_070e_return_output := state_MUX_eth_8_h_l134_c9_070e_return_output;

     -- Submodule level 2
     VAR_BIN_OP_AND_eth_8_h_l173_c8_c45c_left := VAR_CONST_REF_RD_uint1_t_eth_8_tx_t_mac_axis_data_tlast_e8d9_eth_8_h_l173_c8_db11_return_output;
     VAR_header_src_mac_MUX_eth_8_h_l145_c5_9dfd_iftrue := VAR_CONST_SL_8_eth_8_h_l146_c24_dc62_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l157_c5_ad07_iftrue := VAR_CONST_SL_8_eth_8_h_l158_c26_de39_return_output;
     VAR_counter_MUX_eth_8_h_l132_c7_7fdf_iftrue := VAR_counter_MUX_eth_8_h_l134_c9_070e_return_output;
     VAR_counter_MUX_eth_8_h_l145_c5_9dfd_iftrue := VAR_counter_MUX_eth_8_h_l147_c7_263d_return_output;
     VAR_counter_MUX_eth_8_h_l157_c5_ad07_iftrue := VAR_counter_MUX_eth_8_h_l159_c7_a669_return_output;
     VAR_o_MUX_eth_8_h_l168_c8_2c73_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_21d2_eth_8_h_l168_c8_2c73_return_output;
     VAR_state_MUX_eth_8_h_l132_c7_7fdf_iftrue := VAR_state_MUX_eth_8_h_l134_c9_070e_return_output;
     VAR_state_MUX_eth_8_h_l145_c5_9dfd_iftrue := VAR_state_MUX_eth_8_h_l147_c7_263d_return_output;
     VAR_state_MUX_eth_8_h_l157_c5_ad07_iftrue := VAR_state_MUX_eth_8_h_l159_c7_a669_return_output;
     -- state_MUX[eth_8_h_l145_c5_9dfd] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l145_c5_9dfd_cond <= VAR_state_MUX_eth_8_h_l145_c5_9dfd_cond;
     state_MUX_eth_8_h_l145_c5_9dfd_iftrue <= VAR_state_MUX_eth_8_h_l145_c5_9dfd_iftrue;
     state_MUX_eth_8_h_l145_c5_9dfd_iffalse <= VAR_state_MUX_eth_8_h_l145_c5_9dfd_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l145_c5_9dfd_return_output := state_MUX_eth_8_h_l145_c5_9dfd_return_output;

     -- o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_893a[eth_8_h_l154_c9_a57d] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_893a_eth_8_h_l154_c9_a57d_return_output := CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_893a(
     eth_8_tx_t_NULL,
     to_unsigned(0, 1),
     to_unsigned(1, 1),
     VAR_uint16_15_8_eth_8_h_l156_c32_9efd_return_output);

     -- counter_MUX[eth_8_h_l157_c5_ad07] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l157_c5_ad07_cond <= VAR_counter_MUX_eth_8_h_l157_c5_ad07_cond;
     counter_MUX_eth_8_h_l157_c5_ad07_iftrue <= VAR_counter_MUX_eth_8_h_l157_c5_ad07_iftrue;
     counter_MUX_eth_8_h_l157_c5_ad07_iffalse <= VAR_counter_MUX_eth_8_h_l157_c5_ad07_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l157_c5_ad07_return_output := counter_MUX_eth_8_h_l157_c5_ad07_return_output;

     -- o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_893a[eth_8_h_l142_c9_b3e5] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_893a_eth_8_h_l142_c9_b3e5_return_output := CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_893a(
     eth_8_tx_t_NULL,
     to_unsigned(0, 1),
     to_unsigned(1, 1),
     VAR_uint48_47_40_eth_8_h_l144_c32_b5ef_return_output);

     -- state_MUX[eth_8_h_l157_c5_ad07] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l157_c5_ad07_cond <= VAR_state_MUX_eth_8_h_l157_c5_ad07_cond;
     state_MUX_eth_8_h_l157_c5_ad07_iftrue <= VAR_state_MUX_eth_8_h_l157_c5_ad07_iftrue;
     state_MUX_eth_8_h_l157_c5_ad07_iffalse <= VAR_state_MUX_eth_8_h_l157_c5_ad07_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l157_c5_ad07_return_output := state_MUX_eth_8_h_l157_c5_ad07_return_output;

     -- o_MUX[eth_8_h_l168_c8_2c73] LATENCY=0
     -- Inputs
     o_MUX_eth_8_h_l168_c8_2c73_cond <= VAR_o_MUX_eth_8_h_l168_c8_2c73_cond;
     o_MUX_eth_8_h_l168_c8_2c73_iftrue <= VAR_o_MUX_eth_8_h_l168_c8_2c73_iftrue;
     o_MUX_eth_8_h_l168_c8_2c73_iffalse <= VAR_o_MUX_eth_8_h_l168_c8_2c73_iffalse;
     -- Outputs
     VAR_o_MUX_eth_8_h_l168_c8_2c73_return_output := o_MUX_eth_8_h_l168_c8_2c73_return_output;

     -- state_MUX[eth_8_h_l132_c7_7fdf] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l132_c7_7fdf_cond <= VAR_state_MUX_eth_8_h_l132_c7_7fdf_cond;
     state_MUX_eth_8_h_l132_c7_7fdf_iftrue <= VAR_state_MUX_eth_8_h_l132_c7_7fdf_iftrue;
     state_MUX_eth_8_h_l132_c7_7fdf_iffalse <= VAR_state_MUX_eth_8_h_l132_c7_7fdf_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l132_c7_7fdf_return_output := state_MUX_eth_8_h_l132_c7_7fdf_return_output;

     -- header_src_mac_MUX[eth_8_h_l145_c5_9dfd] LATENCY=0
     -- Inputs
     header_src_mac_MUX_eth_8_h_l145_c5_9dfd_cond <= VAR_header_src_mac_MUX_eth_8_h_l145_c5_9dfd_cond;
     header_src_mac_MUX_eth_8_h_l145_c5_9dfd_iftrue <= VAR_header_src_mac_MUX_eth_8_h_l145_c5_9dfd_iftrue;
     header_src_mac_MUX_eth_8_h_l145_c5_9dfd_iffalse <= VAR_header_src_mac_MUX_eth_8_h_l145_c5_9dfd_iffalse;
     -- Outputs
     VAR_header_src_mac_MUX_eth_8_h_l145_c5_9dfd_return_output := header_src_mac_MUX_eth_8_h_l145_c5_9dfd_return_output;

     -- counter_MUX[eth_8_h_l145_c5_9dfd] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l145_c5_9dfd_cond <= VAR_counter_MUX_eth_8_h_l145_c5_9dfd_cond;
     counter_MUX_eth_8_h_l145_c5_9dfd_iftrue <= VAR_counter_MUX_eth_8_h_l145_c5_9dfd_iftrue;
     counter_MUX_eth_8_h_l145_c5_9dfd_iffalse <= VAR_counter_MUX_eth_8_h_l145_c5_9dfd_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l145_c5_9dfd_return_output := counter_MUX_eth_8_h_l145_c5_9dfd_return_output;

     -- counter_MUX[eth_8_h_l132_c7_7fdf] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l132_c7_7fdf_cond <= VAR_counter_MUX_eth_8_h_l132_c7_7fdf_cond;
     counter_MUX_eth_8_h_l132_c7_7fdf_iftrue <= VAR_counter_MUX_eth_8_h_l132_c7_7fdf_iftrue;
     counter_MUX_eth_8_h_l132_c7_7fdf_iffalse <= VAR_counter_MUX_eth_8_h_l132_c7_7fdf_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l132_c7_7fdf_return_output := counter_MUX_eth_8_h_l132_c7_7fdf_return_output;

     -- header_ethertype_MUX[eth_8_h_l157_c5_ad07] LATENCY=0
     -- Inputs
     header_ethertype_MUX_eth_8_h_l157_c5_ad07_cond <= VAR_header_ethertype_MUX_eth_8_h_l157_c5_ad07_cond;
     header_ethertype_MUX_eth_8_h_l157_c5_ad07_iftrue <= VAR_header_ethertype_MUX_eth_8_h_l157_c5_ad07_iftrue;
     header_ethertype_MUX_eth_8_h_l157_c5_ad07_iffalse <= VAR_header_ethertype_MUX_eth_8_h_l157_c5_ad07_iffalse;
     -- Outputs
     VAR_header_ethertype_MUX_eth_8_h_l157_c5_ad07_return_output := header_ethertype_MUX_eth_8_h_l157_c5_ad07_return_output;

     -- BIN_OP_AND[eth_8_h_l173_c8_c45c] LATENCY=0
     -- Inputs
     BIN_OP_AND_eth_8_h_l173_c8_c45c_left <= VAR_BIN_OP_AND_eth_8_h_l173_c8_c45c_left;
     BIN_OP_AND_eth_8_h_l173_c8_c45c_right <= VAR_BIN_OP_AND_eth_8_h_l173_c8_c45c_right;
     -- Outputs
     VAR_BIN_OP_AND_eth_8_h_l173_c8_c45c_return_output := BIN_OP_AND_eth_8_h_l173_c8_c45c_return_output;

     -- CONST_REF_RD_uint48_t_eth_header_t_dst_mac_d41d_eth_8_h_l133_l131_l132_DUPLICATE_0e84 LATENCY=0
     VAR_CONST_REF_RD_uint48_t_eth_header_t_dst_mac_d41d_eth_8_h_l133_l131_l132_DUPLICATE_0e84_return_output := VAR_header_MUX_eth_8_h_l127_c7_ae5a_return_output.dst_mac;

     -- Submodule level 3
     VAR_BIN_OP_AND_eth_8_h_l173_c8_0dfd_left := VAR_BIN_OP_AND_eth_8_h_l173_c8_c45c_return_output;
     VAR_CONST_SL_8_eth_8_h_l133_c26_0e7c_x := VAR_CONST_REF_RD_uint48_t_eth_header_t_dst_mac_d41d_eth_8_h_l133_l131_l132_DUPLICATE_0e84_return_output;
     VAR_header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_iffalse := VAR_CONST_REF_RD_uint48_t_eth_header_t_dst_mac_d41d_eth_8_h_l133_l131_l132_DUPLICATE_0e84_return_output;
     VAR_counter_MUX_eth_8_h_l126_c5_aa81_iftrue := VAR_counter_MUX_eth_8_h_l132_c7_7fdf_return_output;
     VAR_counter_MUX_eth_8_h_l142_c9_b3e5_iftrue := VAR_counter_MUX_eth_8_h_l145_c5_9dfd_return_output;
     VAR_counter_MUX_eth_8_h_l154_c9_a57d_iftrue := VAR_counter_MUX_eth_8_h_l157_c5_ad07_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l154_c9_a57d_iftrue := VAR_header_ethertype_MUX_eth_8_h_l157_c5_ad07_return_output;
     VAR_header_src_mac_MUX_eth_8_h_l142_c9_b3e5_iftrue := VAR_header_src_mac_MUX_eth_8_h_l145_c5_9dfd_return_output;
     VAR_o_MUX_eth_8_h_l154_c9_a57d_iffalse := VAR_o_MUX_eth_8_h_l168_c8_2c73_return_output;
     VAR_o_MUX_eth_8_h_l142_c9_b3e5_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_893a_eth_8_h_l142_c9_b3e5_return_output;
     VAR_o_MUX_eth_8_h_l154_c9_a57d_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_893a_eth_8_h_l154_c9_a57d_return_output;
     VAR_state_MUX_eth_8_h_l126_c5_aa81_iftrue := VAR_state_MUX_eth_8_h_l132_c7_7fdf_return_output;
     VAR_state_MUX_eth_8_h_l142_c9_b3e5_iftrue := VAR_state_MUX_eth_8_h_l145_c5_9dfd_return_output;
     VAR_state_MUX_eth_8_h_l154_c9_a57d_iftrue := VAR_state_MUX_eth_8_h_l157_c5_ad07_return_output;
     -- o_MUX[eth_8_h_l154_c9_a57d] LATENCY=0
     -- Inputs
     o_MUX_eth_8_h_l154_c9_a57d_cond <= VAR_o_MUX_eth_8_h_l154_c9_a57d_cond;
     o_MUX_eth_8_h_l154_c9_a57d_iftrue <= VAR_o_MUX_eth_8_h_l154_c9_a57d_iftrue;
     o_MUX_eth_8_h_l154_c9_a57d_iffalse <= VAR_o_MUX_eth_8_h_l154_c9_a57d_iffalse;
     -- Outputs
     VAR_o_MUX_eth_8_h_l154_c9_a57d_return_output := o_MUX_eth_8_h_l154_c9_a57d_return_output;

     -- header_src_mac_MUX[eth_8_h_l142_c9_b3e5] LATENCY=0
     -- Inputs
     header_src_mac_MUX_eth_8_h_l142_c9_b3e5_cond <= VAR_header_src_mac_MUX_eth_8_h_l142_c9_b3e5_cond;
     header_src_mac_MUX_eth_8_h_l142_c9_b3e5_iftrue <= VAR_header_src_mac_MUX_eth_8_h_l142_c9_b3e5_iftrue;
     header_src_mac_MUX_eth_8_h_l142_c9_b3e5_iffalse <= VAR_header_src_mac_MUX_eth_8_h_l142_c9_b3e5_iffalse;
     -- Outputs
     VAR_header_src_mac_MUX_eth_8_h_l142_c9_b3e5_return_output := header_src_mac_MUX_eth_8_h_l142_c9_b3e5_return_output;

     -- counter_MUX[eth_8_h_l126_c5_aa81] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l126_c5_aa81_cond <= VAR_counter_MUX_eth_8_h_l126_c5_aa81_cond;
     counter_MUX_eth_8_h_l126_c5_aa81_iftrue <= VAR_counter_MUX_eth_8_h_l126_c5_aa81_iftrue;
     counter_MUX_eth_8_h_l126_c5_aa81_iffalse <= VAR_counter_MUX_eth_8_h_l126_c5_aa81_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l126_c5_aa81_return_output := counter_MUX_eth_8_h_l126_c5_aa81_return_output;

     -- CONST_SL_8[eth_8_h_l133_c26_0e7c] LATENCY=0
     -- Inputs
     CONST_SL_8_eth_8_h_l133_c26_0e7c_x <= VAR_CONST_SL_8_eth_8_h_l133_c26_0e7c_x;
     -- Outputs
     VAR_CONST_SL_8_eth_8_h_l133_c26_0e7c_return_output := CONST_SL_8_eth_8_h_l133_c26_0e7c_return_output;

     -- header_ethertype_MUX[eth_8_h_l154_c9_a57d] LATENCY=0
     -- Inputs
     header_ethertype_MUX_eth_8_h_l154_c9_a57d_cond <= VAR_header_ethertype_MUX_eth_8_h_l154_c9_a57d_cond;
     header_ethertype_MUX_eth_8_h_l154_c9_a57d_iftrue <= VAR_header_ethertype_MUX_eth_8_h_l154_c9_a57d_iftrue;
     header_ethertype_MUX_eth_8_h_l154_c9_a57d_iffalse <= VAR_header_ethertype_MUX_eth_8_h_l154_c9_a57d_iffalse;
     -- Outputs
     VAR_header_ethertype_MUX_eth_8_h_l154_c9_a57d_return_output := header_ethertype_MUX_eth_8_h_l154_c9_a57d_return_output;

     -- state_MUX[eth_8_h_l126_c5_aa81] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l126_c5_aa81_cond <= VAR_state_MUX_eth_8_h_l126_c5_aa81_cond;
     state_MUX_eth_8_h_l126_c5_aa81_iftrue <= VAR_state_MUX_eth_8_h_l126_c5_aa81_iftrue;
     state_MUX_eth_8_h_l126_c5_aa81_iffalse <= VAR_state_MUX_eth_8_h_l126_c5_aa81_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l126_c5_aa81_return_output := state_MUX_eth_8_h_l126_c5_aa81_return_output;

     -- uint48_47_40[eth_8_h_l131_c34_43a3] LATENCY=0
     VAR_uint48_47_40_eth_8_h_l131_c34_43a3_return_output := uint48_47_40(
     VAR_CONST_REF_RD_uint48_t_eth_header_t_dst_mac_d41d_eth_8_h_l133_l131_l132_DUPLICATE_0e84_return_output);

     -- BIN_OP_AND[eth_8_h_l173_c8_0dfd] LATENCY=0
     -- Inputs
     BIN_OP_AND_eth_8_h_l173_c8_0dfd_left <= VAR_BIN_OP_AND_eth_8_h_l173_c8_0dfd_left;
     BIN_OP_AND_eth_8_h_l173_c8_0dfd_right <= VAR_BIN_OP_AND_eth_8_h_l173_c8_0dfd_right;
     -- Outputs
     VAR_BIN_OP_AND_eth_8_h_l173_c8_0dfd_return_output := BIN_OP_AND_eth_8_h_l173_c8_0dfd_return_output;

     -- Submodule level 4
     VAR_counter_MUX_eth_8_h_l173_c5_36ba_cond := VAR_BIN_OP_AND_eth_8_h_l173_c8_0dfd_return_output;
     VAR_state_MUX_eth_8_h_l173_c5_36ba_cond := VAR_BIN_OP_AND_eth_8_h_l173_c8_0dfd_return_output;
     VAR_header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_iftrue := VAR_CONST_SL_8_eth_8_h_l133_c26_0e7c_return_output;
     VAR_counter_MUX_eth_8_h_l124_c3_97ab_iftrue := VAR_counter_MUX_eth_8_h_l126_c5_aa81_return_output;
     VAR_header_ethertype_MUX_eth_8_h_l142_c9_b3e5_iffalse := VAR_header_ethertype_MUX_eth_8_h_l154_c9_a57d_return_output;
     VAR_o_MUX_eth_8_h_l142_c9_b3e5_iffalse := VAR_o_MUX_eth_8_h_l154_c9_a57d_return_output;
     VAR_state_MUX_eth_8_h_l124_c3_97ab_iftrue := VAR_state_MUX_eth_8_h_l126_c5_aa81_return_output;
     -- header_ethertype_MUX[eth_8_h_l142_c9_b3e5] LATENCY=0
     -- Inputs
     header_ethertype_MUX_eth_8_h_l142_c9_b3e5_cond <= VAR_header_ethertype_MUX_eth_8_h_l142_c9_b3e5_cond;
     header_ethertype_MUX_eth_8_h_l142_c9_b3e5_iftrue <= VAR_header_ethertype_MUX_eth_8_h_l142_c9_b3e5_iftrue;
     header_ethertype_MUX_eth_8_h_l142_c9_b3e5_iffalse <= VAR_header_ethertype_MUX_eth_8_h_l142_c9_b3e5_iffalse;
     -- Outputs
     VAR_header_ethertype_MUX_eth_8_h_l142_c9_b3e5_return_output := header_ethertype_MUX_eth_8_h_l142_c9_b3e5_return_output;

     -- counter_MUX[eth_8_h_l173_c5_36ba] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l173_c5_36ba_cond <= VAR_counter_MUX_eth_8_h_l173_c5_36ba_cond;
     counter_MUX_eth_8_h_l173_c5_36ba_iftrue <= VAR_counter_MUX_eth_8_h_l173_c5_36ba_iftrue;
     counter_MUX_eth_8_h_l173_c5_36ba_iffalse <= VAR_counter_MUX_eth_8_h_l173_c5_36ba_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l173_c5_36ba_return_output := counter_MUX_eth_8_h_l173_c5_36ba_return_output;

     -- o_mac_axis_data_tdata_TRUE_INPUT_MUX_CONST_REF_RD_uint8_t_1_eth_8_tx_t_mac_axis_data_tdata_37d3[eth_8_h_l126_c5_aa81] LATENCY=0
     VAR_o_mac_axis_data_tdata_TRUE_INPUT_MUX_CONST_REF_RD_uint8_t_1_eth_8_tx_t_mac_axis_data_tdata_37d3_eth_8_h_l126_c5_aa81_return_output := CONST_REF_RD_uint8_t_1_eth_8_tx_t_mac_axis_data_tdata_37d3(
     VAR_uint48_47_40_eth_8_h_l131_c34_43a3_return_output);

     -- o_MUX[eth_8_h_l142_c9_b3e5] LATENCY=0
     -- Inputs
     o_MUX_eth_8_h_l142_c9_b3e5_cond <= VAR_o_MUX_eth_8_h_l142_c9_b3e5_cond;
     o_MUX_eth_8_h_l142_c9_b3e5_iftrue <= VAR_o_MUX_eth_8_h_l142_c9_b3e5_iftrue;
     o_MUX_eth_8_h_l142_c9_b3e5_iffalse <= VAR_o_MUX_eth_8_h_l142_c9_b3e5_iffalse;
     -- Outputs
     VAR_o_MUX_eth_8_h_l142_c9_b3e5_return_output := o_MUX_eth_8_h_l142_c9_b3e5_return_output;

     -- state_MUX[eth_8_h_l173_c5_36ba] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l173_c5_36ba_cond <= VAR_state_MUX_eth_8_h_l173_c5_36ba_cond;
     state_MUX_eth_8_h_l173_c5_36ba_iftrue <= VAR_state_MUX_eth_8_h_l173_c5_36ba_iftrue;
     state_MUX_eth_8_h_l173_c5_36ba_iffalse <= VAR_state_MUX_eth_8_h_l173_c5_36ba_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l173_c5_36ba_return_output := state_MUX_eth_8_h_l173_c5_36ba_return_output;

     -- header_dst_mac_MUX[eth_8_h_l132_c7_7fdf] LATENCY=0
     -- Inputs
     header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_cond <= VAR_header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_cond;
     header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_iftrue <= VAR_header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_iftrue;
     header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_iffalse <= VAR_header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_iffalse;
     -- Outputs
     VAR_header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_return_output := header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_return_output;

     -- Submodule level 5
     VAR_counter_MUX_eth_8_h_l168_c8_2c73_iftrue := VAR_counter_MUX_eth_8_h_l173_c5_36ba_return_output;
     VAR_o_MUX_eth_8_h_l124_c3_97ab_iffalse := VAR_o_MUX_eth_8_h_l142_c9_b3e5_return_output;
     VAR_o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_iftrue := VAR_o_mac_axis_data_tdata_TRUE_INPUT_MUX_CONST_REF_RD_uint8_t_1_eth_8_tx_t_mac_axis_data_tdata_37d3_eth_8_h_l126_c5_aa81_return_output;
     VAR_state_MUX_eth_8_h_l168_c8_2c73_iftrue := VAR_state_MUX_eth_8_h_l173_c5_36ba_return_output;
     -- header_FALSE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_488d[eth_8_h_l124_c3_97ab] LATENCY=0
     VAR_header_FALSE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_488d_eth_8_h_l124_c3_97ab_return_output := CONST_REF_RD_eth_header_t_eth_header_t_488d(
     header,
     VAR_header_src_mac_MUX_eth_8_h_l142_c9_b3e5_return_output,
     VAR_header_ethertype_MUX_eth_8_h_l142_c9_b3e5_return_output);

     -- o_mac_axis_data_tdata_MUX[eth_8_h_l126_c5_aa81] LATENCY=0
     -- Inputs
     o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_cond <= VAR_o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_cond;
     o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_iftrue <= VAR_o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_iftrue;
     o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_iffalse <= VAR_o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_iffalse;
     -- Outputs
     VAR_o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_return_output := o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_return_output;

     -- state_MUX[eth_8_h_l168_c8_2c73] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l168_c8_2c73_cond <= VAR_state_MUX_eth_8_h_l168_c8_2c73_cond;
     state_MUX_eth_8_h_l168_c8_2c73_iftrue <= VAR_state_MUX_eth_8_h_l168_c8_2c73_iftrue;
     state_MUX_eth_8_h_l168_c8_2c73_iffalse <= VAR_state_MUX_eth_8_h_l168_c8_2c73_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l168_c8_2c73_return_output := state_MUX_eth_8_h_l168_c8_2c73_return_output;

     -- counter_MUX[eth_8_h_l168_c8_2c73] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l168_c8_2c73_cond <= VAR_counter_MUX_eth_8_h_l168_c8_2c73_cond;
     counter_MUX_eth_8_h_l168_c8_2c73_iftrue <= VAR_counter_MUX_eth_8_h_l168_c8_2c73_iftrue;
     counter_MUX_eth_8_h_l168_c8_2c73_iffalse <= VAR_counter_MUX_eth_8_h_l168_c8_2c73_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l168_c8_2c73_return_output := counter_MUX_eth_8_h_l168_c8_2c73_return_output;

     -- header_TRUE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_e484[eth_8_h_l126_c5_aa81] LATENCY=0
     VAR_header_TRUE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_e484_eth_8_h_l126_c5_aa81_return_output := CONST_REF_RD_eth_header_t_eth_header_t_e484(
     VAR_header_MUX_eth_8_h_l127_c7_ae5a_return_output,
     VAR_header_dst_mac_MUX_eth_8_h_l132_c7_7fdf_return_output);

     -- Submodule level 6
     VAR_counter_MUX_eth_8_h_l154_c9_a57d_iffalse := VAR_counter_MUX_eth_8_h_l168_c8_2c73_return_output;
     VAR_header_MUX_eth_8_h_l124_c3_97ab_iffalse := VAR_header_FALSE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_488d_eth_8_h_l124_c3_97ab_return_output;
     VAR_header_MUX_eth_8_h_l126_c5_aa81_iftrue := VAR_header_TRUE_INPUT_MUX_CONST_REF_RD_eth_header_t_eth_header_t_e484_eth_8_h_l126_c5_aa81_return_output;
     VAR_state_MUX_eth_8_h_l154_c9_a57d_iffalse := VAR_state_MUX_eth_8_h_l168_c8_2c73_return_output;
     -- o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_dc58[eth_8_h_l124_c3_97ab] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_dc58_eth_8_h_l124_c3_97ab_return_output := CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_dc58(
     eth_8_tx_t_NULL,
     to_unsigned(0, 1),
     VAR_o_mac_axis_valid_MUX_eth_8_h_l126_c5_aa81_return_output,
     VAR_o_mac_axis_data_tdata_MUX_eth_8_h_l126_c5_aa81_return_output);

     -- counter_MUX[eth_8_h_l154_c9_a57d] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l154_c9_a57d_cond <= VAR_counter_MUX_eth_8_h_l154_c9_a57d_cond;
     counter_MUX_eth_8_h_l154_c9_a57d_iftrue <= VAR_counter_MUX_eth_8_h_l154_c9_a57d_iftrue;
     counter_MUX_eth_8_h_l154_c9_a57d_iffalse <= VAR_counter_MUX_eth_8_h_l154_c9_a57d_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l154_c9_a57d_return_output := counter_MUX_eth_8_h_l154_c9_a57d_return_output;

     -- header_MUX[eth_8_h_l126_c5_aa81] LATENCY=0
     -- Inputs
     header_MUX_eth_8_h_l126_c5_aa81_cond <= VAR_header_MUX_eth_8_h_l126_c5_aa81_cond;
     header_MUX_eth_8_h_l126_c5_aa81_iftrue <= VAR_header_MUX_eth_8_h_l126_c5_aa81_iftrue;
     header_MUX_eth_8_h_l126_c5_aa81_iffalse <= VAR_header_MUX_eth_8_h_l126_c5_aa81_iffalse;
     -- Outputs
     VAR_header_MUX_eth_8_h_l126_c5_aa81_return_output := header_MUX_eth_8_h_l126_c5_aa81_return_output;

     -- state_MUX[eth_8_h_l154_c9_a57d] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l154_c9_a57d_cond <= VAR_state_MUX_eth_8_h_l154_c9_a57d_cond;
     state_MUX_eth_8_h_l154_c9_a57d_iftrue <= VAR_state_MUX_eth_8_h_l154_c9_a57d_iftrue;
     state_MUX_eth_8_h_l154_c9_a57d_iffalse <= VAR_state_MUX_eth_8_h_l154_c9_a57d_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l154_c9_a57d_return_output := state_MUX_eth_8_h_l154_c9_a57d_return_output;

     -- Submodule level 7
     VAR_counter_MUX_eth_8_h_l142_c9_b3e5_iffalse := VAR_counter_MUX_eth_8_h_l154_c9_a57d_return_output;
     VAR_header_MUX_eth_8_h_l124_c3_97ab_iftrue := VAR_header_MUX_eth_8_h_l126_c5_aa81_return_output;
     VAR_o_MUX_eth_8_h_l124_c3_97ab_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_eth_8_tx_t_eth_8_tx_t_dc58_eth_8_h_l124_c3_97ab_return_output;
     VAR_state_MUX_eth_8_h_l142_c9_b3e5_iffalse := VAR_state_MUX_eth_8_h_l154_c9_a57d_return_output;
     -- header_MUX[eth_8_h_l124_c3_97ab] LATENCY=0
     -- Inputs
     header_MUX_eth_8_h_l124_c3_97ab_cond <= VAR_header_MUX_eth_8_h_l124_c3_97ab_cond;
     header_MUX_eth_8_h_l124_c3_97ab_iftrue <= VAR_header_MUX_eth_8_h_l124_c3_97ab_iftrue;
     header_MUX_eth_8_h_l124_c3_97ab_iffalse <= VAR_header_MUX_eth_8_h_l124_c3_97ab_iffalse;
     -- Outputs
     VAR_header_MUX_eth_8_h_l124_c3_97ab_return_output := header_MUX_eth_8_h_l124_c3_97ab_return_output;

     -- counter_MUX[eth_8_h_l142_c9_b3e5] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l142_c9_b3e5_cond <= VAR_counter_MUX_eth_8_h_l142_c9_b3e5_cond;
     counter_MUX_eth_8_h_l142_c9_b3e5_iftrue <= VAR_counter_MUX_eth_8_h_l142_c9_b3e5_iftrue;
     counter_MUX_eth_8_h_l142_c9_b3e5_iffalse <= VAR_counter_MUX_eth_8_h_l142_c9_b3e5_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l142_c9_b3e5_return_output := counter_MUX_eth_8_h_l142_c9_b3e5_return_output;

     -- state_MUX[eth_8_h_l142_c9_b3e5] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l142_c9_b3e5_cond <= VAR_state_MUX_eth_8_h_l142_c9_b3e5_cond;
     state_MUX_eth_8_h_l142_c9_b3e5_iftrue <= VAR_state_MUX_eth_8_h_l142_c9_b3e5_iftrue;
     state_MUX_eth_8_h_l142_c9_b3e5_iffalse <= VAR_state_MUX_eth_8_h_l142_c9_b3e5_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l142_c9_b3e5_return_output := state_MUX_eth_8_h_l142_c9_b3e5_return_output;

     -- o_MUX[eth_8_h_l124_c3_97ab] LATENCY=0
     -- Inputs
     o_MUX_eth_8_h_l124_c3_97ab_cond <= VAR_o_MUX_eth_8_h_l124_c3_97ab_cond;
     o_MUX_eth_8_h_l124_c3_97ab_iftrue <= VAR_o_MUX_eth_8_h_l124_c3_97ab_iftrue;
     o_MUX_eth_8_h_l124_c3_97ab_iffalse <= VAR_o_MUX_eth_8_h_l124_c3_97ab_iffalse;
     -- Outputs
     VAR_o_MUX_eth_8_h_l124_c3_97ab_return_output := o_MUX_eth_8_h_l124_c3_97ab_return_output;

     -- Submodule level 8
     VAR_counter_MUX_eth_8_h_l124_c3_97ab_iffalse := VAR_counter_MUX_eth_8_h_l142_c9_b3e5_return_output;
     REG_VAR_header := VAR_header_MUX_eth_8_h_l124_c3_97ab_return_output;
     VAR_return_output := VAR_o_MUX_eth_8_h_l124_c3_97ab_return_output;
     VAR_state_MUX_eth_8_h_l124_c3_97ab_iffalse := VAR_state_MUX_eth_8_h_l142_c9_b3e5_return_output;
     -- state_MUX[eth_8_h_l124_c3_97ab] LATENCY=0
     -- Inputs
     state_MUX_eth_8_h_l124_c3_97ab_cond <= VAR_state_MUX_eth_8_h_l124_c3_97ab_cond;
     state_MUX_eth_8_h_l124_c3_97ab_iftrue <= VAR_state_MUX_eth_8_h_l124_c3_97ab_iftrue;
     state_MUX_eth_8_h_l124_c3_97ab_iffalse <= VAR_state_MUX_eth_8_h_l124_c3_97ab_iffalse;
     -- Outputs
     VAR_state_MUX_eth_8_h_l124_c3_97ab_return_output := state_MUX_eth_8_h_l124_c3_97ab_return_output;

     -- counter_MUX[eth_8_h_l124_c3_97ab] LATENCY=0
     -- Inputs
     counter_MUX_eth_8_h_l124_c3_97ab_cond <= VAR_counter_MUX_eth_8_h_l124_c3_97ab_cond;
     counter_MUX_eth_8_h_l124_c3_97ab_iftrue <= VAR_counter_MUX_eth_8_h_l124_c3_97ab_iftrue;
     counter_MUX_eth_8_h_l124_c3_97ab_iffalse <= VAR_counter_MUX_eth_8_h_l124_c3_97ab_iffalse;
     -- Outputs
     VAR_counter_MUX_eth_8_h_l124_c3_97ab_return_output := counter_MUX_eth_8_h_l124_c3_97ab_return_output;

     -- Submodule level 9
     REG_VAR_counter := VAR_counter_MUX_eth_8_h_l124_c3_97ab_return_output;
     REG_VAR_state := VAR_state_MUX_eth_8_h_l124_c3_97ab_return_output;
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
