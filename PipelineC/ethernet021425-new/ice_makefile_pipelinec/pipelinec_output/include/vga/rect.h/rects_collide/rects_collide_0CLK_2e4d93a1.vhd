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
-- BIN_OP_PLUS[rect_h_l32_c23_f6f0]
signal BIN_OP_PLUS_rect_h_l32_c23_f6f0_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l32_c23_f6f0_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l32_c23_f6f0_return_output : unsigned(12 downto 0);

-- BIN_OP_PLUS[rect_h_l34_c24_2714]
signal BIN_OP_PLUS_rect_h_l34_c24_2714_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l34_c24_2714_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l34_c24_2714_return_output : unsigned(12 downto 0);

-- BIN_OP_PLUS[rect_h_l37_c23_8f64]
signal BIN_OP_PLUS_rect_h_l37_c23_8f64_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l37_c23_8f64_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l37_c23_8f64_return_output : unsigned(12 downto 0);

-- BIN_OP_PLUS[rect_h_l39_c24_6147]
signal BIN_OP_PLUS_rect_h_l39_c24_6147_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l39_c24_6147_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l39_c24_6147_return_output : unsigned(12 downto 0);

-- BIN_OP_LT[rect_h_l41_c13_5547]
signal BIN_OP_LT_rect_h_l41_c13_5547_left : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l41_c13_5547_right : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l41_c13_5547_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[rect_h_l41_c36_5241]
signal BIN_OP_LT_rect_h_l41_c36_5241_left : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l41_c36_5241_right : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l41_c36_5241_return_output : unsigned(0 downto 0);

-- BIN_OP_OR[rect_h_l41_c13_4345]
signal BIN_OP_OR_rect_h_l41_c13_4345_left : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_4345_right : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_4345_return_output : unsigned(0 downto 0);

-- BIN_OP_GT[rect_h_l41_c59_198d]
signal BIN_OP_GT_rect_h_l41_c59_198d_left : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l41_c59_198d_right : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l41_c59_198d_return_output : unsigned(0 downto 0);

-- BIN_OP_OR[rect_h_l41_c13_fbbb]
signal BIN_OP_OR_rect_h_l41_c13_fbbb_left : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_fbbb_right : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_fbbb_return_output : unsigned(0 downto 0);

-- BIN_OP_GT[rect_h_l41_c82_73f2]
signal BIN_OP_GT_rect_h_l41_c82_73f2_left : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l41_c82_73f2_right : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l41_c82_73f2_return_output : unsigned(0 downto 0);

-- BIN_OP_OR[rect_h_l41_c13_6888]
signal BIN_OP_OR_rect_h_l41_c13_6888_left : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_6888_right : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_6888_return_output : unsigned(0 downto 0);

-- UNARY_OP_NOT[rect_h_l41_c13_f0e6]
signal UNARY_OP_NOT_rect_h_l41_c13_f0e6_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_rect_h_l41_c13_f0e6_return_output : unsigned(0 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_PLUS_rect_h_l32_c23_f6f0 : 0 clocks latency
BIN_OP_PLUS_rect_h_l32_c23_f6f0 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l32_c23_f6f0_left,
BIN_OP_PLUS_rect_h_l32_c23_f6f0_right,
BIN_OP_PLUS_rect_h_l32_c23_f6f0_return_output);

-- BIN_OP_PLUS_rect_h_l34_c24_2714 : 0 clocks latency
BIN_OP_PLUS_rect_h_l34_c24_2714 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l34_c24_2714_left,
BIN_OP_PLUS_rect_h_l34_c24_2714_right,
BIN_OP_PLUS_rect_h_l34_c24_2714_return_output);

-- BIN_OP_PLUS_rect_h_l37_c23_8f64 : 0 clocks latency
BIN_OP_PLUS_rect_h_l37_c23_8f64 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l37_c23_8f64_left,
BIN_OP_PLUS_rect_h_l37_c23_8f64_right,
BIN_OP_PLUS_rect_h_l37_c23_8f64_return_output);

-- BIN_OP_PLUS_rect_h_l39_c24_6147 : 0 clocks latency
BIN_OP_PLUS_rect_h_l39_c24_6147 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l39_c24_6147_left,
BIN_OP_PLUS_rect_h_l39_c24_6147_right,
BIN_OP_PLUS_rect_h_l39_c24_6147_return_output);

-- BIN_OP_LT_rect_h_l41_c13_5547 : 0 clocks latency
BIN_OP_LT_rect_h_l41_c13_5547 : entity work.BIN_OP_LT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_LT_rect_h_l41_c13_5547_left,
BIN_OP_LT_rect_h_l41_c13_5547_right,
BIN_OP_LT_rect_h_l41_c13_5547_return_output);

-- BIN_OP_LT_rect_h_l41_c36_5241 : 0 clocks latency
BIN_OP_LT_rect_h_l41_c36_5241 : entity work.BIN_OP_LT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_LT_rect_h_l41_c36_5241_left,
BIN_OP_LT_rect_h_l41_c36_5241_right,
BIN_OP_LT_rect_h_l41_c36_5241_return_output);

-- BIN_OP_OR_rect_h_l41_c13_4345 : 0 clocks latency
BIN_OP_OR_rect_h_l41_c13_4345 : entity work.BIN_OP_OR_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_OR_rect_h_l41_c13_4345_left,
BIN_OP_OR_rect_h_l41_c13_4345_right,
BIN_OP_OR_rect_h_l41_c13_4345_return_output);

-- BIN_OP_GT_rect_h_l41_c59_198d : 0 clocks latency
BIN_OP_GT_rect_h_l41_c59_198d : entity work.BIN_OP_GT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_GT_rect_h_l41_c59_198d_left,
BIN_OP_GT_rect_h_l41_c59_198d_right,
BIN_OP_GT_rect_h_l41_c59_198d_return_output);

-- BIN_OP_OR_rect_h_l41_c13_fbbb : 0 clocks latency
BIN_OP_OR_rect_h_l41_c13_fbbb : entity work.BIN_OP_OR_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_OR_rect_h_l41_c13_fbbb_left,
BIN_OP_OR_rect_h_l41_c13_fbbb_right,
BIN_OP_OR_rect_h_l41_c13_fbbb_return_output);

-- BIN_OP_GT_rect_h_l41_c82_73f2 : 0 clocks latency
BIN_OP_GT_rect_h_l41_c82_73f2 : entity work.BIN_OP_GT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_GT_rect_h_l41_c82_73f2_left,
BIN_OP_GT_rect_h_l41_c82_73f2_right,
BIN_OP_GT_rect_h_l41_c82_73f2_return_output);

-- BIN_OP_OR_rect_h_l41_c13_6888 : 0 clocks latency
BIN_OP_OR_rect_h_l41_c13_6888 : entity work.BIN_OP_OR_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_OR_rect_h_l41_c13_6888_left,
BIN_OP_OR_rect_h_l41_c13_6888_right,
BIN_OP_OR_rect_h_l41_c13_6888_return_output);

-- UNARY_OP_NOT_rect_h_l41_c13_f0e6 : 0 clocks latency
UNARY_OP_NOT_rect_h_l41_c13_f0e6 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_rect_h_l41_c13_f0e6_expr,
UNARY_OP_NOT_rect_h_l41_c13_f0e6_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 r0,
 r1,
 -- All submodule outputs
 BIN_OP_PLUS_rect_h_l32_c23_f6f0_return_output,
 BIN_OP_PLUS_rect_h_l34_c24_2714_return_output,
 BIN_OP_PLUS_rect_h_l37_c23_8f64_return_output,
 BIN_OP_PLUS_rect_h_l39_c24_6147_return_output,
 BIN_OP_LT_rect_h_l41_c13_5547_return_output,
 BIN_OP_LT_rect_h_l41_c36_5241_return_output,
 BIN_OP_OR_rect_h_l41_c13_4345_return_output,
 BIN_OP_GT_rect_h_l41_c59_198d_return_output,
 BIN_OP_OR_rect_h_l41_c13_fbbb_return_output,
 BIN_OP_GT_rect_h_l41_c82_73f2_return_output,
 BIN_OP_OR_rect_h_l41_c13_6888_return_output,
 UNARY_OP_NOT_rect_h_l41_c13_f0e6_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_r0 : rect_t;
 variable VAR_r1 : rect_t;
 variable VAR_r0_left : unsigned(11 downto 0);
 variable VAR_r0_right : unsigned(11 downto 0);
 variable VAR_r0_right_rect_h_l32_c12_876a_0 : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l32_c23_f6f0_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l32_c34_d498_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l32_c23_f6f0_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l32_c23_f6f0_return_output : unsigned(12 downto 0);
 variable VAR_r0_top : unsigned(11 downto 0);
 variable VAR_r0_bottom : unsigned(11 downto 0);
 variable VAR_r0_bottom_rect_h_l34_c12_5ebd_0 : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l34_c24_2714_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l34_c35_14a1_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l34_c24_2714_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l34_c24_2714_return_output : unsigned(12 downto 0);
 variable VAR_r1_left : unsigned(11 downto 0);
 variable VAR_r1_right : unsigned(11 downto 0);
 variable VAR_r1_right_rect_h_l37_c12_d0e3_0 : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l37_c23_8f64_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l37_c34_5c8d_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l37_c23_8f64_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l37_c23_8f64_return_output : unsigned(12 downto 0);
 variable VAR_r1_top : unsigned(11 downto 0);
 variable VAR_r1_bottom : unsigned(11 downto 0);
 variable VAR_r1_bottom_rect_h_l39_c12_3ecd_0 : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l39_c24_6147_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l39_c35_e3fd_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l39_c24_6147_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l39_c24_6147_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c13_5547_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c13_5547_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c13_5547_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_4345_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c36_5241_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c36_5241_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c36_5241_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_4345_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_4345_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_fbbb_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c59_198d_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c59_198d_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c59_198d_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_fbbb_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_fbbb_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_6888_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c82_73f2_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c82_73f2_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c82_73f2_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_6888_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_6888_return_output : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_rect_h_l41_c13_f0e6_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_rect_h_l41_c13_f0e6_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l32_l31_DUPLICATE_2f05_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l34_l33_DUPLICATE_a0ad_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l36_l37_DUPLICATE_d3d0_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l39_l38_DUPLICATE_41ed_return_output : unsigned(11 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_r0 := r0;
     VAR_r1 := r1;

     -- Submodule level 0
     -- CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l36_l37_DUPLICATE_d3d0 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l36_l37_DUPLICATE_d3d0_return_output := VAR_r1.pos.x;

     -- CONST_REF_RD_uint12_t_rect_t_dim_y_d41d[rect_h_l34_c35_14a1] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l34_c35_14a1_return_output := VAR_r0.dim.y;

     -- CONST_REF_RD_uint12_t_rect_t_dim_x_d41d[rect_h_l37_c34_5c8d] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l37_c34_5c8d_return_output := VAR_r1.dim.x;

     -- CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l39_l38_DUPLICATE_41ed LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l39_l38_DUPLICATE_41ed_return_output := VAR_r1.pos.y;

     -- CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l34_l33_DUPLICATE_a0ad LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l34_l33_DUPLICATE_a0ad_return_output := VAR_r0.pos.y;

     -- CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l32_l31_DUPLICATE_2f05 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l32_l31_DUPLICATE_2f05_return_output := VAR_r0.pos.x;

     -- CONST_REF_RD_uint12_t_rect_t_dim_x_d41d[rect_h_l32_c34_d498] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l32_c34_d498_return_output := VAR_r0.dim.x;

     -- CONST_REF_RD_uint12_t_rect_t_dim_y_d41d[rect_h_l39_c35_e3fd] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l39_c35_e3fd_return_output := VAR_r1.dim.y;

     -- Submodule level 1
     VAR_BIN_OP_PLUS_rect_h_l32_c23_f6f0_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l32_c34_d498_return_output;
     VAR_BIN_OP_PLUS_rect_h_l37_c23_8f64_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l37_c34_5c8d_return_output;
     VAR_BIN_OP_PLUS_rect_h_l34_c24_2714_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l34_c35_14a1_return_output;
     VAR_BIN_OP_PLUS_rect_h_l39_c24_6147_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l39_c35_e3fd_return_output;
     VAR_BIN_OP_GT_rect_h_l41_c59_198d_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l32_l31_DUPLICATE_2f05_return_output;
     VAR_BIN_OP_PLUS_rect_h_l32_c23_f6f0_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l32_l31_DUPLICATE_2f05_return_output;
     VAR_BIN_OP_LT_rect_h_l41_c13_5547_right := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l36_l37_DUPLICATE_d3d0_return_output;
     VAR_BIN_OP_PLUS_rect_h_l37_c23_8f64_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l36_l37_DUPLICATE_d3d0_return_output;
     VAR_BIN_OP_GT_rect_h_l41_c82_73f2_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l34_l33_DUPLICATE_a0ad_return_output;
     VAR_BIN_OP_PLUS_rect_h_l34_c24_2714_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l34_l33_DUPLICATE_a0ad_return_output;
     VAR_BIN_OP_LT_rect_h_l41_c36_5241_right := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l39_l38_DUPLICATE_41ed_return_output;
     VAR_BIN_OP_PLUS_rect_h_l39_c24_6147_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l39_l38_DUPLICATE_41ed_return_output;
     -- BIN_OP_PLUS[rect_h_l39_c24_6147] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l39_c24_6147_left <= VAR_BIN_OP_PLUS_rect_h_l39_c24_6147_left;
     BIN_OP_PLUS_rect_h_l39_c24_6147_right <= VAR_BIN_OP_PLUS_rect_h_l39_c24_6147_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l39_c24_6147_return_output := BIN_OP_PLUS_rect_h_l39_c24_6147_return_output;

     -- BIN_OP_PLUS[rect_h_l37_c23_8f64] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l37_c23_8f64_left <= VAR_BIN_OP_PLUS_rect_h_l37_c23_8f64_left;
     BIN_OP_PLUS_rect_h_l37_c23_8f64_right <= VAR_BIN_OP_PLUS_rect_h_l37_c23_8f64_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l37_c23_8f64_return_output := BIN_OP_PLUS_rect_h_l37_c23_8f64_return_output;

     -- BIN_OP_PLUS[rect_h_l34_c24_2714] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l34_c24_2714_left <= VAR_BIN_OP_PLUS_rect_h_l34_c24_2714_left;
     BIN_OP_PLUS_rect_h_l34_c24_2714_right <= VAR_BIN_OP_PLUS_rect_h_l34_c24_2714_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l34_c24_2714_return_output := BIN_OP_PLUS_rect_h_l34_c24_2714_return_output;

     -- BIN_OP_PLUS[rect_h_l32_c23_f6f0] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l32_c23_f6f0_left <= VAR_BIN_OP_PLUS_rect_h_l32_c23_f6f0_left;
     BIN_OP_PLUS_rect_h_l32_c23_f6f0_right <= VAR_BIN_OP_PLUS_rect_h_l32_c23_f6f0_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l32_c23_f6f0_return_output := BIN_OP_PLUS_rect_h_l32_c23_f6f0_return_output;

     -- Submodule level 2
     VAR_r0_right_rect_h_l32_c12_876a_0 := resize(VAR_BIN_OP_PLUS_rect_h_l32_c23_f6f0_return_output, 12);
     VAR_r0_bottom_rect_h_l34_c12_5ebd_0 := resize(VAR_BIN_OP_PLUS_rect_h_l34_c24_2714_return_output, 12);
     VAR_r1_right_rect_h_l37_c12_d0e3_0 := resize(VAR_BIN_OP_PLUS_rect_h_l37_c23_8f64_return_output, 12);
     VAR_r1_bottom_rect_h_l39_c12_3ecd_0 := resize(VAR_BIN_OP_PLUS_rect_h_l39_c24_6147_return_output, 12);
     VAR_BIN_OP_LT_rect_h_l41_c36_5241_left := VAR_r0_bottom_rect_h_l34_c12_5ebd_0;
     VAR_BIN_OP_LT_rect_h_l41_c13_5547_left := VAR_r0_right_rect_h_l32_c12_876a_0;
     VAR_BIN_OP_GT_rect_h_l41_c82_73f2_right := VAR_r1_bottom_rect_h_l39_c12_3ecd_0;
     VAR_BIN_OP_GT_rect_h_l41_c59_198d_right := VAR_r1_right_rect_h_l37_c12_d0e3_0;
     -- BIN_OP_LT[rect_h_l41_c13_5547] LATENCY=0
     -- Inputs
     BIN_OP_LT_rect_h_l41_c13_5547_left <= VAR_BIN_OP_LT_rect_h_l41_c13_5547_left;
     BIN_OP_LT_rect_h_l41_c13_5547_right <= VAR_BIN_OP_LT_rect_h_l41_c13_5547_right;
     -- Outputs
     VAR_BIN_OP_LT_rect_h_l41_c13_5547_return_output := BIN_OP_LT_rect_h_l41_c13_5547_return_output;

     -- BIN_OP_GT[rect_h_l41_c59_198d] LATENCY=0
     -- Inputs
     BIN_OP_GT_rect_h_l41_c59_198d_left <= VAR_BIN_OP_GT_rect_h_l41_c59_198d_left;
     BIN_OP_GT_rect_h_l41_c59_198d_right <= VAR_BIN_OP_GT_rect_h_l41_c59_198d_right;
     -- Outputs
     VAR_BIN_OP_GT_rect_h_l41_c59_198d_return_output := BIN_OP_GT_rect_h_l41_c59_198d_return_output;

     -- BIN_OP_GT[rect_h_l41_c82_73f2] LATENCY=0
     -- Inputs
     BIN_OP_GT_rect_h_l41_c82_73f2_left <= VAR_BIN_OP_GT_rect_h_l41_c82_73f2_left;
     BIN_OP_GT_rect_h_l41_c82_73f2_right <= VAR_BIN_OP_GT_rect_h_l41_c82_73f2_right;
     -- Outputs
     VAR_BIN_OP_GT_rect_h_l41_c82_73f2_return_output := BIN_OP_GT_rect_h_l41_c82_73f2_return_output;

     -- BIN_OP_LT[rect_h_l41_c36_5241] LATENCY=0
     -- Inputs
     BIN_OP_LT_rect_h_l41_c36_5241_left <= VAR_BIN_OP_LT_rect_h_l41_c36_5241_left;
     BIN_OP_LT_rect_h_l41_c36_5241_right <= VAR_BIN_OP_LT_rect_h_l41_c36_5241_right;
     -- Outputs
     VAR_BIN_OP_LT_rect_h_l41_c36_5241_return_output := BIN_OP_LT_rect_h_l41_c36_5241_return_output;

     -- Submodule level 3
     VAR_BIN_OP_OR_rect_h_l41_c13_fbbb_right := VAR_BIN_OP_GT_rect_h_l41_c59_198d_return_output;
     VAR_BIN_OP_OR_rect_h_l41_c13_6888_right := VAR_BIN_OP_GT_rect_h_l41_c82_73f2_return_output;
     VAR_BIN_OP_OR_rect_h_l41_c13_4345_left := VAR_BIN_OP_LT_rect_h_l41_c13_5547_return_output;
     VAR_BIN_OP_OR_rect_h_l41_c13_4345_right := VAR_BIN_OP_LT_rect_h_l41_c36_5241_return_output;
     -- BIN_OP_OR[rect_h_l41_c13_4345] LATENCY=0
     -- Inputs
     BIN_OP_OR_rect_h_l41_c13_4345_left <= VAR_BIN_OP_OR_rect_h_l41_c13_4345_left;
     BIN_OP_OR_rect_h_l41_c13_4345_right <= VAR_BIN_OP_OR_rect_h_l41_c13_4345_right;
     -- Outputs
     VAR_BIN_OP_OR_rect_h_l41_c13_4345_return_output := BIN_OP_OR_rect_h_l41_c13_4345_return_output;

     -- Submodule level 4
     VAR_BIN_OP_OR_rect_h_l41_c13_fbbb_left := VAR_BIN_OP_OR_rect_h_l41_c13_4345_return_output;
     -- BIN_OP_OR[rect_h_l41_c13_fbbb] LATENCY=0
     -- Inputs
     BIN_OP_OR_rect_h_l41_c13_fbbb_left <= VAR_BIN_OP_OR_rect_h_l41_c13_fbbb_left;
     BIN_OP_OR_rect_h_l41_c13_fbbb_right <= VAR_BIN_OP_OR_rect_h_l41_c13_fbbb_right;
     -- Outputs
     VAR_BIN_OP_OR_rect_h_l41_c13_fbbb_return_output := BIN_OP_OR_rect_h_l41_c13_fbbb_return_output;

     -- Submodule level 5
     VAR_BIN_OP_OR_rect_h_l41_c13_6888_left := VAR_BIN_OP_OR_rect_h_l41_c13_fbbb_return_output;
     -- BIN_OP_OR[rect_h_l41_c13_6888] LATENCY=0
     -- Inputs
     BIN_OP_OR_rect_h_l41_c13_6888_left <= VAR_BIN_OP_OR_rect_h_l41_c13_6888_left;
     BIN_OP_OR_rect_h_l41_c13_6888_right <= VAR_BIN_OP_OR_rect_h_l41_c13_6888_right;
     -- Outputs
     VAR_BIN_OP_OR_rect_h_l41_c13_6888_return_output := BIN_OP_OR_rect_h_l41_c13_6888_return_output;

     -- Submodule level 6
     VAR_UNARY_OP_NOT_rect_h_l41_c13_f0e6_expr := VAR_BIN_OP_OR_rect_h_l41_c13_6888_return_output;
     -- UNARY_OP_NOT[rect_h_l41_c13_f0e6] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_rect_h_l41_c13_f0e6_expr <= VAR_UNARY_OP_NOT_rect_h_l41_c13_f0e6_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_rect_h_l41_c13_f0e6_return_output := UNARY_OP_NOT_rect_h_l41_c13_f0e6_return_output;

     -- Submodule level 7
     VAR_return_output := VAR_UNARY_OP_NOT_rect_h_l41_c13_f0e6_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
