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
-- Submodules: 1
entity reset_state_0CLK_b45f1687 is
port(
 return_output : out game_state_t);
end reset_state_0CLK_b45f1687;
architecture arch of reset_state_0CLK_b45f1687 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
function CONST_REF_RD_game_state_t_game_state_t_d0d6( ref_toks_0 : game_state_t;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned;
 ref_toks_3 : unsigned;
 ref_toks_4 : unsigned;
 ref_toks_5 : unsigned;
 ref_toks_6 : unsigned;
 ref_toks_7 : unsigned;
 ref_toks_8 : unsigned;
 ref_toks_9 : unsigned;
 ref_toks_10 : unsigned;
 ref_toks_11 : unsigned;
 ref_toks_12 : unsigned;
 ref_toks_13 : unsigned;
 ref_toks_14 : unsigned;
 ref_toks_15 : unsigned;
 ref_toks_16 : unsigned) return game_state_t is
 
  variable base : game_state_t; 
  variable return_output : game_state_t;
begin
      base := ref_toks_0;
      base.ball.rect.dim.x := ref_toks_1;
      base.ball.rect.dim.y := ref_toks_2;
      base.ball.rect.pos.x := ref_toks_3;
      base.ball.rect.pos.y := ref_toks_4;
      base.ball.vel_x_dir := ref_toks_5;
      base.ball.vel.x := ref_toks_6;
      base.ball.vel_y_dir := ref_toks_7;
      base.ball.vel.y := ref_toks_8;
      base.lpaddle.rect.dim.x := ref_toks_9;
      base.lpaddle.rect.dim.y := ref_toks_10;
      base.lpaddle.rect.pos.x := ref_toks_11;
      base.lpaddle.rect.pos.y := ref_toks_12;
      base.rpaddle.rect.dim.x := ref_toks_13;
      base.rpaddle.rect.dim.y := ref_toks_14;
      base.rpaddle.rect.pos.x := ref_toks_15;
      base.rpaddle.rect.pos.y := ref_toks_16;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 


-- Combinatorial process for pipeline stages
process (all)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : game_state_t;
 variable VAR_state : game_state_t;
 variable VAR_state_ball_rect_dim_x_pong_h_l156_c3_b1cd : unsigned(11 downto 0);
 variable VAR_state_ball_rect_dim_y_pong_h_l157_c3_f78b : unsigned(11 downto 0);
 variable VAR_state_ball_rect_pos_x_pong_h_l158_c3_018f : unsigned(11 downto 0);
 variable VAR_state_ball_rect_pos_y_pong_h_l159_c3_1735 : unsigned(11 downto 0);
 variable VAR_state_ball_vel_x_pong_h_l161_c3_e06c : unsigned(11 downto 0);
 variable VAR_state_ball_vel_y_pong_h_l163_c3_82b3 : unsigned(11 downto 0);
 variable VAR_state_lpaddle_rect_dim_x_pong_h_l165_c3_b475 : unsigned(11 downto 0);
 variable VAR_state_lpaddle_rect_dim_y_pong_h_l166_c3_b762 : unsigned(11 downto 0);
 variable VAR_state_lpaddle_rect_pos_x_pong_h_l167_c3_55a6 : unsigned(11 downto 0);
 variable VAR_state_lpaddle_rect_pos_y_pong_h_l168_c3_801f : unsigned(11 downto 0);
 variable VAR_state_rpaddle_rect_dim_x_pong_h_l170_c3_7a9e : unsigned(11 downto 0);
 variable VAR_state_rpaddle_rect_dim_y_pong_h_l171_c3_22a2 : unsigned(11 downto 0);
 variable VAR_state_rpaddle_rect_pos_x_pong_h_l172_c3_7e31 : unsigned(11 downto 0);
 variable VAR_state_rpaddle_rect_pos_y_pong_h_l173_c3_53ef : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_game_state_t_game_state_t_d0d6_pong_h_l174_c10_cbc6_return_output : game_state_t;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_state_ball_vel_x_pong_h_l161_c3_e06c := resize(to_unsigned(1, 1), 12);
     VAR_state_lpaddle_rect_pos_y_pong_h_l168_c3_801f := resize(to_unsigned(210, 8), 12);
     VAR_state_lpaddle_rect_dim_y_pong_h_l166_c3_b762 := resize(to_unsigned(60, 6), 12);
     VAR_state_ball_rect_pos_x_pong_h_l158_c3_018f := resize(to_unsigned(314, 9), 12);
     VAR_state_ball_rect_pos_y_pong_h_l159_c3_1735 := resize(to_unsigned(234, 8), 12);
     VAR_state_lpaddle_rect_dim_x_pong_h_l165_c3_b475 := resize(to_unsigned(12, 4), 12);
     VAR_state_rpaddle_rect_dim_x_pong_h_l170_c3_7a9e := resize(to_unsigned(12, 4), 12);
     VAR_state_ball_vel_y_pong_h_l163_c3_82b3 := resize(to_unsigned(1, 1), 12);
     VAR_state_lpaddle_rect_pos_x_pong_h_l167_c3_55a6 := resize(to_unsigned(12, 4), 12);
     VAR_state_rpaddle_rect_pos_x_pong_h_l172_c3_7e31 := resize(to_unsigned(616, 10), 12);
     VAR_state_ball_rect_dim_x_pong_h_l156_c3_b1cd := resize(to_unsigned(12, 4), 12);
     VAR_state_ball_rect_dim_y_pong_h_l157_c3_f78b := resize(to_unsigned(12, 4), 12);
     VAR_state_rpaddle_rect_pos_y_pong_h_l173_c3_53ef := resize(to_unsigned(210, 8), 12);
     VAR_state_rpaddle_rect_dim_y_pong_h_l171_c3_22a2 := resize(to_unsigned(60, 6), 12);
     -- CONST_REF_RD_game_state_t_game_state_t_d0d6[pong_h_l174_c10_cbc6] LATENCY=0
     VAR_CONST_REF_RD_game_state_t_game_state_t_d0d6_pong_h_l174_c10_cbc6_return_output := CONST_REF_RD_game_state_t_game_state_t_d0d6(
     game_state_t_NULL,
     VAR_state_ball_rect_dim_x_pong_h_l156_c3_b1cd,
     VAR_state_ball_rect_dim_y_pong_h_l157_c3_f78b,
     VAR_state_ball_rect_pos_x_pong_h_l158_c3_018f,
     VAR_state_ball_rect_pos_y_pong_h_l159_c3_1735,
     to_unsigned(0, 1),
     VAR_state_ball_vel_x_pong_h_l161_c3_e06c,
     to_unsigned(0, 1),
     VAR_state_ball_vel_y_pong_h_l163_c3_82b3,
     VAR_state_lpaddle_rect_dim_x_pong_h_l165_c3_b475,
     VAR_state_lpaddle_rect_dim_y_pong_h_l166_c3_b762,
     VAR_state_lpaddle_rect_pos_x_pong_h_l167_c3_55a6,
     VAR_state_lpaddle_rect_pos_y_pong_h_l168_c3_801f,
     VAR_state_rpaddle_rect_dim_x_pong_h_l170_c3_7a9e,
     VAR_state_rpaddle_rect_dim_y_pong_h_l171_c3_22a2,
     VAR_state_rpaddle_rect_pos_x_pong_h_l172_c3_7e31,
     VAR_state_rpaddle_rect_pos_y_pong_h_l173_c3_53ef);

     -- Submodule level 1
     VAR_return_output := VAR_CONST_REF_RD_game_state_t_game_state_t_d0d6_pong_h_l174_c10_cbc6_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then

     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
