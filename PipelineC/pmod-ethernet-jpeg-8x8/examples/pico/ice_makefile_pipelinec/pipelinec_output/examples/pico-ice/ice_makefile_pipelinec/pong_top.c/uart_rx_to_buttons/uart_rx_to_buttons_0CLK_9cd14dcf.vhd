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
-- Submodules: 19
entity uart_rx_to_buttons_0CLK_9cd14dcf is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in uart_rx_to_buttons_global_to_module_t;
 module_to_global : out uart_rx_to_buttons_module_to_global_t;
 return_output : out user_input_t);
end uart_rx_to_buttons_0CLK_9cd14dcf;
architecture arch of uart_rx_to_buttons_0CLK_9cd14dcf is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal out_reg : user_input_t := user_input_t_NULL;
signal counter : unsigned(31 downto 0) := to_unsigned(0, 32);
signal REG_COMB_out_reg : user_input_t;
signal REG_COMB_counter : unsigned(31 downto 0);

-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- BIN_OP_PLUS[pong_top_c_l21_c3_d64a]
signal BIN_OP_PLUS_pong_top_c_l21_c3_d64a_left : unsigned(31 downto 0);
signal BIN_OP_PLUS_pong_top_c_l21_c3_d64a_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_pong_top_c_l21_c3_d64a_return_output : unsigned(32 downto 0);

-- BIN_OP_GTE[pong_top_c_l22_c6_5b30]
signal BIN_OP_GTE_pong_top_c_l22_c6_5b30_left : unsigned(31 downto 0);
signal BIN_OP_GTE_pong_top_c_l22_c6_5b30_right : unsigned(31 downto 0);
signal BIN_OP_GTE_pong_top_c_l22_c6_5b30_return_output : unsigned(0 downto 0);

-- counter_MUX[pong_top_c_l22_c3_fc94]
signal counter_MUX_pong_top_c_l22_c3_fc94_cond : unsigned(0 downto 0);
signal counter_MUX_pong_top_c_l22_c3_fc94_iftrue : unsigned(31 downto 0);
signal counter_MUX_pong_top_c_l22_c3_fc94_iffalse : unsigned(31 downto 0);
signal counter_MUX_pong_top_c_l22_c3_fc94_return_output : unsigned(31 downto 0);

-- out_reg_MUX[pong_top_c_l22_c3_fc94]
signal out_reg_MUX_pong_top_c_l22_c3_fc94_cond : unsigned(0 downto 0);
signal out_reg_MUX_pong_top_c_l22_c3_fc94_iftrue : user_input_t;
signal out_reg_MUX_pong_top_c_l22_c3_fc94_iffalse : user_input_t;
signal out_reg_MUX_pong_top_c_l22_c3_fc94_return_output : user_input_t;

-- counter_MUX[pong_top_c_l33_c3_3639]
signal counter_MUX_pong_top_c_l33_c3_3639_cond : unsigned(0 downto 0);
signal counter_MUX_pong_top_c_l33_c3_3639_iftrue : unsigned(31 downto 0);
signal counter_MUX_pong_top_c_l33_c3_3639_iffalse : unsigned(31 downto 0);
signal counter_MUX_pong_top_c_l33_c3_3639_return_output : unsigned(31 downto 0);

-- out_reg_MUX[pong_top_c_l33_c3_3639]
signal out_reg_MUX_pong_top_c_l33_c3_3639_cond : unsigned(0 downto 0);
signal out_reg_MUX_pong_top_c_l33_c3_3639_iftrue : user_input_t;
signal out_reg_MUX_pong_top_c_l33_c3_3639_iffalse : user_input_t;
signal out_reg_MUX_pong_top_c_l33_c3_3639_return_output : user_input_t;

-- BIN_OP_EQ[pong_top_c_l35_c8_2c7c]
signal BIN_OP_EQ_pong_top_c_l35_c8_2c7c_left : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l35_c8_2c7c_right : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l35_c8_2c7c_return_output : unsigned(0 downto 0);

-- out_reg_MUX[pong_top_c_l35_c5_7c1a]
signal out_reg_MUX_pong_top_c_l35_c5_7c1a_cond : unsigned(0 downto 0);
signal out_reg_MUX_pong_top_c_l35_c5_7c1a_iftrue : user_input_t;
signal out_reg_MUX_pong_top_c_l35_c5_7c1a_iffalse : user_input_t;
signal out_reg_MUX_pong_top_c_l35_c5_7c1a_return_output : user_input_t;

-- BIN_OP_EQ[pong_top_c_l37_c14_6b23]
signal BIN_OP_EQ_pong_top_c_l37_c14_6b23_left : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l37_c14_6b23_right : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l37_c14_6b23_return_output : unsigned(0 downto 0);

-- out_reg_paddle_r_down_MUX[pong_top_c_l37_c11_a7a5]
signal out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_cond : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_iftrue : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_iffalse : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_return_output : unsigned(0 downto 0);

-- out_reg_paddle_l_down_MUX[pong_top_c_l37_c11_a7a5]
signal out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_cond : unsigned(0 downto 0);
signal out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_iftrue : unsigned(0 downto 0);
signal out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_iffalse : unsigned(0 downto 0);
signal out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_return_output : unsigned(0 downto 0);

-- out_reg_paddle_r_up_MUX[pong_top_c_l37_c11_a7a5]
signal out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_cond : unsigned(0 downto 0);
signal out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_iftrue : unsigned(0 downto 0);
signal out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_iffalse : unsigned(0 downto 0);
signal out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[pong_top_c_l39_c14_b67a]
signal BIN_OP_EQ_pong_top_c_l39_c14_b67a_left : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l39_c14_b67a_right : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l39_c14_b67a_return_output : unsigned(0 downto 0);

-- out_reg_paddle_r_down_MUX[pong_top_c_l39_c11_1c34]
signal out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_cond : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_iftrue : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_iffalse : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_return_output : unsigned(0 downto 0);

-- out_reg_paddle_r_up_MUX[pong_top_c_l39_c11_1c34]
signal out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_cond : unsigned(0 downto 0);
signal out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_iftrue : unsigned(0 downto 0);
signal out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_iffalse : unsigned(0 downto 0);
signal out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[pong_top_c_l41_c14_aa8a]
signal BIN_OP_EQ_pong_top_c_l41_c14_aa8a_left : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l41_c14_aa8a_right : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l41_c14_aa8a_return_output : unsigned(0 downto 0);

-- out_reg_paddle_r_down_MUX[pong_top_c_l41_c11_0280]
signal out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_cond : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_iftrue : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_iffalse : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_return_output : unsigned(0 downto 0);

function CONST_REF_RD_user_input_t_user_input_t_4a37( ref_toks_0 : user_input_t;
 ref_toks_1 : unsigned) return user_input_t is
 
  variable base : user_input_t; 
  variable return_output : user_input_t;
begin
      base := ref_toks_0;
      base.paddle_l_up := ref_toks_1;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_user_input_t_user_input_t_90ad( ref_toks_0 : user_input_t;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned;
 ref_toks_3 : unsigned) return user_input_t is
 
  variable base : user_input_t; 
  variable return_output : user_input_t;
begin
      base := ref_toks_0;
      base.paddle_r_down := ref_toks_1;
      base.paddle_l_down := ref_toks_2;
      base.paddle_r_up := ref_toks_3;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_PLUS_pong_top_c_l21_c3_d64a : 0 clocks latency
BIN_OP_PLUS_pong_top_c_l21_c3_d64a : entity work.BIN_OP_PLUS_uint32_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_pong_top_c_l21_c3_d64a_left,
BIN_OP_PLUS_pong_top_c_l21_c3_d64a_right,
BIN_OP_PLUS_pong_top_c_l21_c3_d64a_return_output);

-- BIN_OP_GTE_pong_top_c_l22_c6_5b30 : 0 clocks latency
BIN_OP_GTE_pong_top_c_l22_c6_5b30 : entity work.BIN_OP_GTE_uint32_t_uint32_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_pong_top_c_l22_c6_5b30_left,
BIN_OP_GTE_pong_top_c_l22_c6_5b30_right,
BIN_OP_GTE_pong_top_c_l22_c6_5b30_return_output);

-- counter_MUX_pong_top_c_l22_c3_fc94 : 0 clocks latency
counter_MUX_pong_top_c_l22_c3_fc94 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
counter_MUX_pong_top_c_l22_c3_fc94_cond,
counter_MUX_pong_top_c_l22_c3_fc94_iftrue,
counter_MUX_pong_top_c_l22_c3_fc94_iffalse,
counter_MUX_pong_top_c_l22_c3_fc94_return_output);

-- out_reg_MUX_pong_top_c_l22_c3_fc94 : 0 clocks latency
out_reg_MUX_pong_top_c_l22_c3_fc94 : entity work.MUX_uint1_t_user_input_t_user_input_t_0CLK_de264c78 port map (
out_reg_MUX_pong_top_c_l22_c3_fc94_cond,
out_reg_MUX_pong_top_c_l22_c3_fc94_iftrue,
out_reg_MUX_pong_top_c_l22_c3_fc94_iffalse,
out_reg_MUX_pong_top_c_l22_c3_fc94_return_output);

-- counter_MUX_pong_top_c_l33_c3_3639 : 0 clocks latency
counter_MUX_pong_top_c_l33_c3_3639 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
counter_MUX_pong_top_c_l33_c3_3639_cond,
counter_MUX_pong_top_c_l33_c3_3639_iftrue,
counter_MUX_pong_top_c_l33_c3_3639_iffalse,
counter_MUX_pong_top_c_l33_c3_3639_return_output);

-- out_reg_MUX_pong_top_c_l33_c3_3639 : 0 clocks latency
out_reg_MUX_pong_top_c_l33_c3_3639 : entity work.MUX_uint1_t_user_input_t_user_input_t_0CLK_de264c78 port map (
out_reg_MUX_pong_top_c_l33_c3_3639_cond,
out_reg_MUX_pong_top_c_l33_c3_3639_iftrue,
out_reg_MUX_pong_top_c_l33_c3_3639_iffalse,
out_reg_MUX_pong_top_c_l33_c3_3639_return_output);

-- BIN_OP_EQ_pong_top_c_l35_c8_2c7c : 0 clocks latency
BIN_OP_EQ_pong_top_c_l35_c8_2c7c : entity work.BIN_OP_EQ_uint8_t_uint8_t_0CLK_de264c78 port map (
BIN_OP_EQ_pong_top_c_l35_c8_2c7c_left,
BIN_OP_EQ_pong_top_c_l35_c8_2c7c_right,
BIN_OP_EQ_pong_top_c_l35_c8_2c7c_return_output);

-- out_reg_MUX_pong_top_c_l35_c5_7c1a : 0 clocks latency
out_reg_MUX_pong_top_c_l35_c5_7c1a : entity work.MUX_uint1_t_user_input_t_user_input_t_0CLK_de264c78 port map (
out_reg_MUX_pong_top_c_l35_c5_7c1a_cond,
out_reg_MUX_pong_top_c_l35_c5_7c1a_iftrue,
out_reg_MUX_pong_top_c_l35_c5_7c1a_iffalse,
out_reg_MUX_pong_top_c_l35_c5_7c1a_return_output);

-- BIN_OP_EQ_pong_top_c_l37_c14_6b23 : 0 clocks latency
BIN_OP_EQ_pong_top_c_l37_c14_6b23 : entity work.BIN_OP_EQ_uint8_t_uint8_t_0CLK_de264c78 port map (
BIN_OP_EQ_pong_top_c_l37_c14_6b23_left,
BIN_OP_EQ_pong_top_c_l37_c14_6b23_right,
BIN_OP_EQ_pong_top_c_l37_c14_6b23_return_output);

-- out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5 : 0 clocks latency
out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_cond,
out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_iftrue,
out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_iffalse,
out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_return_output);

-- out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5 : 0 clocks latency
out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_cond,
out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_iftrue,
out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_iffalse,
out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_return_output);

-- out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5 : 0 clocks latency
out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_cond,
out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_iftrue,
out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_iffalse,
out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_return_output);

-- BIN_OP_EQ_pong_top_c_l39_c14_b67a : 0 clocks latency
BIN_OP_EQ_pong_top_c_l39_c14_b67a : entity work.BIN_OP_EQ_uint8_t_uint8_t_0CLK_de264c78 port map (
BIN_OP_EQ_pong_top_c_l39_c14_b67a_left,
BIN_OP_EQ_pong_top_c_l39_c14_b67a_right,
BIN_OP_EQ_pong_top_c_l39_c14_b67a_return_output);

-- out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34 : 0 clocks latency
out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_cond,
out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_iftrue,
out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_iffalse,
out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_return_output);

-- out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34 : 0 clocks latency
out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_cond,
out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_iftrue,
out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_iffalse,
out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_return_output);

-- BIN_OP_EQ_pong_top_c_l41_c14_aa8a : 0 clocks latency
BIN_OP_EQ_pong_top_c_l41_c14_aa8a : entity work.BIN_OP_EQ_uint8_t_uint8_t_0CLK_de264c78 port map (
BIN_OP_EQ_pong_top_c_l41_c14_aa8a_left,
BIN_OP_EQ_pong_top_c_l41_c14_aa8a_right,
BIN_OP_EQ_pong_top_c_l41_c14_aa8a_return_output);

-- out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280 : 0 clocks latency
out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_cond,
out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_iftrue,
out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_iffalse,
out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Registers
 out_reg,
 counter,
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 BIN_OP_PLUS_pong_top_c_l21_c3_d64a_return_output,
 BIN_OP_GTE_pong_top_c_l22_c6_5b30_return_output,
 counter_MUX_pong_top_c_l22_c3_fc94_return_output,
 out_reg_MUX_pong_top_c_l22_c3_fc94_return_output,
 counter_MUX_pong_top_c_l33_c3_3639_return_output,
 out_reg_MUX_pong_top_c_l33_c3_3639_return_output,
 BIN_OP_EQ_pong_top_c_l35_c8_2c7c_return_output,
 out_reg_MUX_pong_top_c_l35_c5_7c1a_return_output,
 BIN_OP_EQ_pong_top_c_l37_c14_6b23_return_output,
 out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_return_output,
 out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_return_output,
 out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_return_output,
 BIN_OP_EQ_pong_top_c_l39_c14_b67a_return_output,
 out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_return_output,
 out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_return_output,
 BIN_OP_EQ_pong_top_c_l41_c14_aa8a_return_output,
 out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : user_input_t;
 variable VAR_uart_rx_mac_out_ready : unsigned(0 downto 0);
 variable VAR_uart_rx_mac_word_out : uint8_t_stream_t;
 variable VAR_o : user_input_t;
 variable VAR_ONE_SEC : unsigned(31 downto 0);
 variable VAR_counter_pong_top_c_l21_c3_8df8 : unsigned(31 downto 0);
 variable VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d64a_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d64a_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d64a_return_output : unsigned(32 downto 0);
 variable VAR_BIN_OP_GTE_pong_top_c_l22_c6_5b30_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_GTE_pong_top_c_l22_c6_5b30_right : unsigned(31 downto 0);
 variable VAR_BIN_OP_GTE_pong_top_c_l22_c6_5b30_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_pong_top_c_l22_c3_fc94_iftrue : unsigned(31 downto 0);
 variable VAR_counter_pong_top_c_l25_c5_0191 : unsigned(31 downto 0);
 variable VAR_counter_MUX_pong_top_c_l22_c3_fc94_iffalse : unsigned(31 downto 0);
 variable VAR_counter_MUX_pong_top_c_l22_c3_fc94_return_output : unsigned(31 downto 0);
 variable VAR_counter_MUX_pong_top_c_l22_c3_fc94_cond : unsigned(0 downto 0);
 variable VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_iftrue : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_iffalse : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_return_output : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_cond : unsigned(0 downto 0);
 variable VAR_user_input_t_NULL : user_input_t;
 variable VAR_CONST_REF_RD_uint1_t_uint8_t_stream_t_valid_d41d_pong_top_c_l33_c6_5e34_return_output : unsigned(0 downto 0);
 variable VAR_counter_MUX_pong_top_c_l33_c3_3639_iftrue : unsigned(31 downto 0);
 variable VAR_counter_pong_top_c_l44_c5_5f78 : unsigned(31 downto 0);
 variable VAR_counter_MUX_pong_top_c_l33_c3_3639_iffalse : unsigned(31 downto 0);
 variable VAR_counter_MUX_pong_top_c_l33_c3_3639_return_output : unsigned(31 downto 0);
 variable VAR_counter_MUX_pong_top_c_l33_c3_3639_cond : unsigned(0 downto 0);
 variable VAR_out_reg_MUX_pong_top_c_l33_c3_3639_iftrue : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l35_c5_7c1a_return_output : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l33_c3_3639_iffalse : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l33_c3_3639_return_output : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l33_c3_3639_cond : unsigned(0 downto 0);
 variable VAR_c : unsigned(7 downto 0);
 variable VAR_c_pong_top_c_l34_c10_6337_0 : unsigned(7 downto 0);
 variable VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_pong_top_c_l34_c14_c430_return_output : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l35_c8_2c7c_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l35_c8_2c7c_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l35_c8_2c7c_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_MUX_pong_top_c_l35_c5_7c1a_iftrue : user_input_t;
 variable VAR_out_reg_TRUE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_4a37_pong_top_c_l35_c5_7c1a_return_output : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l35_c5_7c1a_iffalse : user_input_t;
 variable VAR_out_reg_FALSE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_90ad_pong_top_c_l35_c5_7c1a_return_output : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l35_c5_7c1a_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l37_c14_6b23_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l37_c14_6b23_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l37_c14_6b23_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_iftrue : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_iffalse : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_cond : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_iftrue : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_iffalse : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_l_down_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d_pong_top_c_l37_c11_a7a5_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_cond : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_iftrue : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_iffalse : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l39_c14_b67a_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l39_c14_b67a_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l39_c14_b67a_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_iftrue : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_iffalse : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_cond : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_iftrue : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_iffalse : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l41_c14_aa8a_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l41_c14_aa8a_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l41_c14_aa8a_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_iftrue : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_iffalse : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_top_c_l41_l37_l39_DUPLICATE_1f4b_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_top_c_l37_l39_DUPLICATE_b225_return_output : unsigned(0 downto 0);
 -- State registers comb logic variables
variable REG_VAR_out_reg : user_input_t;
variable REG_VAR_counter : unsigned(31 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_out_reg := out_reg;
  REG_VAR_counter := counter;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_EQ_pong_top_c_l41_c14_aa8a_right := to_unsigned(107, 8);
     VAR_counter_pong_top_c_l44_c5_5f78 := resize(to_unsigned(0, 1), 32);
     VAR_counter_MUX_pong_top_c_l33_c3_3639_iftrue := VAR_counter_pong_top_c_l44_c5_5f78;
     VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_iftrue := user_input_t_NULL;
     VAR_BIN_OP_GTE_pong_top_c_l22_c6_5b30_right := to_unsigned(6250000, 32);
     VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_pong_top_c_l39_c14_b67a_right := to_unsigned(105, 8);
     VAR_BIN_OP_EQ_pong_top_c_l37_c14_6b23_right := to_unsigned(115, 8);
     VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d64a_right := to_unsigned(1, 1);
     VAR_counter_pong_top_c_l25_c5_0191 := resize(to_unsigned(0, 1), 32);
     VAR_counter_MUX_pong_top_c_l22_c3_fc94_iftrue := VAR_counter_pong_top_c_l25_c5_0191;
     VAR_BIN_OP_EQ_pong_top_c_l35_c8_2c7c_right := to_unsigned(119, 8);
     VAR_uart_rx_mac_out_ready := to_unsigned(1, 1);
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_iftrue := to_unsigned(1, 1);
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_iftrue := to_unsigned(1, 1);
 -- Reads from global variables
     VAR_uart_rx_mac_word_out := global_to_module.uart_rx_mac_word_out;
     -- Submodule level 0
     -- CONST_REF_RD_uint1_t_uint8_t_stream_t_valid_d41d[pong_top_c_l33_c6_5e34] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint8_t_stream_t_valid_d41d_pong_top_c_l33_c6_5e34_return_output := VAR_uart_rx_mac_word_out.valid;

     -- CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d[pong_top_c_l34_c14_c430] LATENCY=0
     VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_pong_top_c_l34_c14_c430_return_output := VAR_uart_rx_mac_word_out.data;

     -- Submodule level 1
     VAR_out_reg_MUX_pong_top_c_l33_c3_3639_cond := VAR_CONST_REF_RD_uint1_t_uint8_t_stream_t_valid_d41d_pong_top_c_l33_c6_5e34_return_output;
     VAR_counter_MUX_pong_top_c_l33_c3_3639_cond := VAR_CONST_REF_RD_uint1_t_uint8_t_stream_t_valid_d41d_pong_top_c_l33_c6_5e34_return_output;
     VAR_c_pong_top_c_l34_c10_6337_0 := VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_pong_top_c_l34_c14_c430_return_output;
     VAR_BIN_OP_EQ_pong_top_c_l39_c14_b67a_left := VAR_c_pong_top_c_l34_c10_6337_0;
     VAR_BIN_OP_EQ_pong_top_c_l37_c14_6b23_left := VAR_c_pong_top_c_l34_c10_6337_0;
     VAR_BIN_OP_EQ_pong_top_c_l35_c8_2c7c_left := VAR_c_pong_top_c_l34_c10_6337_0;
     VAR_BIN_OP_EQ_pong_top_c_l41_c14_aa8a_left := VAR_c_pong_top_c_l34_c10_6337_0;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

     -- Submodule level 0
     VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d64a_left := counter;
     VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_iffalse := out_reg;
     VAR_return_output := out_reg;
     -- BIN_OP_EQ[pong_top_c_l39_c14_b67a] LATENCY=0
     -- Inputs
     BIN_OP_EQ_pong_top_c_l39_c14_b67a_left <= VAR_BIN_OP_EQ_pong_top_c_l39_c14_b67a_left;
     BIN_OP_EQ_pong_top_c_l39_c14_b67a_right <= VAR_BIN_OP_EQ_pong_top_c_l39_c14_b67a_right;
     -- Outputs
     VAR_BIN_OP_EQ_pong_top_c_l39_c14_b67a_return_output := BIN_OP_EQ_pong_top_c_l39_c14_b67a_return_output;

     -- BIN_OP_PLUS[pong_top_c_l21_c3_d64a] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_pong_top_c_l21_c3_d64a_left <= VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d64a_left;
     BIN_OP_PLUS_pong_top_c_l21_c3_d64a_right <= VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d64a_right;
     -- Outputs
     VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d64a_return_output := BIN_OP_PLUS_pong_top_c_l21_c3_d64a_return_output;

     -- BIN_OP_EQ[pong_top_c_l37_c14_6b23] LATENCY=0
     -- Inputs
     BIN_OP_EQ_pong_top_c_l37_c14_6b23_left <= VAR_BIN_OP_EQ_pong_top_c_l37_c14_6b23_left;
     BIN_OP_EQ_pong_top_c_l37_c14_6b23_right <= VAR_BIN_OP_EQ_pong_top_c_l37_c14_6b23_right;
     -- Outputs
     VAR_BIN_OP_EQ_pong_top_c_l37_c14_6b23_return_output := BIN_OP_EQ_pong_top_c_l37_c14_6b23_return_output;

     -- BIN_OP_EQ[pong_top_c_l41_c14_aa8a] LATENCY=0
     -- Inputs
     BIN_OP_EQ_pong_top_c_l41_c14_aa8a_left <= VAR_BIN_OP_EQ_pong_top_c_l41_c14_aa8a_left;
     BIN_OP_EQ_pong_top_c_l41_c14_aa8a_right <= VAR_BIN_OP_EQ_pong_top_c_l41_c14_aa8a_right;
     -- Outputs
     VAR_BIN_OP_EQ_pong_top_c_l41_c14_aa8a_return_output := BIN_OP_EQ_pong_top_c_l41_c14_aa8a_return_output;

     -- BIN_OP_EQ[pong_top_c_l35_c8_2c7c] LATENCY=0
     -- Inputs
     BIN_OP_EQ_pong_top_c_l35_c8_2c7c_left <= VAR_BIN_OP_EQ_pong_top_c_l35_c8_2c7c_left;
     BIN_OP_EQ_pong_top_c_l35_c8_2c7c_right <= VAR_BIN_OP_EQ_pong_top_c_l35_c8_2c7c_right;
     -- Outputs
     VAR_BIN_OP_EQ_pong_top_c_l35_c8_2c7c_return_output := BIN_OP_EQ_pong_top_c_l35_c8_2c7c_return_output;

     -- Submodule level 1
     VAR_out_reg_MUX_pong_top_c_l35_c5_7c1a_cond := VAR_BIN_OP_EQ_pong_top_c_l35_c8_2c7c_return_output;
     VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_cond := VAR_BIN_OP_EQ_pong_top_c_l37_c14_6b23_return_output;
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_cond := VAR_BIN_OP_EQ_pong_top_c_l37_c14_6b23_return_output;
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_cond := VAR_BIN_OP_EQ_pong_top_c_l37_c14_6b23_return_output;
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_cond := VAR_BIN_OP_EQ_pong_top_c_l39_c14_b67a_return_output;
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_cond := VAR_BIN_OP_EQ_pong_top_c_l39_c14_b67a_return_output;
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_cond := VAR_BIN_OP_EQ_pong_top_c_l41_c14_aa8a_return_output;
     VAR_counter_pong_top_c_l21_c3_8df8 := resize(VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d64a_return_output, 32);
     VAR_BIN_OP_GTE_pong_top_c_l22_c6_5b30_left := VAR_counter_pong_top_c_l21_c3_8df8;
     VAR_counter_MUX_pong_top_c_l22_c3_fc94_iffalse := VAR_counter_pong_top_c_l21_c3_8df8;
     -- BIN_OP_GTE[pong_top_c_l22_c6_5b30] LATENCY=0
     -- Inputs
     BIN_OP_GTE_pong_top_c_l22_c6_5b30_left <= VAR_BIN_OP_GTE_pong_top_c_l22_c6_5b30_left;
     BIN_OP_GTE_pong_top_c_l22_c6_5b30_right <= VAR_BIN_OP_GTE_pong_top_c_l22_c6_5b30_right;
     -- Outputs
     VAR_BIN_OP_GTE_pong_top_c_l22_c6_5b30_return_output := BIN_OP_GTE_pong_top_c_l22_c6_5b30_return_output;

     -- Submodule level 2
     VAR_counter_MUX_pong_top_c_l22_c3_fc94_cond := VAR_BIN_OP_GTE_pong_top_c_l22_c6_5b30_return_output;
     VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_cond := VAR_BIN_OP_GTE_pong_top_c_l22_c6_5b30_return_output;
     -- counter_MUX[pong_top_c_l22_c3_fc94] LATENCY=0
     -- Inputs
     counter_MUX_pong_top_c_l22_c3_fc94_cond <= VAR_counter_MUX_pong_top_c_l22_c3_fc94_cond;
     counter_MUX_pong_top_c_l22_c3_fc94_iftrue <= VAR_counter_MUX_pong_top_c_l22_c3_fc94_iftrue;
     counter_MUX_pong_top_c_l22_c3_fc94_iffalse <= VAR_counter_MUX_pong_top_c_l22_c3_fc94_iffalse;
     -- Outputs
     VAR_counter_MUX_pong_top_c_l22_c3_fc94_return_output := counter_MUX_pong_top_c_l22_c3_fc94_return_output;

     -- out_reg_MUX[pong_top_c_l22_c3_fc94] LATENCY=0
     -- Inputs
     out_reg_MUX_pong_top_c_l22_c3_fc94_cond <= VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_cond;
     out_reg_MUX_pong_top_c_l22_c3_fc94_iftrue <= VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_iftrue;
     out_reg_MUX_pong_top_c_l22_c3_fc94_iffalse <= VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_iffalse;
     -- Outputs
     VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_return_output := out_reg_MUX_pong_top_c_l22_c3_fc94_return_output;

     -- Submodule level 3
     VAR_counter_MUX_pong_top_c_l33_c3_3639_iffalse := VAR_counter_MUX_pong_top_c_l22_c3_fc94_return_output;
     VAR_out_reg_MUX_pong_top_c_l33_c3_3639_iffalse := VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_return_output;
     -- out_reg_TRUE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_4a37[pong_top_c_l35_c5_7c1a] LATENCY=0
     VAR_out_reg_TRUE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_4a37_pong_top_c_l35_c5_7c1a_return_output := CONST_REF_RD_user_input_t_user_input_t_4a37(
     VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_return_output,
     to_unsigned(1, 1));

     -- counter_MUX[pong_top_c_l33_c3_3639] LATENCY=0
     -- Inputs
     counter_MUX_pong_top_c_l33_c3_3639_cond <= VAR_counter_MUX_pong_top_c_l33_c3_3639_cond;
     counter_MUX_pong_top_c_l33_c3_3639_iftrue <= VAR_counter_MUX_pong_top_c_l33_c3_3639_iftrue;
     counter_MUX_pong_top_c_l33_c3_3639_iffalse <= VAR_counter_MUX_pong_top_c_l33_c3_3639_iffalse;
     -- Outputs
     VAR_counter_MUX_pong_top_c_l33_c3_3639_return_output := counter_MUX_pong_top_c_l33_c3_3639_return_output;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_top_c_l41_l37_l39_DUPLICATE_1f4b LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_top_c_l41_l37_l39_DUPLICATE_1f4b_return_output := VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_return_output.paddle_r_down;

     -- out_reg_paddle_l_down_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d[pong_top_c_l37_c11_a7a5] LATENCY=0
     VAR_out_reg_paddle_l_down_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d_pong_top_c_l37_c11_a7a5_return_output := VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_return_output.paddle_l_down;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_top_c_l37_l39_DUPLICATE_b225 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_top_c_l37_l39_DUPLICATE_b225_return_output := VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_return_output.paddle_r_up;

     -- Submodule level 4
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_iftrue := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_top_c_l41_l37_l39_DUPLICATE_1f4b_return_output;
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_iftrue := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_top_c_l41_l37_l39_DUPLICATE_1f4b_return_output;
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_iffalse := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_top_c_l41_l37_l39_DUPLICATE_1f4b_return_output;
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_iftrue := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_top_c_l37_l39_DUPLICATE_b225_return_output;
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_iffalse := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_top_c_l37_l39_DUPLICATE_b225_return_output;
     REG_VAR_counter := VAR_counter_MUX_pong_top_c_l33_c3_3639_return_output;
     VAR_out_reg_MUX_pong_top_c_l35_c5_7c1a_iftrue := VAR_out_reg_TRUE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_4a37_pong_top_c_l35_c5_7c1a_return_output;
     VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_iffalse := VAR_out_reg_paddle_l_down_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d_pong_top_c_l37_c11_a7a5_return_output;
     -- out_reg_paddle_r_down_MUX[pong_top_c_l41_c11_0280] LATENCY=0
     -- Inputs
     out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_cond <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_cond;
     out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_iftrue <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_iftrue;
     out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_iffalse <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_iffalse;
     -- Outputs
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_return_output := out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_return_output;

     -- out_reg_paddle_l_down_MUX[pong_top_c_l37_c11_a7a5] LATENCY=0
     -- Inputs
     out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_cond <= VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_cond;
     out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_iftrue <= VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_iftrue;
     out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_iffalse <= VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_iffalse;
     -- Outputs
     VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_return_output := out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_return_output;

     -- out_reg_paddle_r_up_MUX[pong_top_c_l39_c11_1c34] LATENCY=0
     -- Inputs
     out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_cond <= VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_cond;
     out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_iftrue <= VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_iftrue;
     out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_iffalse <= VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_iffalse;
     -- Outputs
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_return_output := out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_return_output;

     -- Submodule level 5
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_iffalse := VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_0280_return_output;
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_iffalse := VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_1c34_return_output;
     -- out_reg_paddle_r_up_MUX[pong_top_c_l37_c11_a7a5] LATENCY=0
     -- Inputs
     out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_cond <= VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_cond;
     out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_iftrue <= VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_iftrue;
     out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_iffalse <= VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_iffalse;
     -- Outputs
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_return_output := out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_return_output;

     -- out_reg_paddle_r_down_MUX[pong_top_c_l39_c11_1c34] LATENCY=0
     -- Inputs
     out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_cond <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_cond;
     out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_iftrue <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_iftrue;
     out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_iffalse <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_iffalse;
     -- Outputs
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_return_output := out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_return_output;

     -- Submodule level 6
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_iffalse := VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_1c34_return_output;
     -- out_reg_paddle_r_down_MUX[pong_top_c_l37_c11_a7a5] LATENCY=0
     -- Inputs
     out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_cond <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_cond;
     out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_iftrue <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_iftrue;
     out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_iffalse <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_iffalse;
     -- Outputs
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_return_output := out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_return_output;

     -- Submodule level 7
     -- out_reg_FALSE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_90ad[pong_top_c_l35_c5_7c1a] LATENCY=0
     VAR_out_reg_FALSE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_90ad_pong_top_c_l35_c5_7c1a_return_output := CONST_REF_RD_user_input_t_user_input_t_90ad(
     VAR_out_reg_MUX_pong_top_c_l22_c3_fc94_return_output,
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_a7a5_return_output,
     VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_a7a5_return_output,
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_a7a5_return_output);

     -- Submodule level 8
     VAR_out_reg_MUX_pong_top_c_l35_c5_7c1a_iffalse := VAR_out_reg_FALSE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_90ad_pong_top_c_l35_c5_7c1a_return_output;
     -- out_reg_MUX[pong_top_c_l35_c5_7c1a] LATENCY=0
     -- Inputs
     out_reg_MUX_pong_top_c_l35_c5_7c1a_cond <= VAR_out_reg_MUX_pong_top_c_l35_c5_7c1a_cond;
     out_reg_MUX_pong_top_c_l35_c5_7c1a_iftrue <= VAR_out_reg_MUX_pong_top_c_l35_c5_7c1a_iftrue;
     out_reg_MUX_pong_top_c_l35_c5_7c1a_iffalse <= VAR_out_reg_MUX_pong_top_c_l35_c5_7c1a_iffalse;
     -- Outputs
     VAR_out_reg_MUX_pong_top_c_l35_c5_7c1a_return_output := out_reg_MUX_pong_top_c_l35_c5_7c1a_return_output;

     -- Submodule level 9
     VAR_out_reg_MUX_pong_top_c_l33_c3_3639_iftrue := VAR_out_reg_MUX_pong_top_c_l35_c5_7c1a_return_output;
     -- out_reg_MUX[pong_top_c_l33_c3_3639] LATENCY=0
     -- Inputs
     out_reg_MUX_pong_top_c_l33_c3_3639_cond <= VAR_out_reg_MUX_pong_top_c_l33_c3_3639_cond;
     out_reg_MUX_pong_top_c_l33_c3_3639_iftrue <= VAR_out_reg_MUX_pong_top_c_l33_c3_3639_iftrue;
     out_reg_MUX_pong_top_c_l33_c3_3639_iffalse <= VAR_out_reg_MUX_pong_top_c_l33_c3_3639_iffalse;
     -- Outputs
     VAR_out_reg_MUX_pong_top_c_l33_c3_3639_return_output := out_reg_MUX_pong_top_c_l33_c3_3639_return_output;

     -- Submodule level 10
     REG_VAR_out_reg := VAR_out_reg_MUX_pong_top_c_l33_c3_3639_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_out_reg <= REG_VAR_out_reg;
REG_COMB_counter <= REG_VAR_counter;
-- Global wires driven various places in pipeline
if clk_en_internal='1' then
  module_to_global.uart_rx_mac_out_ready <= VAR_uart_rx_mac_out_ready;
else
  module_to_global.uart_rx_mac_out_ready <= to_unsigned(0, 1);
end if;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if clk_en_internal='1' then
     out_reg <= REG_COMB_out_reg;
     counter <= REG_COMB_counter;
 end if;
 end if;
end process;

end arch;
