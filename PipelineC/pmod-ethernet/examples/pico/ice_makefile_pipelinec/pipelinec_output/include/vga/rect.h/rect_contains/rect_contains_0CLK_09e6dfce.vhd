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
-- Submodules: 10
entity rect_contains_0CLK_09e6dfce is
port(
 rect : in rect_t;
 pos : in vga_pos_t;
 return_output : out unsigned(0 downto 0));
end rect_contains_0CLK_09e6dfce;
architecture arch of rect_contains_0CLK_09e6dfce is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_GTE[rect_h_l11_c8_141d]
signal BIN_OP_GTE_rect_h_l11_c8_141d_left : unsigned(11 downto 0);
signal BIN_OP_GTE_rect_h_l11_c8_141d_right : unsigned(11 downto 0);
signal BIN_OP_GTE_rect_h_l11_c8_141d_return_output : unsigned(0 downto 0);

-- BIN_OP_PLUS[rect_h_l11_c42_a3de]
signal BIN_OP_PLUS_rect_h_l11_c42_a3de_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l11_c42_a3de_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l11_c42_a3de_return_output : unsigned(12 downto 0);

-- BIN_OP_LT[rect_h_l11_c33_4f54]
signal BIN_OP_LT_rect_h_l11_c33_4f54_left : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l11_c33_4f54_right : unsigned(12 downto 0);
signal BIN_OP_LT_rect_h_l11_c33_4f54_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[rect_h_l11_c8_618d]
signal BIN_OP_AND_rect_h_l11_c8_618d_left : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l11_c8_618d_right : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l11_c8_618d_return_output : unsigned(0 downto 0);

-- BIN_OP_GTE[rect_h_l12_c8_4e89]
signal BIN_OP_GTE_rect_h_l12_c8_4e89_left : unsigned(11 downto 0);
signal BIN_OP_GTE_rect_h_l12_c8_4e89_right : unsigned(11 downto 0);
signal BIN_OP_GTE_rect_h_l12_c8_4e89_return_output : unsigned(0 downto 0);

-- BIN_OP_PLUS[rect_h_l12_c42_1210]
signal BIN_OP_PLUS_rect_h_l12_c42_1210_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l12_c42_1210_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l12_c42_1210_return_output : unsigned(12 downto 0);

-- BIN_OP_LT[rect_h_l12_c33_21a2]
signal BIN_OP_LT_rect_h_l12_c33_21a2_left : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l12_c33_21a2_right : unsigned(12 downto 0);
signal BIN_OP_LT_rect_h_l12_c33_21a2_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[rect_h_l12_c8_d497]
signal BIN_OP_AND_rect_h_l12_c8_d497_left : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l12_c8_d497_right : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l12_c8_d497_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[rect_h_l11_c8_995e]
signal BIN_OP_AND_rect_h_l11_c8_995e_left : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l11_c8_995e_right : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l11_c8_995e_return_output : unsigned(0 downto 0);

-- rv_MUX[rect_h_l11_c3_6f35]
signal rv_MUX_rect_h_l11_c3_6f35_cond : unsigned(0 downto 0);
signal rv_MUX_rect_h_l11_c3_6f35_iftrue : unsigned(0 downto 0);
signal rv_MUX_rect_h_l11_c3_6f35_iffalse : unsigned(0 downto 0);
signal rv_MUX_rect_h_l11_c3_6f35_return_output : unsigned(0 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_GTE_rect_h_l11_c8_141d : 0 clocks latency
BIN_OP_GTE_rect_h_l11_c8_141d : entity work.BIN_OP_GTE_uint12_t_uint12_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_rect_h_l11_c8_141d_left,
BIN_OP_GTE_rect_h_l11_c8_141d_right,
BIN_OP_GTE_rect_h_l11_c8_141d_return_output);

-- BIN_OP_PLUS_rect_h_l11_c42_a3de : 0 clocks latency
BIN_OP_PLUS_rect_h_l11_c42_a3de : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l11_c42_a3de_left,
BIN_OP_PLUS_rect_h_l11_c42_a3de_right,
BIN_OP_PLUS_rect_h_l11_c42_a3de_return_output);

-- BIN_OP_LT_rect_h_l11_c33_4f54 : 0 clocks latency
BIN_OP_LT_rect_h_l11_c33_4f54 : entity work.BIN_OP_LT_uint12_t_uint13_t_0CLK_5af1a430 port map (
BIN_OP_LT_rect_h_l11_c33_4f54_left,
BIN_OP_LT_rect_h_l11_c33_4f54_right,
BIN_OP_LT_rect_h_l11_c33_4f54_return_output);

-- BIN_OP_AND_rect_h_l11_c8_618d : 0 clocks latency
BIN_OP_AND_rect_h_l11_c8_618d : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_rect_h_l11_c8_618d_left,
BIN_OP_AND_rect_h_l11_c8_618d_right,
BIN_OP_AND_rect_h_l11_c8_618d_return_output);

-- BIN_OP_GTE_rect_h_l12_c8_4e89 : 0 clocks latency
BIN_OP_GTE_rect_h_l12_c8_4e89 : entity work.BIN_OP_GTE_uint12_t_uint12_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_rect_h_l12_c8_4e89_left,
BIN_OP_GTE_rect_h_l12_c8_4e89_right,
BIN_OP_GTE_rect_h_l12_c8_4e89_return_output);

-- BIN_OP_PLUS_rect_h_l12_c42_1210 : 0 clocks latency
BIN_OP_PLUS_rect_h_l12_c42_1210 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l12_c42_1210_left,
BIN_OP_PLUS_rect_h_l12_c42_1210_right,
BIN_OP_PLUS_rect_h_l12_c42_1210_return_output);

-- BIN_OP_LT_rect_h_l12_c33_21a2 : 0 clocks latency
BIN_OP_LT_rect_h_l12_c33_21a2 : entity work.BIN_OP_LT_uint12_t_uint13_t_0CLK_5af1a430 port map (
BIN_OP_LT_rect_h_l12_c33_21a2_left,
BIN_OP_LT_rect_h_l12_c33_21a2_right,
BIN_OP_LT_rect_h_l12_c33_21a2_return_output);

-- BIN_OP_AND_rect_h_l12_c8_d497 : 0 clocks latency
BIN_OP_AND_rect_h_l12_c8_d497 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_rect_h_l12_c8_d497_left,
BIN_OP_AND_rect_h_l12_c8_d497_right,
BIN_OP_AND_rect_h_l12_c8_d497_return_output);

-- BIN_OP_AND_rect_h_l11_c8_995e : 0 clocks latency
BIN_OP_AND_rect_h_l11_c8_995e : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_rect_h_l11_c8_995e_left,
BIN_OP_AND_rect_h_l11_c8_995e_right,
BIN_OP_AND_rect_h_l11_c8_995e_return_output);

-- rv_MUX_rect_h_l11_c3_6f35 : 0 clocks latency
rv_MUX_rect_h_l11_c3_6f35 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_rect_h_l11_c3_6f35_cond,
rv_MUX_rect_h_l11_c3_6f35_iftrue,
rv_MUX_rect_h_l11_c3_6f35_iffalse,
rv_MUX_rect_h_l11_c3_6f35_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 rect,
 pos,
 -- All submodule outputs
 BIN_OP_GTE_rect_h_l11_c8_141d_return_output,
 BIN_OP_PLUS_rect_h_l11_c42_a3de_return_output,
 BIN_OP_LT_rect_h_l11_c33_4f54_return_output,
 BIN_OP_AND_rect_h_l11_c8_618d_return_output,
 BIN_OP_GTE_rect_h_l12_c8_4e89_return_output,
 BIN_OP_PLUS_rect_h_l12_c42_1210_return_output,
 BIN_OP_LT_rect_h_l12_c33_21a2_return_output,
 BIN_OP_AND_rect_h_l12_c8_d497_return_output,
 BIN_OP_AND_rect_h_l11_c8_995e_return_output,
 rv_MUX_rect_h_l11_c3_6f35_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_rect : rect_t;
 variable VAR_pos : vga_pos_t;
 variable VAR_rv : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l11_c8_141d_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l11_c8_141d_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l11_c8_141d_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_618d_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l11_c33_4f54_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l11_c42_a3de_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l11_c55_9860_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l11_c42_a3de_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l11_c42_a3de_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l11_c33_4f54_right : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l11_c33_4f54_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_618d_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_618d_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_995e_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l12_c8_4e89_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l12_c8_4e89_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l12_c8_4e89_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l12_c8_d497_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l12_c33_21a2_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l12_c42_1210_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l12_c55_c502_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l12_c42_1210_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l12_c42_1210_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l12_c33_21a2_right : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l12_c33_21a2_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l12_c8_d497_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l12_c8_d497_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_995e_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_995e_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_rect_h_l11_c3_6f35_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_rect_h_l11_c3_6f35_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_rect_h_l11_c3_6f35_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_rect_h_l11_c3_6f35_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_rect_h_l11_DUPLICATE_8adb_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l11_DUPLICATE_0be5_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_rect_h_l12_DUPLICATE_5470_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l12_DUPLICATE_c805_return_output : unsigned(11 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_rv_MUX_rect_h_l11_c3_6f35_iftrue := to_unsigned(1, 1);
     VAR_rv_MUX_rect_h_l11_c3_6f35_iffalse := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_rect := rect;
     VAR_pos := pos;

     -- Submodule level 0
     -- CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l11_DUPLICATE_0be5 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l11_DUPLICATE_0be5_return_output := VAR_rect.pos.x;

     -- CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l12_DUPLICATE_c805 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l12_DUPLICATE_c805_return_output := VAR_rect.pos.y;

     -- CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_rect_h_l12_DUPLICATE_5470 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_rect_h_l12_DUPLICATE_5470_return_output := VAR_pos.y;

     -- CONST_REF_RD_uint12_t_rect_t_dim_x_d41d[rect_h_l11_c55_9860] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l11_c55_9860_return_output := VAR_rect.dim.x;

     -- CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_rect_h_l11_DUPLICATE_8adb LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_rect_h_l11_DUPLICATE_8adb_return_output := VAR_pos.x;

     -- CONST_REF_RD_uint12_t_rect_t_dim_y_d41d[rect_h_l12_c55_c502] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l12_c55_c502_return_output := VAR_rect.dim.y;

     -- Submodule level 1
     VAR_BIN_OP_PLUS_rect_h_l11_c42_a3de_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l11_c55_9860_return_output;
     VAR_BIN_OP_PLUS_rect_h_l12_c42_1210_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l12_c55_c502_return_output;
     VAR_BIN_OP_GTE_rect_h_l11_c8_141d_right := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l11_DUPLICATE_0be5_return_output;
     VAR_BIN_OP_PLUS_rect_h_l11_c42_a3de_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l11_DUPLICATE_0be5_return_output;
     VAR_BIN_OP_GTE_rect_h_l12_c8_4e89_right := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l12_DUPLICATE_c805_return_output;
     VAR_BIN_OP_PLUS_rect_h_l12_c42_1210_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l12_DUPLICATE_c805_return_output;
     VAR_BIN_OP_GTE_rect_h_l11_c8_141d_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_rect_h_l11_DUPLICATE_8adb_return_output;
     VAR_BIN_OP_LT_rect_h_l11_c33_4f54_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_rect_h_l11_DUPLICATE_8adb_return_output;
     VAR_BIN_OP_GTE_rect_h_l12_c8_4e89_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_rect_h_l12_DUPLICATE_5470_return_output;
     VAR_BIN_OP_LT_rect_h_l12_c33_21a2_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_rect_h_l12_DUPLICATE_5470_return_output;
     -- BIN_OP_PLUS[rect_h_l12_c42_1210] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l12_c42_1210_left <= VAR_BIN_OP_PLUS_rect_h_l12_c42_1210_left;
     BIN_OP_PLUS_rect_h_l12_c42_1210_right <= VAR_BIN_OP_PLUS_rect_h_l12_c42_1210_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l12_c42_1210_return_output := BIN_OP_PLUS_rect_h_l12_c42_1210_return_output;

     -- BIN_OP_GTE[rect_h_l11_c8_141d] LATENCY=0
     -- Inputs
     BIN_OP_GTE_rect_h_l11_c8_141d_left <= VAR_BIN_OP_GTE_rect_h_l11_c8_141d_left;
     BIN_OP_GTE_rect_h_l11_c8_141d_right <= VAR_BIN_OP_GTE_rect_h_l11_c8_141d_right;
     -- Outputs
     VAR_BIN_OP_GTE_rect_h_l11_c8_141d_return_output := BIN_OP_GTE_rect_h_l11_c8_141d_return_output;

     -- BIN_OP_PLUS[rect_h_l11_c42_a3de] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l11_c42_a3de_left <= VAR_BIN_OP_PLUS_rect_h_l11_c42_a3de_left;
     BIN_OP_PLUS_rect_h_l11_c42_a3de_right <= VAR_BIN_OP_PLUS_rect_h_l11_c42_a3de_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l11_c42_a3de_return_output := BIN_OP_PLUS_rect_h_l11_c42_a3de_return_output;

     -- BIN_OP_GTE[rect_h_l12_c8_4e89] LATENCY=0
     -- Inputs
     BIN_OP_GTE_rect_h_l12_c8_4e89_left <= VAR_BIN_OP_GTE_rect_h_l12_c8_4e89_left;
     BIN_OP_GTE_rect_h_l12_c8_4e89_right <= VAR_BIN_OP_GTE_rect_h_l12_c8_4e89_right;
     -- Outputs
     VAR_BIN_OP_GTE_rect_h_l12_c8_4e89_return_output := BIN_OP_GTE_rect_h_l12_c8_4e89_return_output;

     -- Submodule level 2
     VAR_BIN_OP_AND_rect_h_l11_c8_618d_left := VAR_BIN_OP_GTE_rect_h_l11_c8_141d_return_output;
     VAR_BIN_OP_AND_rect_h_l12_c8_d497_left := VAR_BIN_OP_GTE_rect_h_l12_c8_4e89_return_output;
     VAR_BIN_OP_LT_rect_h_l11_c33_4f54_right := VAR_BIN_OP_PLUS_rect_h_l11_c42_a3de_return_output;
     VAR_BIN_OP_LT_rect_h_l12_c33_21a2_right := VAR_BIN_OP_PLUS_rect_h_l12_c42_1210_return_output;
     -- BIN_OP_LT[rect_h_l11_c33_4f54] LATENCY=0
     -- Inputs
     BIN_OP_LT_rect_h_l11_c33_4f54_left <= VAR_BIN_OP_LT_rect_h_l11_c33_4f54_left;
     BIN_OP_LT_rect_h_l11_c33_4f54_right <= VAR_BIN_OP_LT_rect_h_l11_c33_4f54_right;
     -- Outputs
     VAR_BIN_OP_LT_rect_h_l11_c33_4f54_return_output := BIN_OP_LT_rect_h_l11_c33_4f54_return_output;

     -- BIN_OP_LT[rect_h_l12_c33_21a2] LATENCY=0
     -- Inputs
     BIN_OP_LT_rect_h_l12_c33_21a2_left <= VAR_BIN_OP_LT_rect_h_l12_c33_21a2_left;
     BIN_OP_LT_rect_h_l12_c33_21a2_right <= VAR_BIN_OP_LT_rect_h_l12_c33_21a2_right;
     -- Outputs
     VAR_BIN_OP_LT_rect_h_l12_c33_21a2_return_output := BIN_OP_LT_rect_h_l12_c33_21a2_return_output;

     -- Submodule level 3
     VAR_BIN_OP_AND_rect_h_l11_c8_618d_right := VAR_BIN_OP_LT_rect_h_l11_c33_4f54_return_output;
     VAR_BIN_OP_AND_rect_h_l12_c8_d497_right := VAR_BIN_OP_LT_rect_h_l12_c33_21a2_return_output;
     -- BIN_OP_AND[rect_h_l11_c8_618d] LATENCY=0
     -- Inputs
     BIN_OP_AND_rect_h_l11_c8_618d_left <= VAR_BIN_OP_AND_rect_h_l11_c8_618d_left;
     BIN_OP_AND_rect_h_l11_c8_618d_right <= VAR_BIN_OP_AND_rect_h_l11_c8_618d_right;
     -- Outputs
     VAR_BIN_OP_AND_rect_h_l11_c8_618d_return_output := BIN_OP_AND_rect_h_l11_c8_618d_return_output;

     -- BIN_OP_AND[rect_h_l12_c8_d497] LATENCY=0
     -- Inputs
     BIN_OP_AND_rect_h_l12_c8_d497_left <= VAR_BIN_OP_AND_rect_h_l12_c8_d497_left;
     BIN_OP_AND_rect_h_l12_c8_d497_right <= VAR_BIN_OP_AND_rect_h_l12_c8_d497_right;
     -- Outputs
     VAR_BIN_OP_AND_rect_h_l12_c8_d497_return_output := BIN_OP_AND_rect_h_l12_c8_d497_return_output;

     -- Submodule level 4
     VAR_BIN_OP_AND_rect_h_l11_c8_995e_left := VAR_BIN_OP_AND_rect_h_l11_c8_618d_return_output;
     VAR_BIN_OP_AND_rect_h_l11_c8_995e_right := VAR_BIN_OP_AND_rect_h_l12_c8_d497_return_output;
     -- BIN_OP_AND[rect_h_l11_c8_995e] LATENCY=0
     -- Inputs
     BIN_OP_AND_rect_h_l11_c8_995e_left <= VAR_BIN_OP_AND_rect_h_l11_c8_995e_left;
     BIN_OP_AND_rect_h_l11_c8_995e_right <= VAR_BIN_OP_AND_rect_h_l11_c8_995e_right;
     -- Outputs
     VAR_BIN_OP_AND_rect_h_l11_c8_995e_return_output := BIN_OP_AND_rect_h_l11_c8_995e_return_output;

     -- Submodule level 5
     VAR_rv_MUX_rect_h_l11_c3_6f35_cond := VAR_BIN_OP_AND_rect_h_l11_c8_995e_return_output;
     -- rv_MUX[rect_h_l11_c3_6f35] LATENCY=0
     -- Inputs
     rv_MUX_rect_h_l11_c3_6f35_cond <= VAR_rv_MUX_rect_h_l11_c3_6f35_cond;
     rv_MUX_rect_h_l11_c3_6f35_iftrue <= VAR_rv_MUX_rect_h_l11_c3_6f35_iftrue;
     rv_MUX_rect_h_l11_c3_6f35_iffalse <= VAR_rv_MUX_rect_h_l11_c3_6f35_iffalse;
     -- Outputs
     VAR_rv_MUX_rect_h_l11_c3_6f35_return_output := rv_MUX_rect_h_l11_c3_6f35_return_output;

     -- Submodule level 6
     VAR_return_output := VAR_rv_MUX_rect_h_l11_c3_6f35_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
