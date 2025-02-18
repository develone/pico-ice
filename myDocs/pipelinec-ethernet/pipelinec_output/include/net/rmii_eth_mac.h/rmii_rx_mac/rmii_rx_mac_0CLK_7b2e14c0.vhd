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
-- Submodules: 71
entity rmii_rx_mac_0CLK_7b2e14c0 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 data_in : in unsigned(1 downto 0);
 data_in_valid : in unsigned(0 downto 0);
 return_output : out rmii_rx_mac_t);
end rmii_rx_mac_0CLK_7b2e14c0;
architecture arch of rmii_rx_mac_0CLK_7b2e14c0 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal data_in_regs : uint2_t_20 := (others => to_unsigned(0, 2));
signal data_in_valid_regs : uint1_t_20 := (others => to_unsigned(0, 1));
signal data_out_reg : unsigned(7 downto 0) := to_unsigned(0, 8);
signal state : unsigned(1 downto 0) := unsigned(rmii_rx_mac_state_t_to_slv(rmii_rx_mac_state_t'left));
signal bit_counter : unsigned(2 downto 0) := to_unsigned(0, 3);
signal byte_counter : unsigned(1 downto 0) := to_unsigned(0, 2);
signal fcs_reg : unsigned(31 downto 0) := to_unsigned(0, 32);
signal REG_COMB_data_in_regs : uint2_t_20;
signal REG_COMB_data_in_valid_regs : uint1_t_20;
signal REG_COMB_data_out_reg : unsigned(7 downto 0);
signal REG_COMB_state : unsigned(1 downto 0);
signal REG_COMB_bit_counter : unsigned(2 downto 0);
signal REG_COMB_byte_counter : unsigned(1 downto 0);
signal REG_COMB_fcs_reg : unsigned(31 downto 0);

-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- BIN_OP_EQ[rmii_eth_mac_h_l43_c22_c30b]
signal BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_left : unsigned(2 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_right : unsigned(2 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[rmii_eth_mac_h_l44_c53_f886]
signal BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_left : unsigned(1 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_right : unsigned(1 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[rmii_eth_mac_h_l44_c28_1ca3]
signal BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_left : unsigned(0 downto 0);
signal BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_right : unsigned(0 downto 0);
signal BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[rmii_eth_mac_h_l45_c48_43f0]
signal BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_left : unsigned(1 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_right : unsigned(1 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[rmii_eth_mac_h_l45_c23_051a]
signal BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_left : unsigned(0 downto 0);
signal BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_right : unsigned(0 downto 0);
signal BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[rmii_eth_mac_h_l48_c6_faf1]
signal BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_left : unsigned(1 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_right : unsigned(1 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_return_output : unsigned(0 downto 0);

-- valid_MUX[rmii_eth_mac_h_l48_c3_c14a]
signal valid_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
signal valid_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(0 downto 0);
signal valid_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(0 downto 0);
signal valid_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(0 downto 0);

-- err_MUX[rmii_eth_mac_h_l48_c3_c14a]
signal err_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
signal err_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(0 downto 0);
signal err_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(0 downto 0);
signal err_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l48_c3_c14a]
signal state_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(1 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l48_c3_c14a]
signal bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(2 downto 0);

-- fcs_reg_MUX[rmii_eth_mac_h_l48_c3_c14a]
signal fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
signal fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(31 downto 0);
signal fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(31 downto 0);
signal fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(31 downto 0);

-- last_MUX[rmii_eth_mac_h_l48_c3_c14a]
signal last_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(0 downto 0);

-- byte_counter_MUX[rmii_eth_mac_h_l48_c3_c14a]
signal byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(1 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(1 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(1 downto 0);

-- data_out_reg_MUX[rmii_eth_mac_h_l48_c3_c14a]
signal data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
signal data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(7 downto 0);
signal data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(7 downto 0);
signal data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(7 downto 0);

-- err_MUX[rmii_eth_mac_h_l54_c5_16d1]
signal err_MUX_rmii_eth_mac_h_l54_c5_16d1_cond : unsigned(0 downto 0);
signal err_MUX_rmii_eth_mac_h_l54_c5_16d1_iftrue : unsigned(0 downto 0);
signal err_MUX_rmii_eth_mac_h_l54_c5_16d1_iffalse : unsigned(0 downto 0);
signal err_MUX_rmii_eth_mac_h_l54_c5_16d1_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l54_c5_16d1]
signal state_MUX_rmii_eth_mac_h_l54_c5_16d1_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l54_c5_16d1_iftrue : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l54_c5_16d1_iffalse : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l54_c5_16d1_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[rmii_eth_mac_h_l59_c11_ef9f]
signal BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_left : unsigned(1 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_right : unsigned(1 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_return_output : unsigned(0 downto 0);

-- valid_MUX[rmii_eth_mac_h_l59_c8_0593]
signal valid_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
signal valid_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(0 downto 0);
signal valid_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(0 downto 0);
signal valid_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(0 downto 0);

-- err_MUX[rmii_eth_mac_h_l59_c8_0593]
signal err_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
signal err_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(0 downto 0);
signal err_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(0 downto 0);
signal err_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l59_c8_0593]
signal state_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(1 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l59_c8_0593]
signal bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(2 downto 0);

-- fcs_reg_MUX[rmii_eth_mac_h_l59_c8_0593]
signal fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
signal fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(31 downto 0);
signal fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(31 downto 0);
signal fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(31 downto 0);

-- last_MUX[rmii_eth_mac_h_l59_c8_0593]
signal last_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(0 downto 0);

-- byte_counter_MUX[rmii_eth_mac_h_l59_c8_0593]
signal byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(1 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(1 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(1 downto 0);

-- data_out_reg_MUX[rmii_eth_mac_h_l59_c8_0593]
signal data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
signal data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(7 downto 0);
signal data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(7 downto 0);
signal data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(7 downto 0);

-- err_MUX[rmii_eth_mac_h_l60_c5_ba9b]
signal err_MUX_rmii_eth_mac_h_l60_c5_ba9b_cond : unsigned(0 downto 0);
signal err_MUX_rmii_eth_mac_h_l60_c5_ba9b_iftrue : unsigned(0 downto 0);
signal err_MUX_rmii_eth_mac_h_l60_c5_ba9b_iffalse : unsigned(0 downto 0);
signal err_MUX_rmii_eth_mac_h_l60_c5_ba9b_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l60_c5_ba9b]
signal state_MUX_rmii_eth_mac_h_l60_c5_ba9b_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l60_c5_ba9b_iftrue : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l60_c5_ba9b_iffalse : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l60_c5_ba9b_return_output : unsigned(1 downto 0);

-- err_MUX[rmii_eth_mac_h_l63_c10_b6ce]
signal err_MUX_rmii_eth_mac_h_l63_c10_b6ce_cond : unsigned(0 downto 0);
signal err_MUX_rmii_eth_mac_h_l63_c10_b6ce_iftrue : unsigned(0 downto 0);
signal err_MUX_rmii_eth_mac_h_l63_c10_b6ce_iffalse : unsigned(0 downto 0);
signal err_MUX_rmii_eth_mac_h_l63_c10_b6ce_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l63_c10_b6ce]
signal state_MUX_rmii_eth_mac_h_l63_c10_b6ce_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l63_c10_b6ce_iftrue : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l63_c10_b6ce_iffalse : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l63_c10_b6ce_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[rmii_eth_mac_h_l71_c11_7142]
signal BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_left : unsigned(1 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_right : unsigned(1 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_return_output : unsigned(0 downto 0);

-- valid_MUX[rmii_eth_mac_h_l71_c8_4df6]
signal valid_MUX_rmii_eth_mac_h_l71_c8_4df6_cond : unsigned(0 downto 0);
signal valid_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue : unsigned(0 downto 0);
signal valid_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse : unsigned(0 downto 0);
signal valid_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l71_c8_4df6]
signal state_MUX_rmii_eth_mac_h_l71_c8_4df6_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output : unsigned(1 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l71_c8_4df6]
signal bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output : unsigned(2 downto 0);

-- fcs_reg_MUX[rmii_eth_mac_h_l71_c8_4df6]
signal fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_cond : unsigned(0 downto 0);
signal fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue : unsigned(31 downto 0);
signal fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse : unsigned(31 downto 0);
signal fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output : unsigned(31 downto 0);

-- last_MUX[rmii_eth_mac_h_l71_c8_4df6]
signal last_MUX_rmii_eth_mac_h_l71_c8_4df6_cond : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output : unsigned(0 downto 0);

-- byte_counter_MUX[rmii_eth_mac_h_l71_c8_4df6]
signal byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_cond : unsigned(0 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue : unsigned(1 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse : unsigned(1 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output : unsigned(1 downto 0);

-- data_out_reg_MUX[rmii_eth_mac_h_l71_c8_4df6]
signal data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_cond : unsigned(0 downto 0);
signal data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue : unsigned(7 downto 0);
signal data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse : unsigned(7 downto 0);
signal data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output : unsigned(7 downto 0);

-- valid_MUX[rmii_eth_mac_h_l72_c5_0957]
signal valid_MUX_rmii_eth_mac_h_l72_c5_0957_cond : unsigned(0 downto 0);
signal valid_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue : unsigned(0 downto 0);
signal valid_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse : unsigned(0 downto 0);
signal valid_MUX_rmii_eth_mac_h_l72_c5_0957_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l72_c5_0957]
signal state_MUX_rmii_eth_mac_h_l72_c5_0957_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l72_c5_0957_return_output : unsigned(1 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l72_c5_0957]
signal bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_return_output : unsigned(2 downto 0);

-- last_MUX[rmii_eth_mac_h_l72_c5_0957]
signal last_MUX_rmii_eth_mac_h_l72_c5_0957_cond : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l72_c5_0957_return_output : unsigned(0 downto 0);

-- data_out_reg_MUX[rmii_eth_mac_h_l72_c5_0957]
signal data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_cond : unsigned(0 downto 0);
signal data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue : unsigned(7 downto 0);
signal data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse : unsigned(7 downto 0);
signal data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_return_output : unsigned(7 downto 0);

-- state_MUX[rmii_eth_mac_h_l75_c7_a6fe]
signal state_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output : unsigned(1 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l75_c7_a6fe]
signal bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output : unsigned(2 downto 0);

-- last_MUX[rmii_eth_mac_h_l75_c7_a6fe]
signal last_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output : unsigned(0 downto 0);

-- UNARY_OP_NOT[rmii_eth_mac_h_l82_c13_1e79]
signal UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l82_c9_8042]
signal state_MUX_rmii_eth_mac_h_l82_c9_8042_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l82_c9_8042_return_output : unsigned(1 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l82_c9_8042]
signal bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_return_output : unsigned(2 downto 0);

-- last_MUX[rmii_eth_mac_h_l82_c9_8042]
signal last_MUX_rmii_eth_mac_h_l82_c9_8042_cond : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse : unsigned(0 downto 0);
signal last_MUX_rmii_eth_mac_h_l82_c9_8042_return_output : unsigned(0 downto 0);

-- BIN_OP_PLUS[rmii_eth_mac_h_l89_c9_5be2]
signal BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_left : unsigned(2 downto 0);
signal BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_right : unsigned(1 downto 0);
signal BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_return_output : unsigned(3 downto 0);

-- BIN_OP_EQ[rmii_eth_mac_h_l93_c11_e9df]
signal BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_left : unsigned(1 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_right : unsigned(1 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l93_c8_f83d]
signal state_MUX_rmii_eth_mac_h_l93_c8_f83d_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output : unsigned(1 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l93_c8_f83d]
signal bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output : unsigned(2 downto 0);

-- fcs_reg_MUX[rmii_eth_mac_h_l93_c8_f83d]
signal fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_cond : unsigned(0 downto 0);
signal fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue : unsigned(31 downto 0);
signal fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse : unsigned(31 downto 0);
signal fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output : unsigned(31 downto 0);

-- byte_counter_MUX[rmii_eth_mac_h_l93_c8_f83d]
signal byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_cond : unsigned(0 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue : unsigned(1 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse : unsigned(1 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output : unsigned(1 downto 0);

-- data_out_reg_MUX[rmii_eth_mac_h_l93_c8_f83d]
signal data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_cond : unsigned(0 downto 0);
signal data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue : unsigned(7 downto 0);
signal data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse : unsigned(7 downto 0);
signal data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output : unsigned(7 downto 0);

-- CONST_SR_2[rmii_eth_mac_h_l96_c44_1269]
signal CONST_SR_2_rmii_eth_mac_h_l96_c44_1269_x : unsigned(31 downto 0);
signal CONST_SR_2_rmii_eth_mac_h_l96_c44_1269_return_output : unsigned(31 downto 0);

-- state_MUX[rmii_eth_mac_h_l98_c5_c82c]
signal state_MUX_rmii_eth_mac_h_l98_c5_c82c_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output : unsigned(1 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l98_c5_c82c]
signal bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse : unsigned(2 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output : unsigned(2 downto 0);

-- byte_counter_MUX[rmii_eth_mac_h_l98_c5_c82c]
signal byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_cond : unsigned(0 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue : unsigned(1 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse : unsigned(1 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output : unsigned(1 downto 0);

-- BIN_OP_EQ[rmii_eth_mac_h_l99_c10_f14e]
signal BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_left : unsigned(1 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_right : unsigned(1 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l99_c7_6c6b]
signal state_MUX_rmii_eth_mac_h_l99_c7_6c6b_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l99_c7_6c6b_iftrue : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l99_c7_6c6b_iffalse : unsigned(1 downto 0);
signal state_MUX_rmii_eth_mac_h_l99_c7_6c6b_return_output : unsigned(1 downto 0);

-- byte_counter_MUX[rmii_eth_mac_h_l99_c7_6c6b]
signal byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_cond : unsigned(0 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_iftrue : unsigned(1 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_iffalse : unsigned(1 downto 0);
signal byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_return_output : unsigned(1 downto 0);

-- BIN_OP_PLUS[rmii_eth_mac_h_l103_c9_c065]
signal BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_left : unsigned(1 downto 0);
signal BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_return_output : unsigned(2 downto 0);

-- BIN_OP_PLUS[rmii_eth_mac_h_l108_c7_7884]
signal BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_left : unsigned(2 downto 0);
signal BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_right : unsigned(1 downto 0);
signal BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_return_output : unsigned(3 downto 0);

function uint8_7_2( x : unsigned) return unsigned is
--variable x : unsigned(7 downto 0);
  variable return_output : unsigned(5 downto 0);
begin
return_output := unsigned(std_logic_vector(x(7 downto 2)));
return return_output;
end function;

function uint2_uint6( x : unsigned;
 y : unsigned) return unsigned is

  --variable x : unsigned(1 downto 0);
  --variable y : unsigned(5 downto 0);
  variable return_output : unsigned(7 downto 0);

begin

    return_output := unsigned(std_logic_vector(x)) & unsigned(std_logic_vector(y));
    return return_output;

end function;

function uint2_uint30( x : unsigned;
 y : unsigned) return unsigned is

  --variable x : unsigned(1 downto 0);
  --variable y : unsigned(29 downto 0);
  variable return_output : unsigned(31 downto 0);

begin

    return_output := unsigned(std_logic_vector(x)) & unsigned(std_logic_vector(y));
    return return_output;

end function;

function CONST_REF_RD_rmii_rx_mac_t_rmii_rx_mac_t_48d4( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned;
 ref_toks_3 : unsigned;
 ref_toks_4 : unsigned) return rmii_rx_mac_t is
 
  variable base : rmii_rx_mac_t; 
  variable return_output : rmii_rx_mac_t;
begin
      base.rx_mac_axis_out.data.tdata(0) := ref_toks_0;
      base.rx_mac_axis_out.data.tlast := ref_toks_1;
      base.rx_mac_axis_out.data.tkeep(0) := ref_toks_2;
      base.rx_mac_axis_out.valid := ref_toks_3;
      base.rx_mac_error := ref_toks_4;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_uint2_t_20_uint2_t_20_a609( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned;
 ref_toks_3 : unsigned;
 ref_toks_4 : unsigned;
 ref_toks_5 : unsigned;
 ref_toks_6 : unsigned;
 ref_toks_7 : unsigned;
 ref_toks_8 : unsigned;
 ref_toks_9 : unsigned;
 ref_toks_10 : unsigned;
 ref_toks_11 : unsigned;
 ref_toks_12 : unsigned;
 ref_toks_13 : unsigned;
 ref_toks_14 : unsigned;
 ref_toks_15 : unsigned;
 ref_toks_16 : unsigned;
 ref_toks_17 : unsigned;
 ref_toks_18 : unsigned;
 ref_toks_19 : unsigned) return uint2_t_20 is
 
  variable base : uint2_t_20; 
  variable return_output : uint2_t_20;
begin
      base(19) := ref_toks_0;
      base(18) := ref_toks_1;
      base(17) := ref_toks_2;
      base(16) := ref_toks_3;
      base(15) := ref_toks_4;
      base(14) := ref_toks_5;
      base(13) := ref_toks_6;
      base(12) := ref_toks_7;
      base(11) := ref_toks_8;
      base(10) := ref_toks_9;
      base(9) := ref_toks_10;
      base(8) := ref_toks_11;
      base(7) := ref_toks_12;
      base(6) := ref_toks_13;
      base(5) := ref_toks_14;
      base(4) := ref_toks_15;
      base(3) := ref_toks_16;
      base(2) := ref_toks_17;
      base(1) := ref_toks_18;
      base(0) := ref_toks_19;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_uint1_t_20_uint1_t_20_a609( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned;
 ref_toks_3 : unsigned;
 ref_toks_4 : unsigned;
 ref_toks_5 : unsigned;
 ref_toks_6 : unsigned;
 ref_toks_7 : unsigned;
 ref_toks_8 : unsigned;
 ref_toks_9 : unsigned;
 ref_toks_10 : unsigned;
 ref_toks_11 : unsigned;
 ref_toks_12 : unsigned;
 ref_toks_13 : unsigned;
 ref_toks_14 : unsigned;
 ref_toks_15 : unsigned;
 ref_toks_16 : unsigned;
 ref_toks_17 : unsigned;
 ref_toks_18 : unsigned;
 ref_toks_19 : unsigned) return uint1_t_20 is
 
  variable base : uint1_t_20; 
  variable return_output : uint1_t_20;
begin
      base(19) := ref_toks_0;
      base(18) := ref_toks_1;
      base(17) := ref_toks_2;
      base(16) := ref_toks_3;
      base(15) := ref_toks_4;
      base(14) := ref_toks_5;
      base(13) := ref_toks_6;
      base(12) := ref_toks_7;
      base(11) := ref_toks_8;
      base(10) := ref_toks_9;
      base(9) := ref_toks_10;
      base(8) := ref_toks_11;
      base(7) := ref_toks_12;
      base(6) := ref_toks_13;
      base(5) := ref_toks_14;
      base(4) := ref_toks_15;
      base(3) := ref_toks_16;
      base(2) := ref_toks_17;
      base(1) := ref_toks_18;
      base(0) := ref_toks_19;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b : entity work.BIN_OP_EQ_uint3_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_left,
BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_right,
BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_return_output);

-- BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886 : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_left,
BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_right,
BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_return_output);

-- BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3 : 0 clocks latency
BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_left,
BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_right,
BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_return_output);

-- BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0 : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_left,
BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_right,
BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_return_output);

-- BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a : 0 clocks latency
BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_left,
BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_right,
BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_return_output);

-- BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1 : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_left,
BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_right,
BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_return_output);

-- valid_MUX_rmii_eth_mac_h_l48_c3_c14a : 0 clocks latency
valid_MUX_rmii_eth_mac_h_l48_c3_c14a : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
valid_MUX_rmii_eth_mac_h_l48_c3_c14a_cond,
valid_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue,
valid_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse,
valid_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output);

-- err_MUX_rmii_eth_mac_h_l48_c3_c14a : 0 clocks latency
err_MUX_rmii_eth_mac_h_l48_c3_c14a : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
err_MUX_rmii_eth_mac_h_l48_c3_c14a_cond,
err_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue,
err_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse,
err_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output);

-- state_MUX_rmii_eth_mac_h_l48_c3_c14a : 0 clocks latency
state_MUX_rmii_eth_mac_h_l48_c3_c14a : entity work.MUX_uint1_t_rmii_rx_mac_state_t_rmii_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l48_c3_c14a_cond,
state_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue,
state_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse,
state_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_cond,
bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output);

-- fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a : 0 clocks latency
fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_cond,
fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue,
fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse,
fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output);

-- last_MUX_rmii_eth_mac_h_l48_c3_c14a : 0 clocks latency
last_MUX_rmii_eth_mac_h_l48_c3_c14a : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
last_MUX_rmii_eth_mac_h_l48_c3_c14a_cond,
last_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue,
last_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse,
last_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output);

-- byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a : 0 clocks latency
byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a : entity work.MUX_uint1_t_uint2_t_uint2_t_0CLK_de264c78 port map (
byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_cond,
byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue,
byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse,
byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output);

-- data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a : 0 clocks latency
data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_cond,
data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue,
data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse,
data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output);

-- err_MUX_rmii_eth_mac_h_l54_c5_16d1 : 0 clocks latency
err_MUX_rmii_eth_mac_h_l54_c5_16d1 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
err_MUX_rmii_eth_mac_h_l54_c5_16d1_cond,
err_MUX_rmii_eth_mac_h_l54_c5_16d1_iftrue,
err_MUX_rmii_eth_mac_h_l54_c5_16d1_iffalse,
err_MUX_rmii_eth_mac_h_l54_c5_16d1_return_output);

-- state_MUX_rmii_eth_mac_h_l54_c5_16d1 : 0 clocks latency
state_MUX_rmii_eth_mac_h_l54_c5_16d1 : entity work.MUX_uint1_t_rmii_rx_mac_state_t_rmii_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l54_c5_16d1_cond,
state_MUX_rmii_eth_mac_h_l54_c5_16d1_iftrue,
state_MUX_rmii_eth_mac_h_l54_c5_16d1_iffalse,
state_MUX_rmii_eth_mac_h_l54_c5_16d1_return_output);

-- BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_left,
BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_right,
BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_return_output);

-- valid_MUX_rmii_eth_mac_h_l59_c8_0593 : 0 clocks latency
valid_MUX_rmii_eth_mac_h_l59_c8_0593 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
valid_MUX_rmii_eth_mac_h_l59_c8_0593_cond,
valid_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue,
valid_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse,
valid_MUX_rmii_eth_mac_h_l59_c8_0593_return_output);

-- err_MUX_rmii_eth_mac_h_l59_c8_0593 : 0 clocks latency
err_MUX_rmii_eth_mac_h_l59_c8_0593 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
err_MUX_rmii_eth_mac_h_l59_c8_0593_cond,
err_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue,
err_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse,
err_MUX_rmii_eth_mac_h_l59_c8_0593_return_output);

-- state_MUX_rmii_eth_mac_h_l59_c8_0593 : 0 clocks latency
state_MUX_rmii_eth_mac_h_l59_c8_0593 : entity work.MUX_uint1_t_rmii_rx_mac_state_t_rmii_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l59_c8_0593_cond,
state_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue,
state_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse,
state_MUX_rmii_eth_mac_h_l59_c8_0593_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593 : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_cond,
bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_return_output);

-- fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593 : 0 clocks latency
fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_cond,
fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue,
fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse,
fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_return_output);

-- last_MUX_rmii_eth_mac_h_l59_c8_0593 : 0 clocks latency
last_MUX_rmii_eth_mac_h_l59_c8_0593 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
last_MUX_rmii_eth_mac_h_l59_c8_0593_cond,
last_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue,
last_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse,
last_MUX_rmii_eth_mac_h_l59_c8_0593_return_output);

-- byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593 : 0 clocks latency
byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593 : entity work.MUX_uint1_t_uint2_t_uint2_t_0CLK_de264c78 port map (
byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_cond,
byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue,
byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse,
byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_return_output);

-- data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593 : 0 clocks latency
data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_cond,
data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue,
data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse,
data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_return_output);

-- err_MUX_rmii_eth_mac_h_l60_c5_ba9b : 0 clocks latency
err_MUX_rmii_eth_mac_h_l60_c5_ba9b : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
err_MUX_rmii_eth_mac_h_l60_c5_ba9b_cond,
err_MUX_rmii_eth_mac_h_l60_c5_ba9b_iftrue,
err_MUX_rmii_eth_mac_h_l60_c5_ba9b_iffalse,
err_MUX_rmii_eth_mac_h_l60_c5_ba9b_return_output);

-- state_MUX_rmii_eth_mac_h_l60_c5_ba9b : 0 clocks latency
state_MUX_rmii_eth_mac_h_l60_c5_ba9b : entity work.MUX_uint1_t_rmii_rx_mac_state_t_rmii_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l60_c5_ba9b_cond,
state_MUX_rmii_eth_mac_h_l60_c5_ba9b_iftrue,
state_MUX_rmii_eth_mac_h_l60_c5_ba9b_iffalse,
state_MUX_rmii_eth_mac_h_l60_c5_ba9b_return_output);

-- err_MUX_rmii_eth_mac_h_l63_c10_b6ce : 0 clocks latency
err_MUX_rmii_eth_mac_h_l63_c10_b6ce : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
err_MUX_rmii_eth_mac_h_l63_c10_b6ce_cond,
err_MUX_rmii_eth_mac_h_l63_c10_b6ce_iftrue,
err_MUX_rmii_eth_mac_h_l63_c10_b6ce_iffalse,
err_MUX_rmii_eth_mac_h_l63_c10_b6ce_return_output);

-- state_MUX_rmii_eth_mac_h_l63_c10_b6ce : 0 clocks latency
state_MUX_rmii_eth_mac_h_l63_c10_b6ce : entity work.MUX_uint1_t_rmii_rx_mac_state_t_rmii_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l63_c10_b6ce_cond,
state_MUX_rmii_eth_mac_h_l63_c10_b6ce_iftrue,
state_MUX_rmii_eth_mac_h_l63_c10_b6ce_iffalse,
state_MUX_rmii_eth_mac_h_l63_c10_b6ce_return_output);

-- BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142 : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_left,
BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_right,
BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_return_output);

-- valid_MUX_rmii_eth_mac_h_l71_c8_4df6 : 0 clocks latency
valid_MUX_rmii_eth_mac_h_l71_c8_4df6 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
valid_MUX_rmii_eth_mac_h_l71_c8_4df6_cond,
valid_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue,
valid_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse,
valid_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output);

-- state_MUX_rmii_eth_mac_h_l71_c8_4df6 : 0 clocks latency
state_MUX_rmii_eth_mac_h_l71_c8_4df6 : entity work.MUX_uint1_t_rmii_rx_mac_state_t_rmii_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l71_c8_4df6_cond,
state_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue,
state_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse,
state_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6 : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_cond,
bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output);

-- fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6 : 0 clocks latency
fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_cond,
fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue,
fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse,
fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output);

-- last_MUX_rmii_eth_mac_h_l71_c8_4df6 : 0 clocks latency
last_MUX_rmii_eth_mac_h_l71_c8_4df6 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
last_MUX_rmii_eth_mac_h_l71_c8_4df6_cond,
last_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue,
last_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse,
last_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output);

-- byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6 : 0 clocks latency
byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6 : entity work.MUX_uint1_t_uint2_t_uint2_t_0CLK_de264c78 port map (
byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_cond,
byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue,
byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse,
byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output);

-- data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6 : 0 clocks latency
data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_cond,
data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue,
data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse,
data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output);

-- valid_MUX_rmii_eth_mac_h_l72_c5_0957 : 0 clocks latency
valid_MUX_rmii_eth_mac_h_l72_c5_0957 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
valid_MUX_rmii_eth_mac_h_l72_c5_0957_cond,
valid_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue,
valid_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse,
valid_MUX_rmii_eth_mac_h_l72_c5_0957_return_output);

-- state_MUX_rmii_eth_mac_h_l72_c5_0957 : 0 clocks latency
state_MUX_rmii_eth_mac_h_l72_c5_0957 : entity work.MUX_uint1_t_rmii_rx_mac_state_t_rmii_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l72_c5_0957_cond,
state_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue,
state_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse,
state_MUX_rmii_eth_mac_h_l72_c5_0957_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957 : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_cond,
bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_return_output);

-- last_MUX_rmii_eth_mac_h_l72_c5_0957 : 0 clocks latency
last_MUX_rmii_eth_mac_h_l72_c5_0957 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
last_MUX_rmii_eth_mac_h_l72_c5_0957_cond,
last_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue,
last_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse,
last_MUX_rmii_eth_mac_h_l72_c5_0957_return_output);

-- data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957 : 0 clocks latency
data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_cond,
data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue,
data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse,
data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_return_output);

-- state_MUX_rmii_eth_mac_h_l75_c7_a6fe : 0 clocks latency
state_MUX_rmii_eth_mac_h_l75_c7_a6fe : entity work.MUX_uint1_t_rmii_rx_mac_state_t_rmii_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond,
state_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue,
state_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse,
state_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond,
bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output);

-- last_MUX_rmii_eth_mac_h_l75_c7_a6fe : 0 clocks latency
last_MUX_rmii_eth_mac_h_l75_c7_a6fe : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
last_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond,
last_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue,
last_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse,
last_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output);

-- UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79 : 0 clocks latency
UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79_expr,
UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79_return_output);

-- state_MUX_rmii_eth_mac_h_l82_c9_8042 : 0 clocks latency
state_MUX_rmii_eth_mac_h_l82_c9_8042 : entity work.MUX_uint1_t_rmii_rx_mac_state_t_rmii_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l82_c9_8042_cond,
state_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue,
state_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse,
state_MUX_rmii_eth_mac_h_l82_c9_8042_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042 : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_cond,
bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_return_output);

-- last_MUX_rmii_eth_mac_h_l82_c9_8042 : 0 clocks latency
last_MUX_rmii_eth_mac_h_l82_c9_8042 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
last_MUX_rmii_eth_mac_h_l82_c9_8042_cond,
last_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue,
last_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse,
last_MUX_rmii_eth_mac_h_l82_c9_8042_return_output);

-- BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2 : 0 clocks latency
BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2 : entity work.BIN_OP_PLUS_uint3_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_left,
BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_right,
BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_return_output);

-- BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_left,
BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_right,
BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_return_output);

-- state_MUX_rmii_eth_mac_h_l93_c8_f83d : 0 clocks latency
state_MUX_rmii_eth_mac_h_l93_c8_f83d : entity work.MUX_uint1_t_rmii_rx_mac_state_t_rmii_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l93_c8_f83d_cond,
state_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue,
state_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse,
state_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_cond,
bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output);

-- fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d : 0 clocks latency
fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_cond,
fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue,
fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse,
fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output);

-- byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d : 0 clocks latency
byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d : entity work.MUX_uint1_t_uint2_t_uint2_t_0CLK_de264c78 port map (
byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_cond,
byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue,
byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse,
byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output);

-- data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d : 0 clocks latency
data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_cond,
data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue,
data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse,
data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output);

-- CONST_SR_2_rmii_eth_mac_h_l96_c44_1269 : 0 clocks latency
CONST_SR_2_rmii_eth_mac_h_l96_c44_1269 : entity work.CONST_SR_2_uint32_t_0CLK_de264c78 port map (
CONST_SR_2_rmii_eth_mac_h_l96_c44_1269_x,
CONST_SR_2_rmii_eth_mac_h_l96_c44_1269_return_output);

-- state_MUX_rmii_eth_mac_h_l98_c5_c82c : 0 clocks latency
state_MUX_rmii_eth_mac_h_l98_c5_c82c : entity work.MUX_uint1_t_rmii_rx_mac_state_t_rmii_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l98_c5_c82c_cond,
state_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue,
state_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse,
state_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_cond,
bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output);

-- byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c : 0 clocks latency
byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c : entity work.MUX_uint1_t_uint2_t_uint2_t_0CLK_de264c78 port map (
byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_cond,
byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue,
byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse,
byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output);

-- BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_left,
BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_right,
BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_return_output);

-- state_MUX_rmii_eth_mac_h_l99_c7_6c6b : 0 clocks latency
state_MUX_rmii_eth_mac_h_l99_c7_6c6b : entity work.MUX_uint1_t_rmii_rx_mac_state_t_rmii_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l99_c7_6c6b_cond,
state_MUX_rmii_eth_mac_h_l99_c7_6c6b_iftrue,
state_MUX_rmii_eth_mac_h_l99_c7_6c6b_iffalse,
state_MUX_rmii_eth_mac_h_l99_c7_6c6b_return_output);

-- byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b : 0 clocks latency
byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b : entity work.MUX_uint1_t_uint2_t_uint2_t_0CLK_de264c78 port map (
byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_cond,
byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_iftrue,
byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_iffalse,
byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_return_output);

-- BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065 : 0 clocks latency
BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065 : entity work.BIN_OP_PLUS_uint2_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_left,
BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_right,
BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_return_output);

-- BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884 : 0 clocks latency
BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884 : entity work.BIN_OP_PLUS_uint3_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_left,
BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_right,
BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Inputs
 data_in,
 data_in_valid,
 -- Registers
 data_in_regs,
 data_in_valid_regs,
 data_out_reg,
 state,
 bit_counter,
 byte_counter,
 fcs_reg,
 -- All submodule outputs
 BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_return_output,
 BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_return_output,
 BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_return_output,
 BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_return_output,
 BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_return_output,
 BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_return_output,
 valid_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output,
 err_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output,
 state_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output,
 fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output,
 last_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output,
 byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output,
 data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output,
 err_MUX_rmii_eth_mac_h_l54_c5_16d1_return_output,
 state_MUX_rmii_eth_mac_h_l54_c5_16d1_return_output,
 BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_return_output,
 valid_MUX_rmii_eth_mac_h_l59_c8_0593_return_output,
 err_MUX_rmii_eth_mac_h_l59_c8_0593_return_output,
 state_MUX_rmii_eth_mac_h_l59_c8_0593_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_return_output,
 fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_return_output,
 last_MUX_rmii_eth_mac_h_l59_c8_0593_return_output,
 byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_return_output,
 data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_return_output,
 err_MUX_rmii_eth_mac_h_l60_c5_ba9b_return_output,
 state_MUX_rmii_eth_mac_h_l60_c5_ba9b_return_output,
 err_MUX_rmii_eth_mac_h_l63_c10_b6ce_return_output,
 state_MUX_rmii_eth_mac_h_l63_c10_b6ce_return_output,
 BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_return_output,
 valid_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output,
 state_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output,
 fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output,
 last_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output,
 byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output,
 data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output,
 valid_MUX_rmii_eth_mac_h_l72_c5_0957_return_output,
 state_MUX_rmii_eth_mac_h_l72_c5_0957_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_return_output,
 last_MUX_rmii_eth_mac_h_l72_c5_0957_return_output,
 data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_return_output,
 state_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output,
 last_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output,
 UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79_return_output,
 state_MUX_rmii_eth_mac_h_l82_c9_8042_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_return_output,
 last_MUX_rmii_eth_mac_h_l82_c9_8042_return_output,
 BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_return_output,
 BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_return_output,
 state_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output,
 fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output,
 byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output,
 data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output,
 CONST_SR_2_rmii_eth_mac_h_l96_c44_1269_return_output,
 state_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output,
 byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output,
 BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_return_output,
 state_MUX_rmii_eth_mac_h_l99_c7_6c6b_return_output,
 byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_return_output,
 BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_return_output,
 BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : rmii_rx_mac_t;
 variable VAR_data_in : unsigned(1 downto 0);
 variable VAR_data_in_valid : unsigned(0 downto 0);
 variable VAR_last : unsigned(0 downto 0);
 variable VAR_valid : unsigned(0 downto 0);
 variable VAR_err : unsigned(0 downto 0);
 variable VAR_data_in_delayed : unsigned(1 downto 0);
 variable VAR_CONST_REF_RD_uint2_t_uint2_t_20_19_d41d_rmii_eth_mac_h_l34_c29_e261_return_output : unsigned(1 downto 0);
 variable VAR_data_in_valid_delayed : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_20_19_d41d_rmii_eth_mac_h_l35_c35_3701_return_output : unsigned(0 downto 0);
 variable VAR_o : rmii_rx_mac_t;
 variable VAR_bit_end : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_return_output : unsigned(0 downto 0);
 variable VAR_preamble_bits : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_return_output : unsigned(0 downto 0);
 variable VAR_sfd_bits : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_return_output : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l54_c5_16d1_return_output : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l54_c5_16d1_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(2 downto 0);
 variable VAR_bit_counter_rmii_eth_mac_h_l52_c5_b9d0 : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(31 downto 0);
 variable VAR_fcs_reg_rmii_eth_mac_h_l53_c5_cdcd : unsigned(31 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(31 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(31 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(31 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue : unsigned(7 downto 0);
 variable VAR_data_out_reg_rmii_eth_mac_h_l51_c5_85b6 : unsigned(7 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse : unsigned(7 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_return_output : unsigned(7 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output : unsigned(7 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_cond : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l54_c5_16d1_iftrue : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l54_c5_16d1_iffalse : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l54_c5_16d1_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l54_c5_16d1_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l54_c5_16d1_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l54_c5_16d1_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_return_output : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l60_c5_ba9b_return_output : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l60_c5_ba9b_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(31 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(31 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output : unsigned(31 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue : unsigned(7 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse : unsigned(7 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output : unsigned(7 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_cond : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l60_c5_ba9b_iftrue : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l60_c5_ba9b_iffalse : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l63_c10_b6ce_return_output : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l60_c5_ba9b_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l60_c5_ba9b_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l60_c5_ba9b_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l63_c10_b6ce_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l60_c5_ba9b_cond : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l63_c10_b6ce_iftrue : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l63_c10_b6ce_iffalse : unsigned(0 downto 0);
 variable VAR_err_MUX_rmii_eth_mac_h_l63_c10_b6ce_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l63_c10_b6ce_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l63_c10_b6ce_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l63_c10_b6ce_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_return_output : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l72_c5_0957_return_output : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l71_c8_4df6_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l72_c5_0957_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l71_c8_4df6_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_return_output : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_cond : unsigned(0 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue : unsigned(31 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse : unsigned(31 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output : unsigned(31 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_cond : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l72_c5_0957_return_output : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l71_c8_4df6_cond : unsigned(0 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_cond : unsigned(0 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue : unsigned(7 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_return_output : unsigned(7 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse : unsigned(7 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output : unsigned(7 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_cond : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse : unsigned(0 downto 0);
 variable VAR_valid_MUX_rmii_eth_mac_h_l72_c5_0957_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l72_c5_0957_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_cond : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l72_c5_0957_cond : unsigned(0 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue : unsigned(7 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse : unsigned(7 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_cond : unsigned(0 downto 0);
 variable VAR_uint8_7_2_rmii_eth_mac_h_l73_c50_fb6b_return_output : unsigned(5 downto 0);
 variable VAR_uint2_uint6_rmii_eth_mac_h_l73_c22_b81b_return_output : unsigned(7 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l82_c9_8042_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_return_output : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse : unsigned(2 downto 0);
 variable VAR_bit_counter_rmii_eth_mac_h_l89_c9_016b : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l82_c9_8042_return_output : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_rmii_eth_mac_h_l76_c9_3d3d : unsigned(2 downto 0);
 variable VAR_UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l82_c9_8042_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue : unsigned(2 downto 0);
 variable VAR_bit_counter_rmii_eth_mac_h_l84_c11_36e2 : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_cond : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse : unsigned(0 downto 0);
 variable VAR_last_MUX_rmii_eth_mac_h_l82_c9_8042_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_return_output : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l93_c8_f83d_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_cond : unsigned(0 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue : unsigned(31 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse : unsigned(31 downto 0);
 variable VAR_fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_cond : unsigned(0 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_cond : unsigned(0 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue : unsigned(7 downto 0);
 variable VAR_data_out_reg_rmii_eth_mac_h_l97_c5_b523 : unsigned(7 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse : unsigned(7 downto 0);
 variable VAR_data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_cond : unsigned(0 downto 0);
 variable VAR_CONST_SR_2_rmii_eth_mac_h_l96_c44_1269_return_output : unsigned(31 downto 0);
 variable VAR_CONST_SR_2_rmii_eth_mac_h_l96_c44_1269_x : unsigned(31 downto 0);
 variable VAR_uint2_uint30_rmii_eth_mac_h_l96_c15_c3b6_return_output : unsigned(31 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l99_c7_6c6b_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l98_c5_c82c_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue : unsigned(2 downto 0);
 variable VAR_bit_counter_rmii_eth_mac_h_l105_c7_4d3f : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse : unsigned(2 downto 0);
 variable VAR_bit_counter_rmii_eth_mac_h_l108_c7_e9d8 : unsigned(2 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_cond : unsigned(0 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_return_output : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l99_c7_6c6b_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l99_c7_6c6b_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l99_c7_6c6b_cond : unsigned(0 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_iftrue : unsigned(1 downto 0);
 variable VAR_byte_counter_rmii_eth_mac_h_l101_c9_fced : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_iffalse : unsigned(1 downto 0);
 variable VAR_byte_counter_rmii_eth_mac_h_l103_c9_8be2 : unsigned(1 downto 0);
 variable VAR_byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_return_output : unsigned(2 downto 0);
 variable VAR_BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_return_output : unsigned(3 downto 0);
 variable VAR_ARRAY_SHIFT_UP_i : unsigned(31 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_0_CONST_REF_RD_uint2_t_uint2_t_20_18_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_1_CONST_REF_RD_uint2_t_uint2_t_20_17_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_2_CONST_REF_RD_uint2_t_uint2_t_20_16_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_3_CONST_REF_RD_uint2_t_uint2_t_20_15_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_4_CONST_REF_RD_uint2_t_uint2_t_20_14_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_5_CONST_REF_RD_uint2_t_uint2_t_20_13_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_6_CONST_REF_RD_uint2_t_uint2_t_20_12_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_7_CONST_REF_RD_uint2_t_uint2_t_20_11_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_8_CONST_REF_RD_uint2_t_uint2_t_20_10_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_9_CONST_REF_RD_uint2_t_uint2_t_20_9_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_10_CONST_REF_RD_uint2_t_uint2_t_20_8_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_11_CONST_REF_RD_uint2_t_uint2_t_20_7_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_12_CONST_REF_RD_uint2_t_uint2_t_20_6_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_13_CONST_REF_RD_uint2_t_uint2_t_20_5_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_14_CONST_REF_RD_uint2_t_uint2_t_20_4_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_15_CONST_REF_RD_uint2_t_uint2_t_20_3_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_16_CONST_REF_RD_uint2_t_uint2_t_20_2_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_17_CONST_REF_RD_uint2_t_uint2_t_20_1_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_18_CONST_REF_RD_uint2_t_uint2_t_20_0_d41d_rmii_eth_mac_h_l113_c140_7569_return_output : unsigned(1 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_0_CONST_REF_RD_uint1_t_uint1_t_20_18_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_1_CONST_REF_RD_uint1_t_uint1_t_20_17_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_2_CONST_REF_RD_uint1_t_uint1_t_20_16_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_3_CONST_REF_RD_uint1_t_uint1_t_20_15_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_4_CONST_REF_RD_uint1_t_uint1_t_20_14_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_5_CONST_REF_RD_uint1_t_uint1_t_20_13_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_6_CONST_REF_RD_uint1_t_uint1_t_20_12_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_7_CONST_REF_RD_uint1_t_uint1_t_20_11_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_8_CONST_REF_RD_uint1_t_uint1_t_20_10_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_9_CONST_REF_RD_uint1_t_uint1_t_20_9_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_10_CONST_REF_RD_uint1_t_uint1_t_20_8_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_11_CONST_REF_RD_uint1_t_uint1_t_20_7_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_12_CONST_REF_RD_uint1_t_uint1_t_20_6_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_13_CONST_REF_RD_uint1_t_uint1_t_20_5_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_14_CONST_REF_RD_uint1_t_uint1_t_20_4_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_15_CONST_REF_RD_uint1_t_uint1_t_20_3_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_16_CONST_REF_RD_uint1_t_uint1_t_20_2_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_17_CONST_REF_RD_uint1_t_uint1_t_20_1_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_18_CONST_REF_RD_uint1_t_uint1_t_20_0_d41d_rmii_eth_mac_h_l114_c146_910a_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_rmii_rx_mac_t_rmii_rx_mac_t_48d4_rmii_eth_mac_h_l123_c10_aebf_return_output : rmii_rx_mac_t;
 variable VAR_data_in_regs_CONST_REF_RD_uint2_t_20_uint2_t_20_a609_rmii_eth_mac_h_l17_c15_5298_return_output : uint2_t_20;
 variable VAR_data_in_valid_regs_CONST_REF_RD_uint1_t_20_uint1_t_20_a609_rmii_eth_mac_h_l17_c15_5298_return_output : uint1_t_20;
 -- State registers comb logic variables
variable REG_VAR_data_in_regs : uint2_t_20;
variable REG_VAR_data_in_valid_regs : uint1_t_20;
variable REG_VAR_data_out_reg : unsigned(7 downto 0);
variable REG_VAR_state : unsigned(1 downto 0);
variable REG_VAR_bit_counter : unsigned(2 downto 0);
variable REG_VAR_byte_counter : unsigned(1 downto 0);
variable REG_VAR_fcs_reg : unsigned(31 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_data_in_regs := data_in_regs;
  REG_VAR_data_in_valid_regs := data_in_valid_regs;
  REG_VAR_data_out_reg := data_out_reg;
  REG_VAR_state := state;
  REG_VAR_bit_counter := bit_counter;
  REG_VAR_byte_counter := byte_counter;
  REG_VAR_fcs_reg := fcs_reg;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_bit_counter_rmii_eth_mac_h_l52_c5_b9d0 := resize(to_unsigned(0, 1), 3);
     VAR_bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue := VAR_bit_counter_rmii_eth_mac_h_l52_c5_b9d0;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_right := unsigned(rmii_rx_mac_state_t_to_slv(IDLE));
     VAR_err_MUX_rmii_eth_mac_h_l63_c10_b6ce_iftrue := to_unsigned(0, 1);
     VAR_err_MUX_rmii_eth_mac_h_l60_c5_ba9b_iftrue := to_unsigned(0, 1);
     VAR_err_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse := to_unsigned(0, 1);
     VAR_err_MUX_rmii_eth_mac_h_l54_c5_16d1_iffalse := to_unsigned(0, 1);
     VAR_err_MUX_rmii_eth_mac_h_l54_c5_16d1_iftrue := to_unsigned(0, 1);
     VAR_last_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse := to_unsigned(0, 1);
     VAR_last_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse := to_unsigned(0, 1);
     VAR_last_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse := to_unsigned(0, 1);
     VAR_last_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue := to_unsigned(0, 1);
     VAR_last_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse := to_unsigned(0, 1);
     VAR_state_MUX_rmii_eth_mac_h_l63_c10_b6ce_iffalse := unsigned(rmii_rx_mac_state_t_to_slv(IDLE));
     VAR_bit_counter_rmii_eth_mac_h_l76_c9_3d3d := resize(to_unsigned(0, 1), 3);
     VAR_bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse := VAR_bit_counter_rmii_eth_mac_h_l76_c9_3d3d;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_right := unsigned(rmii_rx_mac_state_t_to_slv(DATA));
     VAR_byte_counter_rmii_eth_mac_h_l101_c9_fced := resize(to_unsigned(0, 1), 2);
     VAR_byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_iftrue := VAR_byte_counter_rmii_eth_mac_h_l101_c9_fced;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_right := unsigned(rmii_rx_mac_state_t_to_slv(PREAMBLE));
     VAR_valid_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue := to_unsigned(0, 1);
     VAR_state_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue := unsigned(rmii_rx_mac_state_t_to_slv(FCS));
     VAR_BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_right := to_unsigned(1, 2);
     VAR_last_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue := to_unsigned(0, 1);
     VAR_bit_counter_rmii_eth_mac_h_l84_c11_36e2 := resize(to_unsigned(0, 1), 3);
     VAR_bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue := VAR_bit_counter_rmii_eth_mac_h_l84_c11_36e2;
     VAR_data_out_reg_rmii_eth_mac_h_l97_c5_b523 := resize(to_unsigned(0, 1), 8);
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue := VAR_data_out_reg_rmii_eth_mac_h_l97_c5_b523;
     VAR_fcs_reg_rmii_eth_mac_h_l53_c5_cdcd := resize(to_unsigned(0, 1), 32);
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue := VAR_fcs_reg_rmii_eth_mac_h_l53_c5_cdcd;
     VAR_bit_counter_rmii_eth_mac_h_l105_c7_4d3f := resize(to_unsigned(0, 1), 3);
     VAR_bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue := VAR_bit_counter_rmii_eth_mac_h_l105_c7_4d3f;
     VAR_state_MUX_rmii_eth_mac_h_l99_c7_6c6b_iftrue := unsigned(rmii_rx_mac_state_t_to_slv(IDLE));
     VAR_BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_right := to_unsigned(2, 2);
     VAR_valid_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse := to_unsigned(0, 1);
     VAR_valid_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse := to_unsigned(0, 1);
     VAR_valid_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_right := to_unsigned(6, 3);
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_right := to_unsigned(3, 2);
     VAR_state_MUX_rmii_eth_mac_h_l63_c10_b6ce_iftrue := unsigned(rmii_rx_mac_state_t_to_slv(DATA));
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_right := to_unsigned(3, 2);
     VAR_state_MUX_rmii_eth_mac_h_l54_c5_16d1_iftrue := unsigned(rmii_rx_mac_state_t_to_slv(PREAMBLE));
     VAR_last_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_right := to_unsigned(2, 2);
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_right := unsigned(rmii_rx_mac_state_t_to_slv(FCS));
     VAR_data_out_reg_rmii_eth_mac_h_l51_c5_85b6 := resize(to_unsigned(0, 1), 8);
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue := VAR_data_out_reg_rmii_eth_mac_h_l51_c5_85b6;
     VAR_state_MUX_rmii_eth_mac_h_l60_c5_ba9b_iftrue := unsigned(rmii_rx_mac_state_t_to_slv(PREAMBLE));
     VAR_err_MUX_rmii_eth_mac_h_l63_c10_b6ce_iffalse := to_unsigned(1, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;
     -- Mux in inputs
     VAR_data_in := data_in;
     VAR_data_in_valid := data_in_valid;

     -- Submodule level 0
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_left := bit_counter;
     VAR_BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_left := bit_counter;
     VAR_BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_left := bit_counter;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue := bit_counter;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse := bit_counter;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse := bit_counter;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_left := byte_counter;
     VAR_BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_left := byte_counter;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue := byte_counter;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue := byte_counter;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue := byte_counter;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse := byte_counter;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse := byte_counter;
     VAR_UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79_expr := VAR_data_in_valid;
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue := data_out_reg;
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse := data_out_reg;
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse := data_out_reg;
     VAR_CONST_SR_2_rmii_eth_mac_h_l96_c44_1269_x := fcs_reg;
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue := fcs_reg;
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue := fcs_reg;
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse := fcs_reg;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_left := state;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_left := state;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_left := state;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_left := state;
     VAR_state_MUX_rmii_eth_mac_h_l54_c5_16d1_iffalse := state;
     VAR_state_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse := state;
     VAR_state_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse := state;
     VAR_state_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse := state;
     VAR_state_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse := state;
     VAR_state_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse := state;
     VAR_state_MUX_rmii_eth_mac_h_l99_c7_6c6b_iffalse := state;
     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_6_CONST_REF_RD_uint1_t_uint1_t_20_12_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_6_CONST_REF_RD_uint1_t_uint1_t_20_12_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(12);

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_8_CONST_REF_RD_uint1_t_uint1_t_20_10_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_8_CONST_REF_RD_uint1_t_uint1_t_20_10_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(10);

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_14_CONST_REF_RD_uint1_t_uint1_t_20_4_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_14_CONST_REF_RD_uint1_t_uint1_t_20_4_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(4);

     -- CONST_REF_RD_uint2_t_uint2_t_20_19_d41d[rmii_eth_mac_h_l34_c29_e261] LATENCY=0
     VAR_CONST_REF_RD_uint2_t_uint2_t_20_19_d41d_rmii_eth_mac_h_l34_c29_e261_return_output := data_in_regs(19);

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_18_CONST_REF_RD_uint2_t_uint2_t_20_0_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_18_CONST_REF_RD_uint2_t_uint2_t_20_0_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(0);

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_15_CONST_REF_RD_uint1_t_uint1_t_20_3_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_15_CONST_REF_RD_uint1_t_uint1_t_20_3_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(3);

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_7_CONST_REF_RD_uint2_t_uint2_t_20_11_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_7_CONST_REF_RD_uint2_t_uint2_t_20_11_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(11);

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_12_CONST_REF_RD_uint2_t_uint2_t_20_6_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_12_CONST_REF_RD_uint2_t_uint2_t_20_6_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(6);

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_17_CONST_REF_RD_uint2_t_uint2_t_20_1_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_17_CONST_REF_RD_uint2_t_uint2_t_20_1_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(1);

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_10_CONST_REF_RD_uint1_t_uint1_t_20_8_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_10_CONST_REF_RD_uint1_t_uint1_t_20_8_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(8);

     -- BIN_OP_PLUS[rmii_eth_mac_h_l89_c9_5be2] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_left <= VAR_BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_left;
     BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_right <= VAR_BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_return_output := BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_return_output;

     -- UNARY_OP_NOT[rmii_eth_mac_h_l82_c13_1e79] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79_expr <= VAR_UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79_return_output := UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79_return_output;

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_6_CONST_REF_RD_uint2_t_uint2_t_20_12_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_6_CONST_REF_RD_uint2_t_uint2_t_20_12_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(12);

     -- BIN_OP_EQ[rmii_eth_mac_h_l71_c11_7142] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_left;
     BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_return_output := BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_return_output;

     -- BIN_OP_PLUS[rmii_eth_mac_h_l103_c9_c065] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_left <= VAR_BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_left;
     BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_right <= VAR_BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_return_output := BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_return_output;

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_10_CONST_REF_RD_uint2_t_uint2_t_20_8_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_10_CONST_REF_RD_uint2_t_uint2_t_20_8_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(8);

     -- BIN_OP_PLUS[rmii_eth_mac_h_l108_c7_7884] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_left <= VAR_BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_left;
     BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_right <= VAR_BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_return_output := BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_return_output;

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_0_CONST_REF_RD_uint2_t_uint2_t_20_18_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_0_CONST_REF_RD_uint2_t_uint2_t_20_18_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(18);

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_9_CONST_REF_RD_uint1_t_uint1_t_20_9_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_9_CONST_REF_RD_uint1_t_uint1_t_20_9_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(9);

     -- BIN_OP_EQ[rmii_eth_mac_h_l59_c11_ef9f] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_left;
     BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_return_output := BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_return_output;

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_13_CONST_REF_RD_uint1_t_uint1_t_20_5_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_13_CONST_REF_RD_uint1_t_uint1_t_20_5_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(5);

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_18_CONST_REF_RD_uint1_t_uint1_t_20_0_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_18_CONST_REF_RD_uint1_t_uint1_t_20_0_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(0);

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_4_CONST_REF_RD_uint1_t_uint1_t_20_14_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_4_CONST_REF_RD_uint1_t_uint1_t_20_14_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(14);

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_16_CONST_REF_RD_uint2_t_uint2_t_20_2_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_16_CONST_REF_RD_uint2_t_uint2_t_20_2_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(2);

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_17_CONST_REF_RD_uint1_t_uint1_t_20_1_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_17_CONST_REF_RD_uint1_t_uint1_t_20_1_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(1);

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_2_CONST_REF_RD_uint2_t_uint2_t_20_16_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_2_CONST_REF_RD_uint2_t_uint2_t_20_16_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(16);

     -- uint8_7_2[rmii_eth_mac_h_l73_c50_fb6b] LATENCY=0
     VAR_uint8_7_2_rmii_eth_mac_h_l73_c50_fb6b_return_output := uint8_7_2(
     data_out_reg);

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_2_CONST_REF_RD_uint1_t_uint1_t_20_16_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_2_CONST_REF_RD_uint1_t_uint1_t_20_16_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(16);

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_8_CONST_REF_RD_uint2_t_uint2_t_20_10_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_8_CONST_REF_RD_uint2_t_uint2_t_20_10_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(10);

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_5_CONST_REF_RD_uint1_t_uint1_t_20_13_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_5_CONST_REF_RD_uint1_t_uint1_t_20_13_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(13);

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_1_CONST_REF_RD_uint2_t_uint2_t_20_17_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_1_CONST_REF_RD_uint2_t_uint2_t_20_17_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(17);

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_15_CONST_REF_RD_uint2_t_uint2_t_20_3_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_15_CONST_REF_RD_uint2_t_uint2_t_20_3_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(3);

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_11_CONST_REF_RD_uint1_t_uint1_t_20_7_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_11_CONST_REF_RD_uint1_t_uint1_t_20_7_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(7);

     -- BIN_OP_EQ[rmii_eth_mac_h_l99_c10_f14e] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_left;
     BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_return_output := BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_return_output;

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_13_CONST_REF_RD_uint2_t_uint2_t_20_5_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_13_CONST_REF_RD_uint2_t_uint2_t_20_5_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(5);

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_5_CONST_REF_RD_uint2_t_uint2_t_20_13_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_5_CONST_REF_RD_uint2_t_uint2_t_20_13_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(13);

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_3_CONST_REF_RD_uint2_t_uint2_t_20_15_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_3_CONST_REF_RD_uint2_t_uint2_t_20_15_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(15);

     -- BIN_OP_EQ[rmii_eth_mac_h_l93_c11_e9df] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_left;
     BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_return_output := BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_return_output;

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_3_CONST_REF_RD_uint1_t_uint1_t_20_15_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_3_CONST_REF_RD_uint1_t_uint1_t_20_15_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(15);

     -- CONST_SR_2[rmii_eth_mac_h_l96_c44_1269] LATENCY=0
     -- Inputs
     CONST_SR_2_rmii_eth_mac_h_l96_c44_1269_x <= VAR_CONST_SR_2_rmii_eth_mac_h_l96_c44_1269_x;
     -- Outputs
     VAR_CONST_SR_2_rmii_eth_mac_h_l96_c44_1269_return_output := CONST_SR_2_rmii_eth_mac_h_l96_c44_1269_return_output;

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_0_CONST_REF_RD_uint1_t_uint1_t_20_18_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_0_CONST_REF_RD_uint1_t_uint1_t_20_18_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(18);

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_1_CONST_REF_RD_uint1_t_uint1_t_20_17_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_1_CONST_REF_RD_uint1_t_uint1_t_20_17_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(17);

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_11_CONST_REF_RD_uint2_t_uint2_t_20_7_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_11_CONST_REF_RD_uint2_t_uint2_t_20_7_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(7);

     -- BIN_OP_EQ[rmii_eth_mac_h_l43_c22_c30b] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_left;
     BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_return_output := BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_return_output;

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_16_CONST_REF_RD_uint1_t_uint1_t_20_2_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_16_CONST_REF_RD_uint1_t_uint1_t_20_2_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(2);

     -- BIN_OP_EQ[rmii_eth_mac_h_l48_c6_faf1] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_left;
     BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_return_output := BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_return_output;

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_12_CONST_REF_RD_uint1_t_uint1_t_20_6_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_12_CONST_REF_RD_uint1_t_uint1_t_20_6_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(6);

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_9_CONST_REF_RD_uint2_t_uint2_t_20_9_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_9_CONST_REF_RD_uint2_t_uint2_t_20_9_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(9);

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_14_CONST_REF_RD_uint2_t_uint2_t_20_4_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_14_CONST_REF_RD_uint2_t_uint2_t_20_4_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(4);

     -- FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_7_CONST_REF_RD_uint1_t_uint1_t_20_11_d41d[rmii_eth_mac_h_l114_c146_910a] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_7_CONST_REF_RD_uint1_t_uint1_t_20_11_d41d_rmii_eth_mac_h_l114_c146_910a_return_output := data_in_valid_regs(11);

     -- CONST_REF_RD_uint1_t_uint1_t_20_19_d41d[rmii_eth_mac_h_l35_c35_3701] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_20_19_d41d_rmii_eth_mac_h_l35_c35_3701_return_output := data_in_valid_regs(19);

     -- FOR_rmii_eth_mac_h_l113_c30_784d_ITER_4_CONST_REF_RD_uint2_t_uint2_t_20_14_d41d[rmii_eth_mac_h_l113_c140_7569] LATENCY=0
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_4_CONST_REF_RD_uint2_t_uint2_t_20_14_d41d_rmii_eth_mac_h_l113_c140_7569_return_output := data_in_regs(14);

     -- Submodule level 1
     VAR_bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_return_output;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_return_output;
     VAR_last_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l98_c5_c82c_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_return_output;
     VAR_valid_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue := VAR_BIN_OP_EQ_rmii_eth_mac_h_l43_c22_c30b_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_return_output;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_return_output;
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_return_output;
     VAR_err_MUX_rmii_eth_mac_h_l48_c3_c14a_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_return_output;
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_return_output;
     VAR_last_MUX_rmii_eth_mac_h_l48_c3_c14a_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l48_c3_c14a_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_return_output;
     VAR_valid_MUX_rmii_eth_mac_h_l48_c3_c14a_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l48_c6_faf1_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_return_output;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_return_output;
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_return_output;
     VAR_err_MUX_rmii_eth_mac_h_l59_c8_0593_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_return_output;
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_return_output;
     VAR_last_MUX_rmii_eth_mac_h_l59_c8_0593_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l59_c8_0593_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_return_output;
     VAR_valid_MUX_rmii_eth_mac_h_l59_c8_0593_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l59_c11_ef9f_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_return_output;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_return_output;
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_return_output;
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_return_output;
     VAR_last_MUX_rmii_eth_mac_h_l71_c8_4df6_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l71_c8_4df6_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_return_output;
     VAR_valid_MUX_rmii_eth_mac_h_l71_c8_4df6_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l71_c11_7142_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_return_output;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_return_output;
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_return_output;
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l93_c8_f83d_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l93_c11_e9df_return_output;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l99_c7_6c6b_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l99_c10_f14e_return_output;
     VAR_byte_counter_rmii_eth_mac_h_l103_c9_8be2 := resize(VAR_BIN_OP_PLUS_rmii_eth_mac_h_l103_c9_c065_return_output, 2);
     VAR_bit_counter_rmii_eth_mac_h_l108_c7_e9d8 := resize(VAR_BIN_OP_PLUS_rmii_eth_mac_h_l108_c7_7884_return_output, 3);
     VAR_bit_counter_rmii_eth_mac_h_l89_c9_016b := resize(VAR_BIN_OP_PLUS_rmii_eth_mac_h_l89_c9_5be2_return_output, 3);
     VAR_BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_left := VAR_CONST_REF_RD_uint1_t_uint1_t_20_19_d41d_rmii_eth_mac_h_l35_c35_3701_return_output;
     VAR_BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_left := VAR_CONST_REF_RD_uint1_t_uint1_t_20_19_d41d_rmii_eth_mac_h_l35_c35_3701_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_cond := VAR_CONST_REF_RD_uint1_t_uint1_t_20_19_d41d_rmii_eth_mac_h_l35_c35_3701_return_output;
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_cond := VAR_CONST_REF_RD_uint1_t_uint1_t_20_19_d41d_rmii_eth_mac_h_l35_c35_3701_return_output;
     VAR_last_MUX_rmii_eth_mac_h_l72_c5_0957_cond := VAR_CONST_REF_RD_uint1_t_uint1_t_20_19_d41d_rmii_eth_mac_h_l35_c35_3701_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l72_c5_0957_cond := VAR_CONST_REF_RD_uint1_t_uint1_t_20_19_d41d_rmii_eth_mac_h_l35_c35_3701_return_output;
     VAR_valid_MUX_rmii_eth_mac_h_l72_c5_0957_cond := VAR_CONST_REF_RD_uint1_t_uint1_t_20_19_d41d_rmii_eth_mac_h_l35_c35_3701_return_output;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_left := VAR_CONST_REF_RD_uint2_t_uint2_t_20_19_d41d_rmii_eth_mac_h_l34_c29_e261_return_output;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_left := VAR_CONST_REF_RD_uint2_t_uint2_t_20_19_d41d_rmii_eth_mac_h_l34_c29_e261_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_cond := VAR_UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79_return_output;
     VAR_last_MUX_rmii_eth_mac_h_l82_c9_8042_cond := VAR_UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l82_c9_8042_cond := VAR_UNARY_OP_NOT_rmii_eth_mac_h_l82_c13_1e79_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse := VAR_bit_counter_rmii_eth_mac_h_l108_c7_e9d8;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse := VAR_bit_counter_rmii_eth_mac_h_l89_c9_016b;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_iffalse := VAR_byte_counter_rmii_eth_mac_h_l103_c9_8be2;
     -- state_MUX[rmii_eth_mac_h_l99_c7_6c6b] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l99_c7_6c6b_cond <= VAR_state_MUX_rmii_eth_mac_h_l99_c7_6c6b_cond;
     state_MUX_rmii_eth_mac_h_l99_c7_6c6b_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l99_c7_6c6b_iftrue;
     state_MUX_rmii_eth_mac_h_l99_c7_6c6b_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l99_c7_6c6b_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l99_c7_6c6b_return_output := state_MUX_rmii_eth_mac_h_l99_c7_6c6b_return_output;

     -- byte_counter_MUX[rmii_eth_mac_h_l99_c7_6c6b] LATENCY=0
     -- Inputs
     byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_cond <= VAR_byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_cond;
     byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_iftrue <= VAR_byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_iftrue;
     byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_iffalse <= VAR_byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_iffalse;
     -- Outputs
     VAR_byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_return_output := byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_return_output;

     -- last_MUX[rmii_eth_mac_h_l82_c9_8042] LATENCY=0
     -- Inputs
     last_MUX_rmii_eth_mac_h_l82_c9_8042_cond <= VAR_last_MUX_rmii_eth_mac_h_l82_c9_8042_cond;
     last_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue <= VAR_last_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue;
     last_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse <= VAR_last_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse;
     -- Outputs
     VAR_last_MUX_rmii_eth_mac_h_l82_c9_8042_return_output := last_MUX_rmii_eth_mac_h_l82_c9_8042_return_output;

     -- BIN_OP_EQ[rmii_eth_mac_h_l45_c48_43f0] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_left;
     BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_return_output := BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_return_output;

     -- data_in_regs_CONST_REF_RD_uint2_t_20_uint2_t_20_a609[rmii_eth_mac_h_l17_c15_5298] LATENCY=0
     VAR_data_in_regs_CONST_REF_RD_uint2_t_20_uint2_t_20_a609_rmii_eth_mac_h_l17_c15_5298_return_output := CONST_REF_RD_uint2_t_20_uint2_t_20_a609(
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_0_CONST_REF_RD_uint2_t_uint2_t_20_18_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_1_CONST_REF_RD_uint2_t_uint2_t_20_17_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_2_CONST_REF_RD_uint2_t_uint2_t_20_16_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_3_CONST_REF_RD_uint2_t_uint2_t_20_15_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_4_CONST_REF_RD_uint2_t_uint2_t_20_14_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_5_CONST_REF_RD_uint2_t_uint2_t_20_13_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_6_CONST_REF_RD_uint2_t_uint2_t_20_12_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_7_CONST_REF_RD_uint2_t_uint2_t_20_11_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_8_CONST_REF_RD_uint2_t_uint2_t_20_10_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_9_CONST_REF_RD_uint2_t_uint2_t_20_9_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_10_CONST_REF_RD_uint2_t_uint2_t_20_8_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_11_CONST_REF_RD_uint2_t_uint2_t_20_7_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_12_CONST_REF_RD_uint2_t_uint2_t_20_6_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_13_CONST_REF_RD_uint2_t_uint2_t_20_5_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_14_CONST_REF_RD_uint2_t_uint2_t_20_4_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_15_CONST_REF_RD_uint2_t_uint2_t_20_3_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_16_CONST_REF_RD_uint2_t_uint2_t_20_2_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_17_CONST_REF_RD_uint2_t_uint2_t_20_1_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_FOR_rmii_eth_mac_h_l113_c30_784d_ITER_18_CONST_REF_RD_uint2_t_uint2_t_20_0_d41d_rmii_eth_mac_h_l113_c140_7569_return_output,
     VAR_data_in);

     -- bit_counter_MUX[rmii_eth_mac_h_l98_c5_c82c] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_cond;
     bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output := bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output;

     -- uint2_uint6[rmii_eth_mac_h_l73_c22_b81b] LATENCY=0
     VAR_uint2_uint6_rmii_eth_mac_h_l73_c22_b81b_return_output := uint2_uint6(
     VAR_CONST_REF_RD_uint2_t_uint2_t_20_19_d41d_rmii_eth_mac_h_l34_c29_e261_return_output,
     VAR_uint8_7_2_rmii_eth_mac_h_l73_c50_fb6b_return_output);

     -- valid_MUX[rmii_eth_mac_h_l72_c5_0957] LATENCY=0
     -- Inputs
     valid_MUX_rmii_eth_mac_h_l72_c5_0957_cond <= VAR_valid_MUX_rmii_eth_mac_h_l72_c5_0957_cond;
     valid_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue <= VAR_valid_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue;
     valid_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse <= VAR_valid_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse;
     -- Outputs
     VAR_valid_MUX_rmii_eth_mac_h_l72_c5_0957_return_output := valid_MUX_rmii_eth_mac_h_l72_c5_0957_return_output;

     -- uint2_uint30[rmii_eth_mac_h_l96_c15_c3b6] LATENCY=0
     VAR_uint2_uint30_rmii_eth_mac_h_l96_c15_c3b6_return_output := uint2_uint30(
     VAR_CONST_REF_RD_uint2_t_uint2_t_20_19_d41d_rmii_eth_mac_h_l34_c29_e261_return_output,
     resize(VAR_CONST_SR_2_rmii_eth_mac_h_l96_c44_1269_return_output, 30));

     -- data_out_reg_MUX[rmii_eth_mac_h_l93_c8_f83d] LATENCY=0
     -- Inputs
     data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_cond <= VAR_data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_cond;
     data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue <= VAR_data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue;
     data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse <= VAR_data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse;
     -- Outputs
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output := data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output;

     -- bit_counter_MUX[rmii_eth_mac_h_l82_c9_8042] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_cond;
     bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_return_output := bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_return_output;

     -- data_in_valid_regs_CONST_REF_RD_uint1_t_20_uint1_t_20_a609[rmii_eth_mac_h_l17_c15_5298] LATENCY=0
     VAR_data_in_valid_regs_CONST_REF_RD_uint1_t_20_uint1_t_20_a609_rmii_eth_mac_h_l17_c15_5298_return_output := CONST_REF_RD_uint1_t_20_uint1_t_20_a609(
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_0_CONST_REF_RD_uint1_t_uint1_t_20_18_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_1_CONST_REF_RD_uint1_t_uint1_t_20_17_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_2_CONST_REF_RD_uint1_t_uint1_t_20_16_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_3_CONST_REF_RD_uint1_t_uint1_t_20_15_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_4_CONST_REF_RD_uint1_t_uint1_t_20_14_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_5_CONST_REF_RD_uint1_t_uint1_t_20_13_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_6_CONST_REF_RD_uint1_t_uint1_t_20_12_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_7_CONST_REF_RD_uint1_t_uint1_t_20_11_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_8_CONST_REF_RD_uint1_t_uint1_t_20_10_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_9_CONST_REF_RD_uint1_t_uint1_t_20_9_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_10_CONST_REF_RD_uint1_t_uint1_t_20_8_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_11_CONST_REF_RD_uint1_t_uint1_t_20_7_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_12_CONST_REF_RD_uint1_t_uint1_t_20_6_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_13_CONST_REF_RD_uint1_t_uint1_t_20_5_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_14_CONST_REF_RD_uint1_t_uint1_t_20_4_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_15_CONST_REF_RD_uint1_t_uint1_t_20_3_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_16_CONST_REF_RD_uint1_t_uint1_t_20_2_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_17_CONST_REF_RD_uint1_t_uint1_t_20_1_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_FOR_rmii_eth_mac_h_l114_c30_ccf8_ITER_18_CONST_REF_RD_uint1_t_uint1_t_20_0_d41d_rmii_eth_mac_h_l114_c146_910a_return_output,
     VAR_data_in_valid);

     -- state_MUX[rmii_eth_mac_h_l82_c9_8042] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l82_c9_8042_cond <= VAR_state_MUX_rmii_eth_mac_h_l82_c9_8042_cond;
     state_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l82_c9_8042_iftrue;
     state_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l82_c9_8042_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l82_c9_8042_return_output := state_MUX_rmii_eth_mac_h_l82_c9_8042_return_output;

     -- BIN_OP_EQ[rmii_eth_mac_h_l44_c53_f886] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_left;
     BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_return_output := BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_return_output;

     -- Submodule level 2
     VAR_BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_right := VAR_BIN_OP_EQ_rmii_eth_mac_h_l44_c53_f886_return_output;
     VAR_BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_right := VAR_BIN_OP_EQ_rmii_eth_mac_h_l45_c48_43f0_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue := VAR_bit_counter_MUX_rmii_eth_mac_h_l82_c9_8042_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue := VAR_bit_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue := VAR_byte_counter_MUX_rmii_eth_mac_h_l99_c7_6c6b_return_output;
     REG_VAR_data_in_regs := VAR_data_in_regs_CONST_REF_RD_uint2_t_20_uint2_t_20_a609_rmii_eth_mac_h_l17_c15_5298_return_output;
     REG_VAR_data_in_valid_regs := VAR_data_in_valid_regs_CONST_REF_RD_uint1_t_20_uint1_t_20_a609_rmii_eth_mac_h_l17_c15_5298_return_output;
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse := VAR_data_out_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output;
     VAR_last_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue := VAR_last_MUX_rmii_eth_mac_h_l82_c9_8042_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue := VAR_state_MUX_rmii_eth_mac_h_l82_c9_8042_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue := VAR_state_MUX_rmii_eth_mac_h_l99_c7_6c6b_return_output;
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue := VAR_uint2_uint30_rmii_eth_mac_h_l96_c15_c3b6_return_output;
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue := VAR_uint2_uint6_rmii_eth_mac_h_l73_c22_b81b_return_output;
     VAR_valid_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue := VAR_valid_MUX_rmii_eth_mac_h_l72_c5_0957_return_output;
     -- byte_counter_MUX[rmii_eth_mac_h_l98_c5_c82c] LATENCY=0
     -- Inputs
     byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_cond <= VAR_byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_cond;
     byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue <= VAR_byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue;
     byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse <= VAR_byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse;
     -- Outputs
     VAR_byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output := byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output;

     -- bit_counter_MUX[rmii_eth_mac_h_l75_c7_a6fe] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond;
     bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output := bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output;

     -- last_MUX[rmii_eth_mac_h_l75_c7_a6fe] LATENCY=0
     -- Inputs
     last_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond <= VAR_last_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond;
     last_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue <= VAR_last_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue;
     last_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse <= VAR_last_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse;
     -- Outputs
     VAR_last_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output := last_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output;

     -- valid_MUX[rmii_eth_mac_h_l71_c8_4df6] LATENCY=0
     -- Inputs
     valid_MUX_rmii_eth_mac_h_l71_c8_4df6_cond <= VAR_valid_MUX_rmii_eth_mac_h_l71_c8_4df6_cond;
     valid_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue <= VAR_valid_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue;
     valid_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse <= VAR_valid_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse;
     -- Outputs
     VAR_valid_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output := valid_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output;

     -- fcs_reg_MUX[rmii_eth_mac_h_l93_c8_f83d] LATENCY=0
     -- Inputs
     fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_cond <= VAR_fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_cond;
     fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue <= VAR_fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue;
     fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse <= VAR_fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse;
     -- Outputs
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output := fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output;

     -- state_MUX[rmii_eth_mac_h_l75_c7_a6fe] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond <= VAR_state_MUX_rmii_eth_mac_h_l75_c7_a6fe_cond;
     state_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l75_c7_a6fe_iftrue;
     state_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l75_c7_a6fe_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output := state_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output;

     -- bit_counter_MUX[rmii_eth_mac_h_l93_c8_f83d] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_cond;
     bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output := bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output;

     -- data_out_reg_MUX[rmii_eth_mac_h_l72_c5_0957] LATENCY=0
     -- Inputs
     data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_cond <= VAR_data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_cond;
     data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue <= VAR_data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue;
     data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse <= VAR_data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse;
     -- Outputs
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_return_output := data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_return_output;

     -- BIN_OP_AND[rmii_eth_mac_h_l44_c28_1ca3] LATENCY=0
     -- Inputs
     BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_left <= VAR_BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_left;
     BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_right <= VAR_BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_right;
     -- Outputs
     VAR_BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_return_output := BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_return_output;

     -- state_MUX[rmii_eth_mac_h_l98_c5_c82c] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l98_c5_c82c_cond <= VAR_state_MUX_rmii_eth_mac_h_l98_c5_c82c_cond;
     state_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l98_c5_c82c_iftrue;
     state_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l98_c5_c82c_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output := state_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output;

     -- BIN_OP_AND[rmii_eth_mac_h_l45_c23_051a] LATENCY=0
     -- Inputs
     BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_left <= VAR_BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_left;
     BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_right <= VAR_BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_right;
     -- Outputs
     VAR_BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_return_output := BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_return_output;

     -- Submodule level 3
     VAR_err_MUX_rmii_eth_mac_h_l54_c5_16d1_cond := VAR_BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_return_output;
     VAR_err_MUX_rmii_eth_mac_h_l60_c5_ba9b_cond := VAR_BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l54_c5_16d1_cond := VAR_BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l60_c5_ba9b_cond := VAR_BIN_OP_AND_rmii_eth_mac_h_l44_c28_1ca3_return_output;
     VAR_err_MUX_rmii_eth_mac_h_l63_c10_b6ce_cond := VAR_BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l63_c10_b6ce_cond := VAR_BIN_OP_AND_rmii_eth_mac_h_l45_c23_051a_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue := VAR_bit_counter_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse := VAR_bit_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue := VAR_byte_counter_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output;
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue := VAR_data_out_reg_MUX_rmii_eth_mac_h_l72_c5_0957_return_output;
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse := VAR_fcs_reg_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output;
     VAR_last_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue := VAR_last_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue := VAR_state_MUX_rmii_eth_mac_h_l75_c7_a6fe_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue := VAR_state_MUX_rmii_eth_mac_h_l98_c5_c82c_return_output;
     VAR_valid_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse := VAR_valid_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output;
     -- err_MUX[rmii_eth_mac_h_l54_c5_16d1] LATENCY=0
     -- Inputs
     err_MUX_rmii_eth_mac_h_l54_c5_16d1_cond <= VAR_err_MUX_rmii_eth_mac_h_l54_c5_16d1_cond;
     err_MUX_rmii_eth_mac_h_l54_c5_16d1_iftrue <= VAR_err_MUX_rmii_eth_mac_h_l54_c5_16d1_iftrue;
     err_MUX_rmii_eth_mac_h_l54_c5_16d1_iffalse <= VAR_err_MUX_rmii_eth_mac_h_l54_c5_16d1_iffalse;
     -- Outputs
     VAR_err_MUX_rmii_eth_mac_h_l54_c5_16d1_return_output := err_MUX_rmii_eth_mac_h_l54_c5_16d1_return_output;

     -- byte_counter_MUX[rmii_eth_mac_h_l93_c8_f83d] LATENCY=0
     -- Inputs
     byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_cond <= VAR_byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_cond;
     byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue <= VAR_byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue;
     byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse <= VAR_byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse;
     -- Outputs
     VAR_byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output := byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output;

     -- bit_counter_MUX[rmii_eth_mac_h_l72_c5_0957] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_cond;
     bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_return_output := bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_return_output;

     -- data_out_reg_MUX[rmii_eth_mac_h_l71_c8_4df6] LATENCY=0
     -- Inputs
     data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_cond <= VAR_data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_cond;
     data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue <= VAR_data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue;
     data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse <= VAR_data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse;
     -- Outputs
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output := data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output;

     -- state_MUX[rmii_eth_mac_h_l93_c8_f83d] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l93_c8_f83d_cond <= VAR_state_MUX_rmii_eth_mac_h_l93_c8_f83d_cond;
     state_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l93_c8_f83d_iftrue;
     state_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l93_c8_f83d_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output := state_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output;

     -- last_MUX[rmii_eth_mac_h_l72_c5_0957] LATENCY=0
     -- Inputs
     last_MUX_rmii_eth_mac_h_l72_c5_0957_cond <= VAR_last_MUX_rmii_eth_mac_h_l72_c5_0957_cond;
     last_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue <= VAR_last_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue;
     last_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse <= VAR_last_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse;
     -- Outputs
     VAR_last_MUX_rmii_eth_mac_h_l72_c5_0957_return_output := last_MUX_rmii_eth_mac_h_l72_c5_0957_return_output;

     -- state_MUX[rmii_eth_mac_h_l54_c5_16d1] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l54_c5_16d1_cond <= VAR_state_MUX_rmii_eth_mac_h_l54_c5_16d1_cond;
     state_MUX_rmii_eth_mac_h_l54_c5_16d1_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l54_c5_16d1_iftrue;
     state_MUX_rmii_eth_mac_h_l54_c5_16d1_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l54_c5_16d1_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l54_c5_16d1_return_output := state_MUX_rmii_eth_mac_h_l54_c5_16d1_return_output;

     -- valid_MUX[rmii_eth_mac_h_l59_c8_0593] LATENCY=0
     -- Inputs
     valid_MUX_rmii_eth_mac_h_l59_c8_0593_cond <= VAR_valid_MUX_rmii_eth_mac_h_l59_c8_0593_cond;
     valid_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue <= VAR_valid_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue;
     valid_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse <= VAR_valid_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse;
     -- Outputs
     VAR_valid_MUX_rmii_eth_mac_h_l59_c8_0593_return_output := valid_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;

     -- state_MUX[rmii_eth_mac_h_l72_c5_0957] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l72_c5_0957_cond <= VAR_state_MUX_rmii_eth_mac_h_l72_c5_0957_cond;
     state_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l72_c5_0957_iftrue;
     state_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l72_c5_0957_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l72_c5_0957_return_output := state_MUX_rmii_eth_mac_h_l72_c5_0957_return_output;

     -- state_MUX[rmii_eth_mac_h_l63_c10_b6ce] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l63_c10_b6ce_cond <= VAR_state_MUX_rmii_eth_mac_h_l63_c10_b6ce_cond;
     state_MUX_rmii_eth_mac_h_l63_c10_b6ce_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l63_c10_b6ce_iftrue;
     state_MUX_rmii_eth_mac_h_l63_c10_b6ce_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l63_c10_b6ce_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l63_c10_b6ce_return_output := state_MUX_rmii_eth_mac_h_l63_c10_b6ce_return_output;

     -- err_MUX[rmii_eth_mac_h_l63_c10_b6ce] LATENCY=0
     -- Inputs
     err_MUX_rmii_eth_mac_h_l63_c10_b6ce_cond <= VAR_err_MUX_rmii_eth_mac_h_l63_c10_b6ce_cond;
     err_MUX_rmii_eth_mac_h_l63_c10_b6ce_iftrue <= VAR_err_MUX_rmii_eth_mac_h_l63_c10_b6ce_iftrue;
     err_MUX_rmii_eth_mac_h_l63_c10_b6ce_iffalse <= VAR_err_MUX_rmii_eth_mac_h_l63_c10_b6ce_iffalse;
     -- Outputs
     VAR_err_MUX_rmii_eth_mac_h_l63_c10_b6ce_return_output := err_MUX_rmii_eth_mac_h_l63_c10_b6ce_return_output;

     -- fcs_reg_MUX[rmii_eth_mac_h_l71_c8_4df6] LATENCY=0
     -- Inputs
     fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_cond <= VAR_fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_cond;
     fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue <= VAR_fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue;
     fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse <= VAR_fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse;
     -- Outputs
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output := fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output;

     -- Submodule level 4
     VAR_bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue := VAR_bit_counter_MUX_rmii_eth_mac_h_l72_c5_0957_return_output;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse := VAR_byte_counter_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output;
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse := VAR_data_out_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output;
     VAR_err_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue := VAR_err_MUX_rmii_eth_mac_h_l54_c5_16d1_return_output;
     VAR_err_MUX_rmii_eth_mac_h_l60_c5_ba9b_iffalse := VAR_err_MUX_rmii_eth_mac_h_l63_c10_b6ce_return_output;
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse := VAR_fcs_reg_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output;
     VAR_last_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue := VAR_last_MUX_rmii_eth_mac_h_l72_c5_0957_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue := VAR_state_MUX_rmii_eth_mac_h_l54_c5_16d1_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l60_c5_ba9b_iffalse := VAR_state_MUX_rmii_eth_mac_h_l63_c10_b6ce_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue := VAR_state_MUX_rmii_eth_mac_h_l72_c5_0957_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse := VAR_state_MUX_rmii_eth_mac_h_l93_c8_f83d_return_output;
     VAR_valid_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse := VAR_valid_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;
     -- valid_MUX[rmii_eth_mac_h_l48_c3_c14a] LATENCY=0
     -- Inputs
     valid_MUX_rmii_eth_mac_h_l48_c3_c14a_cond <= VAR_valid_MUX_rmii_eth_mac_h_l48_c3_c14a_cond;
     valid_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue <= VAR_valid_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue;
     valid_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse <= VAR_valid_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse;
     -- Outputs
     VAR_valid_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output := valid_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output;

     -- bit_counter_MUX[rmii_eth_mac_h_l71_c8_4df6] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_cond;
     bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output := bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output;

     -- last_MUX[rmii_eth_mac_h_l71_c8_4df6] LATENCY=0
     -- Inputs
     last_MUX_rmii_eth_mac_h_l71_c8_4df6_cond <= VAR_last_MUX_rmii_eth_mac_h_l71_c8_4df6_cond;
     last_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue <= VAR_last_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue;
     last_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse <= VAR_last_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse;
     -- Outputs
     VAR_last_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output := last_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output;

     -- data_out_reg_MUX[rmii_eth_mac_h_l59_c8_0593] LATENCY=0
     -- Inputs
     data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_cond <= VAR_data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_cond;
     data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue <= VAR_data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue;
     data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse <= VAR_data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse;
     -- Outputs
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_return_output := data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;

     -- err_MUX[rmii_eth_mac_h_l60_c5_ba9b] LATENCY=0
     -- Inputs
     err_MUX_rmii_eth_mac_h_l60_c5_ba9b_cond <= VAR_err_MUX_rmii_eth_mac_h_l60_c5_ba9b_cond;
     err_MUX_rmii_eth_mac_h_l60_c5_ba9b_iftrue <= VAR_err_MUX_rmii_eth_mac_h_l60_c5_ba9b_iftrue;
     err_MUX_rmii_eth_mac_h_l60_c5_ba9b_iffalse <= VAR_err_MUX_rmii_eth_mac_h_l60_c5_ba9b_iffalse;
     -- Outputs
     VAR_err_MUX_rmii_eth_mac_h_l60_c5_ba9b_return_output := err_MUX_rmii_eth_mac_h_l60_c5_ba9b_return_output;

     -- fcs_reg_MUX[rmii_eth_mac_h_l59_c8_0593] LATENCY=0
     -- Inputs
     fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_cond <= VAR_fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_cond;
     fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue <= VAR_fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue;
     fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse <= VAR_fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse;
     -- Outputs
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_return_output := fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;

     -- state_MUX[rmii_eth_mac_h_l60_c5_ba9b] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l60_c5_ba9b_cond <= VAR_state_MUX_rmii_eth_mac_h_l60_c5_ba9b_cond;
     state_MUX_rmii_eth_mac_h_l60_c5_ba9b_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l60_c5_ba9b_iftrue;
     state_MUX_rmii_eth_mac_h_l60_c5_ba9b_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l60_c5_ba9b_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l60_c5_ba9b_return_output := state_MUX_rmii_eth_mac_h_l60_c5_ba9b_return_output;

     -- byte_counter_MUX[rmii_eth_mac_h_l71_c8_4df6] LATENCY=0
     -- Inputs
     byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_cond <= VAR_byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_cond;
     byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue <= VAR_byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue;
     byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse <= VAR_byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse;
     -- Outputs
     VAR_byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output := byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output;

     -- state_MUX[rmii_eth_mac_h_l71_c8_4df6] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l71_c8_4df6_cond <= VAR_state_MUX_rmii_eth_mac_h_l71_c8_4df6_cond;
     state_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l71_c8_4df6_iftrue;
     state_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l71_c8_4df6_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output := state_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output;

     -- Submodule level 5
     VAR_bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse := VAR_bit_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse := VAR_byte_counter_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output;
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse := VAR_data_out_reg_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;
     VAR_err_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue := VAR_err_MUX_rmii_eth_mac_h_l60_c5_ba9b_return_output;
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse := VAR_fcs_reg_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;
     VAR_last_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse := VAR_last_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue := VAR_state_MUX_rmii_eth_mac_h_l60_c5_ba9b_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse := VAR_state_MUX_rmii_eth_mac_h_l71_c8_4df6_return_output;
     -- last_MUX[rmii_eth_mac_h_l59_c8_0593] LATENCY=0
     -- Inputs
     last_MUX_rmii_eth_mac_h_l59_c8_0593_cond <= VAR_last_MUX_rmii_eth_mac_h_l59_c8_0593_cond;
     last_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue <= VAR_last_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue;
     last_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse <= VAR_last_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse;
     -- Outputs
     VAR_last_MUX_rmii_eth_mac_h_l59_c8_0593_return_output := last_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;

     -- state_MUX[rmii_eth_mac_h_l59_c8_0593] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l59_c8_0593_cond <= VAR_state_MUX_rmii_eth_mac_h_l59_c8_0593_cond;
     state_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue;
     state_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l59_c8_0593_return_output := state_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;

     -- err_MUX[rmii_eth_mac_h_l59_c8_0593] LATENCY=0
     -- Inputs
     err_MUX_rmii_eth_mac_h_l59_c8_0593_cond <= VAR_err_MUX_rmii_eth_mac_h_l59_c8_0593_cond;
     err_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue <= VAR_err_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue;
     err_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse <= VAR_err_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse;
     -- Outputs
     VAR_err_MUX_rmii_eth_mac_h_l59_c8_0593_return_output := err_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;

     -- bit_counter_MUX[rmii_eth_mac_h_l59_c8_0593] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_cond;
     bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_return_output := bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;

     -- fcs_reg_MUX[rmii_eth_mac_h_l48_c3_c14a] LATENCY=0
     -- Inputs
     fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_cond <= VAR_fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_cond;
     fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue <= VAR_fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue;
     fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse <= VAR_fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse;
     -- Outputs
     VAR_fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output := fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output;

     -- byte_counter_MUX[rmii_eth_mac_h_l59_c8_0593] LATENCY=0
     -- Inputs
     byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_cond <= VAR_byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_cond;
     byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue <= VAR_byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iftrue;
     byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse <= VAR_byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_iffalse;
     -- Outputs
     VAR_byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_return_output := byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;

     -- data_out_reg_MUX[rmii_eth_mac_h_l48_c3_c14a] LATENCY=0
     -- Inputs
     data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_cond <= VAR_data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_cond;
     data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue <= VAR_data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue;
     data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse <= VAR_data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse;
     -- Outputs
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output := data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output;

     -- Submodule level 6
     VAR_bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse := VAR_bit_counter_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;
     VAR_byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse := VAR_byte_counter_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;
     REG_VAR_data_out_reg := VAR_data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output;
     VAR_err_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse := VAR_err_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;
     REG_VAR_fcs_reg := VAR_fcs_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output;
     VAR_last_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse := VAR_last_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse := VAR_state_MUX_rmii_eth_mac_h_l59_c8_0593_return_output;
     -- bit_counter_MUX[rmii_eth_mac_h_l48_c3_c14a] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_cond;
     bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output := bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output;

     -- err_MUX[rmii_eth_mac_h_l48_c3_c14a] LATENCY=0
     -- Inputs
     err_MUX_rmii_eth_mac_h_l48_c3_c14a_cond <= VAR_err_MUX_rmii_eth_mac_h_l48_c3_c14a_cond;
     err_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue <= VAR_err_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue;
     err_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse <= VAR_err_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse;
     -- Outputs
     VAR_err_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output := err_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output;

     -- last_MUX[rmii_eth_mac_h_l48_c3_c14a] LATENCY=0
     -- Inputs
     last_MUX_rmii_eth_mac_h_l48_c3_c14a_cond <= VAR_last_MUX_rmii_eth_mac_h_l48_c3_c14a_cond;
     last_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue <= VAR_last_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue;
     last_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse <= VAR_last_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse;
     -- Outputs
     VAR_last_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output := last_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output;

     -- byte_counter_MUX[rmii_eth_mac_h_l48_c3_c14a] LATENCY=0
     -- Inputs
     byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_cond <= VAR_byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_cond;
     byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue <= VAR_byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue;
     byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse <= VAR_byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse;
     -- Outputs
     VAR_byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output := byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output;

     -- state_MUX[rmii_eth_mac_h_l48_c3_c14a] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l48_c3_c14a_cond <= VAR_state_MUX_rmii_eth_mac_h_l48_c3_c14a_cond;
     state_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l48_c3_c14a_iftrue;
     state_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l48_c3_c14a_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output := state_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output;

     -- Submodule level 7
     REG_VAR_bit_counter := VAR_bit_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output;
     REG_VAR_byte_counter := VAR_byte_counter_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output;
     REG_VAR_state := VAR_state_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output;
     -- CONST_REF_RD_rmii_rx_mac_t_rmii_rx_mac_t_48d4[rmii_eth_mac_h_l123_c10_aebf] LATENCY=0
     VAR_CONST_REF_RD_rmii_rx_mac_t_rmii_rx_mac_t_48d4_rmii_eth_mac_h_l123_c10_aebf_return_output := CONST_REF_RD_rmii_rx_mac_t_rmii_rx_mac_t_48d4(
     VAR_data_out_reg_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output,
     VAR_last_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output,
     VAR_valid_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output,
     VAR_valid_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output,
     VAR_err_MUX_rmii_eth_mac_h_l48_c3_c14a_return_output);

     -- Submodule level 8
     VAR_return_output := VAR_CONST_REF_RD_rmii_rx_mac_t_rmii_rx_mac_t_48d4_rmii_eth_mac_h_l123_c10_aebf_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_data_in_regs <= REG_VAR_data_in_regs;
REG_COMB_data_in_valid_regs <= REG_VAR_data_in_valid_regs;
REG_COMB_data_out_reg <= REG_VAR_data_out_reg;
REG_COMB_state <= REG_VAR_state;
REG_COMB_bit_counter <= REG_VAR_bit_counter;
REG_COMB_byte_counter <= REG_VAR_byte_counter;
REG_COMB_fcs_reg <= REG_VAR_fcs_reg;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if clk_en_internal='1' then
     data_in_regs <= REG_COMB_data_in_regs;
     data_in_valid_regs <= REG_COMB_data_in_valid_regs;
     data_out_reg <= REG_COMB_data_out_reg;
     state <= REG_COMB_state;
     bit_counter <= REG_COMB_bit_counter;
     byte_counter <= REG_COMB_byte_counter;
     fcs_reg <= REG_COMB_fcs_reg;
 end if;
 end if;
end process;

end arch;
