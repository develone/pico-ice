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
-- UNARY_OP_NOT[pong_h_l134_c19_0677]
signal UNARY_OP_NOT_pong_h_l134_c19_0677_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_pong_h_l134_c19_0677_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[pong_h_l134_c6_9e4e]
signal BIN_OP_AND_pong_h_l134_c6_9e4e_left : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l134_c6_9e4e_right : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l134_c6_9e4e_return_output : unsigned(0 downto 0);

-- pos_y_MUX[pong_h_l134_c3_0d0f]
signal pos_y_MUX_pong_h_l134_c3_0d0f_cond : unsigned(0 downto 0);
signal pos_y_MUX_pong_h_l134_c3_0d0f_iftrue : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l134_c3_0d0f_iffalse : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l134_c3_0d0f_return_output : unsigned(11 downto 0);

-- BIN_OP_GTE[pong_h_l136_c8_732d]
signal BIN_OP_GTE_pong_h_l136_c8_732d_left : unsigned(11 downto 0);
signal BIN_OP_GTE_pong_h_l136_c8_732d_right : unsigned(1 downto 0);
signal BIN_OP_GTE_pong_h_l136_c8_732d_return_output : unsigned(0 downto 0);

-- pos_y_MUX[pong_h_l136_c5_ead8]
signal pos_y_MUX_pong_h_l136_c5_ead8_cond : unsigned(0 downto 0);
signal pos_y_MUX_pong_h_l136_c5_ead8_iftrue : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l136_c5_ead8_iffalse : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l136_c5_ead8_return_output : unsigned(11 downto 0);

-- BIN_OP_MINUS[pong_h_l138_c7_a9b3]
signal BIN_OP_MINUS_pong_h_l138_c7_a9b3_left : unsigned(11 downto 0);
signal BIN_OP_MINUS_pong_h_l138_c7_a9b3_right : unsigned(1 downto 0);
signal BIN_OP_MINUS_pong_h_l138_c7_a9b3_return_output : unsigned(11 downto 0);

-- UNARY_OP_NOT[pong_h_l141_c26_9846]
signal UNARY_OP_NOT_pong_h_l141_c26_9846_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_pong_h_l141_c26_9846_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[pong_h_l141_c11_6557]
signal BIN_OP_AND_pong_h_l141_c11_6557_left : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l141_c11_6557_right : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l141_c11_6557_return_output : unsigned(0 downto 0);

-- pos_y_MUX[pong_h_l141_c8_68cf]
signal pos_y_MUX_pong_h_l141_c8_68cf_cond : unsigned(0 downto 0);
signal pos_y_MUX_pong_h_l141_c8_68cf_iftrue : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l141_c8_68cf_iffalse : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l141_c8_68cf_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[pong_h_l143_c9_08d2]
signal BIN_OP_PLUS_pong_h_l143_c9_08d2_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_pong_h_l143_c9_08d2_right : unsigned(1 downto 0);
signal BIN_OP_PLUS_pong_h_l143_c9_08d2_return_output : unsigned(12 downto 0);

-- BIN_OP_LTE[pong_h_l143_c9_23b6]
signal BIN_OP_LTE_pong_h_l143_c9_23b6_left : unsigned(12 downto 0);
signal BIN_OP_LTE_pong_h_l143_c9_23b6_right : unsigned(8 downto 0);
signal BIN_OP_LTE_pong_h_l143_c9_23b6_return_output : unsigned(0 downto 0);

-- pos_y_MUX[pong_h_l143_c5_4958]
signal pos_y_MUX_pong_h_l143_c5_4958_cond : unsigned(0 downto 0);
signal pos_y_MUX_pong_h_l143_c5_4958_iftrue : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l143_c5_4958_iffalse : unsigned(11 downto 0);
signal pos_y_MUX_pong_h_l143_c5_4958_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[pong_h_l145_c7_d13d]
signal BIN_OP_PLUS_pong_h_l145_c7_d13d_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_pong_h_l145_c7_d13d_right : unsigned(1 downto 0);
signal BIN_OP_PLUS_pong_h_l145_c7_d13d_return_output : unsigned(12 downto 0);

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
-- UNARY_OP_NOT_pong_h_l134_c19_0677 : 0 clocks latency
UNARY_OP_NOT_pong_h_l134_c19_0677 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_pong_h_l134_c19_0677_expr,
UNARY_OP_NOT_pong_h_l134_c19_0677_return_output);

-- BIN_OP_AND_pong_h_l134_c6_9e4e : 0 clocks latency
BIN_OP_AND_pong_h_l134_c6_9e4e : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_pong_h_l134_c6_9e4e_left,
BIN_OP_AND_pong_h_l134_c6_9e4e_right,
BIN_OP_AND_pong_h_l134_c6_9e4e_return_output);

-- pos_y_MUX_pong_h_l134_c3_0d0f : 0 clocks latency
pos_y_MUX_pong_h_l134_c3_0d0f : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
pos_y_MUX_pong_h_l134_c3_0d0f_cond,
pos_y_MUX_pong_h_l134_c3_0d0f_iftrue,
pos_y_MUX_pong_h_l134_c3_0d0f_iffalse,
pos_y_MUX_pong_h_l134_c3_0d0f_return_output);

-- BIN_OP_GTE_pong_h_l136_c8_732d : 0 clocks latency
BIN_OP_GTE_pong_h_l136_c8_732d : entity work.BIN_OP_GTE_uint12_t_uint2_t_0CLK_e595f783 port map (
BIN_OP_GTE_pong_h_l136_c8_732d_left,
BIN_OP_GTE_pong_h_l136_c8_732d_right,
BIN_OP_GTE_pong_h_l136_c8_732d_return_output);

-- pos_y_MUX_pong_h_l136_c5_ead8 : 0 clocks latency
pos_y_MUX_pong_h_l136_c5_ead8 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
pos_y_MUX_pong_h_l136_c5_ead8_cond,
pos_y_MUX_pong_h_l136_c5_ead8_iftrue,
pos_y_MUX_pong_h_l136_c5_ead8_iffalse,
pos_y_MUX_pong_h_l136_c5_ead8_return_output);

-- BIN_OP_MINUS_pong_h_l138_c7_a9b3 : 0 clocks latency
BIN_OP_MINUS_pong_h_l138_c7_a9b3 : entity work.BIN_OP_MINUS_uint12_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_MINUS_pong_h_l138_c7_a9b3_left,
BIN_OP_MINUS_pong_h_l138_c7_a9b3_right,
BIN_OP_MINUS_pong_h_l138_c7_a9b3_return_output);

-- UNARY_OP_NOT_pong_h_l141_c26_9846 : 0 clocks latency
UNARY_OP_NOT_pong_h_l141_c26_9846 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_pong_h_l141_c26_9846_expr,
UNARY_OP_NOT_pong_h_l141_c26_9846_return_output);

-- BIN_OP_AND_pong_h_l141_c11_6557 : 0 clocks latency
BIN_OP_AND_pong_h_l141_c11_6557 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_pong_h_l141_c11_6557_left,
BIN_OP_AND_pong_h_l141_c11_6557_right,
BIN_OP_AND_pong_h_l141_c11_6557_return_output);

-- pos_y_MUX_pong_h_l141_c8_68cf : 0 clocks latency
pos_y_MUX_pong_h_l141_c8_68cf : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
pos_y_MUX_pong_h_l141_c8_68cf_cond,
pos_y_MUX_pong_h_l141_c8_68cf_iftrue,
pos_y_MUX_pong_h_l141_c8_68cf_iffalse,
pos_y_MUX_pong_h_l141_c8_68cf_return_output);

-- BIN_OP_PLUS_pong_h_l143_c9_08d2 : 0 clocks latency
BIN_OP_PLUS_pong_h_l143_c9_08d2 : entity work.BIN_OP_PLUS_uint12_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_PLUS_pong_h_l143_c9_08d2_left,
BIN_OP_PLUS_pong_h_l143_c9_08d2_right,
BIN_OP_PLUS_pong_h_l143_c9_08d2_return_output);

-- BIN_OP_LTE_pong_h_l143_c9_23b6 : 0 clocks latency
BIN_OP_LTE_pong_h_l143_c9_23b6 : entity work.BIN_OP_LTE_uint13_t_uint9_t_0CLK_e595f783 port map (
BIN_OP_LTE_pong_h_l143_c9_23b6_left,
BIN_OP_LTE_pong_h_l143_c9_23b6_right,
BIN_OP_LTE_pong_h_l143_c9_23b6_return_output);

-- pos_y_MUX_pong_h_l143_c5_4958 : 0 clocks latency
pos_y_MUX_pong_h_l143_c5_4958 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
pos_y_MUX_pong_h_l143_c5_4958_cond,
pos_y_MUX_pong_h_l143_c5_4958_iftrue,
pos_y_MUX_pong_h_l143_c5_4958_iffalse,
pos_y_MUX_pong_h_l143_c5_4958_return_output);

-- BIN_OP_PLUS_pong_h_l145_c7_d13d : 0 clocks latency
BIN_OP_PLUS_pong_h_l145_c7_d13d : entity work.BIN_OP_PLUS_uint12_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_PLUS_pong_h_l145_c7_d13d_left,
BIN_OP_PLUS_pong_h_l145_c7_d13d_right,
BIN_OP_PLUS_pong_h_l145_c7_d13d_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 pos,
 paddle_up,
 paddle_down,
 -- All submodule outputs
 UNARY_OP_NOT_pong_h_l134_c19_0677_return_output,
 BIN_OP_AND_pong_h_l134_c6_9e4e_return_output,
 pos_y_MUX_pong_h_l134_c3_0d0f_return_output,
 BIN_OP_GTE_pong_h_l136_c8_732d_return_output,
 pos_y_MUX_pong_h_l136_c5_ead8_return_output,
 BIN_OP_MINUS_pong_h_l138_c7_a9b3_return_output,
 UNARY_OP_NOT_pong_h_l141_c26_9846_return_output,
 BIN_OP_AND_pong_h_l141_c11_6557_return_output,
 pos_y_MUX_pong_h_l141_c8_68cf_return_output,
 BIN_OP_PLUS_pong_h_l143_c9_08d2_return_output,
 BIN_OP_LTE_pong_h_l143_c9_23b6_return_output,
 pos_y_MUX_pong_h_l143_c5_4958_return_output,
 BIN_OP_PLUS_pong_h_l145_c7_d13d_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : vga_pos_t;
 variable VAR_pos : vga_pos_t;
 variable VAR_paddle_up : unsigned(0 downto 0);
 variable VAR_paddle_down : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l134_c6_9e4e_left : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_pong_h_l134_c19_0677_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_pong_h_l134_c19_0677_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l134_c6_9e4e_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l134_c6_9e4e_return_output : unsigned(0 downto 0);
 variable VAR_pos_y_MUX_pong_h_l134_c3_0d0f_iftrue : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l136_c5_ead8_return_output : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l134_c3_0d0f_iffalse : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l141_c8_68cf_return_output : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l134_c3_0d0f_return_output : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l134_c3_0d0f_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_pong_h_l136_c8_732d_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_pong_h_l136_c8_732d_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_GTE_pong_h_l136_c8_732d_return_output : unsigned(0 downto 0);
 variable VAR_pos_y_MUX_pong_h_l136_c5_ead8_iftrue : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l136_c5_ead8_iffalse : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l136_c5_ead8_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_MINUS_pong_h_l138_c7_a9b3_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_MINUS_pong_h_l138_c7_a9b3_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_MINUS_pong_h_l138_c7_a9b3_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l141_c11_6557_left : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_pong_h_l141_c26_9846_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_pong_h_l141_c26_9846_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l141_c11_6557_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l141_c11_6557_return_output : unsigned(0 downto 0);
 variable VAR_pos_y_MUX_pong_h_l141_c8_68cf_iftrue : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l143_c5_4958_return_output : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l141_c8_68cf_iffalse : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l141_c8_68cf_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l143_c9_08d2_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l143_c9_08d2_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l143_c9_08d2_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_LTE_pong_h_l143_c9_23b6_left : unsigned(12 downto 0);
 variable VAR_BIN_OP_LTE_pong_h_l143_c9_23b6_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_LTE_pong_h_l143_c9_23b6_return_output : unsigned(0 downto 0);
 variable VAR_pos_y_MUX_pong_h_l143_c5_4958_iftrue : unsigned(11 downto 0);
 variable VAR_pos_y_pong_h_l145_c7_2623 : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l143_c5_4958_iffalse : unsigned(11 downto 0);
 variable VAR_pos_y_MUX_pong_h_l143_c5_4958_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l145_c7_d13d_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l145_c7_d13d_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l145_c7_d13d_return_output : unsigned(12 downto 0);
 variable VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_a17f_pong_h_l148_c10_ab8a_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l141_l136_l138_l145_l143_DUPLICATE_9209_return_output : unsigned(11 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_LTE_pong_h_l143_c9_23b6_right := to_unsigned(420, 9);
     VAR_BIN_OP_PLUS_pong_h_l145_c7_d13d_right := to_unsigned(2, 2);
     VAR_BIN_OP_PLUS_pong_h_l143_c9_08d2_right := to_unsigned(2, 2);
     VAR_BIN_OP_MINUS_pong_h_l138_c7_a9b3_right := to_unsigned(2, 2);
     VAR_BIN_OP_GTE_pong_h_l136_c8_732d_right := to_unsigned(2, 2);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_pos := pos;
     VAR_paddle_up := paddle_up;
     VAR_paddle_down := paddle_down;

     -- Submodule level 0
     VAR_BIN_OP_AND_pong_h_l141_c11_6557_left := VAR_paddle_down;
     VAR_UNARY_OP_NOT_pong_h_l134_c19_0677_expr := VAR_paddle_down;
     VAR_BIN_OP_AND_pong_h_l134_c6_9e4e_left := VAR_paddle_up;
     VAR_UNARY_OP_NOT_pong_h_l141_c26_9846_expr := VAR_paddle_up;
     -- UNARY_OP_NOT[pong_h_l141_c26_9846] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_pong_h_l141_c26_9846_expr <= VAR_UNARY_OP_NOT_pong_h_l141_c26_9846_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_pong_h_l141_c26_9846_return_output := UNARY_OP_NOT_pong_h_l141_c26_9846_return_output;

     -- CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l141_l136_l138_l145_l143_DUPLICATE_9209 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l141_l136_l138_l145_l143_DUPLICATE_9209_return_output := VAR_pos.y;

     -- UNARY_OP_NOT[pong_h_l134_c19_0677] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_pong_h_l134_c19_0677_expr <= VAR_UNARY_OP_NOT_pong_h_l134_c19_0677_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_pong_h_l134_c19_0677_return_output := UNARY_OP_NOT_pong_h_l134_c19_0677_return_output;

     -- Submodule level 1
     VAR_BIN_OP_GTE_pong_h_l136_c8_732d_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l141_l136_l138_l145_l143_DUPLICATE_9209_return_output;
     VAR_BIN_OP_MINUS_pong_h_l138_c7_a9b3_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l141_l136_l138_l145_l143_DUPLICATE_9209_return_output;
     VAR_BIN_OP_PLUS_pong_h_l143_c9_08d2_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l141_l136_l138_l145_l143_DUPLICATE_9209_return_output;
     VAR_BIN_OP_PLUS_pong_h_l145_c7_d13d_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l141_l136_l138_l145_l143_DUPLICATE_9209_return_output;
     VAR_pos_y_MUX_pong_h_l136_c5_ead8_iffalse := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l141_l136_l138_l145_l143_DUPLICATE_9209_return_output;
     VAR_pos_y_MUX_pong_h_l141_c8_68cf_iffalse := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l141_l136_l138_l145_l143_DUPLICATE_9209_return_output;
     VAR_pos_y_MUX_pong_h_l143_c5_4958_iffalse := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l141_l136_l138_l145_l143_DUPLICATE_9209_return_output;
     VAR_BIN_OP_AND_pong_h_l134_c6_9e4e_right := VAR_UNARY_OP_NOT_pong_h_l134_c19_0677_return_output;
     VAR_BIN_OP_AND_pong_h_l141_c11_6557_right := VAR_UNARY_OP_NOT_pong_h_l141_c26_9846_return_output;
     -- BIN_OP_MINUS[pong_h_l138_c7_a9b3] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_pong_h_l138_c7_a9b3_left <= VAR_BIN_OP_MINUS_pong_h_l138_c7_a9b3_left;
     BIN_OP_MINUS_pong_h_l138_c7_a9b3_right <= VAR_BIN_OP_MINUS_pong_h_l138_c7_a9b3_right;
     -- Outputs
     VAR_BIN_OP_MINUS_pong_h_l138_c7_a9b3_return_output := BIN_OP_MINUS_pong_h_l138_c7_a9b3_return_output;

     -- BIN_OP_PLUS[pong_h_l143_c9_08d2] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_pong_h_l143_c9_08d2_left <= VAR_BIN_OP_PLUS_pong_h_l143_c9_08d2_left;
     BIN_OP_PLUS_pong_h_l143_c9_08d2_right <= VAR_BIN_OP_PLUS_pong_h_l143_c9_08d2_right;
     -- Outputs
     VAR_BIN_OP_PLUS_pong_h_l143_c9_08d2_return_output := BIN_OP_PLUS_pong_h_l143_c9_08d2_return_output;

     -- BIN_OP_AND[pong_h_l141_c11_6557] LATENCY=0
     -- Inputs
     BIN_OP_AND_pong_h_l141_c11_6557_left <= VAR_BIN_OP_AND_pong_h_l141_c11_6557_left;
     BIN_OP_AND_pong_h_l141_c11_6557_right <= VAR_BIN_OP_AND_pong_h_l141_c11_6557_right;
     -- Outputs
     VAR_BIN_OP_AND_pong_h_l141_c11_6557_return_output := BIN_OP_AND_pong_h_l141_c11_6557_return_output;

     -- BIN_OP_PLUS[pong_h_l145_c7_d13d] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_pong_h_l145_c7_d13d_left <= VAR_BIN_OP_PLUS_pong_h_l145_c7_d13d_left;
     BIN_OP_PLUS_pong_h_l145_c7_d13d_right <= VAR_BIN_OP_PLUS_pong_h_l145_c7_d13d_right;
     -- Outputs
     VAR_BIN_OP_PLUS_pong_h_l145_c7_d13d_return_output := BIN_OP_PLUS_pong_h_l145_c7_d13d_return_output;

     -- BIN_OP_GTE[pong_h_l136_c8_732d] LATENCY=0
     -- Inputs
     BIN_OP_GTE_pong_h_l136_c8_732d_left <= VAR_BIN_OP_GTE_pong_h_l136_c8_732d_left;
     BIN_OP_GTE_pong_h_l136_c8_732d_right <= VAR_BIN_OP_GTE_pong_h_l136_c8_732d_right;
     -- Outputs
     VAR_BIN_OP_GTE_pong_h_l136_c8_732d_return_output := BIN_OP_GTE_pong_h_l136_c8_732d_return_output;

     -- BIN_OP_AND[pong_h_l134_c6_9e4e] LATENCY=0
     -- Inputs
     BIN_OP_AND_pong_h_l134_c6_9e4e_left <= VAR_BIN_OP_AND_pong_h_l134_c6_9e4e_left;
     BIN_OP_AND_pong_h_l134_c6_9e4e_right <= VAR_BIN_OP_AND_pong_h_l134_c6_9e4e_right;
     -- Outputs
     VAR_BIN_OP_AND_pong_h_l134_c6_9e4e_return_output := BIN_OP_AND_pong_h_l134_c6_9e4e_return_output;

     -- Submodule level 2
     VAR_pos_y_MUX_pong_h_l134_c3_0d0f_cond := VAR_BIN_OP_AND_pong_h_l134_c6_9e4e_return_output;
     VAR_pos_y_MUX_pong_h_l141_c8_68cf_cond := VAR_BIN_OP_AND_pong_h_l141_c11_6557_return_output;
     VAR_pos_y_MUX_pong_h_l136_c5_ead8_cond := VAR_BIN_OP_GTE_pong_h_l136_c8_732d_return_output;
     VAR_pos_y_MUX_pong_h_l136_c5_ead8_iftrue := VAR_BIN_OP_MINUS_pong_h_l138_c7_a9b3_return_output;
     VAR_BIN_OP_LTE_pong_h_l143_c9_23b6_left := VAR_BIN_OP_PLUS_pong_h_l143_c9_08d2_return_output;
     VAR_pos_y_pong_h_l145_c7_2623 := resize(VAR_BIN_OP_PLUS_pong_h_l145_c7_d13d_return_output, 12);
     VAR_pos_y_MUX_pong_h_l143_c5_4958_iftrue := VAR_pos_y_pong_h_l145_c7_2623;
     -- BIN_OP_LTE[pong_h_l143_c9_23b6] LATENCY=0
     -- Inputs
     BIN_OP_LTE_pong_h_l143_c9_23b6_left <= VAR_BIN_OP_LTE_pong_h_l143_c9_23b6_left;
     BIN_OP_LTE_pong_h_l143_c9_23b6_right <= VAR_BIN_OP_LTE_pong_h_l143_c9_23b6_right;
     -- Outputs
     VAR_BIN_OP_LTE_pong_h_l143_c9_23b6_return_output := BIN_OP_LTE_pong_h_l143_c9_23b6_return_output;

     -- pos_y_MUX[pong_h_l136_c5_ead8] LATENCY=0
     -- Inputs
     pos_y_MUX_pong_h_l136_c5_ead8_cond <= VAR_pos_y_MUX_pong_h_l136_c5_ead8_cond;
     pos_y_MUX_pong_h_l136_c5_ead8_iftrue <= VAR_pos_y_MUX_pong_h_l136_c5_ead8_iftrue;
     pos_y_MUX_pong_h_l136_c5_ead8_iffalse <= VAR_pos_y_MUX_pong_h_l136_c5_ead8_iffalse;
     -- Outputs
     VAR_pos_y_MUX_pong_h_l136_c5_ead8_return_output := pos_y_MUX_pong_h_l136_c5_ead8_return_output;

     -- Submodule level 3
     VAR_pos_y_MUX_pong_h_l143_c5_4958_cond := VAR_BIN_OP_LTE_pong_h_l143_c9_23b6_return_output;
     VAR_pos_y_MUX_pong_h_l134_c3_0d0f_iftrue := VAR_pos_y_MUX_pong_h_l136_c5_ead8_return_output;
     -- pos_y_MUX[pong_h_l143_c5_4958] LATENCY=0
     -- Inputs
     pos_y_MUX_pong_h_l143_c5_4958_cond <= VAR_pos_y_MUX_pong_h_l143_c5_4958_cond;
     pos_y_MUX_pong_h_l143_c5_4958_iftrue <= VAR_pos_y_MUX_pong_h_l143_c5_4958_iftrue;
     pos_y_MUX_pong_h_l143_c5_4958_iffalse <= VAR_pos_y_MUX_pong_h_l143_c5_4958_iffalse;
     -- Outputs
     VAR_pos_y_MUX_pong_h_l143_c5_4958_return_output := pos_y_MUX_pong_h_l143_c5_4958_return_output;

     -- Submodule level 4
     VAR_pos_y_MUX_pong_h_l141_c8_68cf_iftrue := VAR_pos_y_MUX_pong_h_l143_c5_4958_return_output;
     -- pos_y_MUX[pong_h_l141_c8_68cf] LATENCY=0
     -- Inputs
     pos_y_MUX_pong_h_l141_c8_68cf_cond <= VAR_pos_y_MUX_pong_h_l141_c8_68cf_cond;
     pos_y_MUX_pong_h_l141_c8_68cf_iftrue <= VAR_pos_y_MUX_pong_h_l141_c8_68cf_iftrue;
     pos_y_MUX_pong_h_l141_c8_68cf_iffalse <= VAR_pos_y_MUX_pong_h_l141_c8_68cf_iffalse;
     -- Outputs
     VAR_pos_y_MUX_pong_h_l141_c8_68cf_return_output := pos_y_MUX_pong_h_l141_c8_68cf_return_output;

     -- Submodule level 5
     VAR_pos_y_MUX_pong_h_l134_c3_0d0f_iffalse := VAR_pos_y_MUX_pong_h_l141_c8_68cf_return_output;
     -- pos_y_MUX[pong_h_l134_c3_0d0f] LATENCY=0
     -- Inputs
     pos_y_MUX_pong_h_l134_c3_0d0f_cond <= VAR_pos_y_MUX_pong_h_l134_c3_0d0f_cond;
     pos_y_MUX_pong_h_l134_c3_0d0f_iftrue <= VAR_pos_y_MUX_pong_h_l134_c3_0d0f_iftrue;
     pos_y_MUX_pong_h_l134_c3_0d0f_iffalse <= VAR_pos_y_MUX_pong_h_l134_c3_0d0f_iffalse;
     -- Outputs
     VAR_pos_y_MUX_pong_h_l134_c3_0d0f_return_output := pos_y_MUX_pong_h_l134_c3_0d0f_return_output;

     -- Submodule level 6
     -- CONST_REF_RD_vga_pos_t_vga_pos_t_a17f[pong_h_l148_c10_ab8a] LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_a17f_pong_h_l148_c10_ab8a_return_output := CONST_REF_RD_vga_pos_t_vga_pos_t_a17f(
     VAR_pos,
     VAR_pos_y_MUX_pong_h_l134_c3_0d0f_return_output);

     -- Submodule level 7
     VAR_return_output := VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_a17f_pong_h_l148_c10_ab8a_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
