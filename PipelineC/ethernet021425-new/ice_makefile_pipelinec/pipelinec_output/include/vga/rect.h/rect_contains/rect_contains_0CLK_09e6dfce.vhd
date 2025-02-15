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
-- BIN_OP_GTE[rect_h_l11_c8_f349]
signal BIN_OP_GTE_rect_h_l11_c8_f349_left : unsigned(11 downto 0);
signal BIN_OP_GTE_rect_h_l11_c8_f349_right : unsigned(11 downto 0);
signal BIN_OP_GTE_rect_h_l11_c8_f349_return_output : unsigned(0 downto 0);

-- BIN_OP_PLUS[rect_h_l11_c42_1adf]
signal BIN_OP_PLUS_rect_h_l11_c42_1adf_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l11_c42_1adf_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l11_c42_1adf_return_output : unsigned(12 downto 0);

-- BIN_OP_LT[rect_h_l11_c33_d3c4]
signal BIN_OP_LT_rect_h_l11_c33_d3c4_left : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l11_c33_d3c4_right : unsigned(12 downto 0);
signal BIN_OP_LT_rect_h_l11_c33_d3c4_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[rect_h_l11_c8_b783]
signal BIN_OP_AND_rect_h_l11_c8_b783_left : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l11_c8_b783_right : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l11_c8_b783_return_output : unsigned(0 downto 0);

-- BIN_OP_GTE[rect_h_l12_c8_5d84]
signal BIN_OP_GTE_rect_h_l12_c8_5d84_left : unsigned(11 downto 0);
signal BIN_OP_GTE_rect_h_l12_c8_5d84_right : unsigned(11 downto 0);
signal BIN_OP_GTE_rect_h_l12_c8_5d84_return_output : unsigned(0 downto 0);

-- BIN_OP_PLUS[rect_h_l12_c42_ed47]
signal BIN_OP_PLUS_rect_h_l12_c42_ed47_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l12_c42_ed47_right : unsigned(11 downto 0);
signal BIN_OP_PLUS_rect_h_l12_c42_ed47_return_output : unsigned(12 downto 0);

-- BIN_OP_LT[rect_h_l12_c33_7fcf]
signal BIN_OP_LT_rect_h_l12_c33_7fcf_left : unsigned(11 downto 0);
signal BIN_OP_LT_rect_h_l12_c33_7fcf_right : unsigned(12 downto 0);
signal BIN_OP_LT_rect_h_l12_c33_7fcf_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[rect_h_l12_c8_e0ec]
signal BIN_OP_AND_rect_h_l12_c8_e0ec_left : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l12_c8_e0ec_right : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l12_c8_e0ec_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[rect_h_l11_c8_6ed8]
signal BIN_OP_AND_rect_h_l11_c8_6ed8_left : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l11_c8_6ed8_right : unsigned(0 downto 0);
signal BIN_OP_AND_rect_h_l11_c8_6ed8_return_output : unsigned(0 downto 0);

-- rv_MUX[rect_h_l11_c3_9941]
signal rv_MUX_rect_h_l11_c3_9941_cond : unsigned(0 downto 0);
signal rv_MUX_rect_h_l11_c3_9941_iftrue : unsigned(0 downto 0);
signal rv_MUX_rect_h_l11_c3_9941_iffalse : unsigned(0 downto 0);
signal rv_MUX_rect_h_l11_c3_9941_return_output : unsigned(0 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_GTE_rect_h_l11_c8_f349 : 0 clocks latency
BIN_OP_GTE_rect_h_l11_c8_f349 : entity work.BIN_OP_GTE_uint12_t_uint12_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_rect_h_l11_c8_f349_left,
BIN_OP_GTE_rect_h_l11_c8_f349_right,
BIN_OP_GTE_rect_h_l11_c8_f349_return_output);

-- BIN_OP_PLUS_rect_h_l11_c42_1adf : 0 clocks latency
BIN_OP_PLUS_rect_h_l11_c42_1adf : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l11_c42_1adf_left,
BIN_OP_PLUS_rect_h_l11_c42_1adf_right,
BIN_OP_PLUS_rect_h_l11_c42_1adf_return_output);

-- BIN_OP_LT_rect_h_l11_c33_d3c4 : 0 clocks latency
BIN_OP_LT_rect_h_l11_c33_d3c4 : entity work.BIN_OP_LT_uint12_t_uint13_t_0CLK_5af1a430 port map (
BIN_OP_LT_rect_h_l11_c33_d3c4_left,
BIN_OP_LT_rect_h_l11_c33_d3c4_right,
BIN_OP_LT_rect_h_l11_c33_d3c4_return_output);

-- BIN_OP_AND_rect_h_l11_c8_b783 : 0 clocks latency
BIN_OP_AND_rect_h_l11_c8_b783 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_rect_h_l11_c8_b783_left,
BIN_OP_AND_rect_h_l11_c8_b783_right,
BIN_OP_AND_rect_h_l11_c8_b783_return_output);

-- BIN_OP_GTE_rect_h_l12_c8_5d84 : 0 clocks latency
BIN_OP_GTE_rect_h_l12_c8_5d84 : entity work.BIN_OP_GTE_uint12_t_uint12_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_rect_h_l12_c8_5d84_left,
BIN_OP_GTE_rect_h_l12_c8_5d84_right,
BIN_OP_GTE_rect_h_l12_c8_5d84_return_output);

-- BIN_OP_PLUS_rect_h_l12_c42_ed47 : 0 clocks latency
BIN_OP_PLUS_rect_h_l12_c42_ed47 : entity work.BIN_OP_PLUS_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_PLUS_rect_h_l12_c42_ed47_left,
BIN_OP_PLUS_rect_h_l12_c42_ed47_right,
BIN_OP_PLUS_rect_h_l12_c42_ed47_return_output);

-- BIN_OP_LT_rect_h_l12_c33_7fcf : 0 clocks latency
BIN_OP_LT_rect_h_l12_c33_7fcf : entity work.BIN_OP_LT_uint12_t_uint13_t_0CLK_5af1a430 port map (
BIN_OP_LT_rect_h_l12_c33_7fcf_left,
BIN_OP_LT_rect_h_l12_c33_7fcf_right,
BIN_OP_LT_rect_h_l12_c33_7fcf_return_output);

-- BIN_OP_AND_rect_h_l12_c8_e0ec : 0 clocks latency
BIN_OP_AND_rect_h_l12_c8_e0ec : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_rect_h_l12_c8_e0ec_left,
BIN_OP_AND_rect_h_l12_c8_e0ec_right,
BIN_OP_AND_rect_h_l12_c8_e0ec_return_output);

-- BIN_OP_AND_rect_h_l11_c8_6ed8 : 0 clocks latency
BIN_OP_AND_rect_h_l11_c8_6ed8 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_rect_h_l11_c8_6ed8_left,
BIN_OP_AND_rect_h_l11_c8_6ed8_right,
BIN_OP_AND_rect_h_l11_c8_6ed8_return_output);

-- rv_MUX_rect_h_l11_c3_9941 : 0 clocks latency
rv_MUX_rect_h_l11_c3_9941 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_rect_h_l11_c3_9941_cond,
rv_MUX_rect_h_l11_c3_9941_iftrue,
rv_MUX_rect_h_l11_c3_9941_iffalse,
rv_MUX_rect_h_l11_c3_9941_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 rect,
 pos,
 -- All submodule outputs
 BIN_OP_GTE_rect_h_l11_c8_f349_return_output,
 BIN_OP_PLUS_rect_h_l11_c42_1adf_return_output,
 BIN_OP_LT_rect_h_l11_c33_d3c4_return_output,
 BIN_OP_AND_rect_h_l11_c8_b783_return_output,
 BIN_OP_GTE_rect_h_l12_c8_5d84_return_output,
 BIN_OP_PLUS_rect_h_l12_c42_ed47_return_output,
 BIN_OP_LT_rect_h_l12_c33_7fcf_return_output,
 BIN_OP_AND_rect_h_l12_c8_e0ec_return_output,
 BIN_OP_AND_rect_h_l11_c8_6ed8_return_output,
 rv_MUX_rect_h_l11_c3_9941_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_rect : rect_t;
 variable VAR_pos : vga_pos_t;
 variable VAR_rv : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l11_c8_f349_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l11_c8_f349_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l11_c8_f349_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_b783_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l11_c33_d3c4_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l11_c42_1adf_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l11_c55_2d4a_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l11_c42_1adf_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l11_c42_1adf_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l11_c33_d3c4_right : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l11_c33_d3c4_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_b783_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_b783_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_6ed8_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l12_c8_5d84_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l12_c8_5d84_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_rect_h_l12_c8_5d84_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l12_c8_e0ec_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l12_c33_7fcf_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l12_c42_ed47_left : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l12_c55_af42_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l12_c42_ed47_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_rect_h_l12_c42_ed47_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l12_c33_7fcf_right : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_rect_h_l12_c33_7fcf_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l12_c8_e0ec_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l12_c8_e0ec_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_6ed8_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_rect_h_l11_c8_6ed8_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_rect_h_l11_c3_9941_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_rect_h_l11_c3_9941_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_rect_h_l11_c3_9941_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_rect_h_l11_c3_9941_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_rect_h_l11_DUPLICATE_c94c_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l11_DUPLICATE_dab0_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_rect_h_l12_DUPLICATE_9aee_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l12_DUPLICATE_5c37_return_output : unsigned(11 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_rv_MUX_rect_h_l11_c3_9941_iffalse := to_unsigned(0, 1);
     VAR_rv_MUX_rect_h_l11_c3_9941_iftrue := to_unsigned(1, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_rect := rect;
     VAR_pos := pos;

     -- Submodule level 0
     -- CONST_REF_RD_uint12_t_rect_t_dim_y_d41d[rect_h_l12_c55_af42] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l12_c55_af42_return_output := VAR_rect.dim.y;

     -- CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_rect_h_l11_DUPLICATE_c94c LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_rect_h_l11_DUPLICATE_c94c_return_output := VAR_pos.x;

     -- CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l12_DUPLICATE_5c37 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l12_DUPLICATE_5c37_return_output := VAR_rect.pos.y;

     -- CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_rect_h_l12_DUPLICATE_9aee LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_rect_h_l12_DUPLICATE_9aee_return_output := VAR_pos.y;

     -- CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l11_DUPLICATE_dab0 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l11_DUPLICATE_dab0_return_output := VAR_rect.pos.x;

     -- CONST_REF_RD_uint12_t_rect_t_dim_x_d41d[rect_h_l11_c55_2d4a] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l11_c55_2d4a_return_output := VAR_rect.dim.x;

     -- Submodule level 1
     VAR_BIN_OP_PLUS_rect_h_l11_c42_1adf_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_x_d41d_rect_h_l11_c55_2d4a_return_output;
     VAR_BIN_OP_PLUS_rect_h_l12_c42_ed47_right := VAR_CONST_REF_RD_uint12_t_rect_t_dim_y_d41d_rect_h_l12_c55_af42_return_output;
     VAR_BIN_OP_GTE_rect_h_l11_c8_f349_right := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l11_DUPLICATE_dab0_return_output;
     VAR_BIN_OP_PLUS_rect_h_l11_c42_1adf_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_x_d41d_rect_h_l11_DUPLICATE_dab0_return_output;
     VAR_BIN_OP_GTE_rect_h_l12_c8_5d84_right := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l12_DUPLICATE_5c37_return_output;
     VAR_BIN_OP_PLUS_rect_h_l12_c42_ed47_left := VAR_CONST_REF_RD_uint12_t_rect_t_pos_y_d41d_rect_h_l12_DUPLICATE_5c37_return_output;
     VAR_BIN_OP_GTE_rect_h_l11_c8_f349_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_rect_h_l11_DUPLICATE_c94c_return_output;
     VAR_BIN_OP_LT_rect_h_l11_c33_d3c4_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_rect_h_l11_DUPLICATE_c94c_return_output;
     VAR_BIN_OP_GTE_rect_h_l12_c8_5d84_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_rect_h_l12_DUPLICATE_9aee_return_output;
     VAR_BIN_OP_LT_rect_h_l12_c33_7fcf_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_rect_h_l12_DUPLICATE_9aee_return_output;
     -- BIN_OP_PLUS[rect_h_l11_c42_1adf] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l11_c42_1adf_left <= VAR_BIN_OP_PLUS_rect_h_l11_c42_1adf_left;
     BIN_OP_PLUS_rect_h_l11_c42_1adf_right <= VAR_BIN_OP_PLUS_rect_h_l11_c42_1adf_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l11_c42_1adf_return_output := BIN_OP_PLUS_rect_h_l11_c42_1adf_return_output;

     -- BIN_OP_GTE[rect_h_l12_c8_5d84] LATENCY=0
     -- Inputs
     BIN_OP_GTE_rect_h_l12_c8_5d84_left <= VAR_BIN_OP_GTE_rect_h_l12_c8_5d84_left;
     BIN_OP_GTE_rect_h_l12_c8_5d84_right <= VAR_BIN_OP_GTE_rect_h_l12_c8_5d84_right;
     -- Outputs
     VAR_BIN_OP_GTE_rect_h_l12_c8_5d84_return_output := BIN_OP_GTE_rect_h_l12_c8_5d84_return_output;

     -- BIN_OP_PLUS[rect_h_l12_c42_ed47] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_rect_h_l12_c42_ed47_left <= VAR_BIN_OP_PLUS_rect_h_l12_c42_ed47_left;
     BIN_OP_PLUS_rect_h_l12_c42_ed47_right <= VAR_BIN_OP_PLUS_rect_h_l12_c42_ed47_right;
     -- Outputs
     VAR_BIN_OP_PLUS_rect_h_l12_c42_ed47_return_output := BIN_OP_PLUS_rect_h_l12_c42_ed47_return_output;

     -- BIN_OP_GTE[rect_h_l11_c8_f349] LATENCY=0
     -- Inputs
     BIN_OP_GTE_rect_h_l11_c8_f349_left <= VAR_BIN_OP_GTE_rect_h_l11_c8_f349_left;
     BIN_OP_GTE_rect_h_l11_c8_f349_right <= VAR_BIN_OP_GTE_rect_h_l11_c8_f349_right;
     -- Outputs
     VAR_BIN_OP_GTE_rect_h_l11_c8_f349_return_output := BIN_OP_GTE_rect_h_l11_c8_f349_return_output;

     -- Submodule level 2
     VAR_BIN_OP_AND_rect_h_l11_c8_b783_left := VAR_BIN_OP_GTE_rect_h_l11_c8_f349_return_output;
     VAR_BIN_OP_AND_rect_h_l12_c8_e0ec_left := VAR_BIN_OP_GTE_rect_h_l12_c8_5d84_return_output;
     VAR_BIN_OP_LT_rect_h_l11_c33_d3c4_right := VAR_BIN_OP_PLUS_rect_h_l11_c42_1adf_return_output;
     VAR_BIN_OP_LT_rect_h_l12_c33_7fcf_right := VAR_BIN_OP_PLUS_rect_h_l12_c42_ed47_return_output;
     -- BIN_OP_LT[rect_h_l12_c33_7fcf] LATENCY=0
     -- Inputs
     BIN_OP_LT_rect_h_l12_c33_7fcf_left <= VAR_BIN_OP_LT_rect_h_l12_c33_7fcf_left;
     BIN_OP_LT_rect_h_l12_c33_7fcf_right <= VAR_BIN_OP_LT_rect_h_l12_c33_7fcf_right;
     -- Outputs
     VAR_BIN_OP_LT_rect_h_l12_c33_7fcf_return_output := BIN_OP_LT_rect_h_l12_c33_7fcf_return_output;

     -- BIN_OP_LT[rect_h_l11_c33_d3c4] LATENCY=0
     -- Inputs
     BIN_OP_LT_rect_h_l11_c33_d3c4_left <= VAR_BIN_OP_LT_rect_h_l11_c33_d3c4_left;
     BIN_OP_LT_rect_h_l11_c33_d3c4_right <= VAR_BIN_OP_LT_rect_h_l11_c33_d3c4_right;
     -- Outputs
     VAR_BIN_OP_LT_rect_h_l11_c33_d3c4_return_output := BIN_OP_LT_rect_h_l11_c33_d3c4_return_output;

     -- Submodule level 3
     VAR_BIN_OP_AND_rect_h_l11_c8_b783_right := VAR_BIN_OP_LT_rect_h_l11_c33_d3c4_return_output;
     VAR_BIN_OP_AND_rect_h_l12_c8_e0ec_right := VAR_BIN_OP_LT_rect_h_l12_c33_7fcf_return_output;
     -- BIN_OP_AND[rect_h_l11_c8_b783] LATENCY=0
     -- Inputs
     BIN_OP_AND_rect_h_l11_c8_b783_left <= VAR_BIN_OP_AND_rect_h_l11_c8_b783_left;
     BIN_OP_AND_rect_h_l11_c8_b783_right <= VAR_BIN_OP_AND_rect_h_l11_c8_b783_right;
     -- Outputs
     VAR_BIN_OP_AND_rect_h_l11_c8_b783_return_output := BIN_OP_AND_rect_h_l11_c8_b783_return_output;

     -- BIN_OP_AND[rect_h_l12_c8_e0ec] LATENCY=0
     -- Inputs
     BIN_OP_AND_rect_h_l12_c8_e0ec_left <= VAR_BIN_OP_AND_rect_h_l12_c8_e0ec_left;
     BIN_OP_AND_rect_h_l12_c8_e0ec_right <= VAR_BIN_OP_AND_rect_h_l12_c8_e0ec_right;
     -- Outputs
     VAR_BIN_OP_AND_rect_h_l12_c8_e0ec_return_output := BIN_OP_AND_rect_h_l12_c8_e0ec_return_output;

     -- Submodule level 4
     VAR_BIN_OP_AND_rect_h_l11_c8_6ed8_left := VAR_BIN_OP_AND_rect_h_l11_c8_b783_return_output;
     VAR_BIN_OP_AND_rect_h_l11_c8_6ed8_right := VAR_BIN_OP_AND_rect_h_l12_c8_e0ec_return_output;
     -- BIN_OP_AND[rect_h_l11_c8_6ed8] LATENCY=0
     -- Inputs
     BIN_OP_AND_rect_h_l11_c8_6ed8_left <= VAR_BIN_OP_AND_rect_h_l11_c8_6ed8_left;
     BIN_OP_AND_rect_h_l11_c8_6ed8_right <= VAR_BIN_OP_AND_rect_h_l11_c8_6ed8_right;
     -- Outputs
     VAR_BIN_OP_AND_rect_h_l11_c8_6ed8_return_output := BIN_OP_AND_rect_h_l11_c8_6ed8_return_output;

     -- Submodule level 5
     VAR_rv_MUX_rect_h_l11_c3_9941_cond := VAR_BIN_OP_AND_rect_h_l11_c8_6ed8_return_output;
     -- rv_MUX[rect_h_l11_c3_9941] LATENCY=0
     -- Inputs
     rv_MUX_rect_h_l11_c3_9941_cond <= VAR_rv_MUX_rect_h_l11_c3_9941_cond;
     rv_MUX_rect_h_l11_c3_9941_iftrue <= VAR_rv_MUX_rect_h_l11_c3_9941_iftrue;
     rv_MUX_rect_h_l11_c3_9941_iffalse <= VAR_rv_MUX_rect_h_l11_c3_9941_iffalse;
     -- Outputs
     VAR_rv_MUX_rect_h_l11_c3_9941_return_output := rv_MUX_rect_h_l11_c3_9941_return_output;

     -- Submodule level 6
     VAR_return_output := VAR_rv_MUX_rect_h_l11_c3_9941_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
