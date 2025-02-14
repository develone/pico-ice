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
-- Submodules: 3
entity ball_in_r_goal_0CLK_55761013 is
port(
 ball : in rect_animated_t;
 return_output : out unsigned(0 downto 0));
end ball_in_r_goal_0CLK_55761013;
architecture arch of ball_in_r_goal_0CLK_55761013 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_PLUS[pong_h_l101_c34_bf5b]
signal BIN_OP_PLUS_pong_h_l101_c34_bf5b_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_pong_h_l101_c34_bf5b_right : unsigned(3 downto 0);
signal BIN_OP_PLUS_pong_h_l101_c34_bf5b_return_output : unsigned(12 downto 0);

-- BIN_OP_GT[pong_h_l101_c34_b798]
signal BIN_OP_GT_pong_h_l101_c34_b798_left : unsigned(12 downto 0);
signal BIN_OP_GT_pong_h_l101_c34_b798_right : unsigned(9 downto 0);
signal BIN_OP_GT_pong_h_l101_c34_b798_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[pong_h_l101_c11_74de]
signal BIN_OP_AND_pong_h_l101_c11_74de_left : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l101_c11_74de_right : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l101_c11_74de_return_output : unsigned(0 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_PLUS_pong_h_l101_c34_bf5b : 0 clocks latency
BIN_OP_PLUS_pong_h_l101_c34_bf5b : entity work.BIN_OP_PLUS_uint12_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_PLUS_pong_h_l101_c34_bf5b_left,
BIN_OP_PLUS_pong_h_l101_c34_bf5b_right,
BIN_OP_PLUS_pong_h_l101_c34_bf5b_return_output);

-- BIN_OP_GT_pong_h_l101_c34_b798 : 0 clocks latency
BIN_OP_GT_pong_h_l101_c34_b798 : entity work.BIN_OP_GT_uint13_t_uint10_t_0CLK_5af1a430 port map (
BIN_OP_GT_pong_h_l101_c34_b798_left,
BIN_OP_GT_pong_h_l101_c34_b798_right,
BIN_OP_GT_pong_h_l101_c34_b798_return_output);

-- BIN_OP_AND_pong_h_l101_c11_74de : 0 clocks latency
BIN_OP_AND_pong_h_l101_c11_74de : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_pong_h_l101_c11_74de_left,
BIN_OP_AND_pong_h_l101_c11_74de_right,
BIN_OP_AND_pong_h_l101_c11_74de_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 ball,
 -- All submodule outputs
 BIN_OP_PLUS_pong_h_l101_c34_bf5b_return_output,
 BIN_OP_GT_pong_h_l101_c34_b798_return_output,
 BIN_OP_AND_pong_h_l101_c11_74de_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_ball : rect_animated_t;
 variable VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d_pong_h_l101_c11_3555_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l101_c11_74de_left : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_pong_h_l101_c34_f3a0_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l101_c34_bf5b_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l101_c34_bf5b_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_PLUS_pong_h_l101_c34_bf5b_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l101_c34_b798_left : unsigned(12 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l101_c34_b798_right : unsigned(9 downto 0);
 variable VAR_BIN_OP_GT_pong_h_l101_c34_b798_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l101_c11_74de_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l101_c11_74de_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_GT_pong_h_l101_c34_b798_right := to_unsigned(616, 10);
     VAR_BIN_OP_PLUS_pong_h_l101_c34_bf5b_right := to_unsigned(12, 4);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_ball := ball;

     -- Submodule level 0
     -- CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d[pong_h_l101_c11_3555] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d_pong_h_l101_c11_3555_return_output := VAR_ball.vel_x_dir;

     -- CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d[pong_h_l101_c34_f3a0] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_pong_h_l101_c34_f3a0_return_output := VAR_ball.rect.pos.x;

     -- Submodule level 1
     VAR_BIN_OP_PLUS_pong_h_l101_c34_bf5b_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_x_d41d_pong_h_l101_c34_f3a0_return_output;
     VAR_BIN_OP_AND_pong_h_l101_c11_74de_left := VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_x_dir_d41d_pong_h_l101_c11_3555_return_output;
     -- BIN_OP_PLUS[pong_h_l101_c34_bf5b] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_pong_h_l101_c34_bf5b_left <= VAR_BIN_OP_PLUS_pong_h_l101_c34_bf5b_left;
     BIN_OP_PLUS_pong_h_l101_c34_bf5b_right <= VAR_BIN_OP_PLUS_pong_h_l101_c34_bf5b_right;
     -- Outputs
     VAR_BIN_OP_PLUS_pong_h_l101_c34_bf5b_return_output := BIN_OP_PLUS_pong_h_l101_c34_bf5b_return_output;

     -- Submodule level 2
     VAR_BIN_OP_GT_pong_h_l101_c34_b798_left := VAR_BIN_OP_PLUS_pong_h_l101_c34_bf5b_return_output;
     -- BIN_OP_GT[pong_h_l101_c34_b798] LATENCY=0
     -- Inputs
     BIN_OP_GT_pong_h_l101_c34_b798_left <= VAR_BIN_OP_GT_pong_h_l101_c34_b798_left;
     BIN_OP_GT_pong_h_l101_c34_b798_right <= VAR_BIN_OP_GT_pong_h_l101_c34_b798_right;
     -- Outputs
     VAR_BIN_OP_GT_pong_h_l101_c34_b798_return_output := BIN_OP_GT_pong_h_l101_c34_b798_return_output;

     -- Submodule level 3
     VAR_BIN_OP_AND_pong_h_l101_c11_74de_right := VAR_BIN_OP_GT_pong_h_l101_c34_b798_return_output;
     -- BIN_OP_AND[pong_h_l101_c11_74de] LATENCY=0
     -- Inputs
     BIN_OP_AND_pong_h_l101_c11_74de_left <= VAR_BIN_OP_AND_pong_h_l101_c11_74de_left;
     BIN_OP_AND_pong_h_l101_c11_74de_right <= VAR_BIN_OP_AND_pong_h_l101_c11_74de_right;
     -- Outputs
     VAR_BIN_OP_AND_pong_h_l101_c11_74de_return_output := BIN_OP_AND_pong_h_l101_c11_74de_return_output;

     -- Submodule level 4
     VAR_return_output := VAR_BIN_OP_AND_pong_h_l101_c11_74de_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
