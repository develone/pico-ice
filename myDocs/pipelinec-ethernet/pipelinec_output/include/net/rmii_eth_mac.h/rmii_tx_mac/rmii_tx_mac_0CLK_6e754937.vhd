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
-- Submodules: 80
entity rmii_tx_mac_0CLK_6e754937 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 axis_in : in axis8_t_stream_t;
 return_output : out rmii_tx_mac_t);
end rmii_tx_mac_0CLK_6e754937;
architecture arch of rmii_tx_mac_0CLK_6e754937 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal state : unsigned(2 downto 0) := unsigned(rmii_tx_mac_state_t_to_slv(rmii_tx_mac_state_t'left));
signal bit_counter : unsigned(5 downto 0) := to_unsigned(0, 6);
signal crc : unsigned(31 downto 0) := to_unsigned(0, 32);
signal crc_shift_reg : unsigned(31 downto 0) := to_unsigned(0, 32);
signal data_reg : unsigned(7 downto 0) := to_unsigned(0, 8);
signal last_byte_reg : unsigned(0 downto 0) := to_unsigned(0, 1);
signal axis_in_data_reg : unsigned(7 downto 0) := to_unsigned(0, 8);
signal axis_in_data_reg_valid : unsigned(0 downto 0) := to_unsigned(0, 1);
signal REG_COMB_state : unsigned(2 downto 0);
signal REG_COMB_bit_counter : unsigned(5 downto 0);
signal REG_COMB_crc : unsigned(31 downto 0);
signal REG_COMB_crc_shift_reg : unsigned(31 downto 0);
signal REG_COMB_data_reg : unsigned(7 downto 0);
signal REG_COMB_last_byte_reg : unsigned(0 downto 0);
signal REG_COMB_axis_in_data_reg : unsigned(7 downto 0);
signal REG_COMB_axis_in_data_reg_valid : unsigned(0 downto 0);

-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- BIN_OP_EQ[rmii_eth_mac_h_l158_c31_cfbf]
signal BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_left : unsigned(5 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_right : unsigned(5 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[rmii_eth_mac_h_l159_c26_3796]
signal BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_left : unsigned(5 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_right : unsigned(4 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[rmii_eth_mac_h_l160_c32_4497]
signal BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_left : unsigned(5 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_right : unsigned(2 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[rmii_eth_mac_h_l167_c6_598f]
signal BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_left : unsigned(2 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_right : unsigned(2 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l167_c3_86dc]
signal state_MUX_rmii_eth_mac_h_l167_c3_86dc_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output : unsigned(2 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l167_c3_86dc]
signal bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output : unsigned(5 downto 0);

-- crc_shift_reg_MUX[rmii_eth_mac_h_l167_c3_86dc]
signal crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond : unsigned(0 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue : unsigned(31 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse : unsigned(31 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output : unsigned(31 downto 0);

-- reset_crc_MUX[rmii_eth_mac_h_l167_c3_86dc]
signal reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_cond : unsigned(0 downto 0);
signal reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue : unsigned(0 downto 0);
signal reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse : unsigned(0 downto 0);
signal reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output : unsigned(0 downto 0);

-- last_byte_reg_MUX[rmii_eth_mac_h_l167_c3_86dc]
signal last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output : unsigned(0 downto 0);

-- data_reg_MUX[rmii_eth_mac_h_l167_c3_86dc]
signal data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond : unsigned(0 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue : unsigned(7 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse : unsigned(7 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output : unsigned(7 downto 0);

-- o_MUX[rmii_eth_mac_h_l167_c3_86dc]
signal o_MUX_rmii_eth_mac_h_l167_c3_86dc_cond : unsigned(0 downto 0);
signal o_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue : rmii_tx_mac_t;
signal o_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse : rmii_tx_mac_t;
signal o_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output : rmii_tx_mac_t;

-- state_MUX[rmii_eth_mac_h_l169_c5_6d47]
signal state_MUX_rmii_eth_mac_h_l169_c5_6d47_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l169_c5_6d47_iftrue : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l169_c5_6d47_iffalse : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l169_c5_6d47_return_output : unsigned(2 downto 0);

-- BIN_OP_EQ[rmii_eth_mac_h_l173_c11_f24d]
signal BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_left : unsigned(2 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_right : unsigned(2 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l173_c8_2623]
signal state_MUX_rmii_eth_mac_h_l173_c8_2623_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l173_c8_2623_return_output : unsigned(2 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l173_c8_2623]
signal bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_return_output : unsigned(5 downto 0);

-- crc_shift_reg_MUX[rmii_eth_mac_h_l173_c8_2623]
signal crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond : unsigned(0 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue : unsigned(31 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse : unsigned(31 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output : unsigned(31 downto 0);

-- last_byte_reg_MUX[rmii_eth_mac_h_l173_c8_2623]
signal last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output : unsigned(0 downto 0);

-- data_reg_MUX[rmii_eth_mac_h_l173_c8_2623]
signal data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond : unsigned(0 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue : unsigned(7 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse : unsigned(7 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output : unsigned(7 downto 0);

-- o_MUX[rmii_eth_mac_h_l173_c8_2623]
signal o_MUX_rmii_eth_mac_h_l173_c8_2623_cond : unsigned(0 downto 0);
signal o_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue : rmii_tx_mac_t;
signal o_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse : rmii_tx_mac_t;
signal o_MUX_rmii_eth_mac_h_l173_c8_2623_return_output : rmii_tx_mac_t;

-- state_MUX[rmii_eth_mac_h_l176_c5_f131]
signal state_MUX_rmii_eth_mac_h_l176_c5_f131_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l176_c5_f131_iftrue : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l176_c5_f131_iffalse : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l176_c5_f131_return_output : unsigned(2 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l176_c5_f131]
signal bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_iftrue : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_iffalse : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_return_output : unsigned(5 downto 0);

-- BIN_OP_EQ[rmii_eth_mac_h_l184_c11_0351]
signal BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_left : unsigned(2 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_right : unsigned(2 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l184_c8_f6a2]
signal state_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output : unsigned(2 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l184_c8_f6a2]
signal bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output : unsigned(5 downto 0);

-- crc_shift_reg_MUX[rmii_eth_mac_h_l184_c8_f6a2]
signal crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond : unsigned(0 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue : unsigned(31 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse : unsigned(31 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output : unsigned(31 downto 0);

-- last_byte_reg_MUX[rmii_eth_mac_h_l184_c8_f6a2]
signal last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output : unsigned(0 downto 0);

-- data_reg_MUX[rmii_eth_mac_h_l184_c8_f6a2]
signal data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond : unsigned(0 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue : unsigned(7 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse : unsigned(7 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output : unsigned(7 downto 0);

-- o_MUX[rmii_eth_mac_h_l184_c8_f6a2]
signal o_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond : unsigned(0 downto 0);
signal o_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue : rmii_tx_mac_t;
signal o_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse : rmii_tx_mac_t;
signal o_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output : rmii_tx_mac_t;

-- BIN_OP_EQ[rmii_eth_mac_h_l194_c11_9021]
signal BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_left : unsigned(2 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_right : unsigned(2 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l194_c8_7c5b]
signal state_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output : unsigned(2 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l194_c8_7c5b]
signal bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output : unsigned(5 downto 0);

-- crc_shift_reg_MUX[rmii_eth_mac_h_l194_c8_7c5b]
signal crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond : unsigned(0 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue : unsigned(31 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse : unsigned(31 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output : unsigned(31 downto 0);

-- last_byte_reg_MUX[rmii_eth_mac_h_l194_c8_7c5b]
signal last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output : unsigned(0 downto 0);

-- data_reg_MUX[rmii_eth_mac_h_l194_c8_7c5b]
signal data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond : unsigned(0 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue : unsigned(7 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse : unsigned(7 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output : unsigned(7 downto 0);

-- o_MUX[rmii_eth_mac_h_l194_c8_7c5b]
signal o_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond : unsigned(0 downto 0);
signal o_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue : rmii_tx_mac_t;
signal o_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse : rmii_tx_mac_t;
signal o_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output : rmii_tx_mac_t;

-- BIN_OP_AND[rmii_eth_mac_h_l201_c38_3ae5]
signal BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_left : unsigned(0 downto 0);
signal BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_right : unsigned(0 downto 0);
signal BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l202_c5_0412]
signal state_MUX_rmii_eth_mac_h_l202_c5_0412_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l202_c5_0412_return_output : unsigned(2 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l202_c5_0412]
signal bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_return_output : unsigned(5 downto 0);

-- last_byte_reg_MUX[rmii_eth_mac_h_l202_c5_0412]
signal last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_cond : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_return_output : unsigned(0 downto 0);

-- data_reg_MUX[rmii_eth_mac_h_l202_c5_0412]
signal data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_cond : unsigned(0 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue : unsigned(7 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse : unsigned(7 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_return_output : unsigned(7 downto 0);

-- o_tx_mac_input_ready_MUX[rmii_eth_mac_h_l202_c5_0412]
signal o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_cond : unsigned(0 downto 0);
signal o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue : unsigned(0 downto 0);
signal o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse : unsigned(0 downto 0);
signal o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l203_c7_3a1d]
signal state_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output : unsigned(2 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l203_c7_3a1d]
signal bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output : unsigned(5 downto 0);

-- last_byte_reg_MUX[rmii_eth_mac_h_l203_c7_3a1d]
signal last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse : unsigned(0 downto 0);
signal last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output : unsigned(0 downto 0);

-- data_reg_MUX[rmii_eth_mac_h_l203_c7_3a1d]
signal data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond : unsigned(0 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue : unsigned(7 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse : unsigned(7 downto 0);
signal data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output : unsigned(7 downto 0);

-- o_tx_mac_input_ready_MUX[rmii_eth_mac_h_l203_c7_3a1d]
signal o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond : unsigned(0 downto 0);
signal o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue : unsigned(0 downto 0);
signal o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse : unsigned(0 downto 0);
signal o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output : unsigned(0 downto 0);

-- CONST_SR_2[rmii_eth_mac_h_l218_c18_17cd]
signal CONST_SR_2_rmii_eth_mac_h_l218_c18_17cd_x : unsigned(7 downto 0);
signal CONST_SR_2_rmii_eth_mac_h_l218_c18_17cd_return_output : unsigned(7 downto 0);

-- BIN_OP_EQ[rmii_eth_mac_h_l221_c11_8825]
signal BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_left : unsigned(2 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_right : unsigned(2 downto 0);
signal BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l221_c8_02f7]
signal state_MUX_rmii_eth_mac_h_l221_c8_02f7_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output : unsigned(2 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l221_c8_02f7]
signal bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output : unsigned(5 downto 0);

-- crc_shift_reg_MUX[rmii_eth_mac_h_l221_c8_02f7]
signal crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_cond : unsigned(0 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue : unsigned(31 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse : unsigned(31 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output : unsigned(31 downto 0);

-- o_tx_mac_output_data_MUX[rmii_eth_mac_h_l221_c8_02f7]
signal o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_cond : unsigned(0 downto 0);
signal o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue : unsigned(1 downto 0);
signal o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse : unsigned(1 downto 0);
signal o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output : unsigned(1 downto 0);

-- o_tx_mac_output_valid_MUX[rmii_eth_mac_h_l221_c8_02f7]
signal o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_cond : unsigned(0 downto 0);
signal o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue : unsigned(0 downto 0);
signal o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse : unsigned(0 downto 0);
signal o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output : unsigned(0 downto 0);

-- state_MUX[rmii_eth_mac_h_l226_c5_fe09]
signal state_MUX_rmii_eth_mac_h_l226_c5_fe09_cond : unsigned(0 downto 0);
signal state_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse : unsigned(2 downto 0);
signal state_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output : unsigned(2 downto 0);

-- bit_counter_MUX[rmii_eth_mac_h_l226_c5_fe09]
signal bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_cond : unsigned(0 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse : unsigned(5 downto 0);
signal bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output : unsigned(5 downto 0);

-- crc_shift_reg_MUX[rmii_eth_mac_h_l226_c5_fe09]
signal crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_cond : unsigned(0 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue : unsigned(31 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse : unsigned(31 downto 0);
signal crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output : unsigned(31 downto 0);

-- CONST_SR_2[rmii_eth_mac_h_l233_c23_6856]
signal CONST_SR_2_rmii_eth_mac_h_l233_c23_6856_x : unsigned(31 downto 0);
signal CONST_SR_2_rmii_eth_mac_h_l233_c23_6856_return_output : unsigned(31 downto 0);

-- crc_MUX[rmii_eth_mac_h_l250_c3_c502]
signal crc_MUX_rmii_eth_mac_h_l250_c3_c502_cond : unsigned(0 downto 0);
signal crc_MUX_rmii_eth_mac_h_l250_c3_c502_iftrue : unsigned(31 downto 0);
signal crc_MUX_rmii_eth_mac_h_l250_c3_c502_iffalse : unsigned(31 downto 0);
signal crc_MUX_rmii_eth_mac_h_l250_c3_c502_return_output : unsigned(31 downto 0);

-- CONST_SR_4[rmii_eth_mac_h_l251_c12_df7e]
signal CONST_SR_4_rmii_eth_mac_h_l251_c12_df7e_x : unsigned(31 downto 0);
signal CONST_SR_4_rmii_eth_mac_h_l251_c12_df7e_return_output : unsigned(31 downto 0);

-- CONST_SR_0[rmii_eth_mac_h_l251_c42_95ee]
signal CONST_SR_0_rmii_eth_mac_h_l251_c42_95ee_x : unsigned(7 downto 0);
signal CONST_SR_0_rmii_eth_mac_h_l251_c42_95ee_return_output : unsigned(7 downto 0);

-- BIN_OP_XOR[rmii_eth_mac_h_l251_c35_72d0]
signal BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_left : unsigned(31 downto 0);
signal BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_right : unsigned(7 downto 0);
signal BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_return_output : unsigned(31 downto 0);

-- BIN_OP_AND[rmii_eth_mac_h_l251_c35_28d8]
signal BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_left : unsigned(31 downto 0);
signal BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_right : unsigned(7 downto 0);
signal BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_return_output : unsigned(31 downto 0);

-- VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60[rmii_eth_mac_h_l251_c24_5910]
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_0 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_1 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_2 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_3 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_4 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_5 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_6 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_7 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_8 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_9 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_10 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_11 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_12 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_13 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_14 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_15 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_var_dim_0 : unsigned(3 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_return_output : unsigned(31 downto 0);

-- BIN_OP_XOR[rmii_eth_mac_h_l251_c12_0fe1]
signal BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_left : unsigned(31 downto 0);
signal BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_right : unsigned(31 downto 0);
signal BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_return_output : unsigned(31 downto 0);

-- CONST_SR_4[rmii_eth_mac_h_l252_c12_0aea]
signal CONST_SR_4_rmii_eth_mac_h_l252_c12_0aea_x : unsigned(31 downto 0);
signal CONST_SR_4_rmii_eth_mac_h_l252_c12_0aea_return_output : unsigned(31 downto 0);

-- CONST_SR_4[rmii_eth_mac_h_l252_c42_f5dc]
signal CONST_SR_4_rmii_eth_mac_h_l252_c42_f5dc_x : unsigned(7 downto 0);
signal CONST_SR_4_rmii_eth_mac_h_l252_c42_f5dc_return_output : unsigned(7 downto 0);

-- BIN_OP_XOR[rmii_eth_mac_h_l252_c35_ed07]
signal BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_left : unsigned(31 downto 0);
signal BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_right : unsigned(7 downto 0);
signal BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_return_output : unsigned(31 downto 0);

-- BIN_OP_AND[rmii_eth_mac_h_l252_c35_29e1]
signal BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_left : unsigned(31 downto 0);
signal BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_right : unsigned(7 downto 0);
signal BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_return_output : unsigned(31 downto 0);

-- VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60[rmii_eth_mac_h_l252_c24_df6d]
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_0 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_1 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_2 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_3 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_4 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_5 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_6 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_7 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_8 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_9 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_10 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_11 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_12 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_13 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_14 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_15 : unsigned(31 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_var_dim_0 : unsigned(3 downto 0);
signal VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_return_output : unsigned(31 downto 0);

-- BIN_OP_XOR[rmii_eth_mac_h_l252_c12_1534]
signal BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_left : unsigned(31 downto 0);
signal BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_right : unsigned(31 downto 0);
signal BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_return_output : unsigned(31 downto 0);

-- crc_MUX[rmii_eth_mac_h_l254_c3_48c0]
signal crc_MUX_rmii_eth_mac_h_l254_c3_48c0_cond : unsigned(0 downto 0);
signal crc_MUX_rmii_eth_mac_h_l254_c3_48c0_iftrue : unsigned(31 downto 0);
signal crc_MUX_rmii_eth_mac_h_l254_c3_48c0_iffalse : unsigned(31 downto 0);
signal crc_MUX_rmii_eth_mac_h_l254_c3_48c0_return_output : unsigned(31 downto 0);

-- BIN_OP_AND[rmii_eth_mac_h_l258_c28_a0d2]
signal BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_left : unsigned(0 downto 0);
signal BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_right : unsigned(0 downto 0);
signal BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_return_output : unsigned(0 downto 0);

-- BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77
signal BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_left : unsigned(5 downto 0);
signal BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_right : unsigned(1 downto 0);
signal BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_return_output : unsigned(6 downto 0);

function CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_5724( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned) return rmii_tx_mac_t is
 
  variable base : rmii_tx_mac_t; 
  variable return_output : rmii_tx_mac_t;
begin
      base.tx_mac_output_data := ref_toks_0;
      base.tx_mac_output_valid := ref_toks_1;
      base.tx_mac_input_ready := ref_toks_2;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_6bcb( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned) return rmii_tx_mac_t is
 
  variable base : rmii_tx_mac_t; 
  variable return_output : rmii_tx_mac_t;
begin
      base.tx_mac_input_ready := ref_toks_0;
      base.tx_mac_output_data := ref_toks_1;
      base.tx_mac_output_valid := ref_toks_2;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_b5cd( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned) return rmii_tx_mac_t is
 
  variable base : rmii_tx_mac_t; 
  variable return_output : rmii_tx_mac_t;
begin
      base.tx_mac_output_valid := ref_toks_0;
      base.tx_mac_output_data := ref_toks_1;
      base.tx_mac_input_ready := ref_toks_2;

      return_output := base;
      return return_output; 
end function;

function uint8_1_0( x : unsigned) return unsigned is
--variable x : unsigned(7 downto 0);
  variable return_output : unsigned(1 downto 0);
begin
return_output := unsigned(std_logic_vector(x(1 downto 0)));
return return_output;
end function;

function uint32_1_0( x : unsigned) return unsigned is
--variable x : unsigned(31 downto 0);
  variable return_output : unsigned(1 downto 0);
begin
return_output := unsigned(std_logic_vector(x(1 downto 0)));
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf : entity work.BIN_OP_EQ_uint6_t_uint6_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_left,
BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_right,
BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_return_output);

-- BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796 : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796 : entity work.BIN_OP_EQ_uint6_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_left,
BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_right,
BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_return_output);

-- BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497 : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497 : entity work.BIN_OP_EQ_uint6_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_left,
BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_right,
BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_return_output);

-- BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f : entity work.BIN_OP_EQ_uint3_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_left,
BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_right,
BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_return_output);

-- state_MUX_rmii_eth_mac_h_l167_c3_86dc : 0 clocks latency
state_MUX_rmii_eth_mac_h_l167_c3_86dc : entity work.MUX_uint1_t_rmii_tx_mac_state_t_rmii_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l167_c3_86dc_cond,
state_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue,
state_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse,
state_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc : entity work.MUX_uint1_t_uint6_t_uint6_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_cond,
bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output);

-- crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc : 0 clocks latency
crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond,
crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue,
crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse,
crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output);

-- reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc : 0 clocks latency
reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_cond,
reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue,
reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse,
reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output);

-- last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc : 0 clocks latency
last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond,
last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue,
last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse,
last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output);

-- data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc : 0 clocks latency
data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond,
data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue,
data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse,
data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output);

-- o_MUX_rmii_eth_mac_h_l167_c3_86dc : 0 clocks latency
o_MUX_rmii_eth_mac_h_l167_c3_86dc : entity work.MUX_uint1_t_rmii_tx_mac_t_rmii_tx_mac_t_0CLK_de264c78 port map (
o_MUX_rmii_eth_mac_h_l167_c3_86dc_cond,
o_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue,
o_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse,
o_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output);

-- state_MUX_rmii_eth_mac_h_l169_c5_6d47 : 0 clocks latency
state_MUX_rmii_eth_mac_h_l169_c5_6d47 : entity work.MUX_uint1_t_rmii_tx_mac_state_t_rmii_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l169_c5_6d47_cond,
state_MUX_rmii_eth_mac_h_l169_c5_6d47_iftrue,
state_MUX_rmii_eth_mac_h_l169_c5_6d47_iffalse,
state_MUX_rmii_eth_mac_h_l169_c5_6d47_return_output);

-- BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d : entity work.BIN_OP_EQ_uint3_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_left,
BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_right,
BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_return_output);

-- state_MUX_rmii_eth_mac_h_l173_c8_2623 : 0 clocks latency
state_MUX_rmii_eth_mac_h_l173_c8_2623 : entity work.MUX_uint1_t_rmii_tx_mac_state_t_rmii_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l173_c8_2623_cond,
state_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue,
state_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse,
state_MUX_rmii_eth_mac_h_l173_c8_2623_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623 : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623 : entity work.MUX_uint1_t_uint6_t_uint6_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_cond,
bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_return_output);

-- crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623 : 0 clocks latency
crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond,
crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue,
crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse,
crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output);

-- last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623 : 0 clocks latency
last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond,
last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue,
last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse,
last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output);

-- data_reg_MUX_rmii_eth_mac_h_l173_c8_2623 : 0 clocks latency
data_reg_MUX_rmii_eth_mac_h_l173_c8_2623 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond,
data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue,
data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse,
data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output);

-- o_MUX_rmii_eth_mac_h_l173_c8_2623 : 0 clocks latency
o_MUX_rmii_eth_mac_h_l173_c8_2623 : entity work.MUX_uint1_t_rmii_tx_mac_t_rmii_tx_mac_t_0CLK_de264c78 port map (
o_MUX_rmii_eth_mac_h_l173_c8_2623_cond,
o_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue,
o_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse,
o_MUX_rmii_eth_mac_h_l173_c8_2623_return_output);

-- state_MUX_rmii_eth_mac_h_l176_c5_f131 : 0 clocks latency
state_MUX_rmii_eth_mac_h_l176_c5_f131 : entity work.MUX_uint1_t_rmii_tx_mac_state_t_rmii_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l176_c5_f131_cond,
state_MUX_rmii_eth_mac_h_l176_c5_f131_iftrue,
state_MUX_rmii_eth_mac_h_l176_c5_f131_iffalse,
state_MUX_rmii_eth_mac_h_l176_c5_f131_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131 : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131 : entity work.MUX_uint1_t_uint6_t_uint6_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_cond,
bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_return_output);

-- BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351 : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351 : entity work.BIN_OP_EQ_uint3_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_left,
BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_right,
BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_return_output);

-- state_MUX_rmii_eth_mac_h_l184_c8_f6a2 : 0 clocks latency
state_MUX_rmii_eth_mac_h_l184_c8_f6a2 : entity work.MUX_uint1_t_rmii_tx_mac_state_t_rmii_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond,
state_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue,
state_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse,
state_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2 : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2 : entity work.MUX_uint1_t_uint6_t_uint6_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond,
bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output);

-- crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2 : 0 clocks latency
crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond,
crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue,
crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse,
crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output);

-- last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2 : 0 clocks latency
last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond,
last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue,
last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse,
last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output);

-- data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2 : 0 clocks latency
data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond,
data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue,
data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse,
data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output);

-- o_MUX_rmii_eth_mac_h_l184_c8_f6a2 : 0 clocks latency
o_MUX_rmii_eth_mac_h_l184_c8_f6a2 : entity work.MUX_uint1_t_rmii_tx_mac_t_rmii_tx_mac_t_0CLK_de264c78 port map (
o_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond,
o_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue,
o_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse,
o_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output);

-- BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021 : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021 : entity work.BIN_OP_EQ_uint3_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_left,
BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_right,
BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_return_output);

-- state_MUX_rmii_eth_mac_h_l194_c8_7c5b : 0 clocks latency
state_MUX_rmii_eth_mac_h_l194_c8_7c5b : entity work.MUX_uint1_t_rmii_tx_mac_state_t_rmii_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond,
state_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue,
state_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse,
state_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b : entity work.MUX_uint1_t_uint6_t_uint6_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond,
bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output);

-- crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b : 0 clocks latency
crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond,
crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue,
crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse,
crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output);

-- last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b : 0 clocks latency
last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond,
last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue,
last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse,
last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output);

-- data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b : 0 clocks latency
data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond,
data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue,
data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse,
data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output);

-- o_MUX_rmii_eth_mac_h_l194_c8_7c5b : 0 clocks latency
o_MUX_rmii_eth_mac_h_l194_c8_7c5b : entity work.MUX_uint1_t_rmii_tx_mac_t_rmii_tx_mac_t_0CLK_de264c78 port map (
o_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond,
o_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue,
o_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse,
o_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output);

-- BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5 : 0 clocks latency
BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_left,
BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_right,
BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_return_output);

-- state_MUX_rmii_eth_mac_h_l202_c5_0412 : 0 clocks latency
state_MUX_rmii_eth_mac_h_l202_c5_0412 : entity work.MUX_uint1_t_rmii_tx_mac_state_t_rmii_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l202_c5_0412_cond,
state_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue,
state_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse,
state_MUX_rmii_eth_mac_h_l202_c5_0412_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412 : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412 : entity work.MUX_uint1_t_uint6_t_uint6_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_cond,
bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_return_output);

-- last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412 : 0 clocks latency
last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_cond,
last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue,
last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse,
last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_return_output);

-- data_reg_MUX_rmii_eth_mac_h_l202_c5_0412 : 0 clocks latency
data_reg_MUX_rmii_eth_mac_h_l202_c5_0412 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_cond,
data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue,
data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse,
data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_return_output);

-- o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412 : 0 clocks latency
o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_cond,
o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue,
o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse,
o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_return_output);

-- state_MUX_rmii_eth_mac_h_l203_c7_3a1d : 0 clocks latency
state_MUX_rmii_eth_mac_h_l203_c7_3a1d : entity work.MUX_uint1_t_rmii_tx_mac_state_t_rmii_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond,
state_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue,
state_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse,
state_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d : entity work.MUX_uint1_t_uint6_t_uint6_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond,
bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output);

-- last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d : 0 clocks latency
last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond,
last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue,
last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse,
last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output);

-- data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d : 0 clocks latency
data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond,
data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue,
data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse,
data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output);

-- o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d : 0 clocks latency
o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond,
o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue,
o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse,
o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output);

-- CONST_SR_2_rmii_eth_mac_h_l218_c18_17cd : 0 clocks latency
CONST_SR_2_rmii_eth_mac_h_l218_c18_17cd : entity work.CONST_SR_2_uint8_t_0CLK_de264c78 port map (
CONST_SR_2_rmii_eth_mac_h_l218_c18_17cd_x,
CONST_SR_2_rmii_eth_mac_h_l218_c18_17cd_return_output);

-- BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825 : 0 clocks latency
BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825 : entity work.BIN_OP_EQ_uint3_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_left,
BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_right,
BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_return_output);

-- state_MUX_rmii_eth_mac_h_l221_c8_02f7 : 0 clocks latency
state_MUX_rmii_eth_mac_h_l221_c8_02f7 : entity work.MUX_uint1_t_rmii_tx_mac_state_t_rmii_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l221_c8_02f7_cond,
state_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue,
state_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse,
state_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7 : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7 : entity work.MUX_uint1_t_uint6_t_uint6_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_cond,
bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output);

-- crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7 : 0 clocks latency
crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_cond,
crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue,
crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse,
crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output);

-- o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7 : 0 clocks latency
o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7 : entity work.MUX_uint1_t_uint2_t_uint2_t_0CLK_de264c78 port map (
o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_cond,
o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue,
o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse,
o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output);

-- o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7 : 0 clocks latency
o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_cond,
o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue,
o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse,
o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output);

-- state_MUX_rmii_eth_mac_h_l226_c5_fe09 : 0 clocks latency
state_MUX_rmii_eth_mac_h_l226_c5_fe09 : entity work.MUX_uint1_t_rmii_tx_mac_state_t_rmii_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_rmii_eth_mac_h_l226_c5_fe09_cond,
state_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue,
state_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse,
state_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output);

-- bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09 : 0 clocks latency
bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09 : entity work.MUX_uint1_t_uint6_t_uint6_t_0CLK_de264c78 port map (
bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_cond,
bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue,
bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse,
bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output);

-- crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09 : 0 clocks latency
crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_cond,
crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue,
crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse,
crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output);

-- CONST_SR_2_rmii_eth_mac_h_l233_c23_6856 : 0 clocks latency
CONST_SR_2_rmii_eth_mac_h_l233_c23_6856 : entity work.CONST_SR_2_uint32_t_0CLK_de264c78 port map (
CONST_SR_2_rmii_eth_mac_h_l233_c23_6856_x,
CONST_SR_2_rmii_eth_mac_h_l233_c23_6856_return_output);

-- crc_MUX_rmii_eth_mac_h_l250_c3_c502 : 0 clocks latency
crc_MUX_rmii_eth_mac_h_l250_c3_c502 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
crc_MUX_rmii_eth_mac_h_l250_c3_c502_cond,
crc_MUX_rmii_eth_mac_h_l250_c3_c502_iftrue,
crc_MUX_rmii_eth_mac_h_l250_c3_c502_iffalse,
crc_MUX_rmii_eth_mac_h_l250_c3_c502_return_output);

-- CONST_SR_4_rmii_eth_mac_h_l251_c12_df7e : 0 clocks latency
CONST_SR_4_rmii_eth_mac_h_l251_c12_df7e : entity work.CONST_SR_4_uint32_t_0CLK_de264c78 port map (
CONST_SR_4_rmii_eth_mac_h_l251_c12_df7e_x,
CONST_SR_4_rmii_eth_mac_h_l251_c12_df7e_return_output);

-- CONST_SR_0_rmii_eth_mac_h_l251_c42_95ee : 0 clocks latency
CONST_SR_0_rmii_eth_mac_h_l251_c42_95ee : entity work.CONST_SR_0_uint8_t_0CLK_de264c78 port map (
CONST_SR_0_rmii_eth_mac_h_l251_c42_95ee_x,
CONST_SR_0_rmii_eth_mac_h_l251_c42_95ee_return_output);

-- BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0 : 0 clocks latency
BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0 : entity work.BIN_OP_XOR_uint32_t_uint8_t_0CLK_de264c78 port map (
BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_left,
BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_right,
BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_return_output);

-- BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8 : 0 clocks latency
BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8 : entity work.BIN_OP_AND_uint32_t_uint8_t_0CLK_de264c78 port map (
BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_left,
BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_right,
BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_return_output);

-- VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910 : 0 clocks latency
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910 : entity work.VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_0CLK_8bf83e3e port map (
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_0,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_1,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_2,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_3,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_4,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_5,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_6,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_7,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_8,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_9,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_10,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_11,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_12,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_13,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_14,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_15,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_var_dim_0,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_return_output);

-- BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1 : 0 clocks latency
BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1 : entity work.BIN_OP_XOR_uint32_t_uint32_t_0CLK_de264c78 port map (
BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_left,
BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_right,
BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_return_output);

-- CONST_SR_4_rmii_eth_mac_h_l252_c12_0aea : 0 clocks latency
CONST_SR_4_rmii_eth_mac_h_l252_c12_0aea : entity work.CONST_SR_4_uint32_t_0CLK_de264c78 port map (
CONST_SR_4_rmii_eth_mac_h_l252_c12_0aea_x,
CONST_SR_4_rmii_eth_mac_h_l252_c12_0aea_return_output);

-- CONST_SR_4_rmii_eth_mac_h_l252_c42_f5dc : 0 clocks latency
CONST_SR_4_rmii_eth_mac_h_l252_c42_f5dc : entity work.CONST_SR_4_uint8_t_0CLK_de264c78 port map (
CONST_SR_4_rmii_eth_mac_h_l252_c42_f5dc_x,
CONST_SR_4_rmii_eth_mac_h_l252_c42_f5dc_return_output);

-- BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07 : 0 clocks latency
BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07 : entity work.BIN_OP_XOR_uint32_t_uint8_t_0CLK_de264c78 port map (
BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_left,
BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_right,
BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_return_output);

-- BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1 : 0 clocks latency
BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1 : entity work.BIN_OP_AND_uint32_t_uint8_t_0CLK_de264c78 port map (
BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_left,
BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_right,
BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_return_output);

-- VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d : 0 clocks latency
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d : entity work.VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_0CLK_8bf83e3e port map (
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_0,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_1,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_2,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_3,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_4,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_5,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_6,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_7,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_8,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_9,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_10,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_11,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_12,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_13,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_14,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_15,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_var_dim_0,
VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_return_output);

-- BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534 : 0 clocks latency
BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534 : entity work.BIN_OP_XOR_uint32_t_uint32_t_0CLK_de264c78 port map (
BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_left,
BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_right,
BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_return_output);

-- crc_MUX_rmii_eth_mac_h_l254_c3_48c0 : 0 clocks latency
crc_MUX_rmii_eth_mac_h_l254_c3_48c0 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
crc_MUX_rmii_eth_mac_h_l254_c3_48c0_cond,
crc_MUX_rmii_eth_mac_h_l254_c3_48c0_iftrue,
crc_MUX_rmii_eth_mac_h_l254_c3_48c0_iffalse,
crc_MUX_rmii_eth_mac_h_l254_c3_48c0_return_output);

-- BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2 : 0 clocks latency
BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_left,
BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_right,
BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_return_output);

-- BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77 : 0 clocks latency
BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77 : entity work.BIN_OP_PLUS_uint6_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_left,
BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_right,
BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Inputs
 axis_in,
 -- Registers
 state,
 bit_counter,
 crc,
 crc_shift_reg,
 data_reg,
 last_byte_reg,
 axis_in_data_reg,
 axis_in_data_reg_valid,
 -- All submodule outputs
 BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_return_output,
 BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_return_output,
 BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_return_output,
 BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_return_output,
 state_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output,
 crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output,
 reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output,
 last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output,
 data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output,
 o_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output,
 state_MUX_rmii_eth_mac_h_l169_c5_6d47_return_output,
 BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_return_output,
 state_MUX_rmii_eth_mac_h_l173_c8_2623_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_return_output,
 crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output,
 last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output,
 data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output,
 o_MUX_rmii_eth_mac_h_l173_c8_2623_return_output,
 state_MUX_rmii_eth_mac_h_l176_c5_f131_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_return_output,
 BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_return_output,
 state_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output,
 crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output,
 last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output,
 data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output,
 o_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output,
 BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_return_output,
 state_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output,
 crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output,
 last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output,
 data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output,
 o_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output,
 BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_return_output,
 state_MUX_rmii_eth_mac_h_l202_c5_0412_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_return_output,
 last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_return_output,
 data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_return_output,
 o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_return_output,
 state_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output,
 last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output,
 data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output,
 o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output,
 CONST_SR_2_rmii_eth_mac_h_l218_c18_17cd_return_output,
 BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_return_output,
 state_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output,
 crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output,
 o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output,
 o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output,
 state_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output,
 bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output,
 crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output,
 CONST_SR_2_rmii_eth_mac_h_l233_c23_6856_return_output,
 crc_MUX_rmii_eth_mac_h_l250_c3_c502_return_output,
 CONST_SR_4_rmii_eth_mac_h_l251_c12_df7e_return_output,
 CONST_SR_0_rmii_eth_mac_h_l251_c42_95ee_return_output,
 BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_return_output,
 BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_return_output,
 VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_return_output,
 BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_return_output,
 CONST_SR_4_rmii_eth_mac_h_l252_c12_0aea_return_output,
 CONST_SR_4_rmii_eth_mac_h_l252_c42_f5dc_return_output,
 BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_return_output,
 BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_return_output,
 VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_return_output,
 BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_return_output,
 crc_MUX_rmii_eth_mac_h_l254_c3_48c0_return_output,
 BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_return_output,
 BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : rmii_tx_mac_t;
 variable VAR_axis_in : axis8_t_stream_t;
 variable VAR_o : rmii_tx_mac_t;
 variable VAR_INC : unsigned(1 downto 0);
 variable VAR_preamble_ctr_end : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_left : unsigned(5 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_right : unsigned(5 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_return_output : unsigned(0 downto 0);
 variable VAR_fcs_ctr_end : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_left : unsigned(5 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_return_output : unsigned(0 downto 0);
 variable VAR_last_bits_of_byte : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_left : unsigned(5 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_return_output : unsigned(0 downto 0);
 variable VAR_o_tx_mac_output_data_rmii_eth_mac_h_l163_c3_1c38 : unsigned(1 downto 0);
 variable VAR_reset_crc : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l169_c5_6d47_return_output : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l173_c8_2623_return_output : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l167_c3_86dc_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_return_output : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_cond : unsigned(0 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond : unsigned(0 downto 0);
 variable VAR_reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue : unsigned(0 downto 0);
 variable VAR_reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse : unsigned(0 downto 0);
 variable VAR_reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output : unsigned(0 downto 0);
 variable VAR_reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_cond : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond : unsigned(0 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue : rmii_tx_mac_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_5724_rmii_eth_mac_h_l167_c3_86dc_return_output : rmii_tx_mac_t;
 variable VAR_o_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse : rmii_tx_mac_t;
 variable VAR_o_MUX_rmii_eth_mac_h_l173_c8_2623_return_output : rmii_tx_mac_t;
 variable VAR_o_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output : rmii_tx_mac_t;
 variable VAR_o_MUX_rmii_eth_mac_h_l167_c3_86dc_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l169_c5_6d47_iftrue : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l169_c5_6d47_iffalse : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l169_c5_6d47_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l176_c5_f131_return_output : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l173_c8_2623_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_return_output : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_cond : unsigned(0 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond : unsigned(0 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue : rmii_tx_mac_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_6bcb_rmii_eth_mac_h_l173_c8_2623_return_output : rmii_tx_mac_t;
 variable VAR_o_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse : rmii_tx_mac_t;
 variable VAR_o_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output : rmii_tx_mac_t;
 variable VAR_o_MUX_rmii_eth_mac_h_l173_c8_2623_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l176_c5_f131_iftrue : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l176_c5_f131_iffalse : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l176_c5_f131_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_iftrue : unsigned(5 downto 0);
 variable VAR_bit_counter_rmii_eth_mac_h_l178_c7_fb06 : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_iffalse : unsigned(5 downto 0);
 variable VAR_bit_counter_rmii_eth_mac_h_l181_c7_3da3 : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue : unsigned(5 downto 0);
 variable VAR_bit_counter_rmii_eth_mac_h_l192_c5_93bb : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond : unsigned(0 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond : unsigned(0 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue : rmii_tx_mac_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_b5cd_rmii_eth_mac_h_l184_c8_f6a2_return_output : rmii_tx_mac_t;
 variable VAR_o_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse : rmii_tx_mac_t;
 variable VAR_o_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output : rmii_tx_mac_t;
 variable VAR_o_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l202_c5_0412_return_output : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_return_output : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond : unsigned(0 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_return_output : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond : unsigned(0 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_return_output : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue : rmii_tx_mac_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_5724_rmii_eth_mac_h_l194_c8_7c5b_return_output : rmii_tx_mac_t;
 variable VAR_o_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse : rmii_tx_mac_t;
 variable VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_6bcb_rmii_eth_mac_h_l194_c8_7c5b_return_output : rmii_tx_mac_t;
 variable VAR_o_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond : unsigned(0 downto 0);
 variable VAR_uint8_1_0_rmii_eth_mac_h_l196_c28_e72a_return_output : unsigned(1 downto 0);
 variable VAR_last_bits_of_last_byte : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l202_c5_0412_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse : unsigned(5 downto 0);
 variable VAR_bit_counter_rmii_eth_mac_h_l217_c7_a50d : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_cond : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_cond : unsigned(0 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_cond : unsigned(0 downto 0);
 variable VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue : unsigned(0 downto 0);
 variable VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output : unsigned(0 downto 0);
 variable VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse : unsigned(0 downto 0);
 variable VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_return_output : unsigned(0 downto 0);
 variable VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue : unsigned(5 downto 0);
 variable VAR_bit_counter_rmii_eth_mac_h_l204_c9_63b5 : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse : unsigned(5 downto 0);
 variable VAR_bit_counter_rmii_eth_mac_h_l212_c9_1b82 : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse : unsigned(0 downto 0);
 variable VAR_last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond : unsigned(0 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse : unsigned(7 downto 0);
 variable VAR_data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond : unsigned(0 downto 0);
 variable VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue : unsigned(0 downto 0);
 variable VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse : unsigned(0 downto 0);
 variable VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond : unsigned(0 downto 0);
 variable VAR_CONST_SR_2_rmii_eth_mac_h_l218_c18_17cd_return_output : unsigned(7 downto 0);
 variable VAR_CONST_SR_2_rmii_eth_mac_h_l218_c18_17cd_x : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l221_c8_02f7_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_cond : unsigned(0 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_cond : unsigned(0 downto 0);
 variable VAR_o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue : unsigned(1 downto 0);
 variable VAR_o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse : unsigned(1 downto 0);
 variable VAR_o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output : unsigned(1 downto 0);
 variable VAR_o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_cond : unsigned(0 downto 0);
 variable VAR_o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue : unsigned(0 downto 0);
 variable VAR_o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse : unsigned(0 downto 0);
 variable VAR_o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output : unsigned(0 downto 0);
 variable VAR_o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_cond : unsigned(0 downto 0);
 variable VAR_uint32_1_0_rmii_eth_mac_h_l223_c28_b068_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse : unsigned(2 downto 0);
 variable VAR_state_MUX_rmii_eth_mac_h_l226_c5_fe09_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue : unsigned(5 downto 0);
 variable VAR_bit_counter_rmii_eth_mac_h_l228_c7_2568 : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse : unsigned(5 downto 0);
 variable VAR_bit_counter_rmii_eth_mac_h_l232_c7_80e9 : unsigned(5 downto 0);
 variable VAR_bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_cond : unsigned(0 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse : unsigned(31 downto 0);
 variable VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_cond : unsigned(0 downto 0);
 variable VAR_CONST_SR_2_rmii_eth_mac_h_l233_c23_6856_return_output : unsigned(31 downto 0);
 variable VAR_CONST_SR_2_rmii_eth_mac_h_l233_c23_6856_x : unsigned(31 downto 0);
 variable VAR_data_n : unsigned(7 downto 0);
 variable VAR_crc_table : uint32_t_16;
 variable VAR_crc_MUX_rmii_eth_mac_h_l250_c3_c502_iftrue : unsigned(31 downto 0);
 variable VAR_crc_MUX_rmii_eth_mac_h_l250_c3_c502_iffalse : unsigned(31 downto 0);
 variable VAR_crc_MUX_rmii_eth_mac_h_l250_c3_c502_return_output : unsigned(31 downto 0);
 variable VAR_crc_MUX_rmii_eth_mac_h_l250_c3_c502_cond : unsigned(0 downto 0);
 variable VAR_CONST_SR_4_rmii_eth_mac_h_l251_c12_df7e_return_output : unsigned(31 downto 0);
 variable VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_left : unsigned(31 downto 0);
 variable VAR_CONST_SR_4_rmii_eth_mac_h_l251_c12_df7e_x : unsigned(31 downto 0);
 variable VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_left : unsigned(31 downto 0);
 variable VAR_CONST_SR_0_rmii_eth_mac_h_l251_c42_95ee_return_output : unsigned(7 downto 0);
 variable VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_right : unsigned(7 downto 0);
 variable VAR_CONST_SR_0_rmii_eth_mac_h_l251_c42_95ee_x : unsigned(7 downto 0);
 variable VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_return_output : unsigned(31 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_return_output : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_var_dim_0 : unsigned(3 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_return_output : unsigned(31 downto 0);
 variable VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_right : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_0 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_1 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_2 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_3 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_4 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_5 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_6 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_7 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_8 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_9 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_10 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_11 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_12 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_13 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_14 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_15 : unsigned(31 downto 0);
 variable VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_return_output : unsigned(31 downto 0);
 variable VAR_CONST_SR_4_rmii_eth_mac_h_l252_c12_0aea_return_output : unsigned(31 downto 0);
 variable VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_left : unsigned(31 downto 0);
 variable VAR_CONST_SR_4_rmii_eth_mac_h_l252_c12_0aea_x : unsigned(31 downto 0);
 variable VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_left : unsigned(31 downto 0);
 variable VAR_CONST_SR_4_rmii_eth_mac_h_l252_c42_f5dc_return_output : unsigned(7 downto 0);
 variable VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_right : unsigned(7 downto 0);
 variable VAR_CONST_SR_4_rmii_eth_mac_h_l252_c42_f5dc_x : unsigned(7 downto 0);
 variable VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_return_output : unsigned(31 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_return_output : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_var_dim_0 : unsigned(3 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_return_output : unsigned(31 downto 0);
 variable VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_right : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_0 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_1 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_2 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_3 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_4 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_5 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_6 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_7 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_8 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_9 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_10 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_11 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_12 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_13 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_14 : unsigned(31 downto 0);
 variable VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_15 : unsigned(31 downto 0);
 variable VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_return_output : unsigned(31 downto 0);
 variable VAR_crc_MUX_rmii_eth_mac_h_l254_c3_48c0_iftrue : unsigned(31 downto 0);
 variable VAR_crc_rmii_eth_mac_h_l255_c5_0bdd : unsigned(31 downto 0);
 variable VAR_crc_MUX_rmii_eth_mac_h_l254_c3_48c0_iffalse : unsigned(31 downto 0);
 variable VAR_crc_MUX_rmii_eth_mac_h_l254_c3_48c0_return_output : unsigned(31 downto 0);
 variable VAR_crc_MUX_rmii_eth_mac_h_l254_c3_48c0_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_left : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_rmii_tx_mac_t_tx_mac_input_ready_d41d_rmii_eth_mac_h_l258_c44_0dbc_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_rmii_eth_mac_h_l169_l258_DUPLICATE_4950_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_left : unsigned(5 downto 0);
 variable VAR_BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_return_output : unsigned(6 downto 0);
 variable VAR_CONST_REF_RD_uint8_t_axis8_t_stream_t_data_tdata_0_d41d_rmii_eth_mac_h_l209_l257_l189_DUPLICATE_6b0d_return_output : unsigned(7 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_data_tlast_d41d_rmii_eth_mac_h_l190_l210_DUPLICATE_57f7_return_output : unsigned(0 downto 0);
 -- State registers comb logic variables
variable REG_VAR_state : unsigned(2 downto 0);
variable REG_VAR_bit_counter : unsigned(5 downto 0);
variable REG_VAR_crc : unsigned(31 downto 0);
variable REG_VAR_crc_shift_reg : unsigned(31 downto 0);
variable REG_VAR_data_reg : unsigned(7 downto 0);
variable REG_VAR_last_byte_reg : unsigned(0 downto 0);
variable REG_VAR_axis_in_data_reg : unsigned(7 downto 0);
variable REG_VAR_axis_in_data_reg_valid : unsigned(0 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_state := state;
  REG_VAR_bit_counter := bit_counter;
  REG_VAR_crc := crc;
  REG_VAR_crc_shift_reg := crc_shift_reg;
  REG_VAR_data_reg := data_reg;
  REG_VAR_last_byte_reg := last_byte_reg;
  REG_VAR_axis_in_data_reg := axis_in_data_reg;
  REG_VAR_axis_in_data_reg_valid := axis_in_data_reg_valid;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse := to_unsigned(0, 1);
     VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue := to_unsigned(0, 1);
     VAR_o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_right := to_unsigned(60, 6);
     VAR_reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse := to_unsigned(0, 1);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_8 := unsigned'(X"a005713c");
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_8 := unsigned'(X"a005713c");
     VAR_bit_counter_rmii_eth_mac_h_l192_c5_93bb := resize(to_unsigned(0, 1), 6);
     VAR_bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue := VAR_bit_counter_rmii_eth_mac_h_l192_c5_93bb;
     VAR_state_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue := unsigned(rmii_tx_mac_state_t_to_slv(FCS));
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_14 := unsigned'(X"edb71064");
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_14 := unsigned'(X"edb71064");
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_right := unsigned(rmii_tx_mac_state_t_to_slv(IDLE));
     VAR_crc_rmii_eth_mac_h_l255_c5_0bdd := resize(to_unsigned(0, 1), 32);
     VAR_crc_MUX_rmii_eth_mac_h_l254_c3_48c0_iftrue := VAR_crc_rmii_eth_mac_h_l255_c5_0bdd;
     VAR_state_MUX_rmii_eth_mac_h_l169_c5_6d47_iftrue := unsigned(rmii_tx_mac_state_t_to_slv(PREAMBLE));
     VAR_BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_right := to_unsigned(15, 8);
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_right := unsigned(rmii_tx_mac_state_t_to_slv(FCS));
     VAR_o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue := to_unsigned(1, 1);
     VAR_state_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue := unsigned(rmii_tx_mac_state_t_to_slv(DATA));
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_10 := unsigned'(X"9b6b51f4");
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_10 := unsigned'(X"9b6b51f4");
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_3 := to_unsigned(1801765552, 32);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_3 := to_unsigned(1801765552, 32);
     VAR_bit_counter_rmii_eth_mac_h_l204_c9_63b5 := resize(to_unsigned(0, 1), 6);
     VAR_bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue := VAR_bit_counter_rmii_eth_mac_h_l204_c9_63b5;
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_4 := to_unsigned(996258700, 32);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_4 := to_unsigned(996258700, 32);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_15 := unsigned'(X"f0000000");
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_15 := unsigned'(X"f0000000");
     VAR_reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue := to_unsigned(1, 1);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_13 := unsigned'(X"cb6e20c8");
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_13 := unsigned'(X"cb6e20c8");
     VAR_o_tx_mac_output_data_rmii_eth_mac_h_l163_c3_1c38 := resize(to_unsigned(0, 1), 2);
     VAR_o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse := VAR_o_tx_mac_output_data_rmii_eth_mac_h_l163_c3_1c38;
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_5 := to_unsigned(651600872, 32);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_5 := to_unsigned(651600872, 32);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_2 := to_unsigned(1993593556, 32);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_2 := to_unsigned(1993593556, 32);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_6 := to_unsigned(1020740, 32);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_6 := to_unsigned(1020740, 32);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_9 := unsigned'(X"bdb26158");
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_9 := unsigned'(X"bdb26158");
     VAR_bit_counter_rmii_eth_mac_h_l212_c9_1b82 := resize(to_unsigned(0, 1), 6);
     VAR_bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse := VAR_bit_counter_rmii_eth_mac_h_l212_c9_1b82;
     VAR_state_MUX_rmii_eth_mac_h_l176_c5_f131_iftrue := unsigned(rmii_tx_mac_state_t_to_slv(SFD));
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_right := to_unsigned(6, 3);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_1 := to_unsigned(1342890616, 32);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_1 := to_unsigned(1342890616, 32);
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_right := unsigned(rmii_tx_mac_state_t_to_slv(PREAMBLE));
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_12 := unsigned'(X"d6d930ac");
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_12 := unsigned'(X"d6d930ac");
     VAR_state_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue := unsigned(rmii_tx_mac_state_t_to_slv(IDLE));
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_right := unsigned(rmii_tx_mac_state_t_to_slv(DATA));
     VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse := to_unsigned(1, 1);
     VAR_BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_right := to_unsigned(15, 8);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_7 := to_unsigned(498631456, 32);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_7 := to_unsigned(498631456, 32);
     VAR_bit_counter_rmii_eth_mac_h_l178_c7_fb06 := resize(to_unsigned(0, 1), 6);
     VAR_bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_iftrue := VAR_bit_counter_rmii_eth_mac_h_l178_c7_fb06;
     VAR_BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_right := to_unsigned(2, 2);
     VAR_bit_counter_rmii_eth_mac_h_l228_c7_2568 := resize(to_unsigned(0, 1), 6);
     VAR_bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue := VAR_bit_counter_rmii_eth_mac_h_l228_c7_2568;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_right := to_unsigned(30, 5);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_11 := unsigned'(X"86dc4190");
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_11 := unsigned'(X"86dc4190");
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_right := unsigned(rmii_tx_mac_state_t_to_slv(SFD));
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_0 := to_unsigned(1304293916, 32);
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_0 := to_unsigned(1304293916, 32);
     -- o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_5724[rmii_eth_mac_h_l167_c3_86dc] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_5724_rmii_eth_mac_h_l167_c3_86dc_return_output := CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_5724(
     VAR_o_tx_mac_output_data_rmii_eth_mac_h_l163_c3_1c38,
     to_unsigned(0, 1),
     to_unsigned(0, 1));

     -- o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_6bcb[rmii_eth_mac_h_l173_c8_2623] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_6bcb_rmii_eth_mac_h_l173_c8_2623_return_output := CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_6bcb(
     to_unsigned(0, 1),
     to_unsigned(1, 2),
     to_unsigned(1, 1));

     -- o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_b5cd[rmii_eth_mac_h_l184_c8_f6a2] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_b5cd_rmii_eth_mac_h_l184_c8_f6a2_return_output := CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_b5cd(
     to_unsigned(1, 1),
     to_unsigned(3, 2),
     to_unsigned(1, 1));

     -- Submodule level 1
     VAR_o_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_b5cd_rmii_eth_mac_h_l184_c8_f6a2_return_output;
     VAR_o_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_5724_rmii_eth_mac_h_l167_c3_86dc_return_output;
     VAR_o_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_6bcb_rmii_eth_mac_h_l173_c8_2623_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;
     -- Mux in inputs
     VAR_axis_in := axis_in;

     -- Submodule level 0
     VAR_CONST_SR_0_rmii_eth_mac_h_l251_c42_95ee_x := axis_in_data_reg;
     VAR_CONST_SR_4_rmii_eth_mac_h_l252_c42_f5dc_x := axis_in_data_reg;
     VAR_crc_MUX_rmii_eth_mac_h_l250_c3_c502_cond := axis_in_data_reg_valid;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_left := bit_counter;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_left := bit_counter;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_left := bit_counter;
     VAR_BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_left := bit_counter;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue := bit_counter;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse := bit_counter;
     VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_left := crc;
     VAR_CONST_SR_4_rmii_eth_mac_h_l251_c12_df7e_x := crc;
     VAR_crc_MUX_rmii_eth_mac_h_l250_c3_c502_iffalse := crc;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue := crc;
     VAR_CONST_SR_2_rmii_eth_mac_h_l233_c23_6856_x := crc_shift_reg;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue := crc_shift_reg;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue := crc_shift_reg;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue := crc_shift_reg;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse := crc_shift_reg;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue := crc_shift_reg;
     VAR_CONST_SR_2_rmii_eth_mac_h_l218_c18_17cd_x := data_reg;
     VAR_data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue := data_reg;
     VAR_data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue := data_reg;
     VAR_data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse := data_reg;
     VAR_data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue := data_reg;
     VAR_BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_right := last_byte_reg;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue := last_byte_reg;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue := last_byte_reg;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse := last_byte_reg;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse := last_byte_reg;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue := last_byte_reg;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_left := state;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_left := state;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_left := state;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_left := state;
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_left := state;
     VAR_state_MUX_rmii_eth_mac_h_l169_c5_6d47_iffalse := state;
     VAR_state_MUX_rmii_eth_mac_h_l176_c5_f131_iffalse := state;
     VAR_state_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse := state;
     VAR_state_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse := state;
     VAR_state_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse := state;
     VAR_state_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse := state;
     -- BIN_OP_EQ[rmii_eth_mac_h_l221_c11_8825] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_left;
     BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_return_output := BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_return_output;

     -- BIN_OP_EQ[rmii_eth_mac_h_l160_c32_4497] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_left;
     BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_return_output := BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_return_output;

     -- BIN_OP_EQ[rmii_eth_mac_h_l184_c11_0351] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_left;
     BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_return_output := BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_return_output;

     -- CONST_REF_RD_uint1_t_axis8_t_stream_t_data_tlast_d41d_rmii_eth_mac_h_l190_l210_DUPLICATE_57f7 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_data_tlast_d41d_rmii_eth_mac_h_l190_l210_DUPLICATE_57f7_return_output := VAR_axis_in.data.tlast;

     -- BIN_OP_EQ[rmii_eth_mac_h_l194_c11_9021] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_left;
     BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_return_output := BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_return_output;

     -- BIN_OP_EQ[rmii_eth_mac_h_l167_c6_598f] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_left;
     BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_return_output := BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_return_output;

     -- CONST_SR_4[rmii_eth_mac_h_l251_c12_df7e] LATENCY=0
     -- Inputs
     CONST_SR_4_rmii_eth_mac_h_l251_c12_df7e_x <= VAR_CONST_SR_4_rmii_eth_mac_h_l251_c12_df7e_x;
     -- Outputs
     VAR_CONST_SR_4_rmii_eth_mac_h_l251_c12_df7e_return_output := CONST_SR_4_rmii_eth_mac_h_l251_c12_df7e_return_output;

     -- uint8_1_0[rmii_eth_mac_h_l196_c28_e72a] LATENCY=0
     VAR_uint8_1_0_rmii_eth_mac_h_l196_c28_e72a_return_output := uint8_1_0(
     data_reg);

     -- CONST_SR_2[rmii_eth_mac_h_l218_c18_17cd] LATENCY=0
     -- Inputs
     CONST_SR_2_rmii_eth_mac_h_l218_c18_17cd_x <= VAR_CONST_SR_2_rmii_eth_mac_h_l218_c18_17cd_x;
     -- Outputs
     VAR_CONST_SR_2_rmii_eth_mac_h_l218_c18_17cd_return_output := CONST_SR_2_rmii_eth_mac_h_l218_c18_17cd_return_output;

     -- CONST_REF_RD_uint8_t_axis8_t_stream_t_data_tdata_0_d41d_rmii_eth_mac_h_l209_l257_l189_DUPLICATE_6b0d LATENCY=0
     VAR_CONST_REF_RD_uint8_t_axis8_t_stream_t_data_tdata_0_d41d_rmii_eth_mac_h_l209_l257_l189_DUPLICATE_6b0d_return_output := VAR_axis_in.data.tdata(0);

     -- BIN_OP_EQ[rmii_eth_mac_h_l159_c26_3796] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_left;
     BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_return_output := BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_return_output;

     -- CONST_SR_2[rmii_eth_mac_h_l233_c23_6856] LATENCY=0
     -- Inputs
     CONST_SR_2_rmii_eth_mac_h_l233_c23_6856_x <= VAR_CONST_SR_2_rmii_eth_mac_h_l233_c23_6856_x;
     -- Outputs
     VAR_CONST_SR_2_rmii_eth_mac_h_l233_c23_6856_return_output := CONST_SR_2_rmii_eth_mac_h_l233_c23_6856_return_output;

     -- CONST_SR_4[rmii_eth_mac_h_l252_c42_f5dc] LATENCY=0
     -- Inputs
     CONST_SR_4_rmii_eth_mac_h_l252_c42_f5dc_x <= VAR_CONST_SR_4_rmii_eth_mac_h_l252_c42_f5dc_x;
     -- Outputs
     VAR_CONST_SR_4_rmii_eth_mac_h_l252_c42_f5dc_return_output := CONST_SR_4_rmii_eth_mac_h_l252_c42_f5dc_return_output;

     -- BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77 LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_left <= VAR_BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_left;
     BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_right <= VAR_BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_return_output := BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_return_output;

     -- BIN_OP_EQ[rmii_eth_mac_h_l173_c11_f24d] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_left;
     BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_return_output := BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_return_output;

     -- CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_rmii_eth_mac_h_l169_l258_DUPLICATE_4950 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_rmii_eth_mac_h_l169_l258_DUPLICATE_4950_return_output := VAR_axis_in.valid;

     -- BIN_OP_EQ[rmii_eth_mac_h_l158_c31_cfbf] LATENCY=0
     -- Inputs
     BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_left <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_left;
     BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_right <= VAR_BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_right;
     -- Outputs
     VAR_BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_return_output := BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_return_output;

     -- CONST_SR_0[rmii_eth_mac_h_l251_c42_95ee] LATENCY=0
     -- Inputs
     CONST_SR_0_rmii_eth_mac_h_l251_c42_95ee_x <= VAR_CONST_SR_0_rmii_eth_mac_h_l251_c42_95ee_x;
     -- Outputs
     VAR_CONST_SR_0_rmii_eth_mac_h_l251_c42_95ee_return_output := CONST_SR_0_rmii_eth_mac_h_l251_c42_95ee_return_output;

     -- uint32_1_0[rmii_eth_mac_h_l223_c28_b068] LATENCY=0
     VAR_uint32_1_0_rmii_eth_mac_h_l223_c28_b068_return_output := uint32_1_0(
     crc_shift_reg);

     -- Submodule level 1
     VAR_bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l176_c5_f131_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l158_c31_cfbf_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_return_output;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l226_c5_fe09_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l159_c26_3796_return_output;
     VAR_BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_left := VAR_BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_return_output;
     VAR_data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_return_output;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_return_output;
     VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l202_c5_0412_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l160_c32_4497_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_return_output;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_return_output;
     VAR_data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_return_output;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_return_output;
     VAR_o_MUX_rmii_eth_mac_h_l167_c3_86dc_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_return_output;
     VAR_reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l167_c3_86dc_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l167_c6_598f_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_return_output;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_return_output;
     VAR_data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_return_output;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_return_output;
     VAR_o_MUX_rmii_eth_mac_h_l173_c8_2623_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l173_c8_2623_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l173_c11_f24d_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_return_output;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_return_output;
     VAR_data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_return_output;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_return_output;
     VAR_o_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l184_c11_0351_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_return_output;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_return_output;
     VAR_data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_return_output;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_return_output;
     VAR_o_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l194_c11_9021_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_return_output;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_return_output;
     VAR_o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_return_output;
     VAR_o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l221_c8_02f7_cond := VAR_BIN_OP_EQ_rmii_eth_mac_h_l221_c11_8825_return_output;
     VAR_bit_counter_rmii_eth_mac_h_l181_c7_3da3 := resize(VAR_BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_return_output, 6);
     VAR_bit_counter_rmii_eth_mac_h_l217_c7_a50d := resize(VAR_BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_return_output, 6);
     VAR_bit_counter_rmii_eth_mac_h_l232_c7_80e9 := resize(VAR_BIN_OP_PLUS_uint6_t_uint2_t_rmii_eth_mac_h_l232_l181_l217_DUPLICATE_ec77_return_output, 6);
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_data_tlast_d41d_rmii_eth_mac_h_l190_l210_DUPLICATE_57f7_return_output;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_data_tlast_d41d_rmii_eth_mac_h_l190_l210_DUPLICATE_57f7_return_output;
     VAR_BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_left := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_rmii_eth_mac_h_l169_l258_DUPLICATE_4950_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l169_c5_6d47_cond := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_rmii_eth_mac_h_l169_l258_DUPLICATE_4950_return_output;
     REG_VAR_axis_in_data_reg := VAR_CONST_REF_RD_uint8_t_axis8_t_stream_t_data_tdata_0_d41d_rmii_eth_mac_h_l209_l257_l189_DUPLICATE_6b0d_return_output;
     VAR_data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue := VAR_CONST_REF_RD_uint8_t_axis8_t_stream_t_data_tdata_0_d41d_rmii_eth_mac_h_l209_l257_l189_DUPLICATE_6b0d_return_output;
     VAR_data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse := VAR_CONST_REF_RD_uint8_t_axis8_t_stream_t_data_tdata_0_d41d_rmii_eth_mac_h_l209_l257_l189_DUPLICATE_6b0d_return_output;
     VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_right := VAR_CONST_SR_0_rmii_eth_mac_h_l251_c42_95ee_return_output;
     VAR_data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse := VAR_CONST_SR_2_rmii_eth_mac_h_l218_c18_17cd_return_output;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse := VAR_CONST_SR_2_rmii_eth_mac_h_l233_c23_6856_return_output;
     VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_left := VAR_CONST_SR_4_rmii_eth_mac_h_l251_c12_df7e_return_output;
     VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_right := VAR_CONST_SR_4_rmii_eth_mac_h_l252_c42_f5dc_return_output;
     VAR_o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue := VAR_uint32_1_0_rmii_eth_mac_h_l223_c28_b068_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_iffalse := VAR_bit_counter_rmii_eth_mac_h_l181_c7_3da3;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse := VAR_bit_counter_rmii_eth_mac_h_l217_c7_a50d;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse := VAR_bit_counter_rmii_eth_mac_h_l232_c7_80e9;
     -- BIN_OP_AND[rmii_eth_mac_h_l201_c38_3ae5] LATENCY=0
     -- Inputs
     BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_left <= VAR_BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_left;
     BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_right <= VAR_BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_right;
     -- Outputs
     VAR_BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_return_output := BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_return_output;

     -- bit_counter_MUX[rmii_eth_mac_h_l176_c5_f131] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_cond;
     bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_return_output := bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_return_output;

     -- crc_shift_reg_MUX[rmii_eth_mac_h_l226_c5_fe09] LATENCY=0
     -- Inputs
     crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_cond <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_cond;
     crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue;
     crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse;
     -- Outputs
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output := crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output;

     -- state_MUX[rmii_eth_mac_h_l226_c5_fe09] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l226_c5_fe09_cond <= VAR_state_MUX_rmii_eth_mac_h_l226_c5_fe09_cond;
     state_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue;
     state_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output := state_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output;

     -- state_MUX[rmii_eth_mac_h_l169_c5_6d47] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l169_c5_6d47_cond <= VAR_state_MUX_rmii_eth_mac_h_l169_c5_6d47_cond;
     state_MUX_rmii_eth_mac_h_l169_c5_6d47_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l169_c5_6d47_iftrue;
     state_MUX_rmii_eth_mac_h_l169_c5_6d47_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l169_c5_6d47_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l169_c5_6d47_return_output := state_MUX_rmii_eth_mac_h_l169_c5_6d47_return_output;

     -- BIN_OP_XOR[rmii_eth_mac_h_l251_c35_72d0] LATENCY=0
     -- Inputs
     BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_left <= VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_left;
     BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_right <= VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_right;
     -- Outputs
     VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_return_output := BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_return_output;

     -- o_tx_mac_output_data_MUX[rmii_eth_mac_h_l221_c8_02f7] LATENCY=0
     -- Inputs
     o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_cond <= VAR_o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_cond;
     o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue <= VAR_o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue;
     o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse <= VAR_o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse;
     -- Outputs
     VAR_o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output := o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output;

     -- bit_counter_MUX[rmii_eth_mac_h_l226_c5_fe09] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_cond;
     bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output := bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output;

     -- state_MUX[rmii_eth_mac_h_l176_c5_f131] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l176_c5_f131_cond <= VAR_state_MUX_rmii_eth_mac_h_l176_c5_f131_cond;
     state_MUX_rmii_eth_mac_h_l176_c5_f131_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l176_c5_f131_iftrue;
     state_MUX_rmii_eth_mac_h_l176_c5_f131_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l176_c5_f131_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l176_c5_f131_return_output := state_MUX_rmii_eth_mac_h_l176_c5_f131_return_output;

     -- reset_crc_MUX[rmii_eth_mac_h_l167_c3_86dc] LATENCY=0
     -- Inputs
     reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_cond <= VAR_reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_cond;
     reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue <= VAR_reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue;
     reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse <= VAR_reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse;
     -- Outputs
     VAR_reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output := reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output;

     -- o_tx_mac_output_valid_MUX[rmii_eth_mac_h_l221_c8_02f7] LATENCY=0
     -- Inputs
     o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_cond <= VAR_o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_cond;
     o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue <= VAR_o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue;
     o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse <= VAR_o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse;
     -- Outputs
     VAR_o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output := o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output;

     -- Submodule level 2
     VAR_bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond := VAR_BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_return_output;
     VAR_data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond := VAR_BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_return_output;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond := VAR_BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_return_output;
     VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond := VAR_BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond := VAR_BIN_OP_AND_rmii_eth_mac_h_l201_c38_3ae5_return_output;
     VAR_BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_left := VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c35_72d0_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue := VAR_bit_counter_MUX_rmii_eth_mac_h_l176_c5_f131_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue := VAR_bit_counter_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue := VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output;
     VAR_crc_MUX_rmii_eth_mac_h_l254_c3_48c0_cond := VAR_reset_crc_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue := VAR_state_MUX_rmii_eth_mac_h_l169_c5_6d47_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue := VAR_state_MUX_rmii_eth_mac_h_l176_c5_f131_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue := VAR_state_MUX_rmii_eth_mac_h_l226_c5_fe09_return_output;
     -- state_MUX[rmii_eth_mac_h_l221_c8_02f7] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l221_c8_02f7_cond <= VAR_state_MUX_rmii_eth_mac_h_l221_c8_02f7_cond;
     state_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue;
     state_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output := state_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output;

     -- bit_counter_MUX[rmii_eth_mac_h_l203_c7_3a1d] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond;
     bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output := bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output;

     -- bit_counter_MUX[rmii_eth_mac_h_l221_c8_02f7] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_cond;
     bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output := bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output;

     -- o_tx_mac_input_ready_MUX[rmii_eth_mac_h_l203_c7_3a1d] LATENCY=0
     -- Inputs
     o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond <= VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond;
     o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue <= VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue;
     o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse <= VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse;
     -- Outputs
     VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output := o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output;

     -- BIN_OP_AND[rmii_eth_mac_h_l251_c35_28d8] LATENCY=0
     -- Inputs
     BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_left <= VAR_BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_left;
     BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_right <= VAR_BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_right;
     -- Outputs
     VAR_BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_return_output := BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_return_output;

     -- crc_shift_reg_MUX[rmii_eth_mac_h_l221_c8_02f7] LATENCY=0
     -- Inputs
     crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_cond <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_cond;
     crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_iftrue;
     crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_iffalse;
     -- Outputs
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output := crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output;

     -- o_FALSE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_6bcb[rmii_eth_mac_h_l194_c8_7c5b] LATENCY=0
     VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_6bcb_rmii_eth_mac_h_l194_c8_7c5b_return_output := CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_6bcb(
     to_unsigned(0, 1),
     VAR_o_tx_mac_output_data_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output,
     VAR_o_tx_mac_output_valid_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output);

     -- state_MUX[rmii_eth_mac_h_l203_c7_3a1d] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond <= VAR_state_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond;
     state_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue;
     state_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output := state_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output;

     -- data_reg_MUX[rmii_eth_mac_h_l203_c7_3a1d] LATENCY=0
     -- Inputs
     data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond <= VAR_data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond;
     data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue <= VAR_data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue;
     data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse <= VAR_data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse;
     -- Outputs
     VAR_data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output := data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output;

     -- last_byte_reg_MUX[rmii_eth_mac_h_l203_c7_3a1d] LATENCY=0
     -- Inputs
     last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_cond;
     last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iftrue;
     last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_iffalse;
     -- Outputs
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output := last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output;

     -- Submodule level 3
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_var_dim_0 := resize(VAR_BIN_OP_AND_rmii_eth_mac_h_l251_c35_28d8_return_output, 4);
     VAR_bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue := VAR_bit_counter_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse := VAR_bit_counter_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse := VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output;
     VAR_data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue := VAR_data_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue := VAR_last_byte_reg_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output;
     VAR_o_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse := VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_6bcb_rmii_eth_mac_h_l194_c8_7c5b_return_output;
     VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue := VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue := VAR_state_MUX_rmii_eth_mac_h_l203_c7_3a1d_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse := VAR_state_MUX_rmii_eth_mac_h_l221_c8_02f7_return_output;
     -- bit_counter_MUX[rmii_eth_mac_h_l202_c5_0412] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_cond;
     bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_return_output := bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_return_output;

     -- state_MUX[rmii_eth_mac_h_l202_c5_0412] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l202_c5_0412_cond <= VAR_state_MUX_rmii_eth_mac_h_l202_c5_0412_cond;
     state_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue;
     state_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l202_c5_0412_return_output := state_MUX_rmii_eth_mac_h_l202_c5_0412_return_output;

     -- o_tx_mac_input_ready_MUX[rmii_eth_mac_h_l202_c5_0412] LATENCY=0
     -- Inputs
     o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_cond <= VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_cond;
     o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue <= VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue;
     o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse <= VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse;
     -- Outputs
     VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_return_output := o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_return_output;

     -- last_byte_reg_MUX[rmii_eth_mac_h_l202_c5_0412] LATENCY=0
     -- Inputs
     last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_cond <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_cond;
     last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue;
     last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse;
     -- Outputs
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_return_output := last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_return_output;

     -- data_reg_MUX[rmii_eth_mac_h_l202_c5_0412] LATENCY=0
     -- Inputs
     data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_cond <= VAR_data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_cond;
     data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue <= VAR_data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iftrue;
     data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse <= VAR_data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_iffalse;
     -- Outputs
     VAR_data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_return_output := data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_return_output;

     -- crc_shift_reg_MUX[rmii_eth_mac_h_l194_c8_7c5b] LATENCY=0
     -- Inputs
     crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond;
     crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue;
     crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse;
     -- Outputs
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output := crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output;

     -- VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60[rmii_eth_mac_h_l251_c24_5910] LATENCY=0
     -- Inputs
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_0 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_0;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_1 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_1;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_2 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_2;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_3 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_3;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_4 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_4;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_5 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_5;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_6 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_6;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_7 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_7;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_8 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_8;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_9 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_9;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_10 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_10;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_11 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_11;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_12 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_12;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_13 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_13;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_14 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_14;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_15 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_ref_toks_15;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_var_dim_0 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_var_dim_0;
     -- Outputs
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_return_output := VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_return_output;

     -- Submodule level 4
     VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_right := VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l251_c24_5910_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue := VAR_bit_counter_MUX_rmii_eth_mac_h_l202_c5_0412_return_output;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse := VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output;
     VAR_data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue := VAR_data_reg_MUX_rmii_eth_mac_h_l202_c5_0412_return_output;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue := VAR_last_byte_reg_MUX_rmii_eth_mac_h_l202_c5_0412_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue := VAR_state_MUX_rmii_eth_mac_h_l202_c5_0412_return_output;
     -- bit_counter_MUX[rmii_eth_mac_h_l194_c8_7c5b] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond;
     bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output := bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output;

     -- BIN_OP_XOR[rmii_eth_mac_h_l251_c12_0fe1] LATENCY=0
     -- Inputs
     BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_left <= VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_left;
     BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_right <= VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_right;
     -- Outputs
     VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_return_output := BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_return_output;

     -- crc_shift_reg_MUX[rmii_eth_mac_h_l184_c8_f6a2] LATENCY=0
     -- Inputs
     crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond;
     crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue;
     crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse;
     -- Outputs
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output := crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output;

     -- data_reg_MUX[rmii_eth_mac_h_l194_c8_7c5b] LATENCY=0
     -- Inputs
     data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond <= VAR_data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond;
     data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue <= VAR_data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue;
     data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse <= VAR_data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse;
     -- Outputs
     VAR_data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output := data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output;

     -- state_MUX[rmii_eth_mac_h_l194_c8_7c5b] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond <= VAR_state_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond;
     state_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue;
     state_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output := state_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output;

     -- last_byte_reg_MUX[rmii_eth_mac_h_l194_c8_7c5b] LATENCY=0
     -- Inputs
     last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond;
     last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue;
     last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse;
     -- Outputs
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output := last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output;

     -- o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_5724[rmii_eth_mac_h_l194_c8_7c5b] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_5724_rmii_eth_mac_h_l194_c8_7c5b_return_output := CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_5724(
     VAR_uint8_1_0_rmii_eth_mac_h_l196_c28_e72a_return_output,
     to_unsigned(1, 1),
     VAR_o_tx_mac_input_ready_MUX_rmii_eth_mac_h_l202_c5_0412_return_output);

     -- Submodule level 5
     VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_left := VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_return_output;
     VAR_CONST_SR_4_rmii_eth_mac_h_l252_c12_0aea_x := VAR_BIN_OP_XOR_rmii_eth_mac_h_l251_c12_0fe1_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse := VAR_bit_counter_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse := VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output;
     VAR_data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse := VAR_data_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse := VAR_last_byte_reg_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output;
     VAR_o_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_rmii_tx_mac_t_rmii_tx_mac_t_5724_rmii_eth_mac_h_l194_c8_7c5b_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse := VAR_state_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output;
     -- CONST_SR_4[rmii_eth_mac_h_l252_c12_0aea] LATENCY=0
     -- Inputs
     CONST_SR_4_rmii_eth_mac_h_l252_c12_0aea_x <= VAR_CONST_SR_4_rmii_eth_mac_h_l252_c12_0aea_x;
     -- Outputs
     VAR_CONST_SR_4_rmii_eth_mac_h_l252_c12_0aea_return_output := CONST_SR_4_rmii_eth_mac_h_l252_c12_0aea_return_output;

     -- data_reg_MUX[rmii_eth_mac_h_l184_c8_f6a2] LATENCY=0
     -- Inputs
     data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond <= VAR_data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond;
     data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue <= VAR_data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue;
     data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse <= VAR_data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse;
     -- Outputs
     VAR_data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output := data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output;

     -- state_MUX[rmii_eth_mac_h_l184_c8_f6a2] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond <= VAR_state_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond;
     state_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue;
     state_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output := state_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output;

     -- bit_counter_MUX[rmii_eth_mac_h_l184_c8_f6a2] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond;
     bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output := bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output;

     -- crc_shift_reg_MUX[rmii_eth_mac_h_l173_c8_2623] LATENCY=0
     -- Inputs
     crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond;
     crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue;
     crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse;
     -- Outputs
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output := crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output;

     -- BIN_OP_XOR[rmii_eth_mac_h_l252_c35_ed07] LATENCY=0
     -- Inputs
     BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_left <= VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_left;
     BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_right <= VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_right;
     -- Outputs
     VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_return_output := BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_return_output;

     -- o_MUX[rmii_eth_mac_h_l194_c8_7c5b] LATENCY=0
     -- Inputs
     o_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond <= VAR_o_MUX_rmii_eth_mac_h_l194_c8_7c5b_cond;
     o_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue <= VAR_o_MUX_rmii_eth_mac_h_l194_c8_7c5b_iftrue;
     o_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse <= VAR_o_MUX_rmii_eth_mac_h_l194_c8_7c5b_iffalse;
     -- Outputs
     VAR_o_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output := o_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output;

     -- last_byte_reg_MUX[rmii_eth_mac_h_l184_c8_f6a2] LATENCY=0
     -- Inputs
     last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond;
     last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue;
     last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse;
     -- Outputs
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output := last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output;

     -- Submodule level 6
     VAR_BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_left := VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c35_ed07_return_output;
     VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_left := VAR_CONST_SR_4_rmii_eth_mac_h_l252_c12_0aea_return_output;
     VAR_bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse := VAR_bit_counter_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output;
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse := VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output;
     VAR_data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse := VAR_data_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse := VAR_last_byte_reg_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output;
     VAR_o_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse := VAR_o_MUX_rmii_eth_mac_h_l194_c8_7c5b_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse := VAR_state_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output;
     -- crc_shift_reg_MUX[rmii_eth_mac_h_l167_c3_86dc] LATENCY=0
     -- Inputs
     crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond;
     crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue;
     crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse <= VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse;
     -- Outputs
     VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output := crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output;

     -- BIN_OP_AND[rmii_eth_mac_h_l252_c35_29e1] LATENCY=0
     -- Inputs
     BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_left <= VAR_BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_left;
     BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_right <= VAR_BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_right;
     -- Outputs
     VAR_BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_return_output := BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_return_output;

     -- o_MUX[rmii_eth_mac_h_l184_c8_f6a2] LATENCY=0
     -- Inputs
     o_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond <= VAR_o_MUX_rmii_eth_mac_h_l184_c8_f6a2_cond;
     o_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue <= VAR_o_MUX_rmii_eth_mac_h_l184_c8_f6a2_iftrue;
     o_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse <= VAR_o_MUX_rmii_eth_mac_h_l184_c8_f6a2_iffalse;
     -- Outputs
     VAR_o_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output := o_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output;

     -- data_reg_MUX[rmii_eth_mac_h_l173_c8_2623] LATENCY=0
     -- Inputs
     data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond <= VAR_data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond;
     data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue <= VAR_data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue;
     data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse <= VAR_data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse;
     -- Outputs
     VAR_data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output := data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output;

     -- last_byte_reg_MUX[rmii_eth_mac_h_l173_c8_2623] LATENCY=0
     -- Inputs
     last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_cond;
     last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue;
     last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse;
     -- Outputs
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output := last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output;

     -- bit_counter_MUX[rmii_eth_mac_h_l173_c8_2623] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_cond;
     bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_return_output := bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_return_output;

     -- state_MUX[rmii_eth_mac_h_l173_c8_2623] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l173_c8_2623_cond <= VAR_state_MUX_rmii_eth_mac_h_l173_c8_2623_cond;
     state_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue;
     state_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l173_c8_2623_return_output := state_MUX_rmii_eth_mac_h_l173_c8_2623_return_output;

     -- Submodule level 7
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_var_dim_0 := resize(VAR_BIN_OP_AND_rmii_eth_mac_h_l252_c35_29e1_return_output, 4);
     VAR_bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse := VAR_bit_counter_MUX_rmii_eth_mac_h_l173_c8_2623_return_output;
     REG_VAR_crc_shift_reg := VAR_crc_shift_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output;
     VAR_data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse := VAR_data_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output;
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse := VAR_last_byte_reg_MUX_rmii_eth_mac_h_l173_c8_2623_return_output;
     VAR_o_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse := VAR_o_MUX_rmii_eth_mac_h_l184_c8_f6a2_return_output;
     VAR_state_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse := VAR_state_MUX_rmii_eth_mac_h_l173_c8_2623_return_output;
     -- last_byte_reg_MUX[rmii_eth_mac_h_l167_c3_86dc] LATENCY=0
     -- Inputs
     last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond;
     last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue;
     last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse <= VAR_last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse;
     -- Outputs
     VAR_last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output := last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output;

     -- o_MUX[rmii_eth_mac_h_l173_c8_2623] LATENCY=0
     -- Inputs
     o_MUX_rmii_eth_mac_h_l173_c8_2623_cond <= VAR_o_MUX_rmii_eth_mac_h_l173_c8_2623_cond;
     o_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue <= VAR_o_MUX_rmii_eth_mac_h_l173_c8_2623_iftrue;
     o_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse <= VAR_o_MUX_rmii_eth_mac_h_l173_c8_2623_iffalse;
     -- Outputs
     VAR_o_MUX_rmii_eth_mac_h_l173_c8_2623_return_output := o_MUX_rmii_eth_mac_h_l173_c8_2623_return_output;

     -- state_MUX[rmii_eth_mac_h_l167_c3_86dc] LATENCY=0
     -- Inputs
     state_MUX_rmii_eth_mac_h_l167_c3_86dc_cond <= VAR_state_MUX_rmii_eth_mac_h_l167_c3_86dc_cond;
     state_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue <= VAR_state_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue;
     state_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse <= VAR_state_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse;
     -- Outputs
     VAR_state_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output := state_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output;

     -- VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60[rmii_eth_mac_h_l252_c24_df6d] LATENCY=0
     -- Inputs
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_0 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_0;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_1 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_1;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_2 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_2;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_3 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_3;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_4 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_4;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_5 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_5;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_6 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_6;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_7 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_7;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_8 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_8;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_9 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_9;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_10 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_10;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_11 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_11;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_12 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_12;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_13 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_13;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_14 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_14;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_15 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_ref_toks_15;
     VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_var_dim_0 <= VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_var_dim_0;
     -- Outputs
     VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_return_output := VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_return_output;

     -- data_reg_MUX[rmii_eth_mac_h_l167_c3_86dc] LATENCY=0
     -- Inputs
     data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond <= VAR_data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_cond;
     data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue <= VAR_data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue;
     data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse <= VAR_data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse;
     -- Outputs
     VAR_data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output := data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output;

     -- bit_counter_MUX[rmii_eth_mac_h_l167_c3_86dc] LATENCY=0
     -- Inputs
     bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_cond <= VAR_bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_cond;
     bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue <= VAR_bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue;
     bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse <= VAR_bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output := bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output;

     -- Submodule level 8
     VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_right := VAR_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_rmii_eth_mac_h_l252_c24_df6d_return_output;
     REG_VAR_bit_counter := VAR_bit_counter_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output;
     REG_VAR_data_reg := VAR_data_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output;
     REG_VAR_last_byte_reg := VAR_last_byte_reg_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output;
     VAR_o_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse := VAR_o_MUX_rmii_eth_mac_h_l173_c8_2623_return_output;
     REG_VAR_state := VAR_state_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output;
     -- BIN_OP_XOR[rmii_eth_mac_h_l252_c12_1534] LATENCY=0
     -- Inputs
     BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_left <= VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_left;
     BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_right <= VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_right;
     -- Outputs
     VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_return_output := BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_return_output;

     -- o_MUX[rmii_eth_mac_h_l167_c3_86dc] LATENCY=0
     -- Inputs
     o_MUX_rmii_eth_mac_h_l167_c3_86dc_cond <= VAR_o_MUX_rmii_eth_mac_h_l167_c3_86dc_cond;
     o_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue <= VAR_o_MUX_rmii_eth_mac_h_l167_c3_86dc_iftrue;
     o_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse <= VAR_o_MUX_rmii_eth_mac_h_l167_c3_86dc_iffalse;
     -- Outputs
     VAR_o_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output := o_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output;

     -- Submodule level 9
     VAR_crc_MUX_rmii_eth_mac_h_l250_c3_c502_iftrue := VAR_BIN_OP_XOR_rmii_eth_mac_h_l252_c12_1534_return_output;
     VAR_return_output := VAR_o_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output;
     -- CONST_REF_RD_uint1_t_rmii_tx_mac_t_tx_mac_input_ready_d41d[rmii_eth_mac_h_l258_c44_0dbc] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_rmii_tx_mac_t_tx_mac_input_ready_d41d_rmii_eth_mac_h_l258_c44_0dbc_return_output := VAR_o_MUX_rmii_eth_mac_h_l167_c3_86dc_return_output.tx_mac_input_ready;

     -- crc_MUX[rmii_eth_mac_h_l250_c3_c502] LATENCY=0
     -- Inputs
     crc_MUX_rmii_eth_mac_h_l250_c3_c502_cond <= VAR_crc_MUX_rmii_eth_mac_h_l250_c3_c502_cond;
     crc_MUX_rmii_eth_mac_h_l250_c3_c502_iftrue <= VAR_crc_MUX_rmii_eth_mac_h_l250_c3_c502_iftrue;
     crc_MUX_rmii_eth_mac_h_l250_c3_c502_iffalse <= VAR_crc_MUX_rmii_eth_mac_h_l250_c3_c502_iffalse;
     -- Outputs
     VAR_crc_MUX_rmii_eth_mac_h_l250_c3_c502_return_output := crc_MUX_rmii_eth_mac_h_l250_c3_c502_return_output;

     -- Submodule level 10
     VAR_BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_right := VAR_CONST_REF_RD_uint1_t_rmii_tx_mac_t_tx_mac_input_ready_d41d_rmii_eth_mac_h_l258_c44_0dbc_return_output;
     VAR_crc_MUX_rmii_eth_mac_h_l254_c3_48c0_iffalse := VAR_crc_MUX_rmii_eth_mac_h_l250_c3_c502_return_output;
     -- crc_MUX[rmii_eth_mac_h_l254_c3_48c0] LATENCY=0
     -- Inputs
     crc_MUX_rmii_eth_mac_h_l254_c3_48c0_cond <= VAR_crc_MUX_rmii_eth_mac_h_l254_c3_48c0_cond;
     crc_MUX_rmii_eth_mac_h_l254_c3_48c0_iftrue <= VAR_crc_MUX_rmii_eth_mac_h_l254_c3_48c0_iftrue;
     crc_MUX_rmii_eth_mac_h_l254_c3_48c0_iffalse <= VAR_crc_MUX_rmii_eth_mac_h_l254_c3_48c0_iffalse;
     -- Outputs
     VAR_crc_MUX_rmii_eth_mac_h_l254_c3_48c0_return_output := crc_MUX_rmii_eth_mac_h_l254_c3_48c0_return_output;

     -- BIN_OP_AND[rmii_eth_mac_h_l258_c28_a0d2] LATENCY=0
     -- Inputs
     BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_left <= VAR_BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_left;
     BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_right <= VAR_BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_right;
     -- Outputs
     VAR_BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_return_output := BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_return_output;

     -- Submodule level 11
     REG_VAR_axis_in_data_reg_valid := VAR_BIN_OP_AND_rmii_eth_mac_h_l258_c28_a0d2_return_output;
     REG_VAR_crc := VAR_crc_MUX_rmii_eth_mac_h_l254_c3_48c0_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_state <= REG_VAR_state;
REG_COMB_bit_counter <= REG_VAR_bit_counter;
REG_COMB_crc <= REG_VAR_crc;
REG_COMB_crc_shift_reg <= REG_VAR_crc_shift_reg;
REG_COMB_data_reg <= REG_VAR_data_reg;
REG_COMB_last_byte_reg <= REG_VAR_last_byte_reg;
REG_COMB_axis_in_data_reg <= REG_VAR_axis_in_data_reg;
REG_COMB_axis_in_data_reg_valid <= REG_VAR_axis_in_data_reg_valid;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if clk_en_internal='1' then
     state <= REG_COMB_state;
     bit_counter <= REG_COMB_bit_counter;
     crc <= REG_COMB_crc;
     crc_shift_reg <= REG_COMB_crc_shift_reg;
     data_reg <= REG_COMB_data_reg;
     last_byte_reg <= REG_COMB_last_byte_reg;
     axis_in_data_reg <= REG_COMB_axis_in_data_reg;
     axis_in_data_reg_valid <= REG_COMB_axis_in_data_reg_valid;
 end if;
 end if;
end process;

end arch;
