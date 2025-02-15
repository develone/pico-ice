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
-- Submodules: 7
entity ball_paddle_inc_vel_0CLK_d1a5eb1c is
port(
 vel : in vga_pos_t;
 return_output : out vga_pos_t);
end ball_paddle_inc_vel_0CLK_d1a5eb1c;
architecture arch of ball_paddle_inc_vel_0CLK_d1a5eb1c is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_GT[pong_h_l120_c6_beec]
signal BIN_OP_GT_pong_h_l120_c6_beec_left : unsigned(11 downto 0);
signal BIN_OP_GT_pong_h_l120_c6_beec_right : unsigned(0 downto 0);
signal BIN_OP_GT_pong_h_l120_c6_beec_return_output : unsigned(0 downto 0);

-- vel_x_MUX[pong_h_l120_c3_1c86]
signal vel_x_MUX_pong_h_l120_c3_1c86_cond : unsigned(0 downto 0);
signal vel_x_MUX_pong_h_l120_c3_1c86_iftrue : unsigned(11 downto 0);
signal vel_x_MUX_pong_h_l120_c3_1c86_iffalse : unsigned(11 downto 0);
signal vel_x_MUX_pong_h_l120_c3_1c86_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[pong_h_l122_c5_a942]
signal BIN_OP_PLUS_pong_h_l122_c5_a942_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_pong_h_l122_c5_a942_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_pong_h_l122_c5_a942_return_output : unsigned(12 downto 0);

-- BIN_OP_GT[pong_h_l124_c6_38e6]
signal BIN_OP_GT_pong_h_l124_c6_38e6_left : unsigned(11 downto 0);
signal BIN_OP_GT_pong_h_l124_c6_38e6_right : unsigned(0 downto 0);
signal BIN_OP_GT_pong_h_l124_c6_38e6_return_output : unsigned(0 downto 0);

-- vel_y_MUX[pong_h_l124_c3_ef34]
signal vel_y_MUX_pong_h_l124_c3_ef34_cond : unsigned(0 downto 0);
signal vel_y_MUX_pong_h_l124_c3_ef34_iftrue : unsigned(11 downto 0);
signal vel_y_MUX_pong_h_l124_c3_ef34_iffalse : unsigned(11 downto 0);
signal vel_y_MUX_pong_h_l124_c3_ef34_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[pong_h_l126_c5_e7ac]
signal BIN_OP_PLUS_pong_h_l126_c5_e7ac_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_pong_h_l126_c5_e7ac_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_pong_h_l126_c5_e7ac_return_output : unsigned(12 downto 0);

function CONST_REF_RD_vga_pos_t_vga_pos_t_c07d( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned) return vga_pos_t is
 
  variable base : vga_pos_t; 
  variable return_output : vga_pos_t;
begin
      base.x := ref_toks_0;
      base.y := ref_toks_1;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_GT_pong_h_l120_c6_beec : 0 clocks latency
BIN_OP_GT_pong_h_l120_c6_beec : entity work.BIN_OP_GT_uint12_t_uint1_t_0CLK_5af1a430 port map (
BIN_OP_GT_pong_h_l120_c6_beec_left,
BIN_OP_GT_pong_h_l120_c6_beec_right,
BIN_OP_GT_pong_h_l120_c6_beec_return_output);

-- vel_x_MUX_pong_h_l120_c3_1c86 : 0 clocks latency
vel_x_MUX_pong_h_l120_c3_1c86 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
vel_x_MUX_pong_h_l120_c3_1c86_cond,
vel_x_MUX_pong_h_l120_c3_1c86_iftrue,
vel_x_MUX_pong_h_l120_c3_1c86_iffalse,
vel_x_MUX_pong_h_l120_c3_1c86_return_output);

-- BIN_OP_PLUS_pong_h_l122_c5_a942 : 0 clocks latency
BIN_OP_PLUS_pong_h_l122_c5_a942 : entity work.BIN_OP_PLUS_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_pong_h_l122_c5_a942_left,
BIN_OP_PLUS_pong_h_l122_c5_a942_right,
BIN_OP_PLUS_pong_h_l122_c5_a942_return_output);

-- BIN_OP_GT_pong_h_l124_c6_38e6 : 0 clocks latency
BIN_OP_GT_pong_h_l124_c6_38e6 : entity work.BIN_OP_GT_uint12_t_uint1_t_0CLK_5af1a430 port map (
BIN_OP_GT_pong_h_l124_c6_38e6_left,
BIN_OP_GT_pong_h_l124_c6_38e6_right,
BIN_OP_GT_pong_h_l124_c6_38e6_return_output);

-- vel_y_MUX_pong_h_l124_c3_ef34 : 0 clocks latency
vel_y_MUX_pong_h_l124_c3_ef34 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
vel_y_MUX_pong_h_l124_c3_ef34_cond,
vel_y_MUX_pong_h_l124_c3_ef34_iftrue,
vel_y_MUX_pong_h_l124_c3_ef34_iffalse,
vel_y_MUX_pong_h_l124_c3_ef34_return_output);

-- BIN_OP_PLUS_pong_h_l126_c5_e7ac : 0 clocks latency
BIN_OP_PLUS_pong_h_l126_c5_e7ac : entity work.BIN_OP_PLUS_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_pong_h_l126_c5_e7ac_left,
BIN_OP_PLUS_pong_h_l126_c5_e7ac_right,
BIN_OP_PLUS_pong_h_l126_c5_e7ac_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 vel,
 -- All submodule outputs
 BIN_OP_GT_pong_h_l120_c6_beec_return_output,
 vel_x_MUX_pong_h_l120_c3_1c86_return_output,
 BIN_OP_PLUS_pong_h_l122_c5_a942_return_output,
 BIN_OP_GT_pong_h_l124_c6_38e6_return_output,
 vel_y_MUX_pong_h_l124_c3_ef34_return_output,
 BIN_OP_PLUS_pong_h_l126_c5_e7ac_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : vga_pos_t;
 variable VAR_vel : vga_pos_t;
 variable VAR_BIN_OP_GT_pong_h_l120_c6_beec_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l120_c6_beec_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l120_c6_beec_return_output : unsigned(0 downto 0);
 variable VAR_vel_x_MUX_pong_h_l120_c3_1c86_iftrue : unsigned(11 downto 0);
 variable VAR_vel_x_pong_h_l122_c5_df7b : unsigned(11 downto 0);
 variable VAR_vel_x_MUX_pong_h_l120_c3_1c86_iffalse : unsigned(11 downto 0);
 variable VAR_vel_x_MUX_pong_h_l120_c3_1c86_return_output : unsigned(11 downto 0);
 variable VAR_vel_x_MUX_pong_h_l120_c3_1c86_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l122_c5_a942_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l122_c5_a942_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l122_c5_a942_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l124_c6_38e6_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l124_c6_38e6_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l124_c6_38e6_return_output : unsigned(0 downto 0);
 variable VAR_vel_y_MUX_pong_h_l124_c3_ef34_iftrue : unsigned(11 downto 0);
 variable VAR_vel_y_pong_h_l126_c5_fc04 : unsigned(11 downto 0);
 variable VAR_vel_y_MUX_pong_h_l124_c3_ef34_iffalse : unsigned(11 downto 0);
 variable VAR_vel_y_MUX_pong_h_l124_c3_ef34_return_output : unsigned(11 downto 0);
 variable VAR_vel_y_MUX_pong_h_l124_c3_ef34_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l126_c5_e7ac_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l126_c5_e7ac_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l126_c5_e7ac_return_output : unsigned(12 downto 0);
 variable VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_c07d_pong_h_l128_c10_1599_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l122_l120_DUPLICATE_f679_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l124_l126_DUPLICATE_3c59_return_output : unsigned(11 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_PLUS_pong_h_l126_c5_e7ac_right := to_unsigned(1, 1);
     VAR_BIN_OP_GT_pong_h_l124_c6_38e6_right := to_unsigned(0, 1);
     VAR_BIN_OP_GT_pong_h_l120_c6_beec_right := to_unsigned(0, 1);
     VAR_BIN_OP_PLUS_pong_h_l122_c5_a942_right := to_unsigned(1, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_vel := vel;

     -- Submodule level 0
     -- CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l122_l120_DUPLICATE_f679 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l122_l120_DUPLICATE_f679_return_output := VAR_vel.x;

     -- CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l124_l126_DUPLICATE_3c59 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l124_l126_DUPLICATE_3c59_return_output := VAR_vel.y;

     -- Submodule level 1
     VAR_BIN_OP_GT_pong_h_l120_c6_beec_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l122_l120_DUPLICATE_f679_return_output;
     VAR_BIN_OP_PLUS_pong_h_l122_c5_a942_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l122_l120_DUPLICATE_f679_return_output;
     VAR_vel_x_MUX_pong_h_l120_c3_1c86_iffalse := VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l122_l120_DUPLICATE_f679_return_output;
     VAR_BIN_OP_GT_pong_h_l124_c6_38e6_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l124_l126_DUPLICATE_3c59_return_output;
     VAR_BIN_OP_PLUS_pong_h_l126_c5_e7ac_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l124_l126_DUPLICATE_3c59_return_output;
     VAR_vel_y_MUX_pong_h_l124_c3_ef34_iffalse := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l124_l126_DUPLICATE_3c59_return_output;
     -- BIN_OP_GT[pong_h_l124_c6_38e6] LATENCY=0
     -- Inputs
     BIN_OP_GT_pong_h_l124_c6_38e6_left <= VAR_BIN_OP_GT_pong_h_l124_c6_38e6_left;
     BIN_OP_GT_pong_h_l124_c6_38e6_right <= VAR_BIN_OP_GT_pong_h_l124_c6_38e6_right;
     -- Outputs
     VAR_BIN_OP_GT_pong_h_l124_c6_38e6_return_output := BIN_OP_GT_pong_h_l124_c6_38e6_return_output;

     -- BIN_OP_PLUS[pong_h_l122_c5_a942] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_pong_h_l122_c5_a942_left <= VAR_BIN_OP_PLUS_pong_h_l122_c5_a942_left;
     BIN_OP_PLUS_pong_h_l122_c5_a942_right <= VAR_BIN_OP_PLUS_pong_h_l122_c5_a942_right;
     -- Outputs
     VAR_BIN_OP_PLUS_pong_h_l122_c5_a942_return_output := BIN_OP_PLUS_pong_h_l122_c5_a942_return_output;

     -- BIN_OP_GT[pong_h_l120_c6_beec] LATENCY=0
     -- Inputs
     BIN_OP_GT_pong_h_l120_c6_beec_left <= VAR_BIN_OP_GT_pong_h_l120_c6_beec_left;
     BIN_OP_GT_pong_h_l120_c6_beec_right <= VAR_BIN_OP_GT_pong_h_l120_c6_beec_right;
     -- Outputs
     VAR_BIN_OP_GT_pong_h_l120_c6_beec_return_output := BIN_OP_GT_pong_h_l120_c6_beec_return_output;

     -- BIN_OP_PLUS[pong_h_l126_c5_e7ac] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_pong_h_l126_c5_e7ac_left <= VAR_BIN_OP_PLUS_pong_h_l126_c5_e7ac_left;
     BIN_OP_PLUS_pong_h_l126_c5_e7ac_right <= VAR_BIN_OP_PLUS_pong_h_l126_c5_e7ac_right;
     -- Outputs
     VAR_BIN_OP_PLUS_pong_h_l126_c5_e7ac_return_output := BIN_OP_PLUS_pong_h_l126_c5_e7ac_return_output;

     -- Submodule level 2
     VAR_vel_x_MUX_pong_h_l120_c3_1c86_cond := VAR_BIN_OP_GT_pong_h_l120_c6_beec_return_output;
     VAR_vel_y_MUX_pong_h_l124_c3_ef34_cond := VAR_BIN_OP_GT_pong_h_l124_c6_38e6_return_output;
     VAR_vel_x_pong_h_l122_c5_df7b := resize(VAR_BIN_OP_PLUS_pong_h_l122_c5_a942_return_output, 12);
     VAR_vel_y_pong_h_l126_c5_fc04 := resize(VAR_BIN_OP_PLUS_pong_h_l126_c5_e7ac_return_output, 12);
     VAR_vel_x_MUX_pong_h_l120_c3_1c86_iftrue := VAR_vel_x_pong_h_l122_c5_df7b;
     VAR_vel_y_MUX_pong_h_l124_c3_ef34_iftrue := VAR_vel_y_pong_h_l126_c5_fc04;
     -- vel_x_MUX[pong_h_l120_c3_1c86] LATENCY=0
     -- Inputs
     vel_x_MUX_pong_h_l120_c3_1c86_cond <= VAR_vel_x_MUX_pong_h_l120_c3_1c86_cond;
     vel_x_MUX_pong_h_l120_c3_1c86_iftrue <= VAR_vel_x_MUX_pong_h_l120_c3_1c86_iftrue;
     vel_x_MUX_pong_h_l120_c3_1c86_iffalse <= VAR_vel_x_MUX_pong_h_l120_c3_1c86_iffalse;
     -- Outputs
     VAR_vel_x_MUX_pong_h_l120_c3_1c86_return_output := vel_x_MUX_pong_h_l120_c3_1c86_return_output;

     -- vel_y_MUX[pong_h_l124_c3_ef34] LATENCY=0
     -- Inputs
     vel_y_MUX_pong_h_l124_c3_ef34_cond <= VAR_vel_y_MUX_pong_h_l124_c3_ef34_cond;
     vel_y_MUX_pong_h_l124_c3_ef34_iftrue <= VAR_vel_y_MUX_pong_h_l124_c3_ef34_iftrue;
     vel_y_MUX_pong_h_l124_c3_ef34_iffalse <= VAR_vel_y_MUX_pong_h_l124_c3_ef34_iffalse;
     -- Outputs
     VAR_vel_y_MUX_pong_h_l124_c3_ef34_return_output := vel_y_MUX_pong_h_l124_c3_ef34_return_output;

     -- Submodule level 3
     -- CONST_REF_RD_vga_pos_t_vga_pos_t_c07d[pong_h_l128_c10_1599] LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_c07d_pong_h_l128_c10_1599_return_output := CONST_REF_RD_vga_pos_t_vga_pos_t_c07d(
     VAR_vel_x_MUX_pong_h_l120_c3_1c86_return_output,
     VAR_vel_y_MUX_pong_h_l124_c3_ef34_return_output);

     -- Submodule level 4
     VAR_return_output := VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_c07d_pong_h_l128_c10_1599_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
