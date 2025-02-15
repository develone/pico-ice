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
-- Submodules: 39
entity next_state_func_0CLK_e66e0998 is
port(
 reset : in unsigned(0 downto 0);
 state : in game_state_t;
 user_input : in user_input_t;
 return_output : out game_state_t);
end next_state_func_0CLK_e66e0998;
architecture arch of next_state_func_0CLK_e66e0998 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- rect_move[pong_h_l190_c21_293f]
signal rect_move_pong_h_l190_c21_293f_state : rect_animated_t;
signal rect_move_pong_h_l190_c21_293f_return_output : rect_animated_t;

-- rect_move[pong_h_l191_c24_c76c]
signal rect_move_pong_h_l191_c24_c76c_state : rect_animated_t;
signal rect_move_pong_h_l191_c24_c76c_return_output : rect_animated_t;

-- rect_move[pong_h_l192_c24_92c9]
signal rect_move_pong_h_l192_c24_92c9_state : rect_animated_t;
signal rect_move_pong_h_l192_c24_92c9_return_output : rect_animated_t;

-- ball_hit_roof[pong_h_l196_c6_c756]
signal ball_hit_roof_pong_h_l196_c6_c756_ball : rect_animated_t;
signal ball_hit_roof_pong_h_l196_c6_c756_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l196_c3_b710]
signal next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_return_output : vga_pos_t;

-- next_state_ball_vel_y_dir_MUX[pong_h_l196_c3_b710]
signal next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_cond : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_return_output : unsigned(0 downto 0);

-- ball_hit_floor[pong_h_l201_c11_b3e9]
signal ball_hit_floor_pong_h_l201_c11_b3e9_ball : rect_animated_t;
signal ball_hit_floor_pong_h_l201_c11_b3e9_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l201_c8_8483]
signal next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_return_output : vga_pos_t;

-- next_state_ball_vel_y_dir_MUX[pong_h_l201_c8_8483]
signal next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_cond : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_return_output : unsigned(0 downto 0);

-- ball_in_l_goal[pong_h_l208_c6_7511]
signal ball_in_l_goal_pong_h_l208_c6_7511_ball : rect_animated_t;
signal ball_in_l_goal_pong_h_l208_c6_7511_return_output : unsigned(0 downto 0);

-- reset_MUX[pong_h_l208_c3_fd69]
signal reset_MUX_pong_h_l208_c3_fd69_cond : unsigned(0 downto 0);
signal reset_MUX_pong_h_l208_c3_fd69_iftrue : unsigned(0 downto 0);
signal reset_MUX_pong_h_l208_c3_fd69_iffalse : unsigned(0 downto 0);
signal reset_MUX_pong_h_l208_c3_fd69_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l208_c3_fd69]
signal next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_return_output : vga_pos_t;

-- next_state_ball_vel_x_dir_MUX[pong_h_l208_c3_fd69]
signal next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_cond : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_return_output : unsigned(0 downto 0);

-- next_state_ball_vel_MUX[pong_h_l208_c3_fd69]
signal next_state_ball_vel_MUX_pong_h_l208_c3_fd69_cond : unsigned(0 downto 0);
signal next_state_ball_vel_MUX_pong_h_l208_c3_fd69_iftrue : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l208_c3_fd69_iffalse : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l208_c3_fd69_return_output : vga_pos_t;

-- rects_collide[pong_h_l210_c8_bf35]
signal rects_collide_pong_h_l210_c8_bf35_r0 : rect_t;
signal rects_collide_pong_h_l210_c8_bf35_r1 : rect_t;
signal rects_collide_pong_h_l210_c8_bf35_return_output : unsigned(0 downto 0);

-- reset_MUX[pong_h_l210_c5_5812]
signal reset_MUX_pong_h_l210_c5_5812_cond : unsigned(0 downto 0);
signal reset_MUX_pong_h_l210_c5_5812_iftrue : unsigned(0 downto 0);
signal reset_MUX_pong_h_l210_c5_5812_iffalse : unsigned(0 downto 0);
signal reset_MUX_pong_h_l210_c5_5812_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l210_c5_5812]
signal next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_return_output : vga_pos_t;

-- next_state_ball_vel_x_dir_MUX[pong_h_l210_c5_5812]
signal next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_cond : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_return_output : unsigned(0 downto 0);

-- next_state_ball_vel_MUX[pong_h_l210_c5_5812]
signal next_state_ball_vel_MUX_pong_h_l210_c5_5812_cond : unsigned(0 downto 0);
signal next_state_ball_vel_MUX_pong_h_l210_c5_5812_iftrue : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l210_c5_5812_iffalse : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l210_c5_5812_return_output : vga_pos_t;

-- ball_in_r_goal[pong_h_l224_c11_3bd3]
signal ball_in_r_goal_pong_h_l224_c11_3bd3_ball : rect_animated_t;
signal ball_in_r_goal_pong_h_l224_c11_3bd3_return_output : unsigned(0 downto 0);

-- reset_MUX[pong_h_l224_c8_c092]
signal reset_MUX_pong_h_l224_c8_c092_cond : unsigned(0 downto 0);
signal reset_MUX_pong_h_l224_c8_c092_iftrue : unsigned(0 downto 0);
signal reset_MUX_pong_h_l224_c8_c092_iffalse : unsigned(0 downto 0);
signal reset_MUX_pong_h_l224_c8_c092_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l224_c8_c092]
signal next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_return_output : vga_pos_t;

-- next_state_ball_vel_x_dir_MUX[pong_h_l224_c8_c092]
signal next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_cond : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_return_output : unsigned(0 downto 0);

-- next_state_ball_vel_MUX[pong_h_l224_c8_c092]
signal next_state_ball_vel_MUX_pong_h_l224_c8_c092_cond : unsigned(0 downto 0);
signal next_state_ball_vel_MUX_pong_h_l224_c8_c092_iftrue : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l224_c8_c092_iffalse : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l224_c8_c092_return_output : vga_pos_t;

-- rects_collide[pong_h_l226_c8_6535]
signal rects_collide_pong_h_l226_c8_6535_r0 : rect_t;
signal rects_collide_pong_h_l226_c8_6535_r1 : rect_t;
signal rects_collide_pong_h_l226_c8_6535_return_output : unsigned(0 downto 0);

-- reset_MUX[pong_h_l226_c5_066b]
signal reset_MUX_pong_h_l226_c5_066b_cond : unsigned(0 downto 0);
signal reset_MUX_pong_h_l226_c5_066b_iftrue : unsigned(0 downto 0);
signal reset_MUX_pong_h_l226_c5_066b_iffalse : unsigned(0 downto 0);
signal reset_MUX_pong_h_l226_c5_066b_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l226_c5_066b]
signal next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_return_output : vga_pos_t;

-- next_state_ball_vel_x_dir_MUX[pong_h_l226_c5_066b]
signal next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_cond : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_return_output : unsigned(0 downto 0);

-- next_state_ball_vel_MUX[pong_h_l226_c5_066b]
signal next_state_ball_vel_MUX_pong_h_l226_c5_066b_cond : unsigned(0 downto 0);
signal next_state_ball_vel_MUX_pong_h_l226_c5_066b_iftrue : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l226_c5_066b_iffalse : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l226_c5_066b_return_output : vga_pos_t;

-- move_paddle[pong_h_l243_c33_6c12]
signal move_paddle_pong_h_l243_c33_6c12_pos : vga_pos_t;
signal move_paddle_pong_h_l243_c33_6c12_paddle_up : unsigned(0 downto 0);
signal move_paddle_pong_h_l243_c33_6c12_paddle_down : unsigned(0 downto 0);
signal move_paddle_pong_h_l243_c33_6c12_return_output : vga_pos_t;

-- move_paddle[pong_h_l248_c33_ca3d]
signal move_paddle_pong_h_l248_c33_ca3d_pos : vga_pos_t;
signal move_paddle_pong_h_l248_c33_ca3d_paddle_up : unsigned(0 downto 0);
signal move_paddle_pong_h_l248_c33_ca3d_paddle_down : unsigned(0 downto 0);
signal move_paddle_pong_h_l248_c33_ca3d_return_output : vga_pos_t;

-- next_state_MUX[pong_h_l254_c3_bb84]
signal next_state_MUX_pong_h_l254_c3_bb84_cond : unsigned(0 downto 0);
signal next_state_MUX_pong_h_l254_c3_bb84_iftrue : game_state_t;
signal next_state_MUX_pong_h_l254_c3_bb84_iffalse : game_state_t;
signal next_state_MUX_pong_h_l254_c3_bb84_return_output : game_state_t;

-- reset_state[pong_h_l256_c18_99e5]
signal reset_state_pong_h_l256_c18_99e5_return_output : game_state_t;

-- ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c
signal ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c_vel : vga_pos_t;
signal ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c_return_output : vga_pos_t;

function CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0( ref_toks_0 : rect_animated_t) return vga_pos_t is
 
  variable base : game_state_t; 
  variable return_output : vga_pos_t;
begin
      base.ball := ref_toks_0;

      return_output := base.ball.rect.pos;
      return return_output; 
end function;

function CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0( ref_toks_0 : rect_animated_t) return unsigned is
 
  variable base : game_state_t; 
  variable return_output : unsigned(0 downto 0);
begin
      base.ball := ref_toks_0;

      return_output := base.ball.vel_y_dir;
      return return_output; 
end function;

function CONST_REF_RD_game_state_t_game_state_t_1f90( ref_toks_0 : rect_animated_t;
 ref_toks_1 : rect_animated_t;
 ref_toks_2 : rect_animated_t;
 ref_toks_3 : unsigned;
 ref_toks_4 : vga_pos_t;
 ref_toks_5 : unsigned;
 ref_toks_6 : vga_pos_t;
 ref_toks_7 : vga_pos_t;
 ref_toks_8 : vga_pos_t) return game_state_t is
 
  variable base : game_state_t; 
  variable return_output : game_state_t;
begin
      base.ball := ref_toks_0;
      base.lpaddle := ref_toks_1;
      base.rpaddle := ref_toks_2;
      base.ball.vel_y_dir := ref_toks_3;
      base.ball.rect.pos := ref_toks_4;
      base.ball.vel_x_dir := ref_toks_5;
      base.ball.vel := ref_toks_6;
      base.rpaddle.rect.pos := ref_toks_7;
      base.lpaddle.rect.pos := ref_toks_8;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0( ref_toks_0 : rect_animated_t) return unsigned is
 
  variable base : game_state_t; 
  variable return_output : unsigned(0 downto 0);
begin
      base.ball := ref_toks_0;

      return_output := base.ball.vel_x_dir;
      return return_output; 
end function;

function CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0( ref_toks_0 : rect_animated_t) return vga_pos_t is
 
  variable base : game_state_t; 
  variable return_output : vga_pos_t;
begin
      base.ball := ref_toks_0;

      return_output := base.ball.vel;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- rect_move_pong_h_l190_c21_293f : 0 clocks latency
rect_move_pong_h_l190_c21_293f : entity work.rect_move_0CLK_0810338e port map (
rect_move_pong_h_l190_c21_293f_state,
rect_move_pong_h_l190_c21_293f_return_output);

-- rect_move_pong_h_l191_c24_c76c : 0 clocks latency
rect_move_pong_h_l191_c24_c76c : entity work.rect_move_0CLK_0810338e port map (
rect_move_pong_h_l191_c24_c76c_state,
rect_move_pong_h_l191_c24_c76c_return_output);

-- rect_move_pong_h_l192_c24_92c9 : 0 clocks latency
rect_move_pong_h_l192_c24_92c9 : entity work.rect_move_0CLK_0810338e port map (
rect_move_pong_h_l192_c24_92c9_state,
rect_move_pong_h_l192_c24_92c9_return_output);

-- ball_hit_roof_pong_h_l196_c6_c756 : 0 clocks latency
ball_hit_roof_pong_h_l196_c6_c756 : entity work.ball_hit_roof_0CLK_a5a1cd4e port map (
ball_hit_roof_pong_h_l196_c6_c756_ball,
ball_hit_roof_pong_h_l196_c6_c756_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710 : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_cond,
next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_return_output);

-- next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710 : 0 clocks latency
next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_cond,
next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_iftrue,
next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_iffalse,
next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_return_output);

-- ball_hit_floor_pong_h_l201_c11_b3e9 : 0 clocks latency
ball_hit_floor_pong_h_l201_c11_b3e9 : entity work.ball_hit_floor_0CLK_6cd3ce08 port map (
ball_hit_floor_pong_h_l201_c11_b3e9_ball,
ball_hit_floor_pong_h_l201_c11_b3e9_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483 : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_cond,
next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_return_output);

-- next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483 : 0 clocks latency
next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_cond,
next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_iftrue,
next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_iffalse,
next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_return_output);

-- ball_in_l_goal_pong_h_l208_c6_7511 : 0 clocks latency
ball_in_l_goal_pong_h_l208_c6_7511 : entity work.ball_in_l_goal_0CLK_db683457 port map (
ball_in_l_goal_pong_h_l208_c6_7511_ball,
ball_in_l_goal_pong_h_l208_c6_7511_return_output);

-- reset_MUX_pong_h_l208_c3_fd69 : 0 clocks latency
reset_MUX_pong_h_l208_c3_fd69 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
reset_MUX_pong_h_l208_c3_fd69_cond,
reset_MUX_pong_h_l208_c3_fd69_iftrue,
reset_MUX_pong_h_l208_c3_fd69_iffalse,
reset_MUX_pong_h_l208_c3_fd69_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69 : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_cond,
next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_return_output);

-- next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69 : 0 clocks latency
next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_cond,
next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_iftrue,
next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_iffalse,
next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_return_output);

-- next_state_ball_vel_MUX_pong_h_l208_c3_fd69 : 0 clocks latency
next_state_ball_vel_MUX_pong_h_l208_c3_fd69 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_vel_MUX_pong_h_l208_c3_fd69_cond,
next_state_ball_vel_MUX_pong_h_l208_c3_fd69_iftrue,
next_state_ball_vel_MUX_pong_h_l208_c3_fd69_iffalse,
next_state_ball_vel_MUX_pong_h_l208_c3_fd69_return_output);

-- rects_collide_pong_h_l210_c8_bf35 : 0 clocks latency
rects_collide_pong_h_l210_c8_bf35 : entity work.rects_collide_0CLK_2e4d93a1 port map (
rects_collide_pong_h_l210_c8_bf35_r0,
rects_collide_pong_h_l210_c8_bf35_r1,
rects_collide_pong_h_l210_c8_bf35_return_output);

-- reset_MUX_pong_h_l210_c5_5812 : 0 clocks latency
reset_MUX_pong_h_l210_c5_5812 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
reset_MUX_pong_h_l210_c5_5812_cond,
reset_MUX_pong_h_l210_c5_5812_iftrue,
reset_MUX_pong_h_l210_c5_5812_iffalse,
reset_MUX_pong_h_l210_c5_5812_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812 : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_cond,
next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_return_output);

-- next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812 : 0 clocks latency
next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_cond,
next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_iftrue,
next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_iffalse,
next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_return_output);

-- next_state_ball_vel_MUX_pong_h_l210_c5_5812 : 0 clocks latency
next_state_ball_vel_MUX_pong_h_l210_c5_5812 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_vel_MUX_pong_h_l210_c5_5812_cond,
next_state_ball_vel_MUX_pong_h_l210_c5_5812_iftrue,
next_state_ball_vel_MUX_pong_h_l210_c5_5812_iffalse,
next_state_ball_vel_MUX_pong_h_l210_c5_5812_return_output);

-- ball_in_r_goal_pong_h_l224_c11_3bd3 : 0 clocks latency
ball_in_r_goal_pong_h_l224_c11_3bd3 : entity work.ball_in_r_goal_0CLK_55761013 port map (
ball_in_r_goal_pong_h_l224_c11_3bd3_ball,
ball_in_r_goal_pong_h_l224_c11_3bd3_return_output);

-- reset_MUX_pong_h_l224_c8_c092 : 0 clocks latency
reset_MUX_pong_h_l224_c8_c092 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
reset_MUX_pong_h_l224_c8_c092_cond,
reset_MUX_pong_h_l224_c8_c092_iftrue,
reset_MUX_pong_h_l224_c8_c092_iffalse,
reset_MUX_pong_h_l224_c8_c092_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092 : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_cond,
next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_return_output);

-- next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092 : 0 clocks latency
next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_cond,
next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_iftrue,
next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_iffalse,
next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_return_output);

-- next_state_ball_vel_MUX_pong_h_l224_c8_c092 : 0 clocks latency
next_state_ball_vel_MUX_pong_h_l224_c8_c092 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_vel_MUX_pong_h_l224_c8_c092_cond,
next_state_ball_vel_MUX_pong_h_l224_c8_c092_iftrue,
next_state_ball_vel_MUX_pong_h_l224_c8_c092_iffalse,
next_state_ball_vel_MUX_pong_h_l224_c8_c092_return_output);

-- rects_collide_pong_h_l226_c8_6535 : 0 clocks latency
rects_collide_pong_h_l226_c8_6535 : entity work.rects_collide_0CLK_2e4d93a1 port map (
rects_collide_pong_h_l226_c8_6535_r0,
rects_collide_pong_h_l226_c8_6535_r1,
rects_collide_pong_h_l226_c8_6535_return_output);

-- reset_MUX_pong_h_l226_c5_066b : 0 clocks latency
reset_MUX_pong_h_l226_c5_066b : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
reset_MUX_pong_h_l226_c5_066b_cond,
reset_MUX_pong_h_l226_c5_066b_iftrue,
reset_MUX_pong_h_l226_c5_066b_iffalse,
reset_MUX_pong_h_l226_c5_066b_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_cond,
next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_return_output);

-- next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b : 0 clocks latency
next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_cond,
next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_iftrue,
next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_iffalse,
next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_return_output);

-- next_state_ball_vel_MUX_pong_h_l226_c5_066b : 0 clocks latency
next_state_ball_vel_MUX_pong_h_l226_c5_066b : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_vel_MUX_pong_h_l226_c5_066b_cond,
next_state_ball_vel_MUX_pong_h_l226_c5_066b_iftrue,
next_state_ball_vel_MUX_pong_h_l226_c5_066b_iffalse,
next_state_ball_vel_MUX_pong_h_l226_c5_066b_return_output);

-- move_paddle_pong_h_l243_c33_6c12 : 0 clocks latency
move_paddle_pong_h_l243_c33_6c12 : entity work.move_paddle_0CLK_5633c838 port map (
move_paddle_pong_h_l243_c33_6c12_pos,
move_paddle_pong_h_l243_c33_6c12_paddle_up,
move_paddle_pong_h_l243_c33_6c12_paddle_down,
move_paddle_pong_h_l243_c33_6c12_return_output);

-- move_paddle_pong_h_l248_c33_ca3d : 0 clocks latency
move_paddle_pong_h_l248_c33_ca3d : entity work.move_paddle_0CLK_5633c838 port map (
move_paddle_pong_h_l248_c33_ca3d_pos,
move_paddle_pong_h_l248_c33_ca3d_paddle_up,
move_paddle_pong_h_l248_c33_ca3d_paddle_down,
move_paddle_pong_h_l248_c33_ca3d_return_output);

-- next_state_MUX_pong_h_l254_c3_bb84 : 0 clocks latency
next_state_MUX_pong_h_l254_c3_bb84 : entity work.MUX_uint1_t_game_state_t_game_state_t_0CLK_de264c78 port map (
next_state_MUX_pong_h_l254_c3_bb84_cond,
next_state_MUX_pong_h_l254_c3_bb84_iftrue,
next_state_MUX_pong_h_l254_c3_bb84_iffalse,
next_state_MUX_pong_h_l254_c3_bb84_return_output);

-- reset_state_pong_h_l256_c18_99e5 : 0 clocks latency
reset_state_pong_h_l256_c18_99e5 : entity work.reset_state_0CLK_b45f1687 port map (
reset_state_pong_h_l256_c18_99e5_return_output);

-- ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c : 0 clocks latency
ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c : entity work.ball_paddle_inc_vel_0CLK_d1a5eb1c port map (
ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c_vel,
ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 reset,
 state,
 user_input,
 -- All submodule outputs
 rect_move_pong_h_l190_c21_293f_return_output,
 rect_move_pong_h_l191_c24_c76c_return_output,
 rect_move_pong_h_l192_c24_92c9_return_output,
 ball_hit_roof_pong_h_l196_c6_c756_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_return_output,
 next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_return_output,
 ball_hit_floor_pong_h_l201_c11_b3e9_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_return_output,
 next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_return_output,
 ball_in_l_goal_pong_h_l208_c6_7511_return_output,
 reset_MUX_pong_h_l208_c3_fd69_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_return_output,
 next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_return_output,
 next_state_ball_vel_MUX_pong_h_l208_c3_fd69_return_output,
 rects_collide_pong_h_l210_c8_bf35_return_output,
 reset_MUX_pong_h_l210_c5_5812_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_return_output,
 next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_return_output,
 next_state_ball_vel_MUX_pong_h_l210_c5_5812_return_output,
 ball_in_r_goal_pong_h_l224_c11_3bd3_return_output,
 reset_MUX_pong_h_l224_c8_c092_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_return_output,
 next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_return_output,
 next_state_ball_vel_MUX_pong_h_l224_c8_c092_return_output,
 rects_collide_pong_h_l226_c8_6535_return_output,
 reset_MUX_pong_h_l226_c5_066b_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_return_output,
 next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_return_output,
 next_state_ball_vel_MUX_pong_h_l226_c5_066b_return_output,
 move_paddle_pong_h_l243_c33_6c12_return_output,
 move_paddle_pong_h_l248_c33_ca3d_return_output,
 next_state_MUX_pong_h_l254_c3_bb84_return_output,
 reset_state_pong_h_l256_c18_99e5_return_output,
 ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : game_state_t;
 variable VAR_reset : unsigned(0 downto 0);
 variable VAR_state : game_state_t;
 variable VAR_user_input : user_input_t;
 variable VAR_next_state : game_state_t;
 variable VAR_rect_move_pong_h_l190_c21_293f_state : rect_animated_t;
 variable VAR_rect_move_pong_h_l190_c21_293f_return_output : rect_animated_t;
 variable VAR_rect_move_pong_h_l191_c24_c76c_state : rect_animated_t;
 variable VAR_CONST_REF_RD_rect_animated_t_game_state_t_lpaddle_d41d_pong_h_l191_c34_55c8_return_output : rect_animated_t;
 variable VAR_rect_move_pong_h_l191_c24_c76c_return_output : rect_animated_t;
 variable VAR_rect_move_pong_h_l192_c24_92c9_state : rect_animated_t;
 variable VAR_CONST_REF_RD_rect_animated_t_game_state_t_rpaddle_d41d_pong_h_l192_c34_1ee4_return_output : rect_animated_t;
 variable VAR_rect_move_pong_h_l192_c24_92c9_return_output : rect_animated_t;
 variable VAR_ball_hit_roof_pong_h_l196_c6_c756_ball : rect_animated_t;
 variable VAR_ball_hit_roof_pong_h_l196_c6_c756_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_cond : unsigned(0 downto 0);
 variable VAR_ball_hit_floor_pong_h_l201_c11_b3e9_ball : rect_animated_t;
 variable VAR_ball_hit_floor_pong_h_l201_c11_b3e9_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_FALSE_INPUT_MUX_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0_pong_h_l201_c8_8483_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0_pong_h_l201_c8_8483_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_cond : unsigned(0 downto 0);
 variable VAR_ball_in_l_goal_pong_h_l208_c6_7511_ball : rect_animated_t;
 variable VAR_ball_in_l_goal_pong_h_l208_c6_7511_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l208_c3_fd69_iftrue : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l210_c5_5812_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l208_c3_fd69_iffalse : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l224_c8_c092_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l208_c3_fd69_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l208_c3_fd69_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_MUX_pong_h_l208_c3_fd69_iftrue : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l210_c5_5812_return_output : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l208_c3_fd69_iffalse : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l224_c8_c092_return_output : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l208_c3_fd69_return_output : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l208_c3_fd69_cond : unsigned(0 downto 0);
 variable VAR_rects_collide_pong_h_l210_c8_bf35_r0 : rect_t;
 variable VAR_rects_collide_pong_h_l210_c8_bf35_r1 : rect_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l210_c39_e7ff_return_output : rect_t;
 variable VAR_rects_collide_pong_h_l210_c8_bf35_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l210_c5_5812_iftrue : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l210_c5_5812_iffalse : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l210_c5_5812_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_MUX_pong_h_l210_c5_5812_iftrue : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l210_c5_5812_iffalse : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l210_c5_5812_cond : unsigned(0 downto 0);
 variable VAR_ball_in_r_goal_pong_h_l224_c11_3bd3_ball : rect_animated_t;
 variable VAR_ball_in_r_goal_pong_h_l224_c11_3bd3_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l224_c8_c092_iftrue : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l226_c5_066b_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l224_c8_c092_iffalse : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l224_c8_c092_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_MUX_pong_h_l224_c8_c092_iftrue : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l226_c5_066b_return_output : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l224_c8_c092_iffalse : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l224_c8_c092_cond : unsigned(0 downto 0);
 variable VAR_rects_collide_pong_h_l226_c8_6535_r0 : rect_t;
 variable VAR_rects_collide_pong_h_l226_c8_6535_r1 : rect_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l226_c39_6ca7_return_output : rect_t;
 variable VAR_rects_collide_pong_h_l226_c8_6535_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l226_c5_066b_iftrue : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l226_c5_066b_iffalse : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l226_c5_066b_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_MUX_pong_h_l226_c5_066b_iftrue : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l226_c5_066b_iffalse : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l226_c5_066b_cond : unsigned(0 downto 0);
 variable VAR_move_paddle_pong_h_l243_c33_6c12_pos : vga_pos_t;
 variable VAR_move_paddle_pong_h_l243_c33_6c12_paddle_up : unsigned(0 downto 0);
 variable VAR_move_paddle_pong_h_l243_c33_6c12_paddle_down : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_vga_pos_t_game_state_t_rpaddle_rect_pos_d41d_pong_h_l244_c35_2bfe_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_h_l245_c35_5153_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_h_l246_c35_3717_return_output : unsigned(0 downto 0);
 variable VAR_move_paddle_pong_h_l243_c33_6c12_return_output : vga_pos_t;
 variable VAR_move_paddle_pong_h_l248_c33_ca3d_pos : vga_pos_t;
 variable VAR_move_paddle_pong_h_l248_c33_ca3d_paddle_up : unsigned(0 downto 0);
 variable VAR_move_paddle_pong_h_l248_c33_ca3d_paddle_down : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_vga_pos_t_game_state_t_lpaddle_rect_pos_d41d_pong_h_l249_c35_b315_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_up_d41d_pong_h_l250_c35_67c8_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d_pong_h_l251_c35_9713_return_output : unsigned(0 downto 0);
 variable VAR_move_paddle_pong_h_l248_c33_ca3d_return_output : vga_pos_t;
 variable VAR_next_state_MUX_pong_h_l254_c3_bb84_iftrue : game_state_t;
 variable VAR_next_state_MUX_pong_h_l254_c3_bb84_iffalse : game_state_t;
 variable VAR_next_state_FALSE_INPUT_MUX_CONST_REF_RD_game_state_t_game_state_t_1f90_pong_h_l254_c3_bb84_return_output : game_state_t;
 variable VAR_next_state_MUX_pong_h_l254_c3_bb84_return_output : game_state_t;
 variable VAR_next_state_MUX_pong_h_l254_c3_bb84_cond : unsigned(0 downto 0);
 variable VAR_reset_state_pong_h_l256_c18_99e5_return_output : game_state_t;
 variable VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_0063_return_output : rect_animated_t;
 variable VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l213_l198_l229_l203_DUPLICATE_7f6e_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l210_l226_DUPLICATE_6f0c_return_output : rect_t;
 variable VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_d41d_pong_h_l231_l215_DUPLICATE_562f_return_output : vga_pos_t;
 variable VAR_ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c_vel : vga_pos_t;
 variable VAR_ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l210_l226_l224_DUPLICATE_4dd1_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l226_l224_l210_DUPLICATE_6bce_return_output : vga_pos_t;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_reset_MUX_pong_h_l226_c5_066b_iffalse := to_unsigned(1, 1);
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_iftrue := to_unsigned(1, 1);
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_iftrue := to_unsigned(1, 1);
     VAR_reset_MUX_pong_h_l210_c5_5812_iffalse := to_unsigned(1, 1);
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_iftrue := to_unsigned(0, 1);
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_iftrue := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_reset := reset;
     VAR_state := state;
     VAR_user_input := user_input;

     -- Submodule level 0
     VAR_reset_MUX_pong_h_l210_c5_5812_iftrue := VAR_reset;
     VAR_reset_MUX_pong_h_l224_c8_c092_iffalse := VAR_reset;
     VAR_reset_MUX_pong_h_l226_c5_066b_iftrue := VAR_reset;
     -- reset_state[pong_h_l256_c18_99e5] LATENCY=0
     -- Inputs
     -- Outputs
     VAR_reset_state_pong_h_l256_c18_99e5_return_output := reset_state_pong_h_l256_c18_99e5_return_output;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d[pong_h_l245_c35_5153] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_h_l245_c35_5153_return_output := VAR_user_input.paddle_r_up;

     -- CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d[pong_h_l226_c39_6ca7] LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l226_c39_6ca7_return_output := VAR_state.rpaddle.rect;

     -- CONST_REF_RD_rect_animated_t_game_state_t_lpaddle_d41d[pong_h_l191_c34_55c8] LATENCY=0
     VAR_CONST_REF_RD_rect_animated_t_game_state_t_lpaddle_d41d_pong_h_l191_c34_55c8_return_output := VAR_state.lpaddle;

     -- CONST_REF_RD_vga_pos_t_game_state_t_rpaddle_rect_pos_d41d[pong_h_l244_c35_2bfe] LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_game_state_t_rpaddle_rect_pos_d41d_pong_h_l244_c35_2bfe_return_output := VAR_state.rpaddle.rect.pos;

     -- CONST_REF_RD_vga_pos_t_game_state_t_lpaddle_rect_pos_d41d[pong_h_l249_c35_b315] LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_game_state_t_lpaddle_rect_pos_d41d_pong_h_l249_c35_b315_return_output := VAR_state.lpaddle.rect.pos;

     -- CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_0063 LATENCY=0
     VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_0063_return_output := VAR_state.ball;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d[pong_h_l246_c35_3717] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_h_l246_c35_3717_return_output := VAR_user_input.paddle_r_down;

     -- CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d[pong_h_l210_c39_e7ff] LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l210_c39_e7ff_return_output := VAR_state.lpaddle.rect;

     -- CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l213_l198_l229_l203_DUPLICATE_7f6e LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l213_l198_l229_l203_DUPLICATE_7f6e_return_output := VAR_state.ball.rect.pos;

     -- CONST_REF_RD_rect_animated_t_game_state_t_rpaddle_d41d[pong_h_l192_c34_1ee4] LATENCY=0
     VAR_CONST_REF_RD_rect_animated_t_game_state_t_rpaddle_d41d_pong_h_l192_c34_1ee4_return_output := VAR_state.rpaddle;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_l_up_d41d[pong_h_l250_c35_67c8] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_up_d41d_pong_h_l250_c35_67c8_return_output := VAR_user_input.paddle_l_up;

     -- CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_d41d_pong_h_l231_l215_DUPLICATE_562f LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_d41d_pong_h_l231_l215_DUPLICATE_562f_return_output := VAR_state.ball.vel;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d[pong_h_l251_c35_9713] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d_pong_h_l251_c35_9713_return_output := VAR_user_input.paddle_l_down;

     -- CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l210_l226_DUPLICATE_6f0c LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l210_l226_DUPLICATE_6f0c_return_output := VAR_state.ball.rect;

     -- Submodule level 1
     VAR_ball_hit_floor_pong_h_l201_c11_b3e9_ball := VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_0063_return_output;
     VAR_ball_hit_roof_pong_h_l196_c6_c756_ball := VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_0063_return_output;
     VAR_ball_in_l_goal_pong_h_l208_c6_7511_ball := VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_0063_return_output;
     VAR_ball_in_r_goal_pong_h_l224_c11_3bd3_ball := VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_0063_return_output;
     VAR_rect_move_pong_h_l190_c21_293f_state := VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_0063_return_output;
     VAR_rect_move_pong_h_l191_c24_c76c_state := VAR_CONST_REF_RD_rect_animated_t_game_state_t_lpaddle_d41d_pong_h_l191_c34_55c8_return_output;
     VAR_rect_move_pong_h_l192_c24_92c9_state := VAR_CONST_REF_RD_rect_animated_t_game_state_t_rpaddle_d41d_pong_h_l192_c34_1ee4_return_output;
     VAR_rects_collide_pong_h_l210_c8_bf35_r0 := VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l210_l226_DUPLICATE_6f0c_return_output;
     VAR_rects_collide_pong_h_l226_c8_6535_r0 := VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l210_l226_DUPLICATE_6f0c_return_output;
     VAR_rects_collide_pong_h_l210_c8_bf35_r1 := VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l210_c39_e7ff_return_output;
     VAR_rects_collide_pong_h_l226_c8_6535_r1 := VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l226_c39_6ca7_return_output;
     VAR_move_paddle_pong_h_l248_c33_ca3d_paddle_down := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d_pong_h_l251_c35_9713_return_output;
     VAR_move_paddle_pong_h_l248_c33_ca3d_paddle_up := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_up_d41d_pong_h_l250_c35_67c8_return_output;
     VAR_move_paddle_pong_h_l243_c33_6c12_paddle_down := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_h_l246_c35_3717_return_output;
     VAR_move_paddle_pong_h_l243_c33_6c12_paddle_up := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_h_l245_c35_5153_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_iftrue := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l213_l198_l229_l203_DUPLICATE_7f6e_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_iftrue := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l213_l198_l229_l203_DUPLICATE_7f6e_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_iftrue := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l213_l198_l229_l203_DUPLICATE_7f6e_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_iftrue := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l213_l198_l229_l203_DUPLICATE_7f6e_return_output;
     VAR_ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c_vel := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_d41d_pong_h_l231_l215_DUPLICATE_562f_return_output;
     VAR_move_paddle_pong_h_l248_c33_ca3d_pos := VAR_CONST_REF_RD_vga_pos_t_game_state_t_lpaddle_rect_pos_d41d_pong_h_l249_c35_b315_return_output;
     VAR_move_paddle_pong_h_l243_c33_6c12_pos := VAR_CONST_REF_RD_vga_pos_t_game_state_t_rpaddle_rect_pos_d41d_pong_h_l244_c35_2bfe_return_output;
     VAR_next_state_MUX_pong_h_l254_c3_bb84_iftrue := VAR_reset_state_pong_h_l256_c18_99e5_return_output;
     -- move_paddle[pong_h_l248_c33_ca3d] LATENCY=0
     -- Inputs
     move_paddle_pong_h_l248_c33_ca3d_pos <= VAR_move_paddle_pong_h_l248_c33_ca3d_pos;
     move_paddle_pong_h_l248_c33_ca3d_paddle_up <= VAR_move_paddle_pong_h_l248_c33_ca3d_paddle_up;
     move_paddle_pong_h_l248_c33_ca3d_paddle_down <= VAR_move_paddle_pong_h_l248_c33_ca3d_paddle_down;
     -- Outputs
     VAR_move_paddle_pong_h_l248_c33_ca3d_return_output := move_paddle_pong_h_l248_c33_ca3d_return_output;

     -- rect_move[pong_h_l191_c24_c76c] LATENCY=0
     -- Inputs
     rect_move_pong_h_l191_c24_c76c_state <= VAR_rect_move_pong_h_l191_c24_c76c_state;
     -- Outputs
     VAR_rect_move_pong_h_l191_c24_c76c_return_output := rect_move_pong_h_l191_c24_c76c_return_output;

     -- move_paddle[pong_h_l243_c33_6c12] LATENCY=0
     -- Inputs
     move_paddle_pong_h_l243_c33_6c12_pos <= VAR_move_paddle_pong_h_l243_c33_6c12_pos;
     move_paddle_pong_h_l243_c33_6c12_paddle_up <= VAR_move_paddle_pong_h_l243_c33_6c12_paddle_up;
     move_paddle_pong_h_l243_c33_6c12_paddle_down <= VAR_move_paddle_pong_h_l243_c33_6c12_paddle_down;
     -- Outputs
     VAR_move_paddle_pong_h_l243_c33_6c12_return_output := move_paddle_pong_h_l243_c33_6c12_return_output;

     -- rect_move[pong_h_l190_c21_293f] LATENCY=0
     -- Inputs
     rect_move_pong_h_l190_c21_293f_state <= VAR_rect_move_pong_h_l190_c21_293f_state;
     -- Outputs
     VAR_rect_move_pong_h_l190_c21_293f_return_output := rect_move_pong_h_l190_c21_293f_return_output;

     -- rects_collide[pong_h_l226_c8_6535] LATENCY=0
     -- Inputs
     rects_collide_pong_h_l226_c8_6535_r0 <= VAR_rects_collide_pong_h_l226_c8_6535_r0;
     rects_collide_pong_h_l226_c8_6535_r1 <= VAR_rects_collide_pong_h_l226_c8_6535_r1;
     -- Outputs
     VAR_rects_collide_pong_h_l226_c8_6535_return_output := rects_collide_pong_h_l226_c8_6535_return_output;

     -- rects_collide[pong_h_l210_c8_bf35] LATENCY=0
     -- Inputs
     rects_collide_pong_h_l210_c8_bf35_r0 <= VAR_rects_collide_pong_h_l210_c8_bf35_r0;
     rects_collide_pong_h_l210_c8_bf35_r1 <= VAR_rects_collide_pong_h_l210_c8_bf35_r1;
     -- Outputs
     VAR_rects_collide_pong_h_l210_c8_bf35_return_output := rects_collide_pong_h_l210_c8_bf35_return_output;

     -- ball_hit_floor[pong_h_l201_c11_b3e9] LATENCY=0
     -- Inputs
     ball_hit_floor_pong_h_l201_c11_b3e9_ball <= VAR_ball_hit_floor_pong_h_l201_c11_b3e9_ball;
     -- Outputs
     VAR_ball_hit_floor_pong_h_l201_c11_b3e9_return_output := ball_hit_floor_pong_h_l201_c11_b3e9_return_output;

     -- ball_in_l_goal[pong_h_l208_c6_7511] LATENCY=0
     -- Inputs
     ball_in_l_goal_pong_h_l208_c6_7511_ball <= VAR_ball_in_l_goal_pong_h_l208_c6_7511_ball;
     -- Outputs
     VAR_ball_in_l_goal_pong_h_l208_c6_7511_return_output := ball_in_l_goal_pong_h_l208_c6_7511_return_output;

     -- rect_move[pong_h_l192_c24_92c9] LATENCY=0
     -- Inputs
     rect_move_pong_h_l192_c24_92c9_state <= VAR_rect_move_pong_h_l192_c24_92c9_state;
     -- Outputs
     VAR_rect_move_pong_h_l192_c24_92c9_return_output := rect_move_pong_h_l192_c24_92c9_return_output;

     -- ball_hit_roof[pong_h_l196_c6_c756] LATENCY=0
     -- Inputs
     ball_hit_roof_pong_h_l196_c6_c756_ball <= VAR_ball_hit_roof_pong_h_l196_c6_c756_ball;
     -- Outputs
     VAR_ball_hit_roof_pong_h_l196_c6_c756_return_output := ball_hit_roof_pong_h_l196_c6_c756_return_output;

     -- ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c LATENCY=0
     -- Inputs
     ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c_vel <= VAR_ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c_vel;
     -- Outputs
     VAR_ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c_return_output := ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c_return_output;

     -- ball_in_r_goal[pong_h_l224_c11_3bd3] LATENCY=0
     -- Inputs
     ball_in_r_goal_pong_h_l224_c11_3bd3_ball <= VAR_ball_in_r_goal_pong_h_l224_c11_3bd3_ball;
     -- Outputs
     VAR_ball_in_r_goal_pong_h_l224_c11_3bd3_return_output := ball_in_r_goal_pong_h_l224_c11_3bd3_return_output;

     -- Submodule level 2
     VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_cond := VAR_ball_hit_floor_pong_h_l201_c11_b3e9_return_output;
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_cond := VAR_ball_hit_floor_pong_h_l201_c11_b3e9_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_cond := VAR_ball_hit_roof_pong_h_l196_c6_c756_return_output;
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_cond := VAR_ball_hit_roof_pong_h_l196_c6_c756_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_cond := VAR_ball_in_l_goal_pong_h_l208_c6_7511_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l208_c3_fd69_cond := VAR_ball_in_l_goal_pong_h_l208_c6_7511_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_cond := VAR_ball_in_l_goal_pong_h_l208_c6_7511_return_output;
     VAR_reset_MUX_pong_h_l208_c3_fd69_cond := VAR_ball_in_l_goal_pong_h_l208_c6_7511_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_cond := VAR_ball_in_r_goal_pong_h_l224_c11_3bd3_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l224_c8_c092_cond := VAR_ball_in_r_goal_pong_h_l224_c11_3bd3_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_cond := VAR_ball_in_r_goal_pong_h_l224_c11_3bd3_return_output;
     VAR_reset_MUX_pong_h_l224_c8_c092_cond := VAR_ball_in_r_goal_pong_h_l224_c11_3bd3_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l210_c5_5812_iftrue := VAR_ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l226_c5_066b_iftrue := VAR_ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_791c_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_cond := VAR_rects_collide_pong_h_l210_c8_bf35_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l210_c5_5812_cond := VAR_rects_collide_pong_h_l210_c8_bf35_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_cond := VAR_rects_collide_pong_h_l210_c8_bf35_return_output;
     VAR_reset_MUX_pong_h_l210_c5_5812_cond := VAR_rects_collide_pong_h_l210_c8_bf35_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_cond := VAR_rects_collide_pong_h_l226_c8_6535_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l226_c5_066b_cond := VAR_rects_collide_pong_h_l226_c8_6535_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_cond := VAR_rects_collide_pong_h_l226_c8_6535_return_output;
     VAR_reset_MUX_pong_h_l226_c5_066b_cond := VAR_rects_collide_pong_h_l226_c8_6535_return_output;
     -- reset_MUX[pong_h_l226_c5_066b] LATENCY=0
     -- Inputs
     reset_MUX_pong_h_l226_c5_066b_cond <= VAR_reset_MUX_pong_h_l226_c5_066b_cond;
     reset_MUX_pong_h_l226_c5_066b_iftrue <= VAR_reset_MUX_pong_h_l226_c5_066b_iftrue;
     reset_MUX_pong_h_l226_c5_066b_iffalse <= VAR_reset_MUX_pong_h_l226_c5_066b_iffalse;
     -- Outputs
     VAR_reset_MUX_pong_h_l226_c5_066b_return_output := reset_MUX_pong_h_l226_c5_066b_return_output;

     -- next_state_ball_rect_pos_FALSE_INPUT_MUX_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0[pong_h_l201_c8_8483] LATENCY=0
     VAR_next_state_ball_rect_pos_FALSE_INPUT_MUX_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0_pong_h_l201_c8_8483_return_output := CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0(
     VAR_rect_move_pong_h_l190_c21_293f_return_output);

     -- reset_MUX[pong_h_l210_c5_5812] LATENCY=0
     -- Inputs
     reset_MUX_pong_h_l210_c5_5812_cond <= VAR_reset_MUX_pong_h_l210_c5_5812_cond;
     reset_MUX_pong_h_l210_c5_5812_iftrue <= VAR_reset_MUX_pong_h_l210_c5_5812_iftrue;
     reset_MUX_pong_h_l210_c5_5812_iffalse <= VAR_reset_MUX_pong_h_l210_c5_5812_iffalse;
     -- Outputs
     VAR_reset_MUX_pong_h_l210_c5_5812_return_output := reset_MUX_pong_h_l210_c5_5812_return_output;

     -- CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l210_l226_l224_DUPLICATE_4dd1 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l210_l226_l224_DUPLICATE_4dd1_return_output := CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0(
     VAR_rect_move_pong_h_l190_c21_293f_return_output);

     -- CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l226_l224_l210_DUPLICATE_6bce LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l226_l224_l210_DUPLICATE_6bce_return_output := CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0(
     VAR_rect_move_pong_h_l190_c21_293f_return_output);

     -- next_state_ball_vel_y_dir_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0[pong_h_l201_c8_8483] LATENCY=0
     VAR_next_state_ball_vel_y_dir_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0_pong_h_l201_c8_8483_return_output := CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0(
     VAR_rect_move_pong_h_l190_c21_293f_return_output);

     -- Submodule level 3
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_iffalse := VAR_CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l210_l226_l224_DUPLICATE_4dd1_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_iffalse := VAR_CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l210_l226_l224_DUPLICATE_4dd1_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_iffalse := VAR_CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l210_l226_l224_DUPLICATE_4dd1_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l210_c5_5812_iffalse := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l226_l224_l210_DUPLICATE_6bce_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l224_c8_c092_iffalse := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l226_l224_l210_DUPLICATE_6bce_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l226_c5_066b_iffalse := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l226_l224_l210_DUPLICATE_6bce_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_iffalse := VAR_next_state_ball_rect_pos_FALSE_INPUT_MUX_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0_pong_h_l201_c8_8483_return_output;
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_iffalse := VAR_next_state_ball_vel_y_dir_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0_pong_h_l201_c8_8483_return_output;
     VAR_reset_MUX_pong_h_l208_c3_fd69_iftrue := VAR_reset_MUX_pong_h_l210_c5_5812_return_output;
     VAR_reset_MUX_pong_h_l224_c8_c092_iftrue := VAR_reset_MUX_pong_h_l226_c5_066b_return_output;
     -- next_state_ball_vel_MUX[pong_h_l226_c5_066b] LATENCY=0
     -- Inputs
     next_state_ball_vel_MUX_pong_h_l226_c5_066b_cond <= VAR_next_state_ball_vel_MUX_pong_h_l226_c5_066b_cond;
     next_state_ball_vel_MUX_pong_h_l226_c5_066b_iftrue <= VAR_next_state_ball_vel_MUX_pong_h_l226_c5_066b_iftrue;
     next_state_ball_vel_MUX_pong_h_l226_c5_066b_iffalse <= VAR_next_state_ball_vel_MUX_pong_h_l226_c5_066b_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_MUX_pong_h_l226_c5_066b_return_output := next_state_ball_vel_MUX_pong_h_l226_c5_066b_return_output;

     -- next_state_ball_rect_pos_MUX[pong_h_l201_c8_8483] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_cond;
     next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_return_output := next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_return_output;

     -- next_state_ball_vel_MUX[pong_h_l210_c5_5812] LATENCY=0
     -- Inputs
     next_state_ball_vel_MUX_pong_h_l210_c5_5812_cond <= VAR_next_state_ball_vel_MUX_pong_h_l210_c5_5812_cond;
     next_state_ball_vel_MUX_pong_h_l210_c5_5812_iftrue <= VAR_next_state_ball_vel_MUX_pong_h_l210_c5_5812_iftrue;
     next_state_ball_vel_MUX_pong_h_l210_c5_5812_iffalse <= VAR_next_state_ball_vel_MUX_pong_h_l210_c5_5812_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_MUX_pong_h_l210_c5_5812_return_output := next_state_ball_vel_MUX_pong_h_l210_c5_5812_return_output;

     -- next_state_ball_vel_y_dir_MUX[pong_h_l201_c8_8483] LATENCY=0
     -- Inputs
     next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_cond <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_cond;
     next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_iftrue <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_iftrue;
     next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_iffalse <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_return_output := next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_return_output;

     -- next_state_ball_vel_x_dir_MUX[pong_h_l226_c5_066b] LATENCY=0
     -- Inputs
     next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_cond <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_cond;
     next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_iftrue <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_iftrue;
     next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_iffalse <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_return_output := next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_return_output;

     -- reset_MUX[pong_h_l224_c8_c092] LATENCY=0
     -- Inputs
     reset_MUX_pong_h_l224_c8_c092_cond <= VAR_reset_MUX_pong_h_l224_c8_c092_cond;
     reset_MUX_pong_h_l224_c8_c092_iftrue <= VAR_reset_MUX_pong_h_l224_c8_c092_iftrue;
     reset_MUX_pong_h_l224_c8_c092_iffalse <= VAR_reset_MUX_pong_h_l224_c8_c092_iffalse;
     -- Outputs
     VAR_reset_MUX_pong_h_l224_c8_c092_return_output := reset_MUX_pong_h_l224_c8_c092_return_output;

     -- next_state_ball_vel_x_dir_MUX[pong_h_l210_c5_5812] LATENCY=0
     -- Inputs
     next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_cond <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_cond;
     next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_iftrue <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_iftrue;
     next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_iffalse <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_return_output := next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_return_output;

     -- Submodule level 4
     VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_iffalse := VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_8483_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l208_c3_fd69_iftrue := VAR_next_state_ball_vel_MUX_pong_h_l210_c5_5812_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l224_c8_c092_iftrue := VAR_next_state_ball_vel_MUX_pong_h_l226_c5_066b_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_iftrue := VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_5812_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_iftrue := VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_066b_return_output;
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_iffalse := VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_8483_return_output;
     VAR_reset_MUX_pong_h_l208_c3_fd69_iffalse := VAR_reset_MUX_pong_h_l224_c8_c092_return_output;
     -- next_state_ball_vel_MUX[pong_h_l224_c8_c092] LATENCY=0
     -- Inputs
     next_state_ball_vel_MUX_pong_h_l224_c8_c092_cond <= VAR_next_state_ball_vel_MUX_pong_h_l224_c8_c092_cond;
     next_state_ball_vel_MUX_pong_h_l224_c8_c092_iftrue <= VAR_next_state_ball_vel_MUX_pong_h_l224_c8_c092_iftrue;
     next_state_ball_vel_MUX_pong_h_l224_c8_c092_iffalse <= VAR_next_state_ball_vel_MUX_pong_h_l224_c8_c092_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_MUX_pong_h_l224_c8_c092_return_output := next_state_ball_vel_MUX_pong_h_l224_c8_c092_return_output;

     -- next_state_ball_vel_x_dir_MUX[pong_h_l224_c8_c092] LATENCY=0
     -- Inputs
     next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_cond <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_cond;
     next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_iftrue <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_iftrue;
     next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_iffalse <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_return_output := next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_return_output;

     -- next_state_ball_rect_pos_MUX[pong_h_l196_c3_b710] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_cond;
     next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_return_output := next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_return_output;

     -- next_state_ball_vel_y_dir_MUX[pong_h_l196_c3_b710] LATENCY=0
     -- Inputs
     next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_cond <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_cond;
     next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_iftrue <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_iftrue;
     next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_iffalse <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_return_output := next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_return_output;

     -- reset_MUX[pong_h_l208_c3_fd69] LATENCY=0
     -- Inputs
     reset_MUX_pong_h_l208_c3_fd69_cond <= VAR_reset_MUX_pong_h_l208_c3_fd69_cond;
     reset_MUX_pong_h_l208_c3_fd69_iftrue <= VAR_reset_MUX_pong_h_l208_c3_fd69_iftrue;
     reset_MUX_pong_h_l208_c3_fd69_iffalse <= VAR_reset_MUX_pong_h_l208_c3_fd69_iffalse;
     -- Outputs
     VAR_reset_MUX_pong_h_l208_c3_fd69_return_output := reset_MUX_pong_h_l208_c3_fd69_return_output;

     -- Submodule level 5
     VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_iffalse := VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_iffalse := VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_iffalse := VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_b710_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l208_c3_fd69_iffalse := VAR_next_state_ball_vel_MUX_pong_h_l224_c8_c092_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_iffalse := VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_c092_return_output;
     VAR_next_state_MUX_pong_h_l254_c3_bb84_cond := VAR_reset_MUX_pong_h_l208_c3_fd69_return_output;
     -- next_state_ball_rect_pos_MUX[pong_h_l226_c5_066b] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_cond;
     next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_return_output := next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_return_output;

     -- next_state_ball_vel_x_dir_MUX[pong_h_l208_c3_fd69] LATENCY=0
     -- Inputs
     next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_cond <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_cond;
     next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_iftrue <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_iftrue;
     next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_iffalse <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_return_output := next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_return_output;

     -- next_state_ball_rect_pos_MUX[pong_h_l210_c5_5812] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_cond;
     next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_return_output := next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_return_output;

     -- next_state_ball_vel_MUX[pong_h_l208_c3_fd69] LATENCY=0
     -- Inputs
     next_state_ball_vel_MUX_pong_h_l208_c3_fd69_cond <= VAR_next_state_ball_vel_MUX_pong_h_l208_c3_fd69_cond;
     next_state_ball_vel_MUX_pong_h_l208_c3_fd69_iftrue <= VAR_next_state_ball_vel_MUX_pong_h_l208_c3_fd69_iftrue;
     next_state_ball_vel_MUX_pong_h_l208_c3_fd69_iffalse <= VAR_next_state_ball_vel_MUX_pong_h_l208_c3_fd69_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_MUX_pong_h_l208_c3_fd69_return_output := next_state_ball_vel_MUX_pong_h_l208_c3_fd69_return_output;

     -- Submodule level 6
     VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_iftrue := VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_5812_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_iftrue := VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_066b_return_output;
     -- next_state_ball_rect_pos_MUX[pong_h_l224_c8_c092] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_cond;
     next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_return_output := next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_return_output;

     -- Submodule level 7
     VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_iffalse := VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_c092_return_output;
     -- next_state_ball_rect_pos_MUX[pong_h_l208_c3_fd69] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_cond;
     next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_return_output := next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_return_output;

     -- Submodule level 8
     -- next_state_FALSE_INPUT_MUX_CONST_REF_RD_game_state_t_game_state_t_1f90[pong_h_l254_c3_bb84] LATENCY=0
     VAR_next_state_FALSE_INPUT_MUX_CONST_REF_RD_game_state_t_game_state_t_1f90_pong_h_l254_c3_bb84_return_output := CONST_REF_RD_game_state_t_game_state_t_1f90(
     VAR_rect_move_pong_h_l190_c21_293f_return_output,
     VAR_rect_move_pong_h_l191_c24_c76c_return_output,
     VAR_rect_move_pong_h_l192_c24_92c9_return_output,
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_b710_return_output,
     VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_fd69_return_output,
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_fd69_return_output,
     VAR_next_state_ball_vel_MUX_pong_h_l208_c3_fd69_return_output,
     VAR_move_paddle_pong_h_l243_c33_6c12_return_output,
     VAR_move_paddle_pong_h_l248_c33_ca3d_return_output);

     -- Submodule level 9
     VAR_next_state_MUX_pong_h_l254_c3_bb84_iffalse := VAR_next_state_FALSE_INPUT_MUX_CONST_REF_RD_game_state_t_game_state_t_1f90_pong_h_l254_c3_bb84_return_output;
     -- next_state_MUX[pong_h_l254_c3_bb84] LATENCY=0
     -- Inputs
     next_state_MUX_pong_h_l254_c3_bb84_cond <= VAR_next_state_MUX_pong_h_l254_c3_bb84_cond;
     next_state_MUX_pong_h_l254_c3_bb84_iftrue <= VAR_next_state_MUX_pong_h_l254_c3_bb84_iftrue;
     next_state_MUX_pong_h_l254_c3_bb84_iffalse <= VAR_next_state_MUX_pong_h_l254_c3_bb84_iffalse;
     -- Outputs
     VAR_next_state_MUX_pong_h_l254_c3_bb84_return_output := next_state_MUX_pong_h_l254_c3_bb84_return_output;

     -- Submodule level 10
     VAR_return_output := VAR_next_state_MUX_pong_h_l254_c3_bb84_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
