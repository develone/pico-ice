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
-- BIN_OP_GT[pong_h_l120_c6_bca0]
signal BIN_OP_GT_pong_h_l120_c6_bca0_left : unsigned(11 downto 0);
signal BIN_OP_GT_pong_h_l120_c6_bca0_right : unsigned(0 downto 0);
signal BIN_OP_GT_pong_h_l120_c6_bca0_return_output : unsigned(0 downto 0);

-- vel_x_MUX[pong_h_l120_c3_9aaa]
signal vel_x_MUX_pong_h_l120_c3_9aaa_cond : unsigned(0 downto 0);
signal vel_x_MUX_pong_h_l120_c3_9aaa_iftrue : unsigned(11 downto 0);
signal vel_x_MUX_pong_h_l120_c3_9aaa_iffalse : unsigned(11 downto 0);
signal vel_x_MUX_pong_h_l120_c3_9aaa_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[pong_h_l122_c5_f2ef]
signal BIN_OP_PLUS_pong_h_l122_c5_f2ef_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_pong_h_l122_c5_f2ef_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_pong_h_l122_c5_f2ef_return_output : unsigned(12 downto 0);

-- BIN_OP_GT[pong_h_l124_c6_e08c]
signal BIN_OP_GT_pong_h_l124_c6_e08c_left : unsigned(11 downto 0);
signal BIN_OP_GT_pong_h_l124_c6_e08c_right : unsigned(0 downto 0);
signal BIN_OP_GT_pong_h_l124_c6_e08c_return_output : unsigned(0 downto 0);

-- vel_y_MUX[pong_h_l124_c3_d998]
signal vel_y_MUX_pong_h_l124_c3_d998_cond : unsigned(0 downto 0);
signal vel_y_MUX_pong_h_l124_c3_d998_iftrue : unsigned(11 downto 0);
signal vel_y_MUX_pong_h_l124_c3_d998_iffalse : unsigned(11 downto 0);
signal vel_y_MUX_pong_h_l124_c3_d998_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[pong_h_l126_c5_2217]
signal BIN_OP_PLUS_pong_h_l126_c5_2217_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_pong_h_l126_c5_2217_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_pong_h_l126_c5_2217_return_output : unsigned(12 downto 0);

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
-- BIN_OP_GT_pong_h_l120_c6_bca0 : 0 clocks latency
BIN_OP_GT_pong_h_l120_c6_bca0 : entity work.BIN_OP_GT_uint12_t_uint1_t_0CLK_5af1a430 port map (
BIN_OP_GT_pong_h_l120_c6_bca0_left,
BIN_OP_GT_pong_h_l120_c6_bca0_right,
BIN_OP_GT_pong_h_l120_c6_bca0_return_output);

-- vel_x_MUX_pong_h_l120_c3_9aaa : 0 clocks latency
vel_x_MUX_pong_h_l120_c3_9aaa : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
vel_x_MUX_pong_h_l120_c3_9aaa_cond,
vel_x_MUX_pong_h_l120_c3_9aaa_iftrue,
vel_x_MUX_pong_h_l120_c3_9aaa_iffalse,
vel_x_MUX_pong_h_l120_c3_9aaa_return_output);

-- BIN_OP_PLUS_pong_h_l122_c5_f2ef : 0 clocks latency
BIN_OP_PLUS_pong_h_l122_c5_f2ef : entity work.BIN_OP_PLUS_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_pong_h_l122_c5_f2ef_left,
BIN_OP_PLUS_pong_h_l122_c5_f2ef_right,
BIN_OP_PLUS_pong_h_l122_c5_f2ef_return_output);

-- BIN_OP_GT_pong_h_l124_c6_e08c : 0 clocks latency
BIN_OP_GT_pong_h_l124_c6_e08c : entity work.BIN_OP_GT_uint12_t_uint1_t_0CLK_5af1a430 port map (
BIN_OP_GT_pong_h_l124_c6_e08c_left,
BIN_OP_GT_pong_h_l124_c6_e08c_right,
BIN_OP_GT_pong_h_l124_c6_e08c_return_output);

-- vel_y_MUX_pong_h_l124_c3_d998 : 0 clocks latency
vel_y_MUX_pong_h_l124_c3_d998 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
vel_y_MUX_pong_h_l124_c3_d998_cond,
vel_y_MUX_pong_h_l124_c3_d998_iftrue,
vel_y_MUX_pong_h_l124_c3_d998_iffalse,
vel_y_MUX_pong_h_l124_c3_d998_return_output);

-- BIN_OP_PLUS_pong_h_l126_c5_2217 : 0 clocks latency
BIN_OP_PLUS_pong_h_l126_c5_2217 : entity work.BIN_OP_PLUS_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_pong_h_l126_c5_2217_left,
BIN_OP_PLUS_pong_h_l126_c5_2217_right,
BIN_OP_PLUS_pong_h_l126_c5_2217_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 vel,
 -- All submodule outputs
 BIN_OP_GT_pong_h_l120_c6_bca0_return_output,
 vel_x_MUX_pong_h_l120_c3_9aaa_return_output,
 BIN_OP_PLUS_pong_h_l122_c5_f2ef_return_output,
 BIN_OP_GT_pong_h_l124_c6_e08c_return_output,
 vel_y_MUX_pong_h_l124_c3_d998_return_output,
 BIN_OP_PLUS_pong_h_l126_c5_2217_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : vga_pos_t;
 variable VAR_vel : vga_pos_t;
 variable VAR_BIN_OP_GT_pong_h_l120_c6_bca0_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l120_c6_bca0_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l120_c6_bca0_return_output : unsigned(0 downto 0);
 variable VAR_vel_x_MUX_pong_h_l120_c3_9aaa_iftrue : unsigned(11 downto 0);
 variable VAR_vel_x_pong_h_l122_c5_7a96 : unsigned(11 downto 0);
 variable VAR_vel_x_MUX_pong_h_l120_c3_9aaa_iffalse : unsigned(11 downto 0);
 variable VAR_vel_x_MUX_pong_h_l120_c3_9aaa_return_output : unsigned(11 downto 0);
 variable VAR_vel_x_MUX_pong_h_l120_c3_9aaa_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l122_c5_f2ef_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l122_c5_f2ef_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l122_c5_f2ef_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l124_c6_e08c_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l124_c6_e08c_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l124_c6_e08c_return_output : unsigned(0 downto 0);
 variable VAR_vel_y_MUX_pong_h_l124_c3_d998_iftrue : unsigned(11 downto 0);
 variable VAR_vel_y_pong_h_l126_c5_d51b : unsigned(11 downto 0);
 variable VAR_vel_y_MUX_pong_h_l124_c3_d998_iffalse : unsigned(11 downto 0);
 variable VAR_vel_y_MUX_pong_h_l124_c3_d998_return_output : unsigned(11 downto 0);
 variable VAR_vel_y_MUX_pong_h_l124_c3_d998_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l126_c5_2217_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l126_c5_2217_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l126_c5_2217_return_output : unsigned(12 downto 0);
 variable VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_c07d_pong_h_l128_c10_cd8f_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l120_l122_DUPLICATE_1fdf_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l126_l124_DUPLICATE_8e16_return_output : unsigned(11 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_PLUS_pong_h_l122_c5_f2ef_right := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_pong_h_l126_c5_2217_right := to_unsigned(1, 1);
     VAR_BIN_OP_GT_pong_h_l120_c6_bca0_right := to_unsigned(0, 1);
     VAR_BIN_OP_GT_pong_h_l124_c6_e08c_right := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_vel := vel;

     -- Submodule level 0
     -- CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l126_l124_DUPLICATE_8e16 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l126_l124_DUPLICATE_8e16_return_output := VAR_vel.y;

     -- CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l120_l122_DUPLICATE_1fdf LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l120_l122_DUPLICATE_1fdf_return_output := VAR_vel.x;

     -- Submodule level 1
     VAR_BIN_OP_GT_pong_h_l120_c6_bca0_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l120_l122_DUPLICATE_1fdf_return_output;
     VAR_BIN_OP_PLUS_pong_h_l122_c5_f2ef_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l120_l122_DUPLICATE_1fdf_return_output;
     VAR_vel_x_MUX_pong_h_l120_c3_9aaa_iffalse := VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l120_l122_DUPLICATE_1fdf_return_output;
     VAR_BIN_OP_GT_pong_h_l124_c6_e08c_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l126_l124_DUPLICATE_8e16_return_output;
     VAR_BIN_OP_PLUS_pong_h_l126_c5_2217_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l126_l124_DUPLICATE_8e16_return_output;
     VAR_vel_y_MUX_pong_h_l124_c3_d998_iffalse := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l126_l124_DUPLICATE_8e16_return_output;
     -- BIN_OP_GT[pong_h_l124_c6_e08c] LATENCY=0
     -- Inputs
     BIN_OP_GT_pong_h_l124_c6_e08c_left <= VAR_BIN_OP_GT_pong_h_l124_c6_e08c_left;
     BIN_OP_GT_pong_h_l124_c6_e08c_right <= VAR_BIN_OP_GT_pong_h_l124_c6_e08c_right;
     -- Outputs
     VAR_BIN_OP_GT_pong_h_l124_c6_e08c_return_output := BIN_OP_GT_pong_h_l124_c6_e08c_return_output;

     -- BIN_OP_GT[pong_h_l120_c6_bca0] LATENCY=0
     -- Inputs
     BIN_OP_GT_pong_h_l120_c6_bca0_left <= VAR_BIN_OP_GT_pong_h_l120_c6_bca0_left;
     BIN_OP_GT_pong_h_l120_c6_bca0_right <= VAR_BIN_OP_GT_pong_h_l120_c6_bca0_right;
     -- Outputs
     VAR_BIN_OP_GT_pong_h_l120_c6_bca0_return_output := BIN_OP_GT_pong_h_l120_c6_bca0_return_output;

     -- BIN_OP_PLUS[pong_h_l122_c5_f2ef] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_pong_h_l122_c5_f2ef_left <= VAR_BIN_OP_PLUS_pong_h_l122_c5_f2ef_left;
     BIN_OP_PLUS_pong_h_l122_c5_f2ef_right <= VAR_BIN_OP_PLUS_pong_h_l122_c5_f2ef_right;
     -- Outputs
     VAR_BIN_OP_PLUS_pong_h_l122_c5_f2ef_return_output := BIN_OP_PLUS_pong_h_l122_c5_f2ef_return_output;

     -- BIN_OP_PLUS[pong_h_l126_c5_2217] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_pong_h_l126_c5_2217_left <= VAR_BIN_OP_PLUS_pong_h_l126_c5_2217_left;
     BIN_OP_PLUS_pong_h_l126_c5_2217_right <= VAR_BIN_OP_PLUS_pong_h_l126_c5_2217_right;
     -- Outputs
     VAR_BIN_OP_PLUS_pong_h_l126_c5_2217_return_output := BIN_OP_PLUS_pong_h_l126_c5_2217_return_output;

     -- Submodule level 2
     VAR_vel_x_MUX_pong_h_l120_c3_9aaa_cond := VAR_BIN_OP_GT_pong_h_l120_c6_bca0_return_output;
     VAR_vel_y_MUX_pong_h_l124_c3_d998_cond := VAR_BIN_OP_GT_pong_h_l124_c6_e08c_return_output;
     VAR_vel_x_pong_h_l122_c5_7a96 := resize(VAR_BIN_OP_PLUS_pong_h_l122_c5_f2ef_return_output, 12);
     VAR_vel_y_pong_h_l126_c5_d51b := resize(VAR_BIN_OP_PLUS_pong_h_l126_c5_2217_return_output, 12);
     VAR_vel_x_MUX_pong_h_l120_c3_9aaa_iftrue := VAR_vel_x_pong_h_l122_c5_7a96;
     VAR_vel_y_MUX_pong_h_l124_c3_d998_iftrue := VAR_vel_y_pong_h_l126_c5_d51b;
     -- vel_x_MUX[pong_h_l120_c3_9aaa] LATENCY=0
     -- Inputs
     vel_x_MUX_pong_h_l120_c3_9aaa_cond <= VAR_vel_x_MUX_pong_h_l120_c3_9aaa_cond;
     vel_x_MUX_pong_h_l120_c3_9aaa_iftrue <= VAR_vel_x_MUX_pong_h_l120_c3_9aaa_iftrue;
     vel_x_MUX_pong_h_l120_c3_9aaa_iffalse <= VAR_vel_x_MUX_pong_h_l120_c3_9aaa_iffalse;
     -- Outputs
     VAR_vel_x_MUX_pong_h_l120_c3_9aaa_return_output := vel_x_MUX_pong_h_l120_c3_9aaa_return_output;

     -- vel_y_MUX[pong_h_l124_c3_d998] LATENCY=0
     -- Inputs
     vel_y_MUX_pong_h_l124_c3_d998_cond <= VAR_vel_y_MUX_pong_h_l124_c3_d998_cond;
     vel_y_MUX_pong_h_l124_c3_d998_iftrue <= VAR_vel_y_MUX_pong_h_l124_c3_d998_iftrue;
     vel_y_MUX_pong_h_l124_c3_d998_iffalse <= VAR_vel_y_MUX_pong_h_l124_c3_d998_iffalse;
     -- Outputs
     VAR_vel_y_MUX_pong_h_l124_c3_d998_return_output := vel_y_MUX_pong_h_l124_c3_d998_return_output;

     -- Submodule level 3
     -- CONST_REF_RD_vga_pos_t_vga_pos_t_c07d[pong_h_l128_c10_cd8f] LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_c07d_pong_h_l128_c10_cd8f_return_output := CONST_REF_RD_vga_pos_t_vga_pos_t_c07d(
     VAR_vel_x_MUX_pong_h_l120_c3_9aaa_return_output,
     VAR_vel_y_MUX_pong_h_l124_c3_d998_return_output);

     -- Submodule level 4
     VAR_return_output := VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_c07d_pong_h_l128_c10_cd8f_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
