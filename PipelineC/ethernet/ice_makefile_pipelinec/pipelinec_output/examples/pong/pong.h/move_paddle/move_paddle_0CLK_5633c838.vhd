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
-- Submodules: 14
entity move_paddle_0CLK_5633c838 is
port(
 pos : in vga_pos_t;
 paddle_up : in unsigned(0 downto 0);
 paddle_down : in unsigned(0 downto 0);
 return_output : out vga_pos_t);
end move_paddle_0CLK_5633c838;
architecture arch of move_paddle_0CLK_5633c838 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- UNARY_OP_NOT[pong_h_l134_c19_ded9]
signal UNARY_OP_NOT_pong_h_l134_c19_ded9_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_pong_h_l134_c19_ded9_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[pong_h_l134_c6_f497]
signal BIN_OP_AND_pong_h_l134_c6_f497_left : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l134_c6_f497_right : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l134_c6_f497_return_output : unsigned(0 downto 0);

-- pos_y_MUX[pong_h_l134_c3_d499]
signal pos_y_MUX_pong_h_l134_c3_d499_cond : unsigned(0 downto 0);
signal pos_y_MUX_pong_h_l134_c3_d499_iftrue : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l134_c3_d499_iffalse : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l134_c3_d499_return_output : unsigned(11 downto 0);

-- BIN_OP_GTE[pong_h_l136_c8_712d]
signal BIN_OP_GTE_pong_h_l136_c8_712d_left : unsigned(11 downto 0);
signal BIN_OP_GTE_pong_h_l136_c8_712d_right : unsigned(1 downto 0);
signal BIN_OP_GTE_pong_h_l136_c8_712d_return_output : unsigned(0 downto 0);

-- pos_y_MUX[pong_h_l136_c5_efa8]
signal pos_y_MUX_pong_h_l136_c5_efa8_cond : unsigned(0 downto 0);
signal pos_y_MUX_pong_h_l136_c5_efa8_iftrue : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l136_c5_efa8_iffalse : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l136_c5_efa8_return_output : unsigned(11 downto 0);

-- BIN_OP_MINUS[pong_h_l138_c7_7d9f]
signal BIN_OP_MINUS_pong_h_l138_c7_7d9f_left : unsigned(11 downto 0);
signal BIN_OP_MINUS_pong_h_l138_c7_7d9f_right : unsigned(1 downto 0);
signal BIN_OP_MINUS_pong_h_l138_c7_7d9f_return_output : unsigned(11 downto 0);

-- UNARY_OP_NOT[pong_h_l141_c26_cdc5]
signal UNARY_OP_NOT_pong_h_l141_c26_cdc5_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_pong_h_l141_c26_cdc5_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[pong_h_l141_c11_2d30]
signal BIN_OP_AND_pong_h_l141_c11_2d30_left : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l141_c11_2d30_right : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l141_c11_2d30_return_output : unsigned(0 downto 0);

-- pos_y_MUX[pong_h_l141_c8_dd86]
signal pos_y_MUX_pong_h_l141_c8_dd86_cond : unsigned(0 downto 0);
signal pos_y_MUX_pong_h_l141_c8_dd86_iftrue : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l141_c8_dd86_iffalse : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l141_c8_dd86_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[pong_h_l143_c9_be88]
signal BIN_OP_PLUS_pong_h_l143_c9_be88_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_pong_h_l143_c9_be88_right : unsigned(1 downto 0);
signal BIN_OP_PLUS_pong_h_l143_c9_be88_return_output : unsigned(12 downto 0);

-- BIN_OP_LTE[pong_h_l143_c9_c7f6]
signal BIN_OP_LTE_pong_h_l143_c9_c7f6_left : unsigned(12 downto 0);
signal BIN_OP_LTE_pong_h_l143_c9_c7f6_right : unsigned(8 downto 0);
signal BIN_OP_LTE_pong_h_l143_c9_c7f6_return_output : unsigned(0 downto 0);

-- pos_y_MUX[pong_h_l143_c5_909c]
signal pos_y_MUX_pong_h_l143_c5_909c_cond : unsigned(0 downto 0);
signal pos_y_MUX_pong_h_l143_c5_909c_iftrue : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l143_c5_909c_iffalse : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l143_c5_909c_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[pong_h_l145_c7_9868]
signal BIN_OP_PLUS_pong_h_l145_c7_9868_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_pong_h_l145_c7_9868_right : unsigned(1 downto 0);
signal BIN_OP_PLUS_pong_h_l145_c7_9868_return_output : unsigned(12 downto 0);

function CONST_REF_RD_vga_pos_t_vga_pos_t_a17f( ref_toks_0 : vga_pos_t;
 ref_toks_1 : unsigned) return vga_pos_t is
 
  variable base : vga_pos_t; 
  variable return_output : vga_pos_t;
begin
      base := ref_toks_0;
      base.y := ref_toks_1;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- UNARY_OP_NOT_pong_h_l134_c19_ded9 : 0 clocks latency
UNARY_OP_NOT_pong_h_l134_c19_ded9 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_pong_h_l134_c19_ded9_expr,
UNARY_OP_NOT_pong_h_l134_c19_ded9_return_output);

-- BIN_OP_AND_pong_h_l134_c6_f497 : 0 clocks latency
BIN_OP_AND_pong_h_l134_c6_f497 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_pong_h_l134_c6_f497_left,
BIN_OP_AND_pong_h_l134_c6_f497_right,
BIN_OP_AND_pong_h_l134_c6_f497_return_output);

-- pos_y_MUX_pong_h_l134_c3_d499 : 0 clocks latency
pos_y_MUX_pong_h_l134_c3_d499 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
pos_y_MUX_pong_h_l134_c3_d499_cond,
pos_y_MUX_pong_h_l134_c3_d499_iftrue,
pos_y_MUX_pong_h_l134_c3_d499_iffalse,
pos_y_MUX_pong_h_l134_c3_d499_return_output);

-- BIN_OP_GTE_pong_h_l136_c8_712d : 0 clocks latency
BIN_OP_GTE_pong_h_l136_c8_712d : entity work.BIN_OP_GTE_uint12_t_uint2_t_0CLK_e595f783 port map (
BIN_OP_GTE_pong_h_l136_c8_712d_left,
BIN_OP_GTE_pong_h_l136_c8_712d_right,
BIN_OP_GTE_pong_h_l136_c8_712d_return_output);

-- pos_y_MUX_pong_h_l136_c5_efa8 : 0 clocks latency
pos_y_MUX_pong_h_l136_c5_efa8 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
pos_y_MUX_pong_h_l136_c5_efa8_cond,
pos_y_MUX_pong_h_l136_c5_efa8_iftrue,
pos_y_MUX_pong_h_l136_c5_efa8_iffalse,
pos_y_MUX_pong_h_l136_c5_efa8_return_output);

-- BIN_OP_MINUS_pong_h_l138_c7_7d9f : 0 clocks latency
BIN_OP_MINUS_pong_h_l138_c7_7d9f : entity work.BIN_OP_MINUS_uint12_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_MINUS_pong_h_l138_c7_7d9f_left,
BIN_OP_MINUS_pong_h_l138_c7_7d9f_right,
BIN_OP_MINUS_pong_h_l138_c7_7d9f_return_output);

-- UNARY_OP_NOT_pong_h_l141_c26_cdc5 : 0 clocks latency
UNARY_OP_NOT_pong_h_l141_c26_cdc5 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_pong_h_l141_c26_cdc5_expr,
UNARY_OP_NOT_pong_h_l141_c26_cdc5_return_output);

-- BIN_OP_AND_pong_h_l141_c11_2d30 : 0 clocks latency
BIN_OP_AND_pong_h_l141_c11_2d30 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_pong_h_l141_c11_2d30_left,
BIN_OP_AND_pong_h_l141_c11_2d30_right,
BIN_OP_AND_pong_h_l141_c11_2d30_return_output);

-- pos_y_MUX_pong_h_l141_c8_dd86 : 0 clocks latency
pos_y_MUX_pong_h_l141_c8_dd86 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
pos_y_MUX_pong_h_l141_c8_dd86_cond,
pos_y_MUX_pong_h_l141_c8_dd86_iftrue,
pos_y_MUX_pong_h_l141_c8_dd86_iffalse,
pos_y_MUX_pong_h_l141_c8_dd86_return_output);

-- BIN_OP_PLUS_pong_h_l143_c9_be88 : 0 clocks latency
BIN_OP_PLUS_pong_h_l143_c9_be88 : entity work.BIN_OP_PLUS_uint12_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_PLUS_pong_h_l143_c9_be88_left,
BIN_OP_PLUS_pong_h_l143_c9_be88_right,
BIN_OP_PLUS_pong_h_l143_c9_be88_return_output);

-- BIN_OP_LTE_pong_h_l143_c9_c7f6 : 0 clocks latency
BIN_OP_LTE_pong_h_l143_c9_c7f6 : entity work.BIN_OP_LTE_uint13_t_uint9_t_0CLK_e595f783 port map (
BIN_OP_LTE_pong_h_l143_c9_c7f6_left,
BIN_OP_LTE_pong_h_l143_c9_c7f6_right,
BIN_OP_LTE_pong_h_l143_c9_c7f6_return_output);

-- pos_y_MUX_pong_h_l143_c5_909c : 0 clocks latency
pos_y_MUX_pong_h_l143_c5_909c : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
pos_y_MUX_pong_h_l143_c5_909c_cond,
pos_y_MUX_pong_h_l143_c5_909c_iftrue,
pos_y_MUX_pong_h_l143_c5_909c_iffalse,
pos_y_MUX_pong_h_l143_c5_909c_return_output);

-- BIN_OP_PLUS_pong_h_l145_c7_9868 : 0 clocks latency
BIN_OP_PLUS_pong_h_l145_c7_9868 : entity work.BIN_OP_PLUS_uint12_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_PLUS_pong_h_l145_c7_9868_left,
BIN_OP_PLUS_pong_h_l145_c7_9868_right,
BIN_OP_PLUS_pong_h_l145_c7_9868_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 pos,
 paddle_up,
 paddle_down,
 -- All submodule outputs
 UNARY_OP_NOT_pong_h_l134_c19_ded9_return_output,
 BIN_OP_AND_pong_h_l134_c6_f497_return_output,
 pos_y_MUX_pong_h_l134_c3_d499_return_output,
 BIN_OP_GTE_pong_h_l136_c8_712d_return_output,
 pos_y_MUX_pong_h_l136_c5_efa8_return_output,
 BIN_OP_MINUS_pong_h_l138_c7_7d9f_return_output,
 UNARY_OP_NOT_pong_h_l141_c26_cdc5_return_output,
 BIN_OP_AND_pong_h_l141_c11_2d30_return_output,
 pos_y_MUX_pong_h_l141_c8_dd86_return_output,
 BIN_OP_PLUS_pong_h_l143_c9_be88_return_output,
 BIN_OP_LTE_pong_h_l143_c9_c7f6_return_output,
 pos_y_MUX_pong_h_l143_c5_909c_return_output,
 BIN_OP_PLUS_pong_h_l145_c7_9868_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : vga_pos_t;
 variable VAR_pos : vga_pos_t;
 variable VAR_paddle_up : unsigned(0 downto 0);
 variable VAR_paddle_down : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l134_c6_f497_left : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_pong_h_l134_c19_ded9_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_pong_h_l134_c19_ded9_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l134_c6_f497_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l134_c6_f497_return_output : unsigned(0 downto 0);
 variable VAR_pos_y_MUX_pong_h_l134_c3_d499_iftrue : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l136_c5_efa8_return_output : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l134_c3_d499_iffalse : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l141_c8_dd86_return_output : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l134_c3_d499_return_output : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l134_c3_d499_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_pong_h_l136_c8_712d_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_pong_h_l136_c8_712d_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_GTE_pong_h_l136_c8_712d_return_output : unsigned(0 downto 0);
 variable VAR_pos_y_MUX_pong_h_l136_c5_efa8_iftrue : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l136_c5_efa8_iffalse : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l136_c5_efa8_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_MINUS_pong_h_l138_c7_7d9f_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_MINUS_pong_h_l138_c7_7d9f_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_MINUS_pong_h_l138_c7_7d9f_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l141_c11_2d30_left : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_pong_h_l141_c26_cdc5_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_pong_h_l141_c26_cdc5_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l141_c11_2d30_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l141_c11_2d30_return_output : unsigned(0 downto 0);
 variable VAR_pos_y_MUX_pong_h_l141_c8_dd86_iftrue : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l143_c5_909c_return_output : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l141_c8_dd86_iffalse : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l141_c8_dd86_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l143_c9_be88_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l143_c9_be88_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l143_c9_be88_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_LTE_pong_h_l143_c9_c7f6_left : unsigned(12 downto 0);
 variable VAR_BIN_OP_LTE_pong_h_l143_c9_c7f6_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_LTE_pong_h_l143_c9_c7f6_return_output : unsigned(0 downto 0);
 variable VAR_pos_y_MUX_pong_h_l143_c5_909c_iftrue : unsigned(11 downto 0);
 variable VAR_pos_y_pong_h_l145_c7_1468 : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l143_c5_909c_iffalse : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l143_c5_909c_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l145_c7_9868_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l145_c7_9868_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l145_c7_9868_return_output : unsigned(12 downto 0);
 variable VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_a17f_pong_h_l148_c10_c18c_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l143_l141_l138_l136_l145_DUPLICATE_f1b6_return_output : unsigned(11 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_PLUS_pong_h_l145_c7_9868_right := to_unsigned(2, 2);
     VAR_BIN_OP_PLUS_pong_h_l143_c9_be88_right := to_unsigned(2, 2);
     VAR_BIN_OP_MINUS_pong_h_l138_c7_7d9f_right := to_unsigned(2, 2);
     VAR_BIN_OP_LTE_pong_h_l143_c9_c7f6_right := to_unsigned(420, 9);
     VAR_BIN_OP_GTE_pong_h_l136_c8_712d_right := to_unsigned(2, 2);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_pos := pos;
     VAR_paddle_up := paddle_up;
     VAR_paddle_down := paddle_down;

     -- Submodule level 0
     VAR_BIN_OP_AND_pong_h_l141_c11_2d30_left := VAR_paddle_down;
     VAR_UNARY_OP_NOT_pong_h_l134_c19_ded9_expr := VAR_paddle_down;
     VAR_BIN_OP_AND_pong_h_l134_c6_f497_left := VAR_paddle_up;
     VAR_UNARY_OP_NOT_pong_h_l141_c26_cdc5_expr := VAR_paddle_up;
     -- UNARY_OP_NOT[pong_h_l141_c26_cdc5] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_pong_h_l141_c26_cdc5_expr <= VAR_UNARY_OP_NOT_pong_h_l141_c26_cdc5_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_pong_h_l141_c26_cdc5_return_output := UNARY_OP_NOT_pong_h_l141_c26_cdc5_return_output;

     -- UNARY_OP_NOT[pong_h_l134_c19_ded9] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_pong_h_l134_c19_ded9_expr <= VAR_UNARY_OP_NOT_pong_h_l134_c19_ded9_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_pong_h_l134_c19_ded9_return_output := UNARY_OP_NOT_pong_h_l134_c19_ded9_return_output;

     -- CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l143_l141_l138_l136_l145_DUPLICATE_f1b6 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l143_l141_l138_l136_l145_DUPLICATE_f1b6_return_output := VAR_pos.y;

     -- Submodule level 1
     VAR_BIN_OP_GTE_pong_h_l136_c8_712d_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l143_l141_l138_l136_l145_DUPLICATE_f1b6_return_output;
     VAR_BIN_OP_MINUS_pong_h_l138_c7_7d9f_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l143_l141_l138_l136_l145_DUPLICATE_f1b6_return_output;
     VAR_BIN_OP_PLUS_pong_h_l143_c9_be88_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l143_l141_l138_l136_l145_DUPLICATE_f1b6_return_output;
     VAR_BIN_OP_PLUS_pong_h_l145_c7_9868_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l143_l141_l138_l136_l145_DUPLICATE_f1b6_return_output;
     VAR_pos_y_MUX_pong_h_l136_c5_efa8_iffalse := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l143_l141_l138_l136_l145_DUPLICATE_f1b6_return_output;
     VAR_pos_y_MUX_pong_h_l141_c8_dd86_iffalse := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l143_l141_l138_l136_l145_DUPLICATE_f1b6_return_output;
     VAR_pos_y_MUX_pong_h_l143_c5_909c_iffalse := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l143_l141_l138_l136_l145_DUPLICATE_f1b6_return_output;
     VAR_BIN_OP_AND_pong_h_l134_c6_f497_right := VAR_UNARY_OP_NOT_pong_h_l134_c19_ded9_return_output;
     VAR_BIN_OP_AND_pong_h_l141_c11_2d30_right := VAR_UNARY_OP_NOT_pong_h_l141_c26_cdc5_return_output;
     -- BIN_OP_PLUS[pong_h_l145_c7_9868] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_pong_h_l145_c7_9868_left <= VAR_BIN_OP_PLUS_pong_h_l145_c7_9868_left;
     BIN_OP_PLUS_pong_h_l145_c7_9868_right <= VAR_BIN_OP_PLUS_pong_h_l145_c7_9868_right;
     -- Outputs
     VAR_BIN_OP_PLUS_pong_h_l145_c7_9868_return_output := BIN_OP_PLUS_pong_h_l145_c7_9868_return_output;

     -- BIN_OP_AND[pong_h_l134_c6_f497] LATENCY=0
     -- Inputs
     BIN_OP_AND_pong_h_l134_c6_f497_left <= VAR_BIN_OP_AND_pong_h_l134_c6_f497_left;
     BIN_OP_AND_pong_h_l134_c6_f497_right <= VAR_BIN_OP_AND_pong_h_l134_c6_f497_right;
     -- Outputs
     VAR_BIN_OP_AND_pong_h_l134_c6_f497_return_output := BIN_OP_AND_pong_h_l134_c6_f497_return_output;

     -- BIN_OP_MINUS[pong_h_l138_c7_7d9f] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_pong_h_l138_c7_7d9f_left <= VAR_BIN_OP_MINUS_pong_h_l138_c7_7d9f_left;
     BIN_OP_MINUS_pong_h_l138_c7_7d9f_right <= VAR_BIN_OP_MINUS_pong_h_l138_c7_7d9f_right;
     -- Outputs
     VAR_BIN_OP_MINUS_pong_h_l138_c7_7d9f_return_output := BIN_OP_MINUS_pong_h_l138_c7_7d9f_return_output;

     -- BIN_OP_GTE[pong_h_l136_c8_712d] LATENCY=0
     -- Inputs
     BIN_OP_GTE_pong_h_l136_c8_712d_left <= VAR_BIN_OP_GTE_pong_h_l136_c8_712d_left;
     BIN_OP_GTE_pong_h_l136_c8_712d_right <= VAR_BIN_OP_GTE_pong_h_l136_c8_712d_right;
     -- Outputs
     VAR_BIN_OP_GTE_pong_h_l136_c8_712d_return_output := BIN_OP_GTE_pong_h_l136_c8_712d_return_output;

     -- BIN_OP_PLUS[pong_h_l143_c9_be88] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_pong_h_l143_c9_be88_left <= VAR_BIN_OP_PLUS_pong_h_l143_c9_be88_left;
     BIN_OP_PLUS_pong_h_l143_c9_be88_right <= VAR_BIN_OP_PLUS_pong_h_l143_c9_be88_right;
     -- Outputs
     VAR_BIN_OP_PLUS_pong_h_l143_c9_be88_return_output := BIN_OP_PLUS_pong_h_l143_c9_be88_return_output;

     -- BIN_OP_AND[pong_h_l141_c11_2d30] LATENCY=0
     -- Inputs
     BIN_OP_AND_pong_h_l141_c11_2d30_left <= VAR_BIN_OP_AND_pong_h_l141_c11_2d30_left;
     BIN_OP_AND_pong_h_l141_c11_2d30_right <= VAR_BIN_OP_AND_pong_h_l141_c11_2d30_right;
     -- Outputs
     VAR_BIN_OP_AND_pong_h_l141_c11_2d30_return_output := BIN_OP_AND_pong_h_l141_c11_2d30_return_output;

     -- Submodule level 2
     VAR_pos_y_MUX_pong_h_l134_c3_d499_cond := VAR_BIN_OP_AND_pong_h_l134_c6_f497_return_output;
     VAR_pos_y_MUX_pong_h_l141_c8_dd86_cond := VAR_BIN_OP_AND_pong_h_l141_c11_2d30_return_output;
     VAR_pos_y_MUX_pong_h_l136_c5_efa8_cond := VAR_BIN_OP_GTE_pong_h_l136_c8_712d_return_output;
     VAR_pos_y_MUX_pong_h_l136_c5_efa8_iftrue := VAR_BIN_OP_MINUS_pong_h_l138_c7_7d9f_return_output;
     VAR_BIN_OP_LTE_pong_h_l143_c9_c7f6_left := VAR_BIN_OP_PLUS_pong_h_l143_c9_be88_return_output;
     VAR_pos_y_pong_h_l145_c7_1468 := resize(VAR_BIN_OP_PLUS_pong_h_l145_c7_9868_return_output, 12);
     VAR_pos_y_MUX_pong_h_l143_c5_909c_iftrue := VAR_pos_y_pong_h_l145_c7_1468;
     -- BIN_OP_LTE[pong_h_l143_c9_c7f6] LATENCY=0
     -- Inputs
     BIN_OP_LTE_pong_h_l143_c9_c7f6_left <= VAR_BIN_OP_LTE_pong_h_l143_c9_c7f6_left;
     BIN_OP_LTE_pong_h_l143_c9_c7f6_right <= VAR_BIN_OP_LTE_pong_h_l143_c9_c7f6_right;
     -- Outputs
     VAR_BIN_OP_LTE_pong_h_l143_c9_c7f6_return_output := BIN_OP_LTE_pong_h_l143_c9_c7f6_return_output;

     -- pos_y_MUX[pong_h_l136_c5_efa8] LATENCY=0
     -- Inputs
     pos_y_MUX_pong_h_l136_c5_efa8_cond <= VAR_pos_y_MUX_pong_h_l136_c5_efa8_cond;
     pos_y_MUX_pong_h_l136_c5_efa8_iftrue <= VAR_pos_y_MUX_pong_h_l136_c5_efa8_iftrue;
     pos_y_MUX_pong_h_l136_c5_efa8_iffalse <= VAR_pos_y_MUX_pong_h_l136_c5_efa8_iffalse;
     -- Outputs
     VAR_pos_y_MUX_pong_h_l136_c5_efa8_return_output := pos_y_MUX_pong_h_l136_c5_efa8_return_output;

     -- Submodule level 3
     VAR_pos_y_MUX_pong_h_l143_c5_909c_cond := VAR_BIN_OP_LTE_pong_h_l143_c9_c7f6_return_output;
     VAR_pos_y_MUX_pong_h_l134_c3_d499_iftrue := VAR_pos_y_MUX_pong_h_l136_c5_efa8_return_output;
     -- pos_y_MUX[pong_h_l143_c5_909c] LATENCY=0
     -- Inputs
     pos_y_MUX_pong_h_l143_c5_909c_cond <= VAR_pos_y_MUX_pong_h_l143_c5_909c_cond;
     pos_y_MUX_pong_h_l143_c5_909c_iftrue <= VAR_pos_y_MUX_pong_h_l143_c5_909c_iftrue;
     pos_y_MUX_pong_h_l143_c5_909c_iffalse <= VAR_pos_y_MUX_pong_h_l143_c5_909c_iffalse;
     -- Outputs
     VAR_pos_y_MUX_pong_h_l143_c5_909c_return_output := pos_y_MUX_pong_h_l143_c5_909c_return_output;

     -- Submodule level 4
     VAR_pos_y_MUX_pong_h_l141_c8_dd86_iftrue := VAR_pos_y_MUX_pong_h_l143_c5_909c_return_output;
     -- pos_y_MUX[pong_h_l141_c8_dd86] LATENCY=0
     -- Inputs
     pos_y_MUX_pong_h_l141_c8_dd86_cond <= VAR_pos_y_MUX_pong_h_l141_c8_dd86_cond;
     pos_y_MUX_pong_h_l141_c8_dd86_iftrue <= VAR_pos_y_MUX_pong_h_l141_c8_dd86_iftrue;
     pos_y_MUX_pong_h_l141_c8_dd86_iffalse <= VAR_pos_y_MUX_pong_h_l141_c8_dd86_iffalse;
     -- Outputs
     VAR_pos_y_MUX_pong_h_l141_c8_dd86_return_output := pos_y_MUX_pong_h_l141_c8_dd86_return_output;

     -- Submodule level 5
     VAR_pos_y_MUX_pong_h_l134_c3_d499_iffalse := VAR_pos_y_MUX_pong_h_l141_c8_dd86_return_output;
     -- pos_y_MUX[pong_h_l134_c3_d499] LATENCY=0
     -- Inputs
     pos_y_MUX_pong_h_l134_c3_d499_cond <= VAR_pos_y_MUX_pong_h_l134_c3_d499_cond;
     pos_y_MUX_pong_h_l134_c3_d499_iftrue <= VAR_pos_y_MUX_pong_h_l134_c3_d499_iftrue;
     pos_y_MUX_pong_h_l134_c3_d499_iffalse <= VAR_pos_y_MUX_pong_h_l134_c3_d499_iffalse;
     -- Outputs
     VAR_pos_y_MUX_pong_h_l134_c3_d499_return_output := pos_y_MUX_pong_h_l134_c3_d499_return_output;

     -- Submodule level 6
     -- CONST_REF_RD_vga_pos_t_vga_pos_t_a17f[pong_h_l148_c10_c18c] LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_a17f_pong_h_l148_c10_c18c_return_output := CONST_REF_RD_vga_pos_t_vga_pos_t_a17f(
     VAR_pos,
     VAR_pos_y_MUX_pong_h_l134_c3_d499_return_output);

     -- Submodule level 7
     VAR_return_output := VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_a17f_pong_h_l148_c10_c18c_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
