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
-- BIN_OP_GTE[rect_h_l11_c8_0d15]
signal BIN_OP_GTE_rect_h_l11_c8_0d15_left : unsigned(11 downto 0);
signal BIN_OP_GTE_rect_h_l11_c8_0d15_right : unsigned(11 downto 0);
signal BIN_OP_GTE_rect_h_l11_c8_0d15_return_output : unsigned(0 downto 0);

-- BIN_OP_PLUS[rect_h_l11_c42_2229]
signal BIN_OP_PLUS_rect_h_l11_c42_2229_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l11_c42_2229_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l11_c42_2229_return_output : unsigned(12 downto 0);

-- BIN_OP_LT[rect_h_l11_c33_ddd8]
signal BIN_OP_LT_rect_h_l11_c33_ddd8_left : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l11_c33_ddd8_right : unsigned(12 downto 0);
signal BIN_OP_LT_rect_h_l11_c33_ddd8_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[rect_h_l11_c8_bd3b]
signal BIN_OP_AND_rect_h_l11_c8_bd3b_left : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l11_c8_bd3b_right : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l11_c8_bd3b_return_output : unsigned(0 downto 0);

-- BIN_OP_GTE[rect_h_l12_c8_c8f3]
signal BIN_OP_GTE_rect_h_l12_c8_c8f3_left : unsigned(11 downto 0);
signal BIN_OP_GTE_rect_h_l12_c8_c8f3_right : unsigned(11 downto 0);
signal BIN_OP_GTE_rect_h_l12_c8_c8f3_return_output : unsigned(0 downto 0);

-- BIN_OP_PLUS[rect_h_l12_c42_6848]
signal BIN_OP_PLUS_rect_h_l12_c42_6848_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l12_c42_6848_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l12_c42_6848_return_output : unsigned(12 downto 0);

-- BIN_OP_LT[rect_h_l12_c33_5bf6]
signal BIN_OP_LT_rect_h_l12_c33_5bf6_left : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l12_c33_5bf6_right : unsigned(12 downto 0);
signal BIN_OP_LT_rect_h_l12_c33_5bf6_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[rect_h_l12_c8_7f04]
signal BIN_OP_AND_rect_h_l12_c8_7f04_left : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l12_c8_7f04_right : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l12_c8_7f04_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[rect_h_l11_c8_da78]
signal BIN_OP_AND_rect_h_l11_c8_da78_left : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l11_c8_da78_right : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l11_c8_da78_return_output : unsigned(0 downto 0);

-- rv_MUX[rect_h_l11_c3_bc0e]
signal rv_MUX_rect_h_l11_c3_bc0e_cond : unsigned(0 downto 0);
signal rv_MUX_rect_h_l11_c3_bc0e_iftrue : unsigned(0 downto 0);
signal rv_MUX_rect_h_l11_c3_bc0e_iffalse : unsigned(0 downto 0);
signal rv_MUX_rect_h_l11_c3_bc0e_return_output : unsigned(0 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_GTE_rect_h_l11_c8_0d15 : 0 clocks latency
BIN_OP_GTE_rect_h_l11_c8_0d15 : entity work.BIN_OP_GTE_uint12_t_uint12_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_rect_h_l11_c8_0d15_left,
BIN_OP_GTE_rect_h_l11_c8_0d15_right,
BIN_OP_GTE_rect_h_l11_c8_0d15_return_output);

-- BIN_OP_PLUS_rect_h_l11_c42_2229 : 0 clocks latency
BIN_OP_PLUS_rect_h_l11_c42_2229 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l11_c42_2229_left,
BIN_OP_PLUS_rect_h_l11_c42_2229_right,
BIN_OP_PLUS_rect_h_l11_c42_2229_return_output);

-- BIN_OP_LT_rect_h_l11_c33_ddd8 : 0 clocks latency
BIN_OP_LT_rect_h_l11_c33_ddd8 : entity work.BIN_OP_LT_uint12_t_uint13_t_0CLK_5af1a430 port map (
BIN_OP_LT_rect_h_l11_c33_ddd8_left,
BIN_OP_LT_rect_h_l11_c33_ddd8_right,
BIN_OP_LT_rect_h_l11_c33_ddd8_return_output);

-- BIN_OP_AND_rect_h_l11_c8_bd3b : 0 clocks latency
BIN_OP_AND_rect_h_l11_c8_bd3b : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_rect_h_l11_c8_bd3b_left,
BIN_OP_AND_rect_h_l11_c8_bd3b_right,
BIN_OP_AND_rect_h_l11_c8_bd3b_return_output);

-- BIN_OP_GTE_rect_h_l12_c8_c8f3 : 0 clocks latency
BIN_OP_GTE_rect_h_l12_c8_c8f3 : entity work.BIN_OP_GTE_uint12_t_uint12_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_rect_h_l12_c8_c8f3_left,
BIN_OP_GTE_rect_h_l12_c8_c8f3_right,
BIN_OP_GTE_rect_h_l12_c8_c8f3_return_output);

-- BIN_OP_PLUS_rect_h_l12_c42_6848 : 0 clocks latency
BIN_OP_PLUS_rect_h_l12_c42_6848 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l12_c42_6848_left,
BIN_OP_PLUS_rect_h_l12_c42_6848_right,
BIN_OP_PLUS_rect_h_l12_c42_6848_return_output);

-- BIN_OP_LT_rect_h_l12_c33_5bf6 : 0 clocks latency
BIN_OP_LT_rect_h_l12_c33_5bf6 : entity work.BIN_OP_LT_uint12_t_uint13_t_0CLK_5af1a430 port map (
BIN_OP_LT_rect_h_l12_c33_5bf6_left,
BIN_OP_LT_rect_h_l12_c33_5bf6_right,
BIN_OP_LT_rect_h_l12_c33_5bf6_return_output);

-- BIN_OP_AND_rect_h_l12_c8_7f04 : 0 clocks latency
BIN_OP_AND_rect_h_l12_c8_7f04 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_rect_h_l12_c8_7f04_left,
BIN_OP_AND_rect_h_l12_c8_7f04_right,
BIN_OP_AND_rect_h_l12_c8_7f04_return_output);

-- BIN_OP_AND_rect_h_l11_c8_da78 : 0 clocks latency
BIN_OP_AND_rect_h_l11_c8_da78 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_rect_h_l11_c8_da78_left,
BIN_OP_AND_rect_h_l11_c8_da78_right,
BIN_OP_AND_rect_h_l11_c8_da78_return_output);

-- rv_MUX_rect_h_l11_c3_bc0e : 0 clocks latency
rv_MUX_rect_h_l11_c3_bc0e : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_rect_h_l11_c3_bc0e_cond,
rv_MUX_rect_h_l11_c3_bc0e_iftrue,
rv_MUX_rect_h_l11_c3_bc0e_iffalse,
rv_MUX_rect_h_l11_c3_bc0e_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 rect,
 pos,
 -- All submodule outputs
 BIN_OP_GTE_rect_h_l11_c8_0d15_return_output,
 BIN_OP_PLUS_rect_h_l11_c42_2229_return_output,
 BIN_OP_LT_rect_h_l11_c33_ddd8_return_output,
 BIN_OP_AND_rect_h_l11_c8_bd3b_return_output,
 BIN_OP_GTE_rect_h_l12_c8_c8f3_return_output,
 BIN_OP_PLUS_rect_h_l12_c42_6848_return_output,
 BIN_OP_LT_rect_h_l12_c33_5bf6_return_output,
 BIN_OP_AND_rect_h_l12_c8_7f04_return_output,
 BIN_OP_AND_rect_h_l11_c8_da78_return_output,
 rv_MUX_rect_h_l11_c3_bc0e_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_rect : rect_t;
 variable VAR_pos : vga_pos_t;
 variable VAR_rv : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l11_c8_0d15_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l11_c8_0d15_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l11_c8_0d15_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_bd3b_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l11_c33_ddd8_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l11_c42_2229_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l11_c55_040b_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l11_c42_2229_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l11_c42_2229_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l11_c33_ddd8_right : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l11_c33_ddd8_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_bd3b_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_bd3b_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_da78_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l12_c8_c8f3_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l12_c8_c8f3_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l12_c8_c8f3_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l12_c8_7f04_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l12_c33_5bf6_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l12_c42_6848_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l12_c55_8315_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l12_c42_6848_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l12_c42_6848_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l12_c33_5bf6_right : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l12_c33_5bf6_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l12_c8_7f04_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l12_c8_7f04_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_da78_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_da78_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_rect_h_l11_c3_bc0e_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_rect_h_l11_c3_bc0e_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_rect_h_l11_c3_bc0e_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_rect_h_l11_c3_bc0e_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_rect_h_l11_DUPLICATE_6057_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l11_DUPLICATE_bc16_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_rect_h_l12_DUPLICATE_434f_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l12_DUPLICATE_cc31_return_output : unsigned(11 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_rv_MUX_rect_h_l11_c3_bc0e_iftrue := to_unsigned(1, 1);
     VAR_rv_MUX_rect_h_l11_c3_bc0e_iffalse := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_rect := rect;
     VAR_pos := pos;

     -- Submodule level 0
     -- CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_rect_h_l11_DUPLICATE_6057 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_rect_h_l11_DUPLICATE_6057_return_output := VAR_pos.x;

     -- CONST_REF_RD_uint12_t_rect_t_dim_y_d41d[rect_h_l12_c55_8315] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l12_c55_8315_return_output := VAR_rect.dim.y;

     -- CONST_REF_RD_uint12_t_rect_t_dim_x_d41d[rect_h_l11_c55_040b] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l11_c55_040b_return_output := VAR_rect.dim.x;

     -- CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_rect_h_l12_DUPLICATE_434f LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_rect_h_l12_DUPLICATE_434f_return_output := VAR_pos.y;

     -- CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l12_DUPLICATE_cc31 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l12_DUPLICATE_cc31_return_output := VAR_rect.pos.y;

     -- CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l11_DUPLICATE_bc16 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l11_DUPLICATE_bc16_return_output := VAR_rect.pos.x;

     -- Submodule level 1
     VAR_BIN_OP_PLUS_rect_h_l11_c42_2229_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l11_c55_040b_return_output;
     VAR_BIN_OP_PLUS_rect_h_l12_c42_6848_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l12_c55_8315_return_output;
     VAR_BIN_OP_GTE_rect_h_l11_c8_0d15_right := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l11_DUPLICATE_bc16_return_output;
     VAR_BIN_OP_PLUS_rect_h_l11_c42_2229_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l11_DUPLICATE_bc16_return_output;
     VAR_BIN_OP_GTE_rect_h_l12_c8_c8f3_right := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l12_DUPLICATE_cc31_return_output;
     VAR_BIN_OP_PLUS_rect_h_l12_c42_6848_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l12_DUPLICATE_cc31_return_output;
     VAR_BIN_OP_GTE_rect_h_l11_c8_0d15_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_rect_h_l11_DUPLICATE_6057_return_output;
     VAR_BIN_OP_LT_rect_h_l11_c33_ddd8_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_rect_h_l11_DUPLICATE_6057_return_output;
     VAR_BIN_OP_GTE_rect_h_l12_c8_c8f3_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_rect_h_l12_DUPLICATE_434f_return_output;
     VAR_BIN_OP_LT_rect_h_l12_c33_5bf6_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_rect_h_l12_DUPLICATE_434f_return_output;
     -- BIN_OP_PLUS[rect_h_l12_c42_6848] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l12_c42_6848_left <= VAR_BIN_OP_PLUS_rect_h_l12_c42_6848_left;
     BIN_OP_PLUS_rect_h_l12_c42_6848_right <= VAR_BIN_OP_PLUS_rect_h_l12_c42_6848_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l12_c42_6848_return_output := BIN_OP_PLUS_rect_h_l12_c42_6848_return_output;

     -- BIN_OP_PLUS[rect_h_l11_c42_2229] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l11_c42_2229_left <= VAR_BIN_OP_PLUS_rect_h_l11_c42_2229_left;
     BIN_OP_PLUS_rect_h_l11_c42_2229_right <= VAR_BIN_OP_PLUS_rect_h_l11_c42_2229_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l11_c42_2229_return_output := BIN_OP_PLUS_rect_h_l11_c42_2229_return_output;

     -- BIN_OP_GTE[rect_h_l12_c8_c8f3] LATENCY=0
     -- Inputs
     BIN_OP_GTE_rect_h_l12_c8_c8f3_left <= VAR_BIN_OP_GTE_rect_h_l12_c8_c8f3_left;
     BIN_OP_GTE_rect_h_l12_c8_c8f3_right <= VAR_BIN_OP_GTE_rect_h_l12_c8_c8f3_right;
     -- Outputs
     VAR_BIN_OP_GTE_rect_h_l12_c8_c8f3_return_output := BIN_OP_GTE_rect_h_l12_c8_c8f3_return_output;

     -- BIN_OP_GTE[rect_h_l11_c8_0d15] LATENCY=0
     -- Inputs
     BIN_OP_GTE_rect_h_l11_c8_0d15_left <= VAR_BIN_OP_GTE_rect_h_l11_c8_0d15_left;
     BIN_OP_GTE_rect_h_l11_c8_0d15_right <= VAR_BIN_OP_GTE_rect_h_l11_c8_0d15_right;
     -- Outputs
     VAR_BIN_OP_GTE_rect_h_l11_c8_0d15_return_output := BIN_OP_GTE_rect_h_l11_c8_0d15_return_output;

     -- Submodule level 2
     VAR_BIN_OP_AND_rect_h_l11_c8_bd3b_left := VAR_BIN_OP_GTE_rect_h_l11_c8_0d15_return_output;
     VAR_BIN_OP_AND_rect_h_l12_c8_7f04_left := VAR_BIN_OP_GTE_rect_h_l12_c8_c8f3_return_output;
     VAR_BIN_OP_LT_rect_h_l11_c33_ddd8_right := VAR_BIN_OP_PLUS_rect_h_l11_c42_2229_return_output;
     VAR_BIN_OP_LT_rect_h_l12_c33_5bf6_right := VAR_BIN_OP_PLUS_rect_h_l12_c42_6848_return_output;
     -- BIN_OP_LT[rect_h_l11_c33_ddd8] LATENCY=0
     -- Inputs
     BIN_OP_LT_rect_h_l11_c33_ddd8_left <= VAR_BIN_OP_LT_rect_h_l11_c33_ddd8_left;
     BIN_OP_LT_rect_h_l11_c33_ddd8_right <= VAR_BIN_OP_LT_rect_h_l11_c33_ddd8_right;
     -- Outputs
     VAR_BIN_OP_LT_rect_h_l11_c33_ddd8_return_output := BIN_OP_LT_rect_h_l11_c33_ddd8_return_output;

     -- BIN_OP_LT[rect_h_l12_c33_5bf6] LATENCY=0
     -- Inputs
     BIN_OP_LT_rect_h_l12_c33_5bf6_left <= VAR_BIN_OP_LT_rect_h_l12_c33_5bf6_left;
     BIN_OP_LT_rect_h_l12_c33_5bf6_right <= VAR_BIN_OP_LT_rect_h_l12_c33_5bf6_right;
     -- Outputs
     VAR_BIN_OP_LT_rect_h_l12_c33_5bf6_return_output := BIN_OP_LT_rect_h_l12_c33_5bf6_return_output;

     -- Submodule level 3
     VAR_BIN_OP_AND_rect_h_l11_c8_bd3b_right := VAR_BIN_OP_LT_rect_h_l11_c33_ddd8_return_output;
     VAR_BIN_OP_AND_rect_h_l12_c8_7f04_right := VAR_BIN_OP_LT_rect_h_l12_c33_5bf6_return_output;
     -- BIN_OP_AND[rect_h_l11_c8_bd3b] LATENCY=0
     -- Inputs
     BIN_OP_AND_rect_h_l11_c8_bd3b_left <= VAR_BIN_OP_AND_rect_h_l11_c8_bd3b_left;
     BIN_OP_AND_rect_h_l11_c8_bd3b_right <= VAR_BIN_OP_AND_rect_h_l11_c8_bd3b_right;
     -- Outputs
     VAR_BIN_OP_AND_rect_h_l11_c8_bd3b_return_output := BIN_OP_AND_rect_h_l11_c8_bd3b_return_output;

     -- BIN_OP_AND[rect_h_l12_c8_7f04] LATENCY=0
     -- Inputs
     BIN_OP_AND_rect_h_l12_c8_7f04_left <= VAR_BIN_OP_AND_rect_h_l12_c8_7f04_left;
     BIN_OP_AND_rect_h_l12_c8_7f04_right <= VAR_BIN_OP_AND_rect_h_l12_c8_7f04_right;
     -- Outputs
     VAR_BIN_OP_AND_rect_h_l12_c8_7f04_return_output := BIN_OP_AND_rect_h_l12_c8_7f04_return_output;

     -- Submodule level 4
     VAR_BIN_OP_AND_rect_h_l11_c8_da78_left := VAR_BIN_OP_AND_rect_h_l11_c8_bd3b_return_output;
     VAR_BIN_OP_AND_rect_h_l11_c8_da78_right := VAR_BIN_OP_AND_rect_h_l12_c8_7f04_return_output;
     -- BIN_OP_AND[rect_h_l11_c8_da78] LATENCY=0
     -- Inputs
     BIN_OP_AND_rect_h_l11_c8_da78_left <= VAR_BIN_OP_AND_rect_h_l11_c8_da78_left;
     BIN_OP_AND_rect_h_l11_c8_da78_right <= VAR_BIN_OP_AND_rect_h_l11_c8_da78_right;
     -- Outputs
     VAR_BIN_OP_AND_rect_h_l11_c8_da78_return_output := BIN_OP_AND_rect_h_l11_c8_da78_return_output;

     -- Submodule level 5
     VAR_rv_MUX_rect_h_l11_c3_bc0e_cond := VAR_BIN_OP_AND_rect_h_l11_c8_da78_return_output;
     -- rv_MUX[rect_h_l11_c3_bc0e] LATENCY=0
     -- Inputs
     rv_MUX_rect_h_l11_c3_bc0e_cond <= VAR_rv_MUX_rect_h_l11_c3_bc0e_cond;
     rv_MUX_rect_h_l11_c3_bc0e_iftrue <= VAR_rv_MUX_rect_h_l11_c3_bc0e_iftrue;
     rv_MUX_rect_h_l11_c3_bc0e_iffalse <= VAR_rv_MUX_rect_h_l11_c3_bc0e_iffalse;
     -- Outputs
     VAR_rv_MUX_rect_h_l11_c3_bc0e_return_output := rv_MUX_rect_h_l11_c3_bc0e_return_output;

     -- Submodule level 6
     VAR_return_output := VAR_rv_MUX_rect_h_l11_c3_bc0e_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
