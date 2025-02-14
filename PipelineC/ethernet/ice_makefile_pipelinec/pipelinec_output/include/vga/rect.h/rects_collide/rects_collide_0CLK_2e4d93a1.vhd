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
-- Submodules: 12
entity rects_collide_0CLK_2e4d93a1 is
port(
 r0 : in rect_t;
 r1 : in rect_t;
 return_output : out unsigned(0 downto 0));
end rects_collide_0CLK_2e4d93a1;
architecture arch of rects_collide_0CLK_2e4d93a1 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_PLUS[rect_h_l32_c23_e8c7]
signal BIN_OP_PLUS_rect_h_l32_c23_e8c7_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l32_c23_e8c7_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l32_c23_e8c7_return_output : unsigned(12 downto 0);

-- BIN_OP_PLUS[rect_h_l34_c24_9061]
signal BIN_OP_PLUS_rect_h_l34_c24_9061_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l34_c24_9061_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l34_c24_9061_return_output : unsigned(12 downto 0);

-- BIN_OP_PLUS[rect_h_l37_c23_e3ea]
signal BIN_OP_PLUS_rect_h_l37_c23_e3ea_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l37_c23_e3ea_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l37_c23_e3ea_return_output : unsigned(12 downto 0);

-- BIN_OP_PLUS[rect_h_l39_c24_92ec]
signal BIN_OP_PLUS_rect_h_l39_c24_92ec_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l39_c24_92ec_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l39_c24_92ec_return_output : unsigned(12 downto 0);

-- BIN_OP_LT[rect_h_l41_c13_04f0]
signal BIN_OP_LT_rect_h_l41_c13_04f0_left : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l41_c13_04f0_right : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l41_c13_04f0_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[rect_h_l41_c36_339d]
signal BIN_OP_LT_rect_h_l41_c36_339d_left : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l41_c36_339d_right : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l41_c36_339d_return_output : unsigned(0 downto 0);

-- BIN_OP_OR[rect_h_l41_c13_3e09]
signal BIN_OP_OR_rect_h_l41_c13_3e09_left : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_3e09_right : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_3e09_return_output : unsigned(0 downto 0);

-- BIN_OP_GT[rect_h_l41_c59_dd19]
signal BIN_OP_GT_rect_h_l41_c59_dd19_left : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l41_c59_dd19_right : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l41_c59_dd19_return_output : unsigned(0 downto 0);

-- BIN_OP_OR[rect_h_l41_c13_2e96]
signal BIN_OP_OR_rect_h_l41_c13_2e96_left : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_2e96_right : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_2e96_return_output : unsigned(0 downto 0);

-- BIN_OP_GT[rect_h_l41_c82_4ab2]
signal BIN_OP_GT_rect_h_l41_c82_4ab2_left : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l41_c82_4ab2_right : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l41_c82_4ab2_return_output : unsigned(0 downto 0);

-- BIN_OP_OR[rect_h_l41_c13_c1be]
signal BIN_OP_OR_rect_h_l41_c13_c1be_left : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_c1be_right : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_c1be_return_output : unsigned(0 downto 0);

-- UNARY_OP_NOT[rect_h_l41_c13_b4fc]
signal UNARY_OP_NOT_rect_h_l41_c13_b4fc_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_rect_h_l41_c13_b4fc_return_output : unsigned(0 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_PLUS_rect_h_l32_c23_e8c7 : 0 clocks latency
BIN_OP_PLUS_rect_h_l32_c23_e8c7 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l32_c23_e8c7_left,
BIN_OP_PLUS_rect_h_l32_c23_e8c7_right,
BIN_OP_PLUS_rect_h_l32_c23_e8c7_return_output);

-- BIN_OP_PLUS_rect_h_l34_c24_9061 : 0 clocks latency
BIN_OP_PLUS_rect_h_l34_c24_9061 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l34_c24_9061_left,
BIN_OP_PLUS_rect_h_l34_c24_9061_right,
BIN_OP_PLUS_rect_h_l34_c24_9061_return_output);

-- BIN_OP_PLUS_rect_h_l37_c23_e3ea : 0 clocks latency
BIN_OP_PLUS_rect_h_l37_c23_e3ea : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l37_c23_e3ea_left,
BIN_OP_PLUS_rect_h_l37_c23_e3ea_right,
BIN_OP_PLUS_rect_h_l37_c23_e3ea_return_output);

-- BIN_OP_PLUS_rect_h_l39_c24_92ec : 0 clocks latency
BIN_OP_PLUS_rect_h_l39_c24_92ec : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l39_c24_92ec_left,
BIN_OP_PLUS_rect_h_l39_c24_92ec_right,
BIN_OP_PLUS_rect_h_l39_c24_92ec_return_output);

-- BIN_OP_LT_rect_h_l41_c13_04f0 : 0 clocks latency
BIN_OP_LT_rect_h_l41_c13_04f0 : entity work.BIN_OP_LT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_LT_rect_h_l41_c13_04f0_left,
BIN_OP_LT_rect_h_l41_c13_04f0_right,
BIN_OP_LT_rect_h_l41_c13_04f0_return_output);

-- BIN_OP_LT_rect_h_l41_c36_339d : 0 clocks latency
BIN_OP_LT_rect_h_l41_c36_339d : entity work.BIN_OP_LT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_LT_rect_h_l41_c36_339d_left,
BIN_OP_LT_rect_h_l41_c36_339d_right,
BIN_OP_LT_rect_h_l41_c36_339d_return_output);

-- BIN_OP_OR_rect_h_l41_c13_3e09 : 0 clocks latency
BIN_OP_OR_rect_h_l41_c13_3e09 : entity work.BIN_OP_OR_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_OR_rect_h_l41_c13_3e09_left,
BIN_OP_OR_rect_h_l41_c13_3e09_right,
BIN_OP_OR_rect_h_l41_c13_3e09_return_output);

-- BIN_OP_GT_rect_h_l41_c59_dd19 : 0 clocks latency
BIN_OP_GT_rect_h_l41_c59_dd19 : entity work.BIN_OP_GT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_GT_rect_h_l41_c59_dd19_left,
BIN_OP_GT_rect_h_l41_c59_dd19_right,
BIN_OP_GT_rect_h_l41_c59_dd19_return_output);

-- BIN_OP_OR_rect_h_l41_c13_2e96 : 0 clocks latency
BIN_OP_OR_rect_h_l41_c13_2e96 : entity work.BIN_OP_OR_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_OR_rect_h_l41_c13_2e96_left,
BIN_OP_OR_rect_h_l41_c13_2e96_right,
BIN_OP_OR_rect_h_l41_c13_2e96_return_output);

-- BIN_OP_GT_rect_h_l41_c82_4ab2 : 0 clocks latency
BIN_OP_GT_rect_h_l41_c82_4ab2 : entity work.BIN_OP_GT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_GT_rect_h_l41_c82_4ab2_left,
BIN_OP_GT_rect_h_l41_c82_4ab2_right,
BIN_OP_GT_rect_h_l41_c82_4ab2_return_output);

-- BIN_OP_OR_rect_h_l41_c13_c1be : 0 clocks latency
BIN_OP_OR_rect_h_l41_c13_c1be : entity work.BIN_OP_OR_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_OR_rect_h_l41_c13_c1be_left,
BIN_OP_OR_rect_h_l41_c13_c1be_right,
BIN_OP_OR_rect_h_l41_c13_c1be_return_output);

-- UNARY_OP_NOT_rect_h_l41_c13_b4fc : 0 clocks latency
UNARY_OP_NOT_rect_h_l41_c13_b4fc : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_rect_h_l41_c13_b4fc_expr,
UNARY_OP_NOT_rect_h_l41_c13_b4fc_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 r0,
 r1,
 -- All submodule outputs
 BIN_OP_PLUS_rect_h_l32_c23_e8c7_return_output,
 BIN_OP_PLUS_rect_h_l34_c24_9061_return_output,
 BIN_OP_PLUS_rect_h_l37_c23_e3ea_return_output,
 BIN_OP_PLUS_rect_h_l39_c24_92ec_return_output,
 BIN_OP_LT_rect_h_l41_c13_04f0_return_output,
 BIN_OP_LT_rect_h_l41_c36_339d_return_output,
 BIN_OP_OR_rect_h_l41_c13_3e09_return_output,
 BIN_OP_GT_rect_h_l41_c59_dd19_return_output,
 BIN_OP_OR_rect_h_l41_c13_2e96_return_output,
 BIN_OP_GT_rect_h_l41_c82_4ab2_return_output,
 BIN_OP_OR_rect_h_l41_c13_c1be_return_output,
 UNARY_OP_NOT_rect_h_l41_c13_b4fc_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_r0 : rect_t;
 variable VAR_r1 : rect_t;
 variable VAR_r0_left : unsigned(11 downto 0);
 variable VAR_r0_right : unsigned(11 downto 0);
 variable VAR_r0_right_rect_h_l32_c12_c66c_0 : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l32_c23_e8c7_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l32_c34_909b_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l32_c23_e8c7_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l32_c23_e8c7_return_output : unsigned(12 downto 0);
 variable VAR_r0_top : unsigned(11 downto 0);
 variable VAR_r0_bottom : unsigned(11 downto 0);
 variable VAR_r0_bottom_rect_h_l34_c12_860a_0 : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l34_c24_9061_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l34_c35_6a7f_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l34_c24_9061_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l34_c24_9061_return_output : unsigned(12 downto 0);
 variable VAR_r1_left : unsigned(11 downto 0);
 variable VAR_r1_right : unsigned(11 downto 0);
 variable VAR_r1_right_rect_h_l37_c12_6ee4_0 : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l37_c23_e3ea_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l37_c34_efa5_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l37_c23_e3ea_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l37_c23_e3ea_return_output : unsigned(12 downto 0);
 variable VAR_r1_top : unsigned(11 downto 0);
 variable VAR_r1_bottom : unsigned(11 downto 0);
 variable VAR_r1_bottom_rect_h_l39_c12_5d24_0 : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l39_c24_92ec_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l39_c35_15a4_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l39_c24_92ec_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l39_c24_92ec_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c13_04f0_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c13_04f0_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c13_04f0_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_3e09_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c36_339d_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c36_339d_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c36_339d_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_3e09_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_3e09_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_2e96_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c59_dd19_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c59_dd19_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c59_dd19_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_2e96_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_2e96_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_c1be_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c82_4ab2_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c82_4ab2_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c82_4ab2_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_c1be_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_c1be_return_output : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_rect_h_l41_c13_b4fc_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_rect_h_l41_c13_b4fc_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l32_l31_DUPLICATE_4c38_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l33_l34_DUPLICATE_9d04_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l37_l36_DUPLICATE_b12d_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l39_l38_DUPLICATE_8e84_return_output : unsigned(11 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_r0 := r0;
     VAR_r1 := r1;

     -- Submodule level 0
     -- CONST_REF_RD_uint12_t_rect_t_dim_y_d41d[rect_h_l34_c35_6a7f] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l34_c35_6a7f_return_output := VAR_r0.dim.y;

     -- CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l37_l36_DUPLICATE_b12d LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l37_l36_DUPLICATE_b12d_return_output := VAR_r1.pos.x;

     -- CONST_REF_RD_uint12_t_rect_t_dim_y_d41d[rect_h_l39_c35_15a4] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l39_c35_15a4_return_output := VAR_r1.dim.y;

     -- CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l39_l38_DUPLICATE_8e84 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l39_l38_DUPLICATE_8e84_return_output := VAR_r1.pos.y;

     -- CONST_REF_RD_uint12_t_rect_t_dim_x_d41d[rect_h_l32_c34_909b] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l32_c34_909b_return_output := VAR_r0.dim.x;

     -- CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l32_l31_DUPLICATE_4c38 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l32_l31_DUPLICATE_4c38_return_output := VAR_r0.pos.x;

     -- CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l33_l34_DUPLICATE_9d04 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l33_l34_DUPLICATE_9d04_return_output := VAR_r0.pos.y;

     -- CONST_REF_RD_uint12_t_rect_t_dim_x_d41d[rect_h_l37_c34_efa5] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l37_c34_efa5_return_output := VAR_r1.dim.x;

     -- Submodule level 1
     VAR_BIN_OP_PLUS_rect_h_l32_c23_e8c7_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l32_c34_909b_return_output;
     VAR_BIN_OP_PLUS_rect_h_l37_c23_e3ea_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l37_c34_efa5_return_output;
     VAR_BIN_OP_PLUS_rect_h_l34_c24_9061_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l34_c35_6a7f_return_output;
     VAR_BIN_OP_PLUS_rect_h_l39_c24_92ec_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l39_c35_15a4_return_output;
     VAR_BIN_OP_GT_rect_h_l41_c59_dd19_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l32_l31_DUPLICATE_4c38_return_output;
     VAR_BIN_OP_PLUS_rect_h_l32_c23_e8c7_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l32_l31_DUPLICATE_4c38_return_output;
     VAR_BIN_OP_LT_rect_h_l41_c13_04f0_right := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l37_l36_DUPLICATE_b12d_return_output;
     VAR_BIN_OP_PLUS_rect_h_l37_c23_e3ea_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l37_l36_DUPLICATE_b12d_return_output;
     VAR_BIN_OP_GT_rect_h_l41_c82_4ab2_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l33_l34_DUPLICATE_9d04_return_output;
     VAR_BIN_OP_PLUS_rect_h_l34_c24_9061_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l33_l34_DUPLICATE_9d04_return_output;
     VAR_BIN_OP_LT_rect_h_l41_c36_339d_right := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l39_l38_DUPLICATE_8e84_return_output;
     VAR_BIN_OP_PLUS_rect_h_l39_c24_92ec_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l39_l38_DUPLICATE_8e84_return_output;
     -- BIN_OP_PLUS[rect_h_l39_c24_92ec] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l39_c24_92ec_left <= VAR_BIN_OP_PLUS_rect_h_l39_c24_92ec_left;
     BIN_OP_PLUS_rect_h_l39_c24_92ec_right <= VAR_BIN_OP_PLUS_rect_h_l39_c24_92ec_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l39_c24_92ec_return_output := BIN_OP_PLUS_rect_h_l39_c24_92ec_return_output;

     -- BIN_OP_PLUS[rect_h_l34_c24_9061] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l34_c24_9061_left <= VAR_BIN_OP_PLUS_rect_h_l34_c24_9061_left;
     BIN_OP_PLUS_rect_h_l34_c24_9061_right <= VAR_BIN_OP_PLUS_rect_h_l34_c24_9061_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l34_c24_9061_return_output := BIN_OP_PLUS_rect_h_l34_c24_9061_return_output;

     -- BIN_OP_PLUS[rect_h_l32_c23_e8c7] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l32_c23_e8c7_left <= VAR_BIN_OP_PLUS_rect_h_l32_c23_e8c7_left;
     BIN_OP_PLUS_rect_h_l32_c23_e8c7_right <= VAR_BIN_OP_PLUS_rect_h_l32_c23_e8c7_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l32_c23_e8c7_return_output := BIN_OP_PLUS_rect_h_l32_c23_e8c7_return_output;

     -- BIN_OP_PLUS[rect_h_l37_c23_e3ea] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l37_c23_e3ea_left <= VAR_BIN_OP_PLUS_rect_h_l37_c23_e3ea_left;
     BIN_OP_PLUS_rect_h_l37_c23_e3ea_right <= VAR_BIN_OP_PLUS_rect_h_l37_c23_e3ea_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l37_c23_e3ea_return_output := BIN_OP_PLUS_rect_h_l37_c23_e3ea_return_output;

     -- Submodule level 2
     VAR_r0_right_rect_h_l32_c12_c66c_0 := resize(VAR_BIN_OP_PLUS_rect_h_l32_c23_e8c7_return_output, 12);
     VAR_r0_bottom_rect_h_l34_c12_860a_0 := resize(VAR_BIN_OP_PLUS_rect_h_l34_c24_9061_return_output, 12);
     VAR_r1_right_rect_h_l37_c12_6ee4_0 := resize(VAR_BIN_OP_PLUS_rect_h_l37_c23_e3ea_return_output, 12);
     VAR_r1_bottom_rect_h_l39_c12_5d24_0 := resize(VAR_BIN_OP_PLUS_rect_h_l39_c24_92ec_return_output, 12);
     VAR_BIN_OP_LT_rect_h_l41_c36_339d_left := VAR_r0_bottom_rect_h_l34_c12_860a_0;
     VAR_BIN_OP_LT_rect_h_l41_c13_04f0_left := VAR_r0_right_rect_h_l32_c12_c66c_0;
     VAR_BIN_OP_GT_rect_h_l41_c82_4ab2_right := VAR_r1_bottom_rect_h_l39_c12_5d24_0;
     VAR_BIN_OP_GT_rect_h_l41_c59_dd19_right := VAR_r1_right_rect_h_l37_c12_6ee4_0;
     -- BIN_OP_LT[rect_h_l41_c36_339d] LATENCY=0
     -- Inputs
     BIN_OP_LT_rect_h_l41_c36_339d_left <= VAR_BIN_OP_LT_rect_h_l41_c36_339d_left;
     BIN_OP_LT_rect_h_l41_c36_339d_right <= VAR_BIN_OP_LT_rect_h_l41_c36_339d_right;
     -- Outputs
     VAR_BIN_OP_LT_rect_h_l41_c36_339d_return_output := BIN_OP_LT_rect_h_l41_c36_339d_return_output;

     -- BIN_OP_GT[rect_h_l41_c59_dd19] LATENCY=0
     -- Inputs
     BIN_OP_GT_rect_h_l41_c59_dd19_left <= VAR_BIN_OP_GT_rect_h_l41_c59_dd19_left;
     BIN_OP_GT_rect_h_l41_c59_dd19_right <= VAR_BIN_OP_GT_rect_h_l41_c59_dd19_right;
     -- Outputs
     VAR_BIN_OP_GT_rect_h_l41_c59_dd19_return_output := BIN_OP_GT_rect_h_l41_c59_dd19_return_output;

     -- BIN_OP_GT[rect_h_l41_c82_4ab2] LATENCY=0
     -- Inputs
     BIN_OP_GT_rect_h_l41_c82_4ab2_left <= VAR_BIN_OP_GT_rect_h_l41_c82_4ab2_left;
     BIN_OP_GT_rect_h_l41_c82_4ab2_right <= VAR_BIN_OP_GT_rect_h_l41_c82_4ab2_right;
     -- Outputs
     VAR_BIN_OP_GT_rect_h_l41_c82_4ab2_return_output := BIN_OP_GT_rect_h_l41_c82_4ab2_return_output;

     -- BIN_OP_LT[rect_h_l41_c13_04f0] LATENCY=0
     -- Inputs
     BIN_OP_LT_rect_h_l41_c13_04f0_left <= VAR_BIN_OP_LT_rect_h_l41_c13_04f0_left;
     BIN_OP_LT_rect_h_l41_c13_04f0_right <= VAR_BIN_OP_LT_rect_h_l41_c13_04f0_right;
     -- Outputs
     VAR_BIN_OP_LT_rect_h_l41_c13_04f0_return_output := BIN_OP_LT_rect_h_l41_c13_04f0_return_output;

     -- Submodule level 3
     VAR_BIN_OP_OR_rect_h_l41_c13_2e96_right := VAR_BIN_OP_GT_rect_h_l41_c59_dd19_return_output;
     VAR_BIN_OP_OR_rect_h_l41_c13_c1be_right := VAR_BIN_OP_GT_rect_h_l41_c82_4ab2_return_output;
     VAR_BIN_OP_OR_rect_h_l41_c13_3e09_left := VAR_BIN_OP_LT_rect_h_l41_c13_04f0_return_output;
     VAR_BIN_OP_OR_rect_h_l41_c13_3e09_right := VAR_BIN_OP_LT_rect_h_l41_c36_339d_return_output;
     -- BIN_OP_OR[rect_h_l41_c13_3e09] LATENCY=0
     -- Inputs
     BIN_OP_OR_rect_h_l41_c13_3e09_left <= VAR_BIN_OP_OR_rect_h_l41_c13_3e09_left;
     BIN_OP_OR_rect_h_l41_c13_3e09_right <= VAR_BIN_OP_OR_rect_h_l41_c13_3e09_right;
     -- Outputs
     VAR_BIN_OP_OR_rect_h_l41_c13_3e09_return_output := BIN_OP_OR_rect_h_l41_c13_3e09_return_output;

     -- Submodule level 4
     VAR_BIN_OP_OR_rect_h_l41_c13_2e96_left := VAR_BIN_OP_OR_rect_h_l41_c13_3e09_return_output;
     -- BIN_OP_OR[rect_h_l41_c13_2e96] LATENCY=0
     -- Inputs
     BIN_OP_OR_rect_h_l41_c13_2e96_left <= VAR_BIN_OP_OR_rect_h_l41_c13_2e96_left;
     BIN_OP_OR_rect_h_l41_c13_2e96_right <= VAR_BIN_OP_OR_rect_h_l41_c13_2e96_right;
     -- Outputs
     VAR_BIN_OP_OR_rect_h_l41_c13_2e96_return_output := BIN_OP_OR_rect_h_l41_c13_2e96_return_output;

     -- Submodule level 5
     VAR_BIN_OP_OR_rect_h_l41_c13_c1be_left := VAR_BIN_OP_OR_rect_h_l41_c13_2e96_return_output;
     -- BIN_OP_OR[rect_h_l41_c13_c1be] LATENCY=0
     -- Inputs
     BIN_OP_OR_rect_h_l41_c13_c1be_left <= VAR_BIN_OP_OR_rect_h_l41_c13_c1be_left;
     BIN_OP_OR_rect_h_l41_c13_c1be_right <= VAR_BIN_OP_OR_rect_h_l41_c13_c1be_right;
     -- Outputs
     VAR_BIN_OP_OR_rect_h_l41_c13_c1be_return_output := BIN_OP_OR_rect_h_l41_c13_c1be_return_output;

     -- Submodule level 6
     VAR_UNARY_OP_NOT_rect_h_l41_c13_b4fc_expr := VAR_BIN_OP_OR_rect_h_l41_c13_c1be_return_output;
     -- UNARY_OP_NOT[rect_h_l41_c13_b4fc] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_rect_h_l41_c13_b4fc_expr <= VAR_UNARY_OP_NOT_rect_h_l41_c13_b4fc_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_rect_h_l41_c13_b4fc_return_output := UNARY_OP_NOT_rect_h_l41_c13_b4fc_return_output;

     -- Submodule level 7
     VAR_return_output := VAR_UNARY_OP_NOT_rect_h_l41_c13_b4fc_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
