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
-- BIN_OP_PLUS[pong_top_c_l21_c3_d2b4]
signal BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_left : unsigned(31 downto 0);
signal BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_return_output : unsigned(32 downto 0);

-- BIN_OP_GTE[pong_top_c_l22_c6_f5f7]
signal BIN_OP_GTE_pong_top_c_l22_c6_f5f7_left : unsigned(31 downto 0);
signal BIN_OP_GTE_pong_top_c_l22_c6_f5f7_right : unsigned(31 downto 0);
signal BIN_OP_GTE_pong_top_c_l22_c6_f5f7_return_output : unsigned(0 downto 0);

-- out_reg_MUX[pong_top_c_l22_c3_757c]
signal out_reg_MUX_pong_top_c_l22_c3_757c_cond : unsigned(0 downto 0);
signal out_reg_MUX_pong_top_c_l22_c3_757c_iftrue : user_input_t;
signal out_reg_MUX_pong_top_c_l22_c3_757c_iffalse : user_input_t;
signal out_reg_MUX_pong_top_c_l22_c3_757c_return_output : user_input_t;

-- counter_MUX[pong_top_c_l22_c3_757c]
signal counter_MUX_pong_top_c_l22_c3_757c_cond : unsigned(0 downto 0);
signal counter_MUX_pong_top_c_l22_c3_757c_iftrue : unsigned(31 downto 0);
signal counter_MUX_pong_top_c_l22_c3_757c_iffalse : unsigned(31 downto 0);
signal counter_MUX_pong_top_c_l22_c3_757c_return_output : unsigned(31 downto 0);

-- out_reg_MUX[pong_top_c_l33_c3_5638]
signal out_reg_MUX_pong_top_c_l33_c3_5638_cond : unsigned(0 downto 0);
signal out_reg_MUX_pong_top_c_l33_c3_5638_iftrue : user_input_t;
signal out_reg_MUX_pong_top_c_l33_c3_5638_iffalse : user_input_t;
signal out_reg_MUX_pong_top_c_l33_c3_5638_return_output : user_input_t;

-- counter_MUX[pong_top_c_l33_c3_5638]
signal counter_MUX_pong_top_c_l33_c3_5638_cond : unsigned(0 downto 0);
signal counter_MUX_pong_top_c_l33_c3_5638_iftrue : unsigned(31 downto 0);
signal counter_MUX_pong_top_c_l33_c3_5638_iffalse : unsigned(31 downto 0);
signal counter_MUX_pong_top_c_l33_c3_5638_return_output : unsigned(31 downto 0);

-- BIN_OP_EQ[pong_top_c_l35_c8_7848]
signal BIN_OP_EQ_pong_top_c_l35_c8_7848_left : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l35_c8_7848_right : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l35_c8_7848_return_output : unsigned(0 downto 0);

-- out_reg_MUX[pong_top_c_l35_c5_f216]
signal out_reg_MUX_pong_top_c_l35_c5_f216_cond : unsigned(0 downto 0);
signal out_reg_MUX_pong_top_c_l35_c5_f216_iftrue : user_input_t;
signal out_reg_MUX_pong_top_c_l35_c5_f216_iffalse : user_input_t;
signal out_reg_MUX_pong_top_c_l35_c5_f216_return_output : user_input_t;

-- BIN_OP_EQ[pong_top_c_l37_c14_187b]
signal BIN_OP_EQ_pong_top_c_l37_c14_187b_left : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l37_c14_187b_right : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l37_c14_187b_return_output : unsigned(0 downto 0);

-- out_reg_paddle_r_down_MUX[pong_top_c_l37_c11_4fe7]
signal out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_cond : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_iftrue : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_iffalse : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_return_output : unsigned(0 downto 0);

-- out_reg_paddle_l_down_MUX[pong_top_c_l37_c11_4fe7]
signal out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_cond : unsigned(0 downto 0);
signal out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_iftrue : unsigned(0 downto 0);
signal out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_iffalse : unsigned(0 downto 0);
signal out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_return_output : unsigned(0 downto 0);

-- out_reg_paddle_r_up_MUX[pong_top_c_l37_c11_4fe7]
signal out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_cond : unsigned(0 downto 0);
signal out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_iftrue : unsigned(0 downto 0);
signal out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_iffalse : unsigned(0 downto 0);
signal out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[pong_top_c_l39_c14_2494]
signal BIN_OP_EQ_pong_top_c_l39_c14_2494_left : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l39_c14_2494_right : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l39_c14_2494_return_output : unsigned(0 downto 0);

-- out_reg_paddle_r_down_MUX[pong_top_c_l39_c11_b276]
signal out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_cond : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_iftrue : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_iffalse : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_return_output : unsigned(0 downto 0);

-- out_reg_paddle_r_up_MUX[pong_top_c_l39_c11_b276]
signal out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_cond : unsigned(0 downto 0);
signal out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_iftrue : unsigned(0 downto 0);
signal out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_iffalse : unsigned(0 downto 0);
signal out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[pong_top_c_l41_c14_5a15]
signal BIN_OP_EQ_pong_top_c_l41_c14_5a15_left : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l41_c14_5a15_right : unsigned(7 downto 0);
signal BIN_OP_EQ_pong_top_c_l41_c14_5a15_return_output : unsigned(0 downto 0);

-- out_reg_paddle_r_down_MUX[pong_top_c_l41_c11_d414]
signal out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_cond : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_iftrue : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_iffalse : unsigned(0 downto 0);
signal out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_return_output : unsigned(0 downto 0);

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
-- BIN_OP_PLUS_pong_top_c_l21_c3_d2b4 : 0 clocks latency
BIN_OP_PLUS_pong_top_c_l21_c3_d2b4 : entity work.BIN_OP_PLUS_uint32_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_left,
BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_right,
BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_return_output);

-- BIN_OP_GTE_pong_top_c_l22_c6_f5f7 : 0 clocks latency
BIN_OP_GTE_pong_top_c_l22_c6_f5f7 : entity work.BIN_OP_GTE_uint32_t_uint32_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_pong_top_c_l22_c6_f5f7_left,
BIN_OP_GTE_pong_top_c_l22_c6_f5f7_right,
BIN_OP_GTE_pong_top_c_l22_c6_f5f7_return_output);

-- out_reg_MUX_pong_top_c_l22_c3_757c : 0 clocks latency
out_reg_MUX_pong_top_c_l22_c3_757c : entity work.MUX_uint1_t_user_input_t_user_input_t_0CLK_de264c78 port map (
out_reg_MUX_pong_top_c_l22_c3_757c_cond,
out_reg_MUX_pong_top_c_l22_c3_757c_iftrue,
out_reg_MUX_pong_top_c_l22_c3_757c_iffalse,
out_reg_MUX_pong_top_c_l22_c3_757c_return_output);

-- counter_MUX_pong_top_c_l22_c3_757c : 0 clocks latency
counter_MUX_pong_top_c_l22_c3_757c : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
counter_MUX_pong_top_c_l22_c3_757c_cond,
counter_MUX_pong_top_c_l22_c3_757c_iftrue,
counter_MUX_pong_top_c_l22_c3_757c_iffalse,
counter_MUX_pong_top_c_l22_c3_757c_return_output);

-- out_reg_MUX_pong_top_c_l33_c3_5638 : 0 clocks latency
out_reg_MUX_pong_top_c_l33_c3_5638 : entity work.MUX_uint1_t_user_input_t_user_input_t_0CLK_de264c78 port map (
out_reg_MUX_pong_top_c_l33_c3_5638_cond,
out_reg_MUX_pong_top_c_l33_c3_5638_iftrue,
out_reg_MUX_pong_top_c_l33_c3_5638_iffalse,
out_reg_MUX_pong_top_c_l33_c3_5638_return_output);

-- counter_MUX_pong_top_c_l33_c3_5638 : 0 clocks latency
counter_MUX_pong_top_c_l33_c3_5638 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
counter_MUX_pong_top_c_l33_c3_5638_cond,
counter_MUX_pong_top_c_l33_c3_5638_iftrue,
counter_MUX_pong_top_c_l33_c3_5638_iffalse,
counter_MUX_pong_top_c_l33_c3_5638_return_output);

-- BIN_OP_EQ_pong_top_c_l35_c8_7848 : 0 clocks latency
BIN_OP_EQ_pong_top_c_l35_c8_7848 : entity work.BIN_OP_EQ_uint8_t_uint8_t_0CLK_de264c78 port map (
BIN_OP_EQ_pong_top_c_l35_c8_7848_left,
BIN_OP_EQ_pong_top_c_l35_c8_7848_right,
BIN_OP_EQ_pong_top_c_l35_c8_7848_return_output);

-- out_reg_MUX_pong_top_c_l35_c5_f216 : 0 clocks latency
out_reg_MUX_pong_top_c_l35_c5_f216 : entity work.MUX_uint1_t_user_input_t_user_input_t_0CLK_de264c78 port map (
out_reg_MUX_pong_top_c_l35_c5_f216_cond,
out_reg_MUX_pong_top_c_l35_c5_f216_iftrue,
out_reg_MUX_pong_top_c_l35_c5_f216_iffalse,
out_reg_MUX_pong_top_c_l35_c5_f216_return_output);

-- BIN_OP_EQ_pong_top_c_l37_c14_187b : 0 clocks latency
BIN_OP_EQ_pong_top_c_l37_c14_187b : entity work.BIN_OP_EQ_uint8_t_uint8_t_0CLK_de264c78 port map (
BIN_OP_EQ_pong_top_c_l37_c14_187b_left,
BIN_OP_EQ_pong_top_c_l37_c14_187b_right,
BIN_OP_EQ_pong_top_c_l37_c14_187b_return_output);

-- out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7 : 0 clocks latency
out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_cond,
out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_iftrue,
out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_iffalse,
out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_return_output);

-- out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7 : 0 clocks latency
out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_cond,
out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_iftrue,
out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_iffalse,
out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_return_output);

-- out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7 : 0 clocks latency
out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_cond,
out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_iftrue,
out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_iffalse,
out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_return_output);

-- BIN_OP_EQ_pong_top_c_l39_c14_2494 : 0 clocks latency
BIN_OP_EQ_pong_top_c_l39_c14_2494 : entity work.BIN_OP_EQ_uint8_t_uint8_t_0CLK_de264c78 port map (
BIN_OP_EQ_pong_top_c_l39_c14_2494_left,
BIN_OP_EQ_pong_top_c_l39_c14_2494_right,
BIN_OP_EQ_pong_top_c_l39_c14_2494_return_output);

-- out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276 : 0 clocks latency
out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_cond,
out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_iftrue,
out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_iffalse,
out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_return_output);

-- out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276 : 0 clocks latency
out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_cond,
out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_iftrue,
out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_iffalse,
out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_return_output);

-- BIN_OP_EQ_pong_top_c_l41_c14_5a15 : 0 clocks latency
BIN_OP_EQ_pong_top_c_l41_c14_5a15 : entity work.BIN_OP_EQ_uint8_t_uint8_t_0CLK_de264c78 port map (
BIN_OP_EQ_pong_top_c_l41_c14_5a15_left,
BIN_OP_EQ_pong_top_c_l41_c14_5a15_right,
BIN_OP_EQ_pong_top_c_l41_c14_5a15_return_output);

-- out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414 : 0 clocks latency
out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_cond,
out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_iftrue,
out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_iffalse,
out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_return_output);



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
 BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_return_output,
 BIN_OP_GTE_pong_top_c_l22_c6_f5f7_return_output,
 out_reg_MUX_pong_top_c_l22_c3_757c_return_output,
 counter_MUX_pong_top_c_l22_c3_757c_return_output,
 out_reg_MUX_pong_top_c_l33_c3_5638_return_output,
 counter_MUX_pong_top_c_l33_c3_5638_return_output,
 BIN_OP_EQ_pong_top_c_l35_c8_7848_return_output,
 out_reg_MUX_pong_top_c_l35_c5_f216_return_output,
 BIN_OP_EQ_pong_top_c_l37_c14_187b_return_output,
 out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_return_output,
 out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_return_output,
 out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_return_output,
 BIN_OP_EQ_pong_top_c_l39_c14_2494_return_output,
 out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_return_output,
 out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_return_output,
 BIN_OP_EQ_pong_top_c_l41_c14_5a15_return_output,
 out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : user_input_t;
 variable VAR_uart_rx_mac_out_ready : unsigned(0 downto 0);
 variable VAR_uart_rx_mac_word_out : uint8_t_stream_t;
 variable VAR_o : user_input_t;
 variable VAR_ONE_SEC : unsigned(31 downto 0);
 variable VAR_counter_pong_top_c_l21_c3_a97c : unsigned(31 downto 0);
 variable VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_return_output : unsigned(32 downto 0);
 variable VAR_BIN_OP_GTE_pong_top_c_l22_c6_f5f7_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_GTE_pong_top_c_l22_c6_f5f7_right : unsigned(31 downto 0);
 variable VAR_BIN_OP_GTE_pong_top_c_l22_c6_f5f7_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_MUX_pong_top_c_l22_c3_757c_iftrue : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l22_c3_757c_iffalse : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l22_c3_757c_return_output : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l22_c3_757c_cond : unsigned(0 downto 0);
 variable VAR_counter_MUX_pong_top_c_l22_c3_757c_iftrue : unsigned(31 downto 0);
 variable VAR_counter_pong_top_c_l25_c5_5242 : unsigned(31 downto 0);
 variable VAR_counter_MUX_pong_top_c_l22_c3_757c_iffalse : unsigned(31 downto 0);
 variable VAR_counter_MUX_pong_top_c_l22_c3_757c_return_output : unsigned(31 downto 0);
 variable VAR_counter_MUX_pong_top_c_l22_c3_757c_cond : unsigned(0 downto 0);
 variable VAR_user_input_t_NULL : user_input_t;
 variable VAR_CONST_REF_RD_uint1_t_uint8_t_stream_t_valid_d41d_pong_top_c_l33_c6_3cef_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_MUX_pong_top_c_l33_c3_5638_iftrue : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l35_c5_f216_return_output : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l33_c3_5638_iffalse : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l33_c3_5638_return_output : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l33_c3_5638_cond : unsigned(0 downto 0);
 variable VAR_counter_MUX_pong_top_c_l33_c3_5638_iftrue : unsigned(31 downto 0);
 variable VAR_counter_pong_top_c_l44_c5_caad : unsigned(31 downto 0);
 variable VAR_counter_MUX_pong_top_c_l33_c3_5638_iffalse : unsigned(31 downto 0);
 variable VAR_counter_MUX_pong_top_c_l33_c3_5638_return_output : unsigned(31 downto 0);
 variable VAR_counter_MUX_pong_top_c_l33_c3_5638_cond : unsigned(0 downto 0);
 variable VAR_c : unsigned(7 downto 0);
 variable VAR_c_pong_top_c_l34_c10_e626_0 : unsigned(7 downto 0);
 variable VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_pong_top_c_l34_c14_19c7_return_output : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l35_c8_7848_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l35_c8_7848_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l35_c8_7848_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_MUX_pong_top_c_l35_c5_f216_iftrue : user_input_t;
 variable VAR_out_reg_TRUE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_4a37_pong_top_c_l35_c5_f216_return_output : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l35_c5_f216_iffalse : user_input_t;
 variable VAR_out_reg_FALSE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_90ad_pong_top_c_l35_c5_f216_return_output : user_input_t;
 variable VAR_out_reg_MUX_pong_top_c_l35_c5_f216_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l37_c14_187b_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l37_c14_187b_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l37_c14_187b_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_iftrue : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_iffalse : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_cond : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_iftrue : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_iffalse : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_l_down_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d_pong_top_c_l37_c11_4fe7_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_cond : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_iftrue : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_iffalse : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l39_c14_2494_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l39_c14_2494_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l39_c14_2494_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_iftrue : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_iffalse : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_cond : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_iftrue : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_iffalse : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l41_c14_5a15_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l41_c14_5a15_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_pong_top_c_l41_c14_5a15_return_output : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_iftrue : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_iffalse : unsigned(0 downto 0);
 variable VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_top_c_l41_l37_l39_DUPLICATE_50f9_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_top_c_l37_l39_DUPLICATE_5a9b_return_output : unsigned(0 downto 0);
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
     VAR_counter_pong_top_c_l25_c5_5242 := resize(to_unsigned(0, 1), 32);
     VAR_counter_MUX_pong_top_c_l22_c3_757c_iftrue := VAR_counter_pong_top_c_l25_c5_5242;
     VAR_counter_pong_top_c_l44_c5_caad := resize(to_unsigned(0, 1), 32);
     VAR_counter_MUX_pong_top_c_l33_c3_5638_iftrue := VAR_counter_pong_top_c_l44_c5_caad;
     VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_pong_top_c_l39_c14_2494_right := to_unsigned(105, 8);
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_iftrue := to_unsigned(1, 1);
     VAR_out_reg_MUX_pong_top_c_l22_c3_757c_iftrue := user_input_t_NULL;
     VAR_BIN_OP_EQ_pong_top_c_l35_c8_7848_right := to_unsigned(119, 8);
     VAR_BIN_OP_EQ_pong_top_c_l37_c14_187b_right := to_unsigned(115, 8);
     VAR_BIN_OP_EQ_pong_top_c_l41_c14_5a15_right := to_unsigned(107, 8);
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_iftrue := to_unsigned(1, 1);
     VAR_uart_rx_mac_out_ready := to_unsigned(1, 1);
     VAR_BIN_OP_GTE_pong_top_c_l22_c6_f5f7_right := to_unsigned(6250000, 32);
     VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_right := to_unsigned(1, 1);
 -- Reads from global variables
     VAR_uart_rx_mac_word_out := global_to_module.uart_rx_mac_word_out;
     -- Submodule level 0
     -- CONST_REF_RD_uint1_t_uint8_t_stream_t_valid_d41d[pong_top_c_l33_c6_3cef] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint8_t_stream_t_valid_d41d_pong_top_c_l33_c6_3cef_return_output := VAR_uart_rx_mac_word_out.valid;

     -- CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d[pong_top_c_l34_c14_19c7] LATENCY=0
     VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_pong_top_c_l34_c14_19c7_return_output := VAR_uart_rx_mac_word_out.data;

     -- Submodule level 1
     VAR_c_pong_top_c_l34_c10_e626_0 := VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_pong_top_c_l34_c14_19c7_return_output;
     VAR_BIN_OP_EQ_pong_top_c_l35_c8_7848_left := VAR_c_pong_top_c_l34_c10_e626_0;
     VAR_BIN_OP_EQ_pong_top_c_l39_c14_2494_left := VAR_c_pong_top_c_l34_c10_e626_0;
     VAR_BIN_OP_EQ_pong_top_c_l37_c14_187b_left := VAR_c_pong_top_c_l34_c10_e626_0;
     VAR_BIN_OP_EQ_pong_top_c_l41_c14_5a15_left := VAR_c_pong_top_c_l34_c10_e626_0;
     VAR_counter_MUX_pong_top_c_l33_c3_5638_cond := VAR_CONST_REF_RD_uint1_t_uint8_t_stream_t_valid_d41d_pong_top_c_l33_c6_3cef_return_output;
     VAR_out_reg_MUX_pong_top_c_l33_c3_5638_cond := VAR_CONST_REF_RD_uint1_t_uint8_t_stream_t_valid_d41d_pong_top_c_l33_c6_3cef_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

     -- Submodule level 0
     VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_left := counter;
     VAR_out_reg_MUX_pong_top_c_l22_c3_757c_iffalse := out_reg;
     VAR_return_output := out_reg;
     -- BIN_OP_EQ[pong_top_c_l39_c14_2494] LATENCY=0
     -- Inputs
     BIN_OP_EQ_pong_top_c_l39_c14_2494_left <= VAR_BIN_OP_EQ_pong_top_c_l39_c14_2494_left;
     BIN_OP_EQ_pong_top_c_l39_c14_2494_right <= VAR_BIN_OP_EQ_pong_top_c_l39_c14_2494_right;
     -- Outputs
     VAR_BIN_OP_EQ_pong_top_c_l39_c14_2494_return_output := BIN_OP_EQ_pong_top_c_l39_c14_2494_return_output;

     -- BIN_OP_PLUS[pong_top_c_l21_c3_d2b4] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_left <= VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_left;
     BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_right <= VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_right;
     -- Outputs
     VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_return_output := BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_return_output;

     -- BIN_OP_EQ[pong_top_c_l37_c14_187b] LATENCY=0
     -- Inputs
     BIN_OP_EQ_pong_top_c_l37_c14_187b_left <= VAR_BIN_OP_EQ_pong_top_c_l37_c14_187b_left;
     BIN_OP_EQ_pong_top_c_l37_c14_187b_right <= VAR_BIN_OP_EQ_pong_top_c_l37_c14_187b_right;
     -- Outputs
     VAR_BIN_OP_EQ_pong_top_c_l37_c14_187b_return_output := BIN_OP_EQ_pong_top_c_l37_c14_187b_return_output;

     -- BIN_OP_EQ[pong_top_c_l41_c14_5a15] LATENCY=0
     -- Inputs
     BIN_OP_EQ_pong_top_c_l41_c14_5a15_left <= VAR_BIN_OP_EQ_pong_top_c_l41_c14_5a15_left;
     BIN_OP_EQ_pong_top_c_l41_c14_5a15_right <= VAR_BIN_OP_EQ_pong_top_c_l41_c14_5a15_right;
     -- Outputs
     VAR_BIN_OP_EQ_pong_top_c_l41_c14_5a15_return_output := BIN_OP_EQ_pong_top_c_l41_c14_5a15_return_output;

     -- BIN_OP_EQ[pong_top_c_l35_c8_7848] LATENCY=0
     -- Inputs
     BIN_OP_EQ_pong_top_c_l35_c8_7848_left <= VAR_BIN_OP_EQ_pong_top_c_l35_c8_7848_left;
     BIN_OP_EQ_pong_top_c_l35_c8_7848_right <= VAR_BIN_OP_EQ_pong_top_c_l35_c8_7848_right;
     -- Outputs
     VAR_BIN_OP_EQ_pong_top_c_l35_c8_7848_return_output := BIN_OP_EQ_pong_top_c_l35_c8_7848_return_output;

     -- Submodule level 1
     VAR_out_reg_MUX_pong_top_c_l35_c5_f216_cond := VAR_BIN_OP_EQ_pong_top_c_l35_c8_7848_return_output;
     VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_cond := VAR_BIN_OP_EQ_pong_top_c_l37_c14_187b_return_output;
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_cond := VAR_BIN_OP_EQ_pong_top_c_l37_c14_187b_return_output;
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_cond := VAR_BIN_OP_EQ_pong_top_c_l37_c14_187b_return_output;
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_cond := VAR_BIN_OP_EQ_pong_top_c_l39_c14_2494_return_output;
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_cond := VAR_BIN_OP_EQ_pong_top_c_l39_c14_2494_return_output;
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_cond := VAR_BIN_OP_EQ_pong_top_c_l41_c14_5a15_return_output;
     VAR_counter_pong_top_c_l21_c3_a97c := resize(VAR_BIN_OP_PLUS_pong_top_c_l21_c3_d2b4_return_output, 32);
     VAR_BIN_OP_GTE_pong_top_c_l22_c6_f5f7_left := VAR_counter_pong_top_c_l21_c3_a97c;
     VAR_counter_MUX_pong_top_c_l22_c3_757c_iffalse := VAR_counter_pong_top_c_l21_c3_a97c;
     -- BIN_OP_GTE[pong_top_c_l22_c6_f5f7] LATENCY=0
     -- Inputs
     BIN_OP_GTE_pong_top_c_l22_c6_f5f7_left <= VAR_BIN_OP_GTE_pong_top_c_l22_c6_f5f7_left;
     BIN_OP_GTE_pong_top_c_l22_c6_f5f7_right <= VAR_BIN_OP_GTE_pong_top_c_l22_c6_f5f7_right;
     -- Outputs
     VAR_BIN_OP_GTE_pong_top_c_l22_c6_f5f7_return_output := BIN_OP_GTE_pong_top_c_l22_c6_f5f7_return_output;

     -- Submodule level 2
     VAR_counter_MUX_pong_top_c_l22_c3_757c_cond := VAR_BIN_OP_GTE_pong_top_c_l22_c6_f5f7_return_output;
     VAR_out_reg_MUX_pong_top_c_l22_c3_757c_cond := VAR_BIN_OP_GTE_pong_top_c_l22_c6_f5f7_return_output;
     -- counter_MUX[pong_top_c_l22_c3_757c] LATENCY=0
     -- Inputs
     counter_MUX_pong_top_c_l22_c3_757c_cond <= VAR_counter_MUX_pong_top_c_l22_c3_757c_cond;
     counter_MUX_pong_top_c_l22_c3_757c_iftrue <= VAR_counter_MUX_pong_top_c_l22_c3_757c_iftrue;
     counter_MUX_pong_top_c_l22_c3_757c_iffalse <= VAR_counter_MUX_pong_top_c_l22_c3_757c_iffalse;
     -- Outputs
     VAR_counter_MUX_pong_top_c_l22_c3_757c_return_output := counter_MUX_pong_top_c_l22_c3_757c_return_output;

     -- out_reg_MUX[pong_top_c_l22_c3_757c] LATENCY=0
     -- Inputs
     out_reg_MUX_pong_top_c_l22_c3_757c_cond <= VAR_out_reg_MUX_pong_top_c_l22_c3_757c_cond;
     out_reg_MUX_pong_top_c_l22_c3_757c_iftrue <= VAR_out_reg_MUX_pong_top_c_l22_c3_757c_iftrue;
     out_reg_MUX_pong_top_c_l22_c3_757c_iffalse <= VAR_out_reg_MUX_pong_top_c_l22_c3_757c_iffalse;
     -- Outputs
     VAR_out_reg_MUX_pong_top_c_l22_c3_757c_return_output := out_reg_MUX_pong_top_c_l22_c3_757c_return_output;

     -- Submodule level 3
     VAR_counter_MUX_pong_top_c_l33_c3_5638_iffalse := VAR_counter_MUX_pong_top_c_l22_c3_757c_return_output;
     VAR_out_reg_MUX_pong_top_c_l33_c3_5638_iffalse := VAR_out_reg_MUX_pong_top_c_l22_c3_757c_return_output;
     -- out_reg_TRUE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_4a37[pong_top_c_l35_c5_f216] LATENCY=0
     VAR_out_reg_TRUE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_4a37_pong_top_c_l35_c5_f216_return_output := CONST_REF_RD_user_input_t_user_input_t_4a37(
     VAR_out_reg_MUX_pong_top_c_l22_c3_757c_return_output,
     to_unsigned(1, 1));

     -- out_reg_paddle_l_down_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d[pong_top_c_l37_c11_4fe7] LATENCY=0
     VAR_out_reg_paddle_l_down_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d_pong_top_c_l37_c11_4fe7_return_output := VAR_out_reg_MUX_pong_top_c_l22_c3_757c_return_output.paddle_l_down;

     -- counter_MUX[pong_top_c_l33_c3_5638] LATENCY=0
     -- Inputs
     counter_MUX_pong_top_c_l33_c3_5638_cond <= VAR_counter_MUX_pong_top_c_l33_c3_5638_cond;
     counter_MUX_pong_top_c_l33_c3_5638_iftrue <= VAR_counter_MUX_pong_top_c_l33_c3_5638_iftrue;
     counter_MUX_pong_top_c_l33_c3_5638_iffalse <= VAR_counter_MUX_pong_top_c_l33_c3_5638_iffalse;
     -- Outputs
     VAR_counter_MUX_pong_top_c_l33_c3_5638_return_output := counter_MUX_pong_top_c_l33_c3_5638_return_output;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_top_c_l41_l37_l39_DUPLICATE_50f9 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_top_c_l41_l37_l39_DUPLICATE_50f9_return_output := VAR_out_reg_MUX_pong_top_c_l22_c3_757c_return_output.paddle_r_down;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_top_c_l37_l39_DUPLICATE_5a9b LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_top_c_l37_l39_DUPLICATE_5a9b_return_output := VAR_out_reg_MUX_pong_top_c_l22_c3_757c_return_output.paddle_r_up;

     -- Submodule level 4
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_iftrue := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_top_c_l41_l37_l39_DUPLICATE_50f9_return_output;
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_iftrue := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_top_c_l41_l37_l39_DUPLICATE_50f9_return_output;
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_iffalse := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_top_c_l41_l37_l39_DUPLICATE_50f9_return_output;
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_iftrue := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_top_c_l37_l39_DUPLICATE_5a9b_return_output;
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_iffalse := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_top_c_l37_l39_DUPLICATE_5a9b_return_output;
     REG_VAR_counter := VAR_counter_MUX_pong_top_c_l33_c3_5638_return_output;
     VAR_out_reg_MUX_pong_top_c_l35_c5_f216_iftrue := VAR_out_reg_TRUE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_4a37_pong_top_c_l35_c5_f216_return_output;
     VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_iffalse := VAR_out_reg_paddle_l_down_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d_pong_top_c_l37_c11_4fe7_return_output;
     -- out_reg_paddle_r_down_MUX[pong_top_c_l41_c11_d414] LATENCY=0
     -- Inputs
     out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_cond <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_cond;
     out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_iftrue <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_iftrue;
     out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_iffalse <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_iffalse;
     -- Outputs
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_return_output := out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_return_output;

     -- out_reg_paddle_r_up_MUX[pong_top_c_l39_c11_b276] LATENCY=0
     -- Inputs
     out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_cond <= VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_cond;
     out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_iftrue <= VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_iftrue;
     out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_iffalse <= VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_iffalse;
     -- Outputs
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_return_output := out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_return_output;

     -- out_reg_paddle_l_down_MUX[pong_top_c_l37_c11_4fe7] LATENCY=0
     -- Inputs
     out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_cond <= VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_cond;
     out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_iftrue <= VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_iftrue;
     out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_iffalse <= VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_iffalse;
     -- Outputs
     VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_return_output := out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_return_output;

     -- Submodule level 5
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_iffalse := VAR_out_reg_paddle_r_down_MUX_pong_top_c_l41_c11_d414_return_output;
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_iffalse := VAR_out_reg_paddle_r_up_MUX_pong_top_c_l39_c11_b276_return_output;
     -- out_reg_paddle_r_down_MUX[pong_top_c_l39_c11_b276] LATENCY=0
     -- Inputs
     out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_cond <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_cond;
     out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_iftrue <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_iftrue;
     out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_iffalse <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_iffalse;
     -- Outputs
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_return_output := out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_return_output;

     -- out_reg_paddle_r_up_MUX[pong_top_c_l37_c11_4fe7] LATENCY=0
     -- Inputs
     out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_cond <= VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_cond;
     out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_iftrue <= VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_iftrue;
     out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_iffalse <= VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_iffalse;
     -- Outputs
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_return_output := out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_return_output;

     -- Submodule level 6
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_iffalse := VAR_out_reg_paddle_r_down_MUX_pong_top_c_l39_c11_b276_return_output;
     -- out_reg_paddle_r_down_MUX[pong_top_c_l37_c11_4fe7] LATENCY=0
     -- Inputs
     out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_cond <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_cond;
     out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_iftrue <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_iftrue;
     out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_iffalse <= VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_iffalse;
     -- Outputs
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_return_output := out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_return_output;

     -- Submodule level 7
     -- out_reg_FALSE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_90ad[pong_top_c_l35_c5_f216] LATENCY=0
     VAR_out_reg_FALSE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_90ad_pong_top_c_l35_c5_f216_return_output := CONST_REF_RD_user_input_t_user_input_t_90ad(
     VAR_out_reg_MUX_pong_top_c_l22_c3_757c_return_output,
     VAR_out_reg_paddle_r_down_MUX_pong_top_c_l37_c11_4fe7_return_output,
     VAR_out_reg_paddle_l_down_MUX_pong_top_c_l37_c11_4fe7_return_output,
     VAR_out_reg_paddle_r_up_MUX_pong_top_c_l37_c11_4fe7_return_output);

     -- Submodule level 8
     VAR_out_reg_MUX_pong_top_c_l35_c5_f216_iffalse := VAR_out_reg_FALSE_INPUT_MUX_CONST_REF_RD_user_input_t_user_input_t_90ad_pong_top_c_l35_c5_f216_return_output;
     -- out_reg_MUX[pong_top_c_l35_c5_f216] LATENCY=0
     -- Inputs
     out_reg_MUX_pong_top_c_l35_c5_f216_cond <= VAR_out_reg_MUX_pong_top_c_l35_c5_f216_cond;
     out_reg_MUX_pong_top_c_l35_c5_f216_iftrue <= VAR_out_reg_MUX_pong_top_c_l35_c5_f216_iftrue;
     out_reg_MUX_pong_top_c_l35_c5_f216_iffalse <= VAR_out_reg_MUX_pong_top_c_l35_c5_f216_iffalse;
     -- Outputs
     VAR_out_reg_MUX_pong_top_c_l35_c5_f216_return_output := out_reg_MUX_pong_top_c_l35_c5_f216_return_output;

     -- Submodule level 9
     VAR_out_reg_MUX_pong_top_c_l33_c3_5638_iftrue := VAR_out_reg_MUX_pong_top_c_l35_c5_f216_return_output;
     -- out_reg_MUX[pong_top_c_l33_c3_5638] LATENCY=0
     -- Inputs
     out_reg_MUX_pong_top_c_l33_c3_5638_cond <= VAR_out_reg_MUX_pong_top_c_l33_c3_5638_cond;
     out_reg_MUX_pong_top_c_l33_c3_5638_iftrue <= VAR_out_reg_MUX_pong_top_c_l33_c3_5638_iftrue;
     out_reg_MUX_pong_top_c_l33_c3_5638_iffalse <= VAR_out_reg_MUX_pong_top_c_l33_c3_5638_iffalse;
     -- Outputs
     VAR_out_reg_MUX_pong_top_c_l33_c3_5638_return_output := out_reg_MUX_pong_top_c_l33_c3_5638_return_output;

     -- Submodule level 10
     REG_VAR_out_reg := VAR_out_reg_MUX_pong_top_c_l33_c3_5638_return_output;
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
