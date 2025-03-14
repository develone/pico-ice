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
-- UNARY_OP_NOT[pong_h_l134_c19_b3b1]
signal UNARY_OP_NOT_pong_h_l134_c19_b3b1_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_pong_h_l134_c19_b3b1_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[pong_h_l134_c6_7e62]
signal BIN_OP_AND_pong_h_l134_c6_7e62_left : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l134_c6_7e62_right : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l134_c6_7e62_return_output : unsigned(0 downto 0);

-- pos_y_MUX[pong_h_l134_c3_c5ed]
signal pos_y_MUX_pong_h_l134_c3_c5ed_cond : unsigned(0 downto 0);
signal pos_y_MUX_pong_h_l134_c3_c5ed_iftrue : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l134_c3_c5ed_iffalse : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l134_c3_c5ed_return_output : unsigned(11 downto 0);

-- BIN_OP_GTE[pong_h_l136_c8_c60a]
signal BIN_OP_GTE_pong_h_l136_c8_c60a_left : unsigned(11 downto 0);
signal BIN_OP_GTE_pong_h_l136_c8_c60a_right : unsigned(1 downto 0);
signal BIN_OP_GTE_pong_h_l136_c8_c60a_return_output : unsigned(0 downto 0);

-- pos_y_MUX[pong_h_l136_c5_8aca]
signal pos_y_MUX_pong_h_l136_c5_8aca_cond : unsigned(0 downto 0);
signal pos_y_MUX_pong_h_l136_c5_8aca_iftrue : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l136_c5_8aca_iffalse : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l136_c5_8aca_return_output : unsigned(11 downto 0);

-- BIN_OP_MINUS[pong_h_l138_c7_b407]
signal BIN_OP_MINUS_pong_h_l138_c7_b407_left : unsigned(11 downto 0);
signal BIN_OP_MINUS_pong_h_l138_c7_b407_right : unsigned(1 downto 0);
signal BIN_OP_MINUS_pong_h_l138_c7_b407_return_output : unsigned(11 downto 0);

-- UNARY_OP_NOT[pong_h_l141_c26_6c4c]
signal UNARY_OP_NOT_pong_h_l141_c26_6c4c_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_pong_h_l141_c26_6c4c_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[pong_h_l141_c11_b901]
signal BIN_OP_AND_pong_h_l141_c11_b901_left : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l141_c11_b901_right : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l141_c11_b901_return_output : unsigned(0 downto 0);

-- pos_y_MUX[pong_h_l141_c8_7824]
signal pos_y_MUX_pong_h_l141_c8_7824_cond : unsigned(0 downto 0);
signal pos_y_MUX_pong_h_l141_c8_7824_iftrue : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l141_c8_7824_iffalse : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l141_c8_7824_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[pong_h_l143_c9_2fd0]
signal BIN_OP_PLUS_pong_h_l143_c9_2fd0_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_pong_h_l143_c9_2fd0_right : unsigned(1 downto 0);
signal BIN_OP_PLUS_pong_h_l143_c9_2fd0_return_output : unsigned(12 downto 0);

-- BIN_OP_LTE[pong_h_l143_c9_658c]
signal BIN_OP_LTE_pong_h_l143_c9_658c_left : unsigned(12 downto 0);
signal BIN_OP_LTE_pong_h_l143_c9_658c_right : unsigned(8 downto 0);
signal BIN_OP_LTE_pong_h_l143_c9_658c_return_output : unsigned(0 downto 0);

-- pos_y_MUX[pong_h_l143_c5_1430]
signal pos_y_MUX_pong_h_l143_c5_1430_cond : unsigned(0 downto 0);
signal pos_y_MUX_pong_h_l143_c5_1430_iftrue : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l143_c5_1430_iffalse : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l143_c5_1430_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[pong_h_l145_c7_2c01]
signal BIN_OP_PLUS_pong_h_l145_c7_2c01_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_pong_h_l145_c7_2c01_right : unsigned(1 downto 0);
signal BIN_OP_PLUS_pong_h_l145_c7_2c01_return_output : unsigned(12 downto 0);

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
-- UNARY_OP_NOT_pong_h_l134_c19_b3b1 : 0 clocks latency
UNARY_OP_NOT_pong_h_l134_c19_b3b1 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_pong_h_l134_c19_b3b1_expr,
UNARY_OP_NOT_pong_h_l134_c19_b3b1_return_output);

-- BIN_OP_AND_pong_h_l134_c6_7e62 : 0 clocks latency
BIN_OP_AND_pong_h_l134_c6_7e62 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_pong_h_l134_c6_7e62_left,
BIN_OP_AND_pong_h_l134_c6_7e62_right,
BIN_OP_AND_pong_h_l134_c6_7e62_return_output);

-- pos_y_MUX_pong_h_l134_c3_c5ed : 0 clocks latency
pos_y_MUX_pong_h_l134_c3_c5ed : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
pos_y_MUX_pong_h_l134_c3_c5ed_cond,
pos_y_MUX_pong_h_l134_c3_c5ed_iftrue,
pos_y_MUX_pong_h_l134_c3_c5ed_iffalse,
pos_y_MUX_pong_h_l134_c3_c5ed_return_output);

-- BIN_OP_GTE_pong_h_l136_c8_c60a : 0 clocks latency
BIN_OP_GTE_pong_h_l136_c8_c60a : entity work.BIN_OP_GTE_uint12_t_uint2_t_0CLK_e595f783 port map (
BIN_OP_GTE_pong_h_l136_c8_c60a_left,
BIN_OP_GTE_pong_h_l136_c8_c60a_right,
BIN_OP_GTE_pong_h_l136_c8_c60a_return_output);

-- pos_y_MUX_pong_h_l136_c5_8aca : 0 clocks latency
pos_y_MUX_pong_h_l136_c5_8aca : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
pos_y_MUX_pong_h_l136_c5_8aca_cond,
pos_y_MUX_pong_h_l136_c5_8aca_iftrue,
pos_y_MUX_pong_h_l136_c5_8aca_iffalse,
pos_y_MUX_pong_h_l136_c5_8aca_return_output);

-- BIN_OP_MINUS_pong_h_l138_c7_b407 : 0 clocks latency
BIN_OP_MINUS_pong_h_l138_c7_b407 : entity work.BIN_OP_MINUS_uint12_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_MINUS_pong_h_l138_c7_b407_left,
BIN_OP_MINUS_pong_h_l138_c7_b407_right,
BIN_OP_MINUS_pong_h_l138_c7_b407_return_output);

-- UNARY_OP_NOT_pong_h_l141_c26_6c4c : 0 clocks latency
UNARY_OP_NOT_pong_h_l141_c26_6c4c : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_pong_h_l141_c26_6c4c_expr,
UNARY_OP_NOT_pong_h_l141_c26_6c4c_return_output);

-- BIN_OP_AND_pong_h_l141_c11_b901 : 0 clocks latency
BIN_OP_AND_pong_h_l141_c11_b901 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_pong_h_l141_c11_b901_left,
BIN_OP_AND_pong_h_l141_c11_b901_right,
BIN_OP_AND_pong_h_l141_c11_b901_return_output);

-- pos_y_MUX_pong_h_l141_c8_7824 : 0 clocks latency
pos_y_MUX_pong_h_l141_c8_7824 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
pos_y_MUX_pong_h_l141_c8_7824_cond,
pos_y_MUX_pong_h_l141_c8_7824_iftrue,
pos_y_MUX_pong_h_l141_c8_7824_iffalse,
pos_y_MUX_pong_h_l141_c8_7824_return_output);

-- BIN_OP_PLUS_pong_h_l143_c9_2fd0 : 0 clocks latency
BIN_OP_PLUS_pong_h_l143_c9_2fd0 : entity work.BIN_OP_PLUS_uint12_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_PLUS_pong_h_l143_c9_2fd0_left,
BIN_OP_PLUS_pong_h_l143_c9_2fd0_right,
BIN_OP_PLUS_pong_h_l143_c9_2fd0_return_output);

-- BIN_OP_LTE_pong_h_l143_c9_658c : 0 clocks latency
BIN_OP_LTE_pong_h_l143_c9_658c : entity work.BIN_OP_LTE_uint13_t_uint9_t_0CLK_e595f783 port map (
BIN_OP_LTE_pong_h_l143_c9_658c_left,
BIN_OP_LTE_pong_h_l143_c9_658c_right,
BIN_OP_LTE_pong_h_l143_c9_658c_return_output);

-- pos_y_MUX_pong_h_l143_c5_1430 : 0 clocks latency
pos_y_MUX_pong_h_l143_c5_1430 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
pos_y_MUX_pong_h_l143_c5_1430_cond,
pos_y_MUX_pong_h_l143_c5_1430_iftrue,
pos_y_MUX_pong_h_l143_c5_1430_iffalse,
pos_y_MUX_pong_h_l143_c5_1430_return_output);

-- BIN_OP_PLUS_pong_h_l145_c7_2c01 : 0 clocks latency
BIN_OP_PLUS_pong_h_l145_c7_2c01 : entity work.BIN_OP_PLUS_uint12_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_PLUS_pong_h_l145_c7_2c01_left,
BIN_OP_PLUS_pong_h_l145_c7_2c01_right,
BIN_OP_PLUS_pong_h_l145_c7_2c01_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 pos,
 paddle_up,
 paddle_down,
 -- All submodule outputs
 UNARY_OP_NOT_pong_h_l134_c19_b3b1_return_output,
 BIN_OP_AND_pong_h_l134_c6_7e62_return_output,
 pos_y_MUX_pong_h_l134_c3_c5ed_return_output,
 BIN_OP_GTE_pong_h_l136_c8_c60a_return_output,
 pos_y_MUX_pong_h_l136_c5_8aca_return_output,
 BIN_OP_MINUS_pong_h_l138_c7_b407_return_output,
 UNARY_OP_NOT_pong_h_l141_c26_6c4c_return_output,
 BIN_OP_AND_pong_h_l141_c11_b901_return_output,
 pos_y_MUX_pong_h_l141_c8_7824_return_output,
 BIN_OP_PLUS_pong_h_l143_c9_2fd0_return_output,
 BIN_OP_LTE_pong_h_l143_c9_658c_return_output,
 pos_y_MUX_pong_h_l143_c5_1430_return_output,
 BIN_OP_PLUS_pong_h_l145_c7_2c01_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : vga_pos_t;
 variable VAR_pos : vga_pos_t;
 variable VAR_paddle_up : unsigned(0 downto 0);
 variable VAR_paddle_down : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l134_c6_7e62_left : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_pong_h_l134_c19_b3b1_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_pong_h_l134_c19_b3b1_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l134_c6_7e62_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l134_c6_7e62_return_output : unsigned(0 downto 0);
 variable VAR_pos_y_MUX_pong_h_l134_c3_c5ed_iftrue : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l136_c5_8aca_return_output : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l134_c3_c5ed_iffalse : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l141_c8_7824_return_output : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l134_c3_c5ed_return_output : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l134_c3_c5ed_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_pong_h_l136_c8_c60a_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_pong_h_l136_c8_c60a_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_GTE_pong_h_l136_c8_c60a_return_output : unsigned(0 downto 0);
 variable VAR_pos_y_MUX_pong_h_l136_c5_8aca_iftrue : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l136_c5_8aca_iffalse : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l136_c5_8aca_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_MINUS_pong_h_l138_c7_b407_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_MINUS_pong_h_l138_c7_b407_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_MINUS_pong_h_l138_c7_b407_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l141_c11_b901_left : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_pong_h_l141_c26_6c4c_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_pong_h_l141_c26_6c4c_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l141_c11_b901_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l141_c11_b901_return_output : unsigned(0 downto 0);
 variable VAR_pos_y_MUX_pong_h_l141_c8_7824_iftrue : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l143_c5_1430_return_output : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l141_c8_7824_iffalse : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l141_c8_7824_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l143_c9_2fd0_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l143_c9_2fd0_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l143_c9_2fd0_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_LTE_pong_h_l143_c9_658c_left : unsigned(12 downto 0);
 variable VAR_BIN_OP_LTE_pong_h_l143_c9_658c_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_LTE_pong_h_l143_c9_658c_return_output : unsigned(0 downto 0);
 variable VAR_pos_y_MUX_pong_h_l143_c5_1430_iftrue : unsigned(11 downto 0);
 variable VAR_pos_y_pong_h_l145_c7_6aa0 : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l143_c5_1430_iffalse : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l143_c5_1430_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l145_c7_2c01_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l145_c7_2c01_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l145_c7_2c01_return_output : unsigned(12 downto 0);
 variable VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_a17f_pong_h_l148_c10_4fa7_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l145_l136_l143_l141_l138_DUPLICATE_a85a_return_output : unsigned(11 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_MINUS_pong_h_l138_c7_b407_right := to_unsigned(2, 2);
     VAR_BIN_OP_PLUS_pong_h_l145_c7_2c01_right := to_unsigned(2, 2);
     VAR_BIN_OP_GTE_pong_h_l136_c8_c60a_right := to_unsigned(2, 2);
     VAR_BIN_OP_PLUS_pong_h_l143_c9_2fd0_right := to_unsigned(2, 2);
     VAR_BIN_OP_LTE_pong_h_l143_c9_658c_right := to_unsigned(420, 9);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_pos := pos;
     VAR_paddle_up := paddle_up;
     VAR_paddle_down := paddle_down;

     -- Submodule level 0
     VAR_BIN_OP_AND_pong_h_l141_c11_b901_left := VAR_paddle_down;
     VAR_UNARY_OP_NOT_pong_h_l134_c19_b3b1_expr := VAR_paddle_down;
     VAR_BIN_OP_AND_pong_h_l134_c6_7e62_left := VAR_paddle_up;
     VAR_UNARY_OP_NOT_pong_h_l141_c26_6c4c_expr := VAR_paddle_up;
     -- UNARY_OP_NOT[pong_h_l141_c26_6c4c] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_pong_h_l141_c26_6c4c_expr <= VAR_UNARY_OP_NOT_pong_h_l141_c26_6c4c_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_pong_h_l141_c26_6c4c_return_output := UNARY_OP_NOT_pong_h_l141_c26_6c4c_return_output;

     -- CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l145_l136_l143_l141_l138_DUPLICATE_a85a LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l145_l136_l143_l141_l138_DUPLICATE_a85a_return_output := VAR_pos.y;

     -- UNARY_OP_NOT[pong_h_l134_c19_b3b1] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_pong_h_l134_c19_b3b1_expr <= VAR_UNARY_OP_NOT_pong_h_l134_c19_b3b1_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_pong_h_l134_c19_b3b1_return_output := UNARY_OP_NOT_pong_h_l134_c19_b3b1_return_output;

     -- Submodule level 1
     VAR_BIN_OP_GTE_pong_h_l136_c8_c60a_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l145_l136_l143_l141_l138_DUPLICATE_a85a_return_output;
     VAR_BIN_OP_MINUS_pong_h_l138_c7_b407_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l145_l136_l143_l141_l138_DUPLICATE_a85a_return_output;
     VAR_BIN_OP_PLUS_pong_h_l143_c9_2fd0_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l145_l136_l143_l141_l138_DUPLICATE_a85a_return_output;
     VAR_BIN_OP_PLUS_pong_h_l145_c7_2c01_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l145_l136_l143_l141_l138_DUPLICATE_a85a_return_output;
     VAR_pos_y_MUX_pong_h_l136_c5_8aca_iffalse := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l145_l136_l143_l141_l138_DUPLICATE_a85a_return_output;
     VAR_pos_y_MUX_pong_h_l141_c8_7824_iffalse := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l145_l136_l143_l141_l138_DUPLICATE_a85a_return_output;
     VAR_pos_y_MUX_pong_h_l143_c5_1430_iffalse := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l145_l136_l143_l141_l138_DUPLICATE_a85a_return_output;
     VAR_BIN_OP_AND_pong_h_l134_c6_7e62_right := VAR_UNARY_OP_NOT_pong_h_l134_c19_b3b1_return_output;
     VAR_BIN_OP_AND_pong_h_l141_c11_b901_right := VAR_UNARY_OP_NOT_pong_h_l141_c26_6c4c_return_output;
     -- BIN_OP_AND[pong_h_l141_c11_b901] LATENCY=0
     -- Inputs
     BIN_OP_AND_pong_h_l141_c11_b901_left <= VAR_BIN_OP_AND_pong_h_l141_c11_b901_left;
     BIN_OP_AND_pong_h_l141_c11_b901_right <= VAR_BIN_OP_AND_pong_h_l141_c11_b901_right;
     -- Outputs
     VAR_BIN_OP_AND_pong_h_l141_c11_b901_return_output := BIN_OP_AND_pong_h_l141_c11_b901_return_output;

     -- BIN_OP_GTE[pong_h_l136_c8_c60a] LATENCY=0
     -- Inputs
     BIN_OP_GTE_pong_h_l136_c8_c60a_left <= VAR_BIN_OP_GTE_pong_h_l136_c8_c60a_left;
     BIN_OP_GTE_pong_h_l136_c8_c60a_right <= VAR_BIN_OP_GTE_pong_h_l136_c8_c60a_right;
     -- Outputs
     VAR_BIN_OP_GTE_pong_h_l136_c8_c60a_return_output := BIN_OP_GTE_pong_h_l136_c8_c60a_return_output;

     -- BIN_OP_MINUS[pong_h_l138_c7_b407] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_pong_h_l138_c7_b407_left <= VAR_BIN_OP_MINUS_pong_h_l138_c7_b407_left;
     BIN_OP_MINUS_pong_h_l138_c7_b407_right <= VAR_BIN_OP_MINUS_pong_h_l138_c7_b407_right;
     -- Outputs
     VAR_BIN_OP_MINUS_pong_h_l138_c7_b407_return_output := BIN_OP_MINUS_pong_h_l138_c7_b407_return_output;

     -- BIN_OP_PLUS[pong_h_l143_c9_2fd0] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_pong_h_l143_c9_2fd0_left <= VAR_BIN_OP_PLUS_pong_h_l143_c9_2fd0_left;
     BIN_OP_PLUS_pong_h_l143_c9_2fd0_right <= VAR_BIN_OP_PLUS_pong_h_l143_c9_2fd0_right;
     -- Outputs
     VAR_BIN_OP_PLUS_pong_h_l143_c9_2fd0_return_output := BIN_OP_PLUS_pong_h_l143_c9_2fd0_return_output;

     -- BIN_OP_AND[pong_h_l134_c6_7e62] LATENCY=0
     -- Inputs
     BIN_OP_AND_pong_h_l134_c6_7e62_left <= VAR_BIN_OP_AND_pong_h_l134_c6_7e62_left;
     BIN_OP_AND_pong_h_l134_c6_7e62_right <= VAR_BIN_OP_AND_pong_h_l134_c6_7e62_right;
     -- Outputs
     VAR_BIN_OP_AND_pong_h_l134_c6_7e62_return_output := BIN_OP_AND_pong_h_l134_c6_7e62_return_output;

     -- BIN_OP_PLUS[pong_h_l145_c7_2c01] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_pong_h_l145_c7_2c01_left <= VAR_BIN_OP_PLUS_pong_h_l145_c7_2c01_left;
     BIN_OP_PLUS_pong_h_l145_c7_2c01_right <= VAR_BIN_OP_PLUS_pong_h_l145_c7_2c01_right;
     -- Outputs
     VAR_BIN_OP_PLUS_pong_h_l145_c7_2c01_return_output := BIN_OP_PLUS_pong_h_l145_c7_2c01_return_output;

     -- Submodule level 2
     VAR_pos_y_MUX_pong_h_l134_c3_c5ed_cond := VAR_BIN_OP_AND_pong_h_l134_c6_7e62_return_output;
     VAR_pos_y_MUX_pong_h_l141_c8_7824_cond := VAR_BIN_OP_AND_pong_h_l141_c11_b901_return_output;
     VAR_pos_y_MUX_pong_h_l136_c5_8aca_cond := VAR_BIN_OP_GTE_pong_h_l136_c8_c60a_return_output;
     VAR_pos_y_MUX_pong_h_l136_c5_8aca_iftrue := VAR_BIN_OP_MINUS_pong_h_l138_c7_b407_return_output;
     VAR_BIN_OP_LTE_pong_h_l143_c9_658c_left := VAR_BIN_OP_PLUS_pong_h_l143_c9_2fd0_return_output;
     VAR_pos_y_pong_h_l145_c7_6aa0 := resize(VAR_BIN_OP_PLUS_pong_h_l145_c7_2c01_return_output, 12);
     VAR_pos_y_MUX_pong_h_l143_c5_1430_iftrue := VAR_pos_y_pong_h_l145_c7_6aa0;
     -- BIN_OP_LTE[pong_h_l143_c9_658c] LATENCY=0
     -- Inputs
     BIN_OP_LTE_pong_h_l143_c9_658c_left <= VAR_BIN_OP_LTE_pong_h_l143_c9_658c_left;
     BIN_OP_LTE_pong_h_l143_c9_658c_right <= VAR_BIN_OP_LTE_pong_h_l143_c9_658c_right;
     -- Outputs
     VAR_BIN_OP_LTE_pong_h_l143_c9_658c_return_output := BIN_OP_LTE_pong_h_l143_c9_658c_return_output;

     -- pos_y_MUX[pong_h_l136_c5_8aca] LATENCY=0
     -- Inputs
     pos_y_MUX_pong_h_l136_c5_8aca_cond <= VAR_pos_y_MUX_pong_h_l136_c5_8aca_cond;
     pos_y_MUX_pong_h_l136_c5_8aca_iftrue <= VAR_pos_y_MUX_pong_h_l136_c5_8aca_iftrue;
     pos_y_MUX_pong_h_l136_c5_8aca_iffalse <= VAR_pos_y_MUX_pong_h_l136_c5_8aca_iffalse;
     -- Outputs
     VAR_pos_y_MUX_pong_h_l136_c5_8aca_return_output := pos_y_MUX_pong_h_l136_c5_8aca_return_output;

     -- Submodule level 3
     VAR_pos_y_MUX_pong_h_l143_c5_1430_cond := VAR_BIN_OP_LTE_pong_h_l143_c9_658c_return_output;
     VAR_pos_y_MUX_pong_h_l134_c3_c5ed_iftrue := VAR_pos_y_MUX_pong_h_l136_c5_8aca_return_output;
     -- pos_y_MUX[pong_h_l143_c5_1430] LATENCY=0
     -- Inputs
     pos_y_MUX_pong_h_l143_c5_1430_cond <= VAR_pos_y_MUX_pong_h_l143_c5_1430_cond;
     pos_y_MUX_pong_h_l143_c5_1430_iftrue <= VAR_pos_y_MUX_pong_h_l143_c5_1430_iftrue;
     pos_y_MUX_pong_h_l143_c5_1430_iffalse <= VAR_pos_y_MUX_pong_h_l143_c5_1430_iffalse;
     -- Outputs
     VAR_pos_y_MUX_pong_h_l143_c5_1430_return_output := pos_y_MUX_pong_h_l143_c5_1430_return_output;

     -- Submodule level 4
     VAR_pos_y_MUX_pong_h_l141_c8_7824_iftrue := VAR_pos_y_MUX_pong_h_l143_c5_1430_return_output;
     -- pos_y_MUX[pong_h_l141_c8_7824] LATENCY=0
     -- Inputs
     pos_y_MUX_pong_h_l141_c8_7824_cond <= VAR_pos_y_MUX_pong_h_l141_c8_7824_cond;
     pos_y_MUX_pong_h_l141_c8_7824_iftrue <= VAR_pos_y_MUX_pong_h_l141_c8_7824_iftrue;
     pos_y_MUX_pong_h_l141_c8_7824_iffalse <= VAR_pos_y_MUX_pong_h_l141_c8_7824_iffalse;
     -- Outputs
     VAR_pos_y_MUX_pong_h_l141_c8_7824_return_output := pos_y_MUX_pong_h_l141_c8_7824_return_output;

     -- Submodule level 5
     VAR_pos_y_MUX_pong_h_l134_c3_c5ed_iffalse := VAR_pos_y_MUX_pong_h_l141_c8_7824_return_output;
     -- pos_y_MUX[pong_h_l134_c3_c5ed] LATENCY=0
     -- Inputs
     pos_y_MUX_pong_h_l134_c3_c5ed_cond <= VAR_pos_y_MUX_pong_h_l134_c3_c5ed_cond;
     pos_y_MUX_pong_h_l134_c3_c5ed_iftrue <= VAR_pos_y_MUX_pong_h_l134_c3_c5ed_iftrue;
     pos_y_MUX_pong_h_l134_c3_c5ed_iffalse <= VAR_pos_y_MUX_pong_h_l134_c3_c5ed_iffalse;
     -- Outputs
     VAR_pos_y_MUX_pong_h_l134_c3_c5ed_return_output := pos_y_MUX_pong_h_l134_c3_c5ed_return_output;

     -- Submodule level 6
     -- CONST_REF_RD_vga_pos_t_vga_pos_t_a17f[pong_h_l148_c10_4fa7] LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_a17f_pong_h_l148_c10_4fa7_return_output := CONST_REF_RD_vga_pos_t_vga_pos_t_a17f(
     VAR_pos,
     VAR_pos_y_MUX_pong_h_l134_c3_c5ed_return_output);

     -- Submodule level 7
     VAR_return_output := VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_a17f_pong_h_l148_c10_4fa7_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
