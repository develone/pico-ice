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
-- BIN_OP_GT[pong_h_l120_c6_90e2]
signal BIN_OP_GT_pong_h_l120_c6_90e2_left : unsigned(11 downto 0);
signal BIN_OP_GT_pong_h_l120_c6_90e2_right : unsigned(0 downto 0);
signal BIN_OP_GT_pong_h_l120_c6_90e2_return_output : unsigned(0 downto 0);

-- vel_x_MUX[pong_h_l120_c3_8fba]
signal vel_x_MUX_pong_h_l120_c3_8fba_cond : unsigned(0 downto 0);
signal vel_x_MUX_pong_h_l120_c3_8fba_iftrue : unsigned(11 downto 0);
signal vel_x_MUX_pong_h_l120_c3_8fba_iffalse : unsigned(11 downto 0);
signal vel_x_MUX_pong_h_l120_c3_8fba_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[pong_h_l122_c5_8b60]
signal BIN_OP_PLUS_pong_h_l122_c5_8b60_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_pong_h_l122_c5_8b60_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_pong_h_l122_c5_8b60_return_output : unsigned(12 downto 0);

-- BIN_OP_GT[pong_h_l124_c6_b928]
signal BIN_OP_GT_pong_h_l124_c6_b928_left : unsigned(11 downto 0);
signal BIN_OP_GT_pong_h_l124_c6_b928_right : unsigned(0 downto 0);
signal BIN_OP_GT_pong_h_l124_c6_b928_return_output : unsigned(0 downto 0);

-- vel_y_MUX[pong_h_l124_c3_d766]
signal vel_y_MUX_pong_h_l124_c3_d766_cond : unsigned(0 downto 0);
signal vel_y_MUX_pong_h_l124_c3_d766_iftrue : unsigned(11 downto 0);
signal vel_y_MUX_pong_h_l124_c3_d766_iffalse : unsigned(11 downto 0);
signal vel_y_MUX_pong_h_l124_c3_d766_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[pong_h_l126_c5_f29b]
signal BIN_OP_PLUS_pong_h_l126_c5_f29b_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_pong_h_l126_c5_f29b_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_pong_h_l126_c5_f29b_return_output : unsigned(12 downto 0);

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
-- BIN_OP_GT_pong_h_l120_c6_90e2 : 0 clocks latency
BIN_OP_GT_pong_h_l120_c6_90e2 : entity work.BIN_OP_GT_uint12_t_uint1_t_0CLK_5af1a430 port map (
BIN_OP_GT_pong_h_l120_c6_90e2_left,
BIN_OP_GT_pong_h_l120_c6_90e2_right,
BIN_OP_GT_pong_h_l120_c6_90e2_return_output);

-- vel_x_MUX_pong_h_l120_c3_8fba : 0 clocks latency
vel_x_MUX_pong_h_l120_c3_8fba : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
vel_x_MUX_pong_h_l120_c3_8fba_cond,
vel_x_MUX_pong_h_l120_c3_8fba_iftrue,
vel_x_MUX_pong_h_l120_c3_8fba_iffalse,
vel_x_MUX_pong_h_l120_c3_8fba_return_output);

-- BIN_OP_PLUS_pong_h_l122_c5_8b60 : 0 clocks latency
BIN_OP_PLUS_pong_h_l122_c5_8b60 : entity work.BIN_OP_PLUS_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_pong_h_l122_c5_8b60_left,
BIN_OP_PLUS_pong_h_l122_c5_8b60_right,
BIN_OP_PLUS_pong_h_l122_c5_8b60_return_output);

-- BIN_OP_GT_pong_h_l124_c6_b928 : 0 clocks latency
BIN_OP_GT_pong_h_l124_c6_b928 : entity work.BIN_OP_GT_uint12_t_uint1_t_0CLK_5af1a430 port map (
BIN_OP_GT_pong_h_l124_c6_b928_left,
BIN_OP_GT_pong_h_l124_c6_b928_right,
BIN_OP_GT_pong_h_l124_c6_b928_return_output);

-- vel_y_MUX_pong_h_l124_c3_d766 : 0 clocks latency
vel_y_MUX_pong_h_l124_c3_d766 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
vel_y_MUX_pong_h_l124_c3_d766_cond,
vel_y_MUX_pong_h_l124_c3_d766_iftrue,
vel_y_MUX_pong_h_l124_c3_d766_iffalse,
vel_y_MUX_pong_h_l124_c3_d766_return_output);

-- BIN_OP_PLUS_pong_h_l126_c5_f29b : 0 clocks latency
BIN_OP_PLUS_pong_h_l126_c5_f29b : entity work.BIN_OP_PLUS_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_pong_h_l126_c5_f29b_left,
BIN_OP_PLUS_pong_h_l126_c5_f29b_right,
BIN_OP_PLUS_pong_h_l126_c5_f29b_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 vel,
 -- All submodule outputs
 BIN_OP_GT_pong_h_l120_c6_90e2_return_output,
 vel_x_MUX_pong_h_l120_c3_8fba_return_output,
 BIN_OP_PLUS_pong_h_l122_c5_8b60_return_output,
 BIN_OP_GT_pong_h_l124_c6_b928_return_output,
 vel_y_MUX_pong_h_l124_c3_d766_return_output,
 BIN_OP_PLUS_pong_h_l126_c5_f29b_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : vga_pos_t;
 variable VAR_vel : vga_pos_t;
 variable VAR_BIN_OP_GT_pong_h_l120_c6_90e2_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l120_c6_90e2_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l120_c6_90e2_return_output : unsigned(0 downto 0);
 variable VAR_vel_x_MUX_pong_h_l120_c3_8fba_iftrue : unsigned(11 downto 0);
 variable VAR_vel_x_pong_h_l122_c5_ed13 : unsigned(11 downto 0);
 variable VAR_vel_x_MUX_pong_h_l120_c3_8fba_iffalse : unsigned(11 downto 0);
 variable VAR_vel_x_MUX_pong_h_l120_c3_8fba_return_output : unsigned(11 downto 0);
 variable VAR_vel_x_MUX_pong_h_l120_c3_8fba_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l122_c5_8b60_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l122_c5_8b60_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l122_c5_8b60_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l124_c6_b928_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l124_c6_b928_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l124_c6_b928_return_output : unsigned(0 downto 0);
 variable VAR_vel_y_MUX_pong_h_l124_c3_d766_iftrue : unsigned(11 downto 0);
 variable VAR_vel_y_pong_h_l126_c5_73f2 : unsigned(11 downto 0);
 variable VAR_vel_y_MUX_pong_h_l124_c3_d766_iffalse : unsigned(11 downto 0);
 variable VAR_vel_y_MUX_pong_h_l124_c3_d766_return_output : unsigned(11 downto 0);
 variable VAR_vel_y_MUX_pong_h_l124_c3_d766_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l126_c5_f29b_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l126_c5_f29b_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l126_c5_f29b_return_output : unsigned(12 downto 0);
 variable VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_c07d_pong_h_l128_c10_1f4a_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l122_l120_DUPLICATE_6022_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l124_l126_DUPLICATE_4c78_return_output : unsigned(11 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_PLUS_pong_h_l126_c5_f29b_right := to_unsigned(1, 1);
     VAR_BIN_OP_GT_pong_h_l124_c6_b928_right := to_unsigned(0, 1);
     VAR_BIN_OP_GT_pong_h_l120_c6_90e2_right := to_unsigned(0, 1);
     VAR_BIN_OP_PLUS_pong_h_l122_c5_8b60_right := to_unsigned(1, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_vel := vel;

     -- Submodule level 0
     -- CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l122_l120_DUPLICATE_6022 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l122_l120_DUPLICATE_6022_return_output := VAR_vel.x;

     -- CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l124_l126_DUPLICATE_4c78 LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l124_l126_DUPLICATE_4c78_return_output := VAR_vel.y;

     -- Submodule level 1
     VAR_BIN_OP_GT_pong_h_l120_c6_90e2_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l122_l120_DUPLICATE_6022_return_output;
     VAR_BIN_OP_PLUS_pong_h_l122_c5_8b60_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l122_l120_DUPLICATE_6022_return_output;
     VAR_vel_x_MUX_pong_h_l120_c3_8fba_iffalse := VAR_CONST_REF_RD_uint12_t_vga_pos_t_x_d41d_pong_h_l122_l120_DUPLICATE_6022_return_output;
     VAR_BIN_OP_GT_pong_h_l124_c6_b928_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l124_l126_DUPLICATE_4c78_return_output;
     VAR_BIN_OP_PLUS_pong_h_l126_c5_f29b_left := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l124_l126_DUPLICATE_4c78_return_output;
     VAR_vel_y_MUX_pong_h_l124_c3_d766_iffalse := VAR_CONST_REF_RD_uint12_t_vga_pos_t_y_d41d_pong_h_l124_l126_DUPLICATE_4c78_return_output;
     -- BIN_OP_GT[pong_h_l120_c6_90e2] LATENCY=0
     -- Inputs
     BIN_OP_GT_pong_h_l120_c6_90e2_left <= VAR_BIN_OP_GT_pong_h_l120_c6_90e2_left;
     BIN_OP_GT_pong_h_l120_c6_90e2_right <= VAR_BIN_OP_GT_pong_h_l120_c6_90e2_right;
     -- Outputs
     VAR_BIN_OP_GT_pong_h_l120_c6_90e2_return_output := BIN_OP_GT_pong_h_l120_c6_90e2_return_output;

     -- BIN_OP_PLUS[pong_h_l126_c5_f29b] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_pong_h_l126_c5_f29b_left <= VAR_BIN_OP_PLUS_pong_h_l126_c5_f29b_left;
     BIN_OP_PLUS_pong_h_l126_c5_f29b_right <= VAR_BIN_OP_PLUS_pong_h_l126_c5_f29b_right;
     -- Outputs
     VAR_BIN_OP_PLUS_pong_h_l126_c5_f29b_return_output := BIN_OP_PLUS_pong_h_l126_c5_f29b_return_output;

     -- BIN_OP_GT[pong_h_l124_c6_b928] LATENCY=0
     -- Inputs
     BIN_OP_GT_pong_h_l124_c6_b928_left <= VAR_BIN_OP_GT_pong_h_l124_c6_b928_left;
     BIN_OP_GT_pong_h_l124_c6_b928_right <= VAR_BIN_OP_GT_pong_h_l124_c6_b928_right;
     -- Outputs
     VAR_BIN_OP_GT_pong_h_l124_c6_b928_return_output := BIN_OP_GT_pong_h_l124_c6_b928_return_output;

     -- BIN_OP_PLUS[pong_h_l122_c5_8b60] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_pong_h_l122_c5_8b60_left <= VAR_BIN_OP_PLUS_pong_h_l122_c5_8b60_left;
     BIN_OP_PLUS_pong_h_l122_c5_8b60_right <= VAR_BIN_OP_PLUS_pong_h_l122_c5_8b60_right;
     -- Outputs
     VAR_BIN_OP_PLUS_pong_h_l122_c5_8b60_return_output := BIN_OP_PLUS_pong_h_l122_c5_8b60_return_output;

     -- Submodule level 2
     VAR_vel_x_MUX_pong_h_l120_c3_8fba_cond := VAR_BIN_OP_GT_pong_h_l120_c6_90e2_return_output;
     VAR_vel_y_MUX_pong_h_l124_c3_d766_cond := VAR_BIN_OP_GT_pong_h_l124_c6_b928_return_output;
     VAR_vel_x_pong_h_l122_c5_ed13 := resize(VAR_BIN_OP_PLUS_pong_h_l122_c5_8b60_return_output, 12);
     VAR_vel_y_pong_h_l126_c5_73f2 := resize(VAR_BIN_OP_PLUS_pong_h_l126_c5_f29b_return_output, 12);
     VAR_vel_x_MUX_pong_h_l120_c3_8fba_iftrue := VAR_vel_x_pong_h_l122_c5_ed13;
     VAR_vel_y_MUX_pong_h_l124_c3_d766_iftrue := VAR_vel_y_pong_h_l126_c5_73f2;
     -- vel_x_MUX[pong_h_l120_c3_8fba] LATENCY=0
     -- Inputs
     vel_x_MUX_pong_h_l120_c3_8fba_cond <= VAR_vel_x_MUX_pong_h_l120_c3_8fba_cond;
     vel_x_MUX_pong_h_l120_c3_8fba_iftrue <= VAR_vel_x_MUX_pong_h_l120_c3_8fba_iftrue;
     vel_x_MUX_pong_h_l120_c3_8fba_iffalse <= VAR_vel_x_MUX_pong_h_l120_c3_8fba_iffalse;
     -- Outputs
     VAR_vel_x_MUX_pong_h_l120_c3_8fba_return_output := vel_x_MUX_pong_h_l120_c3_8fba_return_output;

     -- vel_y_MUX[pong_h_l124_c3_d766] LATENCY=0
     -- Inputs
     vel_y_MUX_pong_h_l124_c3_d766_cond <= VAR_vel_y_MUX_pong_h_l124_c3_d766_cond;
     vel_y_MUX_pong_h_l124_c3_d766_iftrue <= VAR_vel_y_MUX_pong_h_l124_c3_d766_iftrue;
     vel_y_MUX_pong_h_l124_c3_d766_iffalse <= VAR_vel_y_MUX_pong_h_l124_c3_d766_iffalse;
     -- Outputs
     VAR_vel_y_MUX_pong_h_l124_c3_d766_return_output := vel_y_MUX_pong_h_l124_c3_d766_return_output;

     -- Submodule level 3
     -- CONST_REF_RD_vga_pos_t_vga_pos_t_c07d[pong_h_l128_c10_1f4a] LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_c07d_pong_h_l128_c10_1f4a_return_output := CONST_REF_RD_vga_pos_t_vga_pos_t_c07d(
     VAR_vel_x_MUX_pong_h_l120_c3_8fba_return_output,
     VAR_vel_y_MUX_pong_h_l124_c3_d766_return_output);

     -- Submodule level 4
     VAR_return_output := VAR_CONST_REF_RD_vga_pos_t_vga_pos_t_c07d_pong_h_l128_c10_1f4a_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
