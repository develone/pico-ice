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
-- BIN_OP_PLUS[rect_h_l32_c23_c8bd]
signal BIN_OP_PLUS_rect_h_l32_c23_c8bd_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l32_c23_c8bd_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l32_c23_c8bd_return_output : unsigned(12 downto 0);

-- BIN_OP_PLUS[rect_h_l34_c24_dbca]
signal BIN_OP_PLUS_rect_h_l34_c24_dbca_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l34_c24_dbca_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l34_c24_dbca_return_output : unsigned(12 downto 0);

-- BIN_OP_PLUS[rect_h_l37_c23_c971]
signal BIN_OP_PLUS_rect_h_l37_c23_c971_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l37_c23_c971_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l37_c23_c971_return_output : unsigned(12 downto 0);

-- BIN_OP_PLUS[rect_h_l39_c24_49d1]
signal BIN_OP_PLUS_rect_h_l39_c24_49d1_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l39_c24_49d1_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l39_c24_49d1_return_output : unsigned(12 downto 0);

-- BIN_OP_LT[rect_h_l41_c13_4e64]
signal BIN_OP_LT_rect_h_l41_c13_4e64_left : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l41_c13_4e64_right : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l41_c13_4e64_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[rect_h_l41_c36_19b6]
signal BIN_OP_LT_rect_h_l41_c36_19b6_left : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l41_c36_19b6_right : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l41_c36_19b6_return_output : unsigned(0 downto 0);

-- BIN_OP_OR[rect_h_l41_c13_a726]
signal BIN_OP_OR_rect_h_l41_c13_a726_left : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_a726_right : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_a726_return_output : unsigned(0 downto 0);

-- BIN_OP_GT[rect_h_l41_c59_8306]
signal BIN_OP_GT_rect_h_l41_c59_8306_left : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l41_c59_8306_right : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l41_c59_8306_return_output : unsigned(0 downto 0);

-- BIN_OP_OR[rect_h_l41_c13_f744]
signal BIN_OP_OR_rect_h_l41_c13_f744_left : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_f744_right : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_f744_return_output : unsigned(0 downto 0);

-- BIN_OP_GT[rect_h_l41_c82_a127]
signal BIN_OP_GT_rect_h_l41_c82_a127_left : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l41_c82_a127_right : unsigned(11 downto 0);
signal BIN_OP_GT_rect_h_l41_c82_a127_return_output : unsigned(0 downto 0);

-- BIN_OP_OR[rect_h_l41_c13_57be]
signal BIN_OP_OR_rect_h_l41_c13_57be_left : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_57be_right : unsigned(0 downto 0);
signal BIN_OP_OR_rect_h_l41_c13_57be_return_output : unsigned(0 downto 0);

-- UNARY_OP_NOT[rect_h_l41_c13_9f56]
signal UNARY_OP_NOT_rect_h_l41_c13_9f56_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_rect_h_l41_c13_9f56_return_output : unsigned(0 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_PLUS_rect_h_l32_c23_c8bd : 0 clocks latency
BIN_OP_PLUS_rect_h_l32_c23_c8bd : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l32_c23_c8bd_left,
BIN_OP_PLUS_rect_h_l32_c23_c8bd_right,
BIN_OP_PLUS_rect_h_l32_c23_c8bd_return_output);

-- BIN_OP_PLUS_rect_h_l34_c24_dbca : 0 clocks latency
BIN_OP_PLUS_rect_h_l34_c24_dbca : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l34_c24_dbca_left,
BIN_OP_PLUS_rect_h_l34_c24_dbca_right,
BIN_OP_PLUS_rect_h_l34_c24_dbca_return_output);

-- BIN_OP_PLUS_rect_h_l37_c23_c971 : 0 clocks latency
BIN_OP_PLUS_rect_h_l37_c23_c971 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l37_c23_c971_left,
BIN_OP_PLUS_rect_h_l37_c23_c971_right,
BIN_OP_PLUS_rect_h_l37_c23_c971_return_output);

-- BIN_OP_PLUS_rect_h_l39_c24_49d1 : 0 clocks latency
BIN_OP_PLUS_rect_h_l39_c24_49d1 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l39_c24_49d1_left,
BIN_OP_PLUS_rect_h_l39_c24_49d1_right,
BIN_OP_PLUS_rect_h_l39_c24_49d1_return_output);

-- BIN_OP_LT_rect_h_l41_c13_4e64 : 0 clocks latency
BIN_OP_LT_rect_h_l41_c13_4e64 : entity work.BIN_OP_LT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_LT_rect_h_l41_c13_4e64_left,
BIN_OP_LT_rect_h_l41_c13_4e64_right,
BIN_OP_LT_rect_h_l41_c13_4e64_return_output);

-- BIN_OP_LT_rect_h_l41_c36_19b6 : 0 clocks latency
BIN_OP_LT_rect_h_l41_c36_19b6 : entity work.BIN_OP_LT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_LT_rect_h_l41_c36_19b6_left,
BIN_OP_LT_rect_h_l41_c36_19b6_right,
BIN_OP_LT_rect_h_l41_c36_19b6_return_output);

-- BIN_OP_OR_rect_h_l41_c13_a726 : 0 clocks latency
BIN_OP_OR_rect_h_l41_c13_a726 : entity work.BIN_OP_OR_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_OR_rect_h_l41_c13_a726_left,
BIN_OP_OR_rect_h_l41_c13_a726_right,
BIN_OP_OR_rect_h_l41_c13_a726_return_output);

-- BIN_OP_GT_rect_h_l41_c59_8306 : 0 clocks latency
BIN_OP_GT_rect_h_l41_c59_8306 : entity work.BIN_OP_GT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_GT_rect_h_l41_c59_8306_left,
BIN_OP_GT_rect_h_l41_c59_8306_right,
BIN_OP_GT_rect_h_l41_c59_8306_return_output);

-- BIN_OP_OR_rect_h_l41_c13_f744 : 0 clocks latency
BIN_OP_OR_rect_h_l41_c13_f744 : entity work.BIN_OP_OR_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_OR_rect_h_l41_c13_f744_left,
BIN_OP_OR_rect_h_l41_c13_f744_right,
BIN_OP_OR_rect_h_l41_c13_f744_return_output);

-- BIN_OP_GT_rect_h_l41_c82_a127 : 0 clocks latency
BIN_OP_GT_rect_h_l41_c82_a127 : entity work.BIN_OP_GT_uint12_t_uint12_t_0CLK_380ecc95 port map (
BIN_OP_GT_rect_h_l41_c82_a127_left,
BIN_OP_GT_rect_h_l41_c82_a127_right,
BIN_OP_GT_rect_h_l41_c82_a127_return_output);

-- BIN_OP_OR_rect_h_l41_c13_57be : 0 clocks latency
BIN_OP_OR_rect_h_l41_c13_57be : entity work.BIN_OP_OR_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_OR_rect_h_l41_c13_57be_left,
BIN_OP_OR_rect_h_l41_c13_57be_right,
BIN_OP_OR_rect_h_l41_c13_57be_return_output);

-- UNARY_OP_NOT_rect_h_l41_c13_9f56 : 0 clocks latency
UNARY_OP_NOT_rect_h_l41_c13_9f56 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_rect_h_l41_c13_9f56_expr,
UNARY_OP_NOT_rect_h_l41_c13_9f56_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 r0,
 r1,
 -- All submodule outputs
 BIN_OP_PLUS_rect_h_l32_c23_c8bd_return_output,
 BIN_OP_PLUS_rect_h_l34_c24_dbca_return_output,
 BIN_OP_PLUS_rect_h_l37_c23_c971_return_output,
 BIN_OP_PLUS_rect_h_l39_c24_49d1_return_output,
 BIN_OP_LT_rect_h_l41_c13_4e64_return_output,
 BIN_OP_LT_rect_h_l41_c36_19b6_return_output,
 BIN_OP_OR_rect_h_l41_c13_a726_return_output,
 BIN_OP_GT_rect_h_l41_c59_8306_return_output,
 BIN_OP_OR_rect_h_l41_c13_f744_return_output,
 BIN_OP_GT_rect_h_l41_c82_a127_return_output,
 BIN_OP_OR_rect_h_l41_c13_57be_return_output,
 UNARY_OP_NOT_rect_h_l41_c13_9f56_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_r0 : rect_t;
 variable VAR_r1 : rect_t;
 variable VAR_r0_left : unsigned(11 downto 0);
 variable VAR_r0_right : unsigned(11 downto 0);
 variable VAR_r0_right_rect_h_l32_c12_9731_0 : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l32_c23_c8bd_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l32_c34_f174_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l32_c23_c8bd_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l32_c23_c8bd_return_output : unsigned(12 downto 0);
 variable VAR_r0_top : unsigned(11 downto 0);
 variable VAR_r0_bottom : unsigned(11 downto 0);
 variable VAR_r0_bottom_rect_h_l34_c12_72b8_0 : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l34_c24_dbca_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l34_c35_10b8_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l34_c24_dbca_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l34_c24_dbca_return_output : unsigned(12 downto 0);
 variable VAR_r1_left : unsigned(11 downto 0);
 variable VAR_r1_right : unsigned(11 downto 0);
 variable VAR_r1_right_rect_h_l37_c12_1191_0 : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l37_c23_c971_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l37_c34_51ad_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l37_c23_c971_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l37_c23_c971_return_output : unsigned(12 downto 0);
 variable VAR_r1_top : unsigned(11 downto 0);
 variable VAR_r1_bottom : unsigned(11 downto 0);
 variable VAR_r1_bottom_rect_h_l39_c12_0c0d_0 : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l39_c24_49d1_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l39_c35_e27f_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l39_c24_49d1_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l39_c24_49d1_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c13_4e64_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c13_4e64_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c13_4e64_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_a726_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c36_19b6_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c36_19b6_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l41_c36_19b6_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_a726_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_a726_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_f744_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c59_8306_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c59_8306_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c59_8306_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_f744_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_f744_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_57be_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c82_a127_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c82_a127_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_rect_h_l41_c82_a127_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_57be_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_rect_h_l41_c13_57be_return_output : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_rect_h_l41_c13_9f56_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_rect_h_l41_c13_9f56_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l32_l31_DUPLICATE_d970_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l34_l33_DUPLICATE_a21b_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l37_l36_DUPLICATE_35cd_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l39_l38_DUPLICATE_f8cc_return_output : unsigned(11 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_r0 := r0;
     VAR_r1 := r1;

     -- Submodule level 0
     -- CONST_REF_RD_uint12_t_rect_t_dim_x_d41d[rect_h_l37_c34_51ad] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l37_c34_51ad_return_output := VAR_r1.dim.x;

     -- CONST_REF_RD_uint12_t_rect_t_dim_y_d41d[rect_h_l34_c35_10b8] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l34_c35_10b8_return_output := VAR_r0.dim.y;

     -- CONST_REF_RD_uint12_t_rect_t_dim_x_d41d[rect_h_l32_c34_f174] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l32_c34_f174_return_output := VAR_r0.dim.x;

     -- CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l32_l31_DUPLICATE_d970 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l32_l31_DUPLICATE_d970_return_output := VAR_r0.pos.x;

     -- CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l37_l36_DUPLICATE_35cd LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l37_l36_DUPLICATE_35cd_return_output := VAR_r1.pos.x;

     -- CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l34_l33_DUPLICATE_a21b LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l34_l33_DUPLICATE_a21b_return_output := VAR_r0.pos.y;

     -- CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l39_l38_DUPLICATE_f8cc LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l39_l38_DUPLICATE_f8cc_return_output := VAR_r1.pos.y;

     -- CONST_REF_RD_uint12_t_rect_t_dim_y_d41d[rect_h_l39_c35_e27f] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l39_c35_e27f_return_output := VAR_r1.dim.y;

     -- Submodule level 1
     VAR_BIN_OP_PLUS_rect_h_l32_c23_c8bd_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l32_c34_f174_return_output;
     VAR_BIN_OP_PLUS_rect_h_l37_c23_c971_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l37_c34_51ad_return_output;
     VAR_BIN_OP_PLUS_rect_h_l34_c24_dbca_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l34_c35_10b8_return_output;
     VAR_BIN_OP_PLUS_rect_h_l39_c24_49d1_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l39_c35_e27f_return_output;
     VAR_BIN_OP_GT_rect_h_l41_c59_8306_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l32_l31_DUPLICATE_d970_return_output;
     VAR_BIN_OP_PLUS_rect_h_l32_c23_c8bd_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l32_l31_DUPLICATE_d970_return_output;
     VAR_BIN_OP_LT_rect_h_l41_c13_4e64_right := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l37_l36_DUPLICATE_35cd_return_output;
     VAR_BIN_OP_PLUS_rect_h_l37_c23_c971_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l37_l36_DUPLICATE_35cd_return_output;
     VAR_BIN_OP_GT_rect_h_l41_c82_a127_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l34_l33_DUPLICATE_a21b_return_output;
     VAR_BIN_OP_PLUS_rect_h_l34_c24_dbca_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l34_l33_DUPLICATE_a21b_return_output;
     VAR_BIN_OP_LT_rect_h_l41_c36_19b6_right := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l39_l38_DUPLICATE_f8cc_return_output;
     VAR_BIN_OP_PLUS_rect_h_l39_c24_49d1_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l39_l38_DUPLICATE_f8cc_return_output;
     -- BIN_OP_PLUS[rect_h_l37_c23_c971] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l37_c23_c971_left <= VAR_BIN_OP_PLUS_rect_h_l37_c23_c971_left;
     BIN_OP_PLUS_rect_h_l37_c23_c971_right <= VAR_BIN_OP_PLUS_rect_h_l37_c23_c971_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l37_c23_c971_return_output := BIN_OP_PLUS_rect_h_l37_c23_c971_return_output;

     -- BIN_OP_PLUS[rect_h_l34_c24_dbca] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l34_c24_dbca_left <= VAR_BIN_OP_PLUS_rect_h_l34_c24_dbca_left;
     BIN_OP_PLUS_rect_h_l34_c24_dbca_right <= VAR_BIN_OP_PLUS_rect_h_l34_c24_dbca_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l34_c24_dbca_return_output := BIN_OP_PLUS_rect_h_l34_c24_dbca_return_output;

     -- BIN_OP_PLUS[rect_h_l32_c23_c8bd] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l32_c23_c8bd_left <= VAR_BIN_OP_PLUS_rect_h_l32_c23_c8bd_left;
     BIN_OP_PLUS_rect_h_l32_c23_c8bd_right <= VAR_BIN_OP_PLUS_rect_h_l32_c23_c8bd_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l32_c23_c8bd_return_output := BIN_OP_PLUS_rect_h_l32_c23_c8bd_return_output;

     -- BIN_OP_PLUS[rect_h_l39_c24_49d1] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l39_c24_49d1_left <= VAR_BIN_OP_PLUS_rect_h_l39_c24_49d1_left;
     BIN_OP_PLUS_rect_h_l39_c24_49d1_right <= VAR_BIN_OP_PLUS_rect_h_l39_c24_49d1_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l39_c24_49d1_return_output := BIN_OP_PLUS_rect_h_l39_c24_49d1_return_output;

     -- Submodule level 2
     VAR_r0_right_rect_h_l32_c12_9731_0 := resize(VAR_BIN_OP_PLUS_rect_h_l32_c23_c8bd_return_output, 12);
     VAR_r0_bottom_rect_h_l34_c12_72b8_0 := resize(VAR_BIN_OP_PLUS_rect_h_l34_c24_dbca_return_output, 12);
     VAR_r1_right_rect_h_l37_c12_1191_0 := resize(VAR_BIN_OP_PLUS_rect_h_l37_c23_c971_return_output, 12);
     VAR_r1_bottom_rect_h_l39_c12_0c0d_0 := resize(VAR_BIN_OP_PLUS_rect_h_l39_c24_49d1_return_output, 12);
     VAR_BIN_OP_LT_rect_h_l41_c36_19b6_left := VAR_r0_bottom_rect_h_l34_c12_72b8_0;
     VAR_BIN_OP_LT_rect_h_l41_c13_4e64_left := VAR_r0_right_rect_h_l32_c12_9731_0;
     VAR_BIN_OP_GT_rect_h_l41_c82_a127_right := VAR_r1_bottom_rect_h_l39_c12_0c0d_0;
     VAR_BIN_OP_GT_rect_h_l41_c59_8306_right := VAR_r1_right_rect_h_l37_c12_1191_0;
     -- BIN_OP_LT[rect_h_l41_c36_19b6] LATENCY=0
     -- Inputs
     BIN_OP_LT_rect_h_l41_c36_19b6_left <= VAR_BIN_OP_LT_rect_h_l41_c36_19b6_left;
     BIN_OP_LT_rect_h_l41_c36_19b6_right <= VAR_BIN_OP_LT_rect_h_l41_c36_19b6_right;
     -- Outputs
     VAR_BIN_OP_LT_rect_h_l41_c36_19b6_return_output := BIN_OP_LT_rect_h_l41_c36_19b6_return_output;

     -- BIN_OP_GT[rect_h_l41_c59_8306] LATENCY=0
     -- Inputs
     BIN_OP_GT_rect_h_l41_c59_8306_left <= VAR_BIN_OP_GT_rect_h_l41_c59_8306_left;
     BIN_OP_GT_rect_h_l41_c59_8306_right <= VAR_BIN_OP_GT_rect_h_l41_c59_8306_right;
     -- Outputs
     VAR_BIN_OP_GT_rect_h_l41_c59_8306_return_output := BIN_OP_GT_rect_h_l41_c59_8306_return_output;

     -- BIN_OP_LT[rect_h_l41_c13_4e64] LATENCY=0
     -- Inputs
     BIN_OP_LT_rect_h_l41_c13_4e64_left <= VAR_BIN_OP_LT_rect_h_l41_c13_4e64_left;
     BIN_OP_LT_rect_h_l41_c13_4e64_right <= VAR_BIN_OP_LT_rect_h_l41_c13_4e64_right;
     -- Outputs
     VAR_BIN_OP_LT_rect_h_l41_c13_4e64_return_output := BIN_OP_LT_rect_h_l41_c13_4e64_return_output;

     -- BIN_OP_GT[rect_h_l41_c82_a127] LATENCY=0
     -- Inputs
     BIN_OP_GT_rect_h_l41_c82_a127_left <= VAR_BIN_OP_GT_rect_h_l41_c82_a127_left;
     BIN_OP_GT_rect_h_l41_c82_a127_right <= VAR_BIN_OP_GT_rect_h_l41_c82_a127_right;
     -- Outputs
     VAR_BIN_OP_GT_rect_h_l41_c82_a127_return_output := BIN_OP_GT_rect_h_l41_c82_a127_return_output;

     -- Submodule level 3
     VAR_BIN_OP_OR_rect_h_l41_c13_f744_right := VAR_BIN_OP_GT_rect_h_l41_c59_8306_return_output;
     VAR_BIN_OP_OR_rect_h_l41_c13_57be_right := VAR_BIN_OP_GT_rect_h_l41_c82_a127_return_output;
     VAR_BIN_OP_OR_rect_h_l41_c13_a726_left := VAR_BIN_OP_LT_rect_h_l41_c13_4e64_return_output;
     VAR_BIN_OP_OR_rect_h_l41_c13_a726_right := VAR_BIN_OP_LT_rect_h_l41_c36_19b6_return_output;
     -- BIN_OP_OR[rect_h_l41_c13_a726] LATENCY=0
     -- Inputs
     BIN_OP_OR_rect_h_l41_c13_a726_left <= VAR_BIN_OP_OR_rect_h_l41_c13_a726_left;
     BIN_OP_OR_rect_h_l41_c13_a726_right <= VAR_BIN_OP_OR_rect_h_l41_c13_a726_right;
     -- Outputs
     VAR_BIN_OP_OR_rect_h_l41_c13_a726_return_output := BIN_OP_OR_rect_h_l41_c13_a726_return_output;

     -- Submodule level 4
     VAR_BIN_OP_OR_rect_h_l41_c13_f744_left := VAR_BIN_OP_OR_rect_h_l41_c13_a726_return_output;
     -- BIN_OP_OR[rect_h_l41_c13_f744] LATENCY=0
     -- Inputs
     BIN_OP_OR_rect_h_l41_c13_f744_left <= VAR_BIN_OP_OR_rect_h_l41_c13_f744_left;
     BIN_OP_OR_rect_h_l41_c13_f744_right <= VAR_BIN_OP_OR_rect_h_l41_c13_f744_right;
     -- Outputs
     VAR_BIN_OP_OR_rect_h_l41_c13_f744_return_output := BIN_OP_OR_rect_h_l41_c13_f744_return_output;

     -- Submodule level 5
     VAR_BIN_OP_OR_rect_h_l41_c13_57be_left := VAR_BIN_OP_OR_rect_h_l41_c13_f744_return_output;
     -- BIN_OP_OR[rect_h_l41_c13_57be] LATENCY=0
     -- Inputs
     BIN_OP_OR_rect_h_l41_c13_57be_left <= VAR_BIN_OP_OR_rect_h_l41_c13_57be_left;
     BIN_OP_OR_rect_h_l41_c13_57be_right <= VAR_BIN_OP_OR_rect_h_l41_c13_57be_right;
     -- Outputs
     VAR_BIN_OP_OR_rect_h_l41_c13_57be_return_output := BIN_OP_OR_rect_h_l41_c13_57be_return_output;

     -- Submodule level 6
     VAR_UNARY_OP_NOT_rect_h_l41_c13_9f56_expr := VAR_BIN_OP_OR_rect_h_l41_c13_57be_return_output;
     -- UNARY_OP_NOT[rect_h_l41_c13_9f56] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_rect_h_l41_c13_9f56_expr <= VAR_UNARY_OP_NOT_rect_h_l41_c13_9f56_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_rect_h_l41_c13_9f56_return_output := UNARY_OP_NOT_rect_h_l41_c13_9f56_return_output;

     -- Submodule level 7
     VAR_return_output := VAR_UNARY_OP_NOT_rect_h_l41_c13_9f56_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
