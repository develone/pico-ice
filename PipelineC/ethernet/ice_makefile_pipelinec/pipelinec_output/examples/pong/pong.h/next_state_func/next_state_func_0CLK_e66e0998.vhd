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
-- rect_move[pong_h_l190_c21_f01e]
signal rect_move_pong_h_l190_c21_f01e_state : rect_animated_t;
signal rect_move_pong_h_l190_c21_f01e_return_output : rect_animated_t;

-- rect_move[pong_h_l191_c24_65c4]
signal rect_move_pong_h_l191_c24_65c4_state : rect_animated_t;
signal rect_move_pong_h_l191_c24_65c4_return_output : rect_animated_t;

-- rect_move[pong_h_l192_c24_7967]
signal rect_move_pong_h_l192_c24_7967_state : rect_animated_t;
signal rect_move_pong_h_l192_c24_7967_return_output : rect_animated_t;

-- ball_hit_roof[pong_h_l196_c6_2857]
signal ball_hit_roof_pong_h_l196_c6_2857_ball : rect_animated_t;
signal ball_hit_roof_pong_h_l196_c6_2857_return_output : unsigned(0 downto 0);

-- next_state_ball_vel_y_dir_MUX[pong_h_l196_c3_9d0a]
signal next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_cond : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l196_c3_9d0a]
signal next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_return_output : vga_pos_t;

-- ball_hit_floor[pong_h_l201_c11_6fc1]
signal ball_hit_floor_pong_h_l201_c11_6fc1_ball : rect_animated_t;
signal ball_hit_floor_pong_h_l201_c11_6fc1_return_output : unsigned(0 downto 0);

-- next_state_ball_vel_y_dir_MUX[pong_h_l201_c8_1bbd]
signal next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_cond : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l201_c8_1bbd]
signal next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_return_output : vga_pos_t;

-- ball_in_l_goal[pong_h_l208_c6_ff09]
signal ball_in_l_goal_pong_h_l208_c6_ff09_ball : rect_animated_t;
signal ball_in_l_goal_pong_h_l208_c6_ff09_return_output : unsigned(0 downto 0);

-- next_state_ball_vel_MUX[pong_h_l208_c3_5c7d]
signal next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_cond : unsigned(0 downto 0);
signal next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_iftrue : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_iffalse : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_return_output : vga_pos_t;

-- next_state_ball_vel_x_dir_MUX[pong_h_l208_c3_5c7d]
signal next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_cond : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l208_c3_5c7d]
signal next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_return_output : vga_pos_t;

-- reset_MUX[pong_h_l208_c3_5c7d]
signal reset_MUX_pong_h_l208_c3_5c7d_cond : unsigned(0 downto 0);
signal reset_MUX_pong_h_l208_c3_5c7d_iftrue : unsigned(0 downto 0);
signal reset_MUX_pong_h_l208_c3_5c7d_iffalse : unsigned(0 downto 0);
signal reset_MUX_pong_h_l208_c3_5c7d_return_output : unsigned(0 downto 0);

-- rects_collide[pong_h_l210_c8_6998]
signal rects_collide_pong_h_l210_c8_6998_r0 : rect_t;
signal rects_collide_pong_h_l210_c8_6998_r1 : rect_t;
signal rects_collide_pong_h_l210_c8_6998_return_output : unsigned(0 downto 0);

-- next_state_ball_vel_MUX[pong_h_l210_c5_20e4]
signal next_state_ball_vel_MUX_pong_h_l210_c5_20e4_cond : unsigned(0 downto 0);
signal next_state_ball_vel_MUX_pong_h_l210_c5_20e4_iftrue : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l210_c5_20e4_iffalse : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l210_c5_20e4_return_output : vga_pos_t;

-- next_state_ball_vel_x_dir_MUX[pong_h_l210_c5_20e4]
signal next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_cond : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l210_c5_20e4]
signal next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_return_output : vga_pos_t;

-- reset_MUX[pong_h_l210_c5_20e4]
signal reset_MUX_pong_h_l210_c5_20e4_cond : unsigned(0 downto 0);
signal reset_MUX_pong_h_l210_c5_20e4_iftrue : unsigned(0 downto 0);
signal reset_MUX_pong_h_l210_c5_20e4_iffalse : unsigned(0 downto 0);
signal reset_MUX_pong_h_l210_c5_20e4_return_output : unsigned(0 downto 0);

-- ball_in_r_goal[pong_h_l224_c11_b725]
signal ball_in_r_goal_pong_h_l224_c11_b725_ball : rect_animated_t;
signal ball_in_r_goal_pong_h_l224_c11_b725_return_output : unsigned(0 downto 0);

-- next_state_ball_vel_MUX[pong_h_l224_c8_d2cb]
signal next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_cond : unsigned(0 downto 0);
signal next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_iftrue : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_iffalse : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_return_output : vga_pos_t;

-- next_state_ball_vel_x_dir_MUX[pong_h_l224_c8_d2cb]
signal next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_cond : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l224_c8_d2cb]
signal next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_return_output : vga_pos_t;

-- reset_MUX[pong_h_l224_c8_d2cb]
signal reset_MUX_pong_h_l224_c8_d2cb_cond : unsigned(0 downto 0);
signal reset_MUX_pong_h_l224_c8_d2cb_iftrue : unsigned(0 downto 0);
signal reset_MUX_pong_h_l224_c8_d2cb_iffalse : unsigned(0 downto 0);
signal reset_MUX_pong_h_l224_c8_d2cb_return_output : unsigned(0 downto 0);

-- rects_collide[pong_h_l226_c8_1e3b]
signal rects_collide_pong_h_l226_c8_1e3b_r0 : rect_t;
signal rects_collide_pong_h_l226_c8_1e3b_r1 : rect_t;
signal rects_collide_pong_h_l226_c8_1e3b_return_output : unsigned(0 downto 0);

-- next_state_ball_vel_MUX[pong_h_l226_c5_6b16]
signal next_state_ball_vel_MUX_pong_h_l226_c5_6b16_cond : unsigned(0 downto 0);
signal next_state_ball_vel_MUX_pong_h_l226_c5_6b16_iftrue : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l226_c5_6b16_iffalse : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l226_c5_6b16_return_output : vga_pos_t;

-- next_state_ball_vel_x_dir_MUX[pong_h_l226_c5_6b16]
signal next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_cond : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l226_c5_6b16]
signal next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_return_output : vga_pos_t;

-- reset_MUX[pong_h_l226_c5_6b16]
signal reset_MUX_pong_h_l226_c5_6b16_cond : unsigned(0 downto 0);
signal reset_MUX_pong_h_l226_c5_6b16_iftrue : unsigned(0 downto 0);
signal reset_MUX_pong_h_l226_c5_6b16_iffalse : unsigned(0 downto 0);
signal reset_MUX_pong_h_l226_c5_6b16_return_output : unsigned(0 downto 0);

-- move_paddle[pong_h_l243_c33_e0dc]
signal move_paddle_pong_h_l243_c33_e0dc_pos : vga_pos_t;
signal move_paddle_pong_h_l243_c33_e0dc_paddle_up : unsigned(0 downto 0);
signal move_paddle_pong_h_l243_c33_e0dc_paddle_down : unsigned(0 downto 0);
signal move_paddle_pong_h_l243_c33_e0dc_return_output : vga_pos_t;

-- move_paddle[pong_h_l248_c33_9e34]
signal move_paddle_pong_h_l248_c33_9e34_pos : vga_pos_t;
signal move_paddle_pong_h_l248_c33_9e34_paddle_up : unsigned(0 downto 0);
signal move_paddle_pong_h_l248_c33_9e34_paddle_down : unsigned(0 downto 0);
signal move_paddle_pong_h_l248_c33_9e34_return_output : vga_pos_t;

-- next_state_MUX[pong_h_l254_c3_db11]
signal next_state_MUX_pong_h_l254_c3_db11_cond : unsigned(0 downto 0);
signal next_state_MUX_pong_h_l254_c3_db11_iftrue : game_state_t;
signal next_state_MUX_pong_h_l254_c3_db11_iffalse : game_state_t;
signal next_state_MUX_pong_h_l254_c3_db11_return_output : game_state_t;

-- reset_state[pong_h_l256_c18_b819]
signal reset_state_pong_h_l256_c18_b819_return_output : game_state_t;

-- ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072
signal ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072_vel : vga_pos_t;
signal ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072_return_output : vga_pos_t;

function CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0( ref_toks_0 : rect_animated_t) return unsigned is
 
  variable base : game_state_t; 
  variable return_output : unsigned(0 downto 0);
begin
      base.ball := ref_toks_0;

      return_output := base.ball.vel_y_dir;
      return return_output; 
end function;

function CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0( ref_toks_0 : rect_animated_t) return vga_pos_t is
 
  variable base : game_state_t; 
  variable return_output : vga_pos_t;
begin
      base.ball := ref_toks_0;

      return_output := base.ball.rect.pos;
      return return_output; 
end function;

function CONST_REF_RD_game_state_t_game_state_t_348e( ref_toks_0 : rect_animated_t;
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
      base.ball.vel := ref_toks_4;
      base.ball.vel_x_dir := ref_toks_5;
      base.ball.rect.pos := ref_toks_6;
      base.rpaddle.rect.pos := ref_toks_7;
      base.lpaddle.rect.pos := ref_toks_8;

      return_output := base;
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

function CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0( ref_toks_0 : rect_animated_t) return unsigned is
 
  variable base : game_state_t; 
  variable return_output : unsigned(0 downto 0);
begin
      base.ball := ref_toks_0;

      return_output := base.ball.vel_x_dir;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- rect_move_pong_h_l190_c21_f01e : 0 clocks latency
rect_move_pong_h_l190_c21_f01e : entity work.rect_move_0CLK_0810338e port map (
rect_move_pong_h_l190_c21_f01e_state,
rect_move_pong_h_l190_c21_f01e_return_output);

-- rect_move_pong_h_l191_c24_65c4 : 0 clocks latency
rect_move_pong_h_l191_c24_65c4 : entity work.rect_move_0CLK_0810338e port map (
rect_move_pong_h_l191_c24_65c4_state,
rect_move_pong_h_l191_c24_65c4_return_output);

-- rect_move_pong_h_l192_c24_7967 : 0 clocks latency
rect_move_pong_h_l192_c24_7967 : entity work.rect_move_0CLK_0810338e port map (
rect_move_pong_h_l192_c24_7967_state,
rect_move_pong_h_l192_c24_7967_return_output);

-- ball_hit_roof_pong_h_l196_c6_2857 : 0 clocks latency
ball_hit_roof_pong_h_l196_c6_2857 : entity work.ball_hit_roof_0CLK_a5a1cd4e port map (
ball_hit_roof_pong_h_l196_c6_2857_ball,
ball_hit_roof_pong_h_l196_c6_2857_return_output);

-- next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a : 0 clocks latency
next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_cond,
next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_iftrue,
next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_iffalse,
next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_cond,
next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_return_output);

-- ball_hit_floor_pong_h_l201_c11_6fc1 : 0 clocks latency
ball_hit_floor_pong_h_l201_c11_6fc1 : entity work.ball_hit_floor_0CLK_6cd3ce08 port map (
ball_hit_floor_pong_h_l201_c11_6fc1_ball,
ball_hit_floor_pong_h_l201_c11_6fc1_return_output);

-- next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd : 0 clocks latency
next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_cond,
next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_iftrue,
next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_iffalse,
next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_cond,
next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_return_output);

-- ball_in_l_goal_pong_h_l208_c6_ff09 : 0 clocks latency
ball_in_l_goal_pong_h_l208_c6_ff09 : entity work.ball_in_l_goal_0CLK_db683457 port map (
ball_in_l_goal_pong_h_l208_c6_ff09_ball,
ball_in_l_goal_pong_h_l208_c6_ff09_return_output);

-- next_state_ball_vel_MUX_pong_h_l208_c3_5c7d : 0 clocks latency
next_state_ball_vel_MUX_pong_h_l208_c3_5c7d : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_cond,
next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_iftrue,
next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_iffalse,
next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_return_output);

-- next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d : 0 clocks latency
next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_cond,
next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_iftrue,
next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_iffalse,
next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_cond,
next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_return_output);

-- reset_MUX_pong_h_l208_c3_5c7d : 0 clocks latency
reset_MUX_pong_h_l208_c3_5c7d : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
reset_MUX_pong_h_l208_c3_5c7d_cond,
reset_MUX_pong_h_l208_c3_5c7d_iftrue,
reset_MUX_pong_h_l208_c3_5c7d_iffalse,
reset_MUX_pong_h_l208_c3_5c7d_return_output);

-- rects_collide_pong_h_l210_c8_6998 : 0 clocks latency
rects_collide_pong_h_l210_c8_6998 : entity work.rects_collide_0CLK_2e4d93a1 port map (
rects_collide_pong_h_l210_c8_6998_r0,
rects_collide_pong_h_l210_c8_6998_r1,
rects_collide_pong_h_l210_c8_6998_return_output);

-- next_state_ball_vel_MUX_pong_h_l210_c5_20e4 : 0 clocks latency
next_state_ball_vel_MUX_pong_h_l210_c5_20e4 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_vel_MUX_pong_h_l210_c5_20e4_cond,
next_state_ball_vel_MUX_pong_h_l210_c5_20e4_iftrue,
next_state_ball_vel_MUX_pong_h_l210_c5_20e4_iffalse,
next_state_ball_vel_MUX_pong_h_l210_c5_20e4_return_output);

-- next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4 : 0 clocks latency
next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_cond,
next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_iftrue,
next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_iffalse,
next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4 : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_cond,
next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_return_output);

-- reset_MUX_pong_h_l210_c5_20e4 : 0 clocks latency
reset_MUX_pong_h_l210_c5_20e4 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
reset_MUX_pong_h_l210_c5_20e4_cond,
reset_MUX_pong_h_l210_c5_20e4_iftrue,
reset_MUX_pong_h_l210_c5_20e4_iffalse,
reset_MUX_pong_h_l210_c5_20e4_return_output);

-- ball_in_r_goal_pong_h_l224_c11_b725 : 0 clocks latency
ball_in_r_goal_pong_h_l224_c11_b725 : entity work.ball_in_r_goal_0CLK_55761013 port map (
ball_in_r_goal_pong_h_l224_c11_b725_ball,
ball_in_r_goal_pong_h_l224_c11_b725_return_output);

-- next_state_ball_vel_MUX_pong_h_l224_c8_d2cb : 0 clocks latency
next_state_ball_vel_MUX_pong_h_l224_c8_d2cb : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_cond,
next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_iftrue,
next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_iffalse,
next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_return_output);

-- next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb : 0 clocks latency
next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_cond,
next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_iftrue,
next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_iffalse,
next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_cond,
next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_return_output);

-- reset_MUX_pong_h_l224_c8_d2cb : 0 clocks latency
reset_MUX_pong_h_l224_c8_d2cb : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
reset_MUX_pong_h_l224_c8_d2cb_cond,
reset_MUX_pong_h_l224_c8_d2cb_iftrue,
reset_MUX_pong_h_l224_c8_d2cb_iffalse,
reset_MUX_pong_h_l224_c8_d2cb_return_output);

-- rects_collide_pong_h_l226_c8_1e3b : 0 clocks latency
rects_collide_pong_h_l226_c8_1e3b : entity work.rects_collide_0CLK_2e4d93a1 port map (
rects_collide_pong_h_l226_c8_1e3b_r0,
rects_collide_pong_h_l226_c8_1e3b_r1,
rects_collide_pong_h_l226_c8_1e3b_return_output);

-- next_state_ball_vel_MUX_pong_h_l226_c5_6b16 : 0 clocks latency
next_state_ball_vel_MUX_pong_h_l226_c5_6b16 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_vel_MUX_pong_h_l226_c5_6b16_cond,
next_state_ball_vel_MUX_pong_h_l226_c5_6b16_iftrue,
next_state_ball_vel_MUX_pong_h_l226_c5_6b16_iffalse,
next_state_ball_vel_MUX_pong_h_l226_c5_6b16_return_output);

-- next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16 : 0 clocks latency
next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_cond,
next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_iftrue,
next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_iffalse,
next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16 : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_cond,
next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_return_output);

-- reset_MUX_pong_h_l226_c5_6b16 : 0 clocks latency
reset_MUX_pong_h_l226_c5_6b16 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
reset_MUX_pong_h_l226_c5_6b16_cond,
reset_MUX_pong_h_l226_c5_6b16_iftrue,
reset_MUX_pong_h_l226_c5_6b16_iffalse,
reset_MUX_pong_h_l226_c5_6b16_return_output);

-- move_paddle_pong_h_l243_c33_e0dc : 0 clocks latency
move_paddle_pong_h_l243_c33_e0dc : entity work.move_paddle_0CLK_5633c838 port map (
move_paddle_pong_h_l243_c33_e0dc_pos,
move_paddle_pong_h_l243_c33_e0dc_paddle_up,
move_paddle_pong_h_l243_c33_e0dc_paddle_down,
move_paddle_pong_h_l243_c33_e0dc_return_output);

-- move_paddle_pong_h_l248_c33_9e34 : 0 clocks latency
move_paddle_pong_h_l248_c33_9e34 : entity work.move_paddle_0CLK_5633c838 port map (
move_paddle_pong_h_l248_c33_9e34_pos,
move_paddle_pong_h_l248_c33_9e34_paddle_up,
move_paddle_pong_h_l248_c33_9e34_paddle_down,
move_paddle_pong_h_l248_c33_9e34_return_output);

-- next_state_MUX_pong_h_l254_c3_db11 : 0 clocks latency
next_state_MUX_pong_h_l254_c3_db11 : entity work.MUX_uint1_t_game_state_t_game_state_t_0CLK_de264c78 port map (
next_state_MUX_pong_h_l254_c3_db11_cond,
next_state_MUX_pong_h_l254_c3_db11_iftrue,
next_state_MUX_pong_h_l254_c3_db11_iffalse,
next_state_MUX_pong_h_l254_c3_db11_return_output);

-- reset_state_pong_h_l256_c18_b819 : 0 clocks latency
reset_state_pong_h_l256_c18_b819 : entity work.reset_state_0CLK_b45f1687 port map (
reset_state_pong_h_l256_c18_b819_return_output);

-- ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072 : 0 clocks latency
ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072 : entity work.ball_paddle_inc_vel_0CLK_d1a5eb1c port map (
ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072_vel,
ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 reset,
 state,
 user_input,
 -- All submodule outputs
 rect_move_pong_h_l190_c21_f01e_return_output,
 rect_move_pong_h_l191_c24_65c4_return_output,
 rect_move_pong_h_l192_c24_7967_return_output,
 ball_hit_roof_pong_h_l196_c6_2857_return_output,
 next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_return_output,
 ball_hit_floor_pong_h_l201_c11_6fc1_return_output,
 next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_return_output,
 ball_in_l_goal_pong_h_l208_c6_ff09_return_output,
 next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_return_output,
 next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_return_output,
 reset_MUX_pong_h_l208_c3_5c7d_return_output,
 rects_collide_pong_h_l210_c8_6998_return_output,
 next_state_ball_vel_MUX_pong_h_l210_c5_20e4_return_output,
 next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_return_output,
 reset_MUX_pong_h_l210_c5_20e4_return_output,
 ball_in_r_goal_pong_h_l224_c11_b725_return_output,
 next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_return_output,
 next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_return_output,
 reset_MUX_pong_h_l224_c8_d2cb_return_output,
 rects_collide_pong_h_l226_c8_1e3b_return_output,
 next_state_ball_vel_MUX_pong_h_l226_c5_6b16_return_output,
 next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_return_output,
 reset_MUX_pong_h_l226_c5_6b16_return_output,
 move_paddle_pong_h_l243_c33_e0dc_return_output,
 move_paddle_pong_h_l248_c33_9e34_return_output,
 next_state_MUX_pong_h_l254_c3_db11_return_output,
 reset_state_pong_h_l256_c18_b819_return_output,
 ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : game_state_t;
 variable VAR_reset : unsigned(0 downto 0);
 variable VAR_state : game_state_t;
 variable VAR_user_input : user_input_t;
 variable VAR_next_state : game_state_t;
 variable VAR_rect_move_pong_h_l190_c21_f01e_state : rect_animated_t;
 variable VAR_rect_move_pong_h_l190_c21_f01e_return_output : rect_animated_t;
 variable VAR_rect_move_pong_h_l191_c24_65c4_state : rect_animated_t;
 variable VAR_CONST_REF_RD_rect_animated_t_game_state_t_lpaddle_d41d_pong_h_l191_c34_4aec_return_output : rect_animated_t;
 variable VAR_rect_move_pong_h_l191_c24_65c4_return_output : rect_animated_t;
 variable VAR_rect_move_pong_h_l192_c24_7967_state : rect_animated_t;
 variable VAR_CONST_REF_RD_rect_animated_t_game_state_t_rpaddle_d41d_pong_h_l192_c34_20eb_return_output : rect_animated_t;
 variable VAR_rect_move_pong_h_l192_c24_7967_return_output : rect_animated_t;
 variable VAR_ball_hit_roof_pong_h_l196_c6_2857_ball : rect_animated_t;
 variable VAR_ball_hit_roof_pong_h_l196_c6_2857_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_cond : unsigned(0 downto 0);
 variable VAR_ball_hit_floor_pong_h_l201_c11_6fc1_ball : rect_animated_t;
 variable VAR_ball_hit_floor_pong_h_l201_c11_6fc1_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0_pong_h_l201_c8_1bbd_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_FALSE_INPUT_MUX_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0_pong_h_l201_c8_1bbd_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_cond : unsigned(0 downto 0);
 variable VAR_ball_in_l_goal_pong_h_l208_c6_ff09_ball : rect_animated_t;
 variable VAR_ball_in_l_goal_pong_h_l208_c6_ff09_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_iftrue : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l210_c5_20e4_return_output : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_iffalse : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_return_output : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_return_output : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_cond : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l208_c3_5c7d_iftrue : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l210_c5_20e4_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l208_c3_5c7d_iffalse : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l224_c8_d2cb_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l208_c3_5c7d_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l208_c3_5c7d_cond : unsigned(0 downto 0);
 variable VAR_rects_collide_pong_h_l210_c8_6998_r0 : rect_t;
 variable VAR_rects_collide_pong_h_l210_c8_6998_r1 : rect_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l210_c39_9009_return_output : rect_t;
 variable VAR_rects_collide_pong_h_l210_c8_6998_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_MUX_pong_h_l210_c5_20e4_iftrue : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l210_c5_20e4_iffalse : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l210_c5_20e4_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_cond : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l210_c5_20e4_iftrue : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l210_c5_20e4_iffalse : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l210_c5_20e4_cond : unsigned(0 downto 0);
 variable VAR_ball_in_r_goal_pong_h_l224_c11_b725_ball : rect_animated_t;
 variable VAR_ball_in_r_goal_pong_h_l224_c11_b725_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_iftrue : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l226_c5_6b16_return_output : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_iffalse : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_cond : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l224_c8_d2cb_iftrue : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l226_c5_6b16_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l224_c8_d2cb_iffalse : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l224_c8_d2cb_cond : unsigned(0 downto 0);
 variable VAR_rects_collide_pong_h_l226_c8_1e3b_r0 : rect_t;
 variable VAR_rects_collide_pong_h_l226_c8_1e3b_r1 : rect_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l226_c39_997e_return_output : rect_t;
 variable VAR_rects_collide_pong_h_l226_c8_1e3b_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_MUX_pong_h_l226_c5_6b16_iftrue : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l226_c5_6b16_iffalse : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l226_c5_6b16_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_cond : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l226_c5_6b16_iftrue : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l226_c5_6b16_iffalse : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l226_c5_6b16_cond : unsigned(0 downto 0);
 variable VAR_move_paddle_pong_h_l243_c33_e0dc_pos : vga_pos_t;
 variable VAR_move_paddle_pong_h_l243_c33_e0dc_paddle_up : unsigned(0 downto 0);
 variable VAR_move_paddle_pong_h_l243_c33_e0dc_paddle_down : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_vga_pos_t_game_state_t_rpaddle_rect_pos_d41d_pong_h_l244_c35_c964_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_h_l245_c35_97a8_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_h_l246_c35_a7ed_return_output : unsigned(0 downto 0);
 variable VAR_move_paddle_pong_h_l243_c33_e0dc_return_output : vga_pos_t;
 variable VAR_move_paddle_pong_h_l248_c33_9e34_pos : vga_pos_t;
 variable VAR_move_paddle_pong_h_l248_c33_9e34_paddle_up : unsigned(0 downto 0);
 variable VAR_move_paddle_pong_h_l248_c33_9e34_paddle_down : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_vga_pos_t_game_state_t_lpaddle_rect_pos_d41d_pong_h_l249_c35_d80a_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_up_d41d_pong_h_l250_c35_cb4e_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d_pong_h_l251_c35_daf3_return_output : unsigned(0 downto 0);
 variable VAR_move_paddle_pong_h_l248_c33_9e34_return_output : vga_pos_t;
 variable VAR_next_state_MUX_pong_h_l254_c3_db11_iftrue : game_state_t;
 variable VAR_next_state_MUX_pong_h_l254_c3_db11_iffalse : game_state_t;
 variable VAR_next_state_FALSE_INPUT_MUX_CONST_REF_RD_game_state_t_game_state_t_348e_pong_h_l254_c3_db11_return_output : game_state_t;
 variable VAR_next_state_MUX_pong_h_l254_c3_db11_return_output : game_state_t;
 variable VAR_next_state_MUX_pong_h_l254_c3_db11_cond : unsigned(0 downto 0);
 variable VAR_reset_state_pong_h_l256_c18_b819_return_output : game_state_t;
 variable VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l190_l208_l201_l196_l224_DUPLICATE_4e25_return_output : rect_animated_t;
 variable VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l203_l213_l198_l229_DUPLICATE_6f3f_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l226_l210_DUPLICATE_a9e2_return_output : rect_t;
 variable VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_d41d_pong_h_l215_l231_DUPLICATE_05e3_return_output : vga_pos_t;
 variable VAR_ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072_vel : vga_pos_t;
 variable VAR_ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l226_l224_l210_DUPLICATE_f1fd_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l224_l210_l226_DUPLICATE_ea9d_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_reset_MUX_pong_h_l210_c5_20e4_iffalse := to_unsigned(1, 1);
     VAR_reset_MUX_pong_h_l226_c5_6b16_iffalse := to_unsigned(1, 1);
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_iftrue := to_unsigned(0, 1);
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_iftrue := to_unsigned(1, 1);
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_iftrue := to_unsigned(1, 1);
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_iftrue := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_reset := reset;
     VAR_state := state;
     VAR_user_input := user_input;

     -- Submodule level 0
     VAR_reset_MUX_pong_h_l210_c5_20e4_iftrue := VAR_reset;
     VAR_reset_MUX_pong_h_l224_c8_d2cb_iffalse := VAR_reset;
     VAR_reset_MUX_pong_h_l226_c5_6b16_iftrue := VAR_reset;
     -- CONST_REF_RD_rect_animated_t_game_state_t_lpaddle_d41d[pong_h_l191_c34_4aec] LATENCY=0
     VAR_CONST_REF_RD_rect_animated_t_game_state_t_lpaddle_d41d_pong_h_l191_c34_4aec_return_output := VAR_state.lpaddle;

     -- CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l203_l213_l198_l229_DUPLICATE_6f3f LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l203_l213_l198_l229_DUPLICATE_6f3f_return_output := VAR_state.ball.rect.pos;

     -- CONST_REF_RD_rect_animated_t_game_state_t_rpaddle_d41d[pong_h_l192_c34_20eb] LATENCY=0
     VAR_CONST_REF_RD_rect_animated_t_game_state_t_rpaddle_d41d_pong_h_l192_c34_20eb_return_output := VAR_state.rpaddle;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_l_up_d41d[pong_h_l250_c35_cb4e] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_up_d41d_pong_h_l250_c35_cb4e_return_output := VAR_user_input.paddle_l_up;

     -- CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l226_l210_DUPLICATE_a9e2 LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l226_l210_DUPLICATE_a9e2_return_output := VAR_state.ball.rect;

     -- CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l190_l208_l201_l196_l224_DUPLICATE_4e25 LATENCY=0
     VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l190_l208_l201_l196_l224_DUPLICATE_4e25_return_output := VAR_state.ball;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d[pong_h_l251_c35_daf3] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d_pong_h_l251_c35_daf3_return_output := VAR_user_input.paddle_l_down;

     -- CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d[pong_h_l210_c39_9009] LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l210_c39_9009_return_output := VAR_state.lpaddle.rect;

     -- CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d[pong_h_l226_c39_997e] LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l226_c39_997e_return_output := VAR_state.rpaddle.rect;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d[pong_h_l246_c35_a7ed] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_h_l246_c35_a7ed_return_output := VAR_user_input.paddle_r_down;

     -- reset_state[pong_h_l256_c18_b819] LATENCY=0
     -- Inputs
     -- Outputs
     VAR_reset_state_pong_h_l256_c18_b819_return_output := reset_state_pong_h_l256_c18_b819_return_output;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d[pong_h_l245_c35_97a8] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_h_l245_c35_97a8_return_output := VAR_user_input.paddle_r_up;

     -- CONST_REF_RD_vga_pos_t_game_state_t_lpaddle_rect_pos_d41d[pong_h_l249_c35_d80a] LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_game_state_t_lpaddle_rect_pos_d41d_pong_h_l249_c35_d80a_return_output := VAR_state.lpaddle.rect.pos;

     -- CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_d41d_pong_h_l215_l231_DUPLICATE_05e3 LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_d41d_pong_h_l215_l231_DUPLICATE_05e3_return_output := VAR_state.ball.vel;

     -- CONST_REF_RD_vga_pos_t_game_state_t_rpaddle_rect_pos_d41d[pong_h_l244_c35_c964] LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_game_state_t_rpaddle_rect_pos_d41d_pong_h_l244_c35_c964_return_output := VAR_state.rpaddle.rect.pos;

     -- Submodule level 1
     VAR_ball_hit_floor_pong_h_l201_c11_6fc1_ball := VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l190_l208_l201_l196_l224_DUPLICATE_4e25_return_output;
     VAR_ball_hit_roof_pong_h_l196_c6_2857_ball := VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l190_l208_l201_l196_l224_DUPLICATE_4e25_return_output;
     VAR_ball_in_l_goal_pong_h_l208_c6_ff09_ball := VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l190_l208_l201_l196_l224_DUPLICATE_4e25_return_output;
     VAR_ball_in_r_goal_pong_h_l224_c11_b725_ball := VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l190_l208_l201_l196_l224_DUPLICATE_4e25_return_output;
     VAR_rect_move_pong_h_l190_c21_f01e_state := VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l190_l208_l201_l196_l224_DUPLICATE_4e25_return_output;
     VAR_rect_move_pong_h_l191_c24_65c4_state := VAR_CONST_REF_RD_rect_animated_t_game_state_t_lpaddle_d41d_pong_h_l191_c34_4aec_return_output;
     VAR_rect_move_pong_h_l192_c24_7967_state := VAR_CONST_REF_RD_rect_animated_t_game_state_t_rpaddle_d41d_pong_h_l192_c34_20eb_return_output;
     VAR_rects_collide_pong_h_l210_c8_6998_r0 := VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l226_l210_DUPLICATE_a9e2_return_output;
     VAR_rects_collide_pong_h_l226_c8_1e3b_r0 := VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l226_l210_DUPLICATE_a9e2_return_output;
     VAR_rects_collide_pong_h_l210_c8_6998_r1 := VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l210_c39_9009_return_output;
     VAR_rects_collide_pong_h_l226_c8_1e3b_r1 := VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l226_c39_997e_return_output;
     VAR_move_paddle_pong_h_l248_c33_9e34_paddle_down := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d_pong_h_l251_c35_daf3_return_output;
     VAR_move_paddle_pong_h_l248_c33_9e34_paddle_up := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_up_d41d_pong_h_l250_c35_cb4e_return_output;
     VAR_move_paddle_pong_h_l243_c33_e0dc_paddle_down := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_h_l246_c35_a7ed_return_output;
     VAR_move_paddle_pong_h_l243_c33_e0dc_paddle_up := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_h_l245_c35_97a8_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_iftrue := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l203_l213_l198_l229_DUPLICATE_6f3f_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_iftrue := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l203_l213_l198_l229_DUPLICATE_6f3f_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_iftrue := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l203_l213_l198_l229_DUPLICATE_6f3f_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_iftrue := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l203_l213_l198_l229_DUPLICATE_6f3f_return_output;
     VAR_ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072_vel := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_d41d_pong_h_l215_l231_DUPLICATE_05e3_return_output;
     VAR_move_paddle_pong_h_l248_c33_9e34_pos := VAR_CONST_REF_RD_vga_pos_t_game_state_t_lpaddle_rect_pos_d41d_pong_h_l249_c35_d80a_return_output;
     VAR_move_paddle_pong_h_l243_c33_e0dc_pos := VAR_CONST_REF_RD_vga_pos_t_game_state_t_rpaddle_rect_pos_d41d_pong_h_l244_c35_c964_return_output;
     VAR_next_state_MUX_pong_h_l254_c3_db11_iftrue := VAR_reset_state_pong_h_l256_c18_b819_return_output;
     -- ball_in_l_goal[pong_h_l208_c6_ff09] LATENCY=0
     -- Inputs
     ball_in_l_goal_pong_h_l208_c6_ff09_ball <= VAR_ball_in_l_goal_pong_h_l208_c6_ff09_ball;
     -- Outputs
     VAR_ball_in_l_goal_pong_h_l208_c6_ff09_return_output := ball_in_l_goal_pong_h_l208_c6_ff09_return_output;

     -- rects_collide[pong_h_l226_c8_1e3b] LATENCY=0
     -- Inputs
     rects_collide_pong_h_l226_c8_1e3b_r0 <= VAR_rects_collide_pong_h_l226_c8_1e3b_r0;
     rects_collide_pong_h_l226_c8_1e3b_r1 <= VAR_rects_collide_pong_h_l226_c8_1e3b_r1;
     -- Outputs
     VAR_rects_collide_pong_h_l226_c8_1e3b_return_output := rects_collide_pong_h_l226_c8_1e3b_return_output;

     -- rect_move[pong_h_l191_c24_65c4] LATENCY=0
     -- Inputs
     rect_move_pong_h_l191_c24_65c4_state <= VAR_rect_move_pong_h_l191_c24_65c4_state;
     -- Outputs
     VAR_rect_move_pong_h_l191_c24_65c4_return_output := rect_move_pong_h_l191_c24_65c4_return_output;

     -- rect_move[pong_h_l192_c24_7967] LATENCY=0
     -- Inputs
     rect_move_pong_h_l192_c24_7967_state <= VAR_rect_move_pong_h_l192_c24_7967_state;
     -- Outputs
     VAR_rect_move_pong_h_l192_c24_7967_return_output := rect_move_pong_h_l192_c24_7967_return_output;

     -- ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072 LATENCY=0
     -- Inputs
     ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072_vel <= VAR_ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072_vel;
     -- Outputs
     VAR_ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072_return_output := ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072_return_output;

     -- move_paddle[pong_h_l248_c33_9e34] LATENCY=0
     -- Inputs
     move_paddle_pong_h_l248_c33_9e34_pos <= VAR_move_paddle_pong_h_l248_c33_9e34_pos;
     move_paddle_pong_h_l248_c33_9e34_paddle_up <= VAR_move_paddle_pong_h_l248_c33_9e34_paddle_up;
     move_paddle_pong_h_l248_c33_9e34_paddle_down <= VAR_move_paddle_pong_h_l248_c33_9e34_paddle_down;
     -- Outputs
     VAR_move_paddle_pong_h_l248_c33_9e34_return_output := move_paddle_pong_h_l248_c33_9e34_return_output;

     -- rects_collide[pong_h_l210_c8_6998] LATENCY=0
     -- Inputs
     rects_collide_pong_h_l210_c8_6998_r0 <= VAR_rects_collide_pong_h_l210_c8_6998_r0;
     rects_collide_pong_h_l210_c8_6998_r1 <= VAR_rects_collide_pong_h_l210_c8_6998_r1;
     -- Outputs
     VAR_rects_collide_pong_h_l210_c8_6998_return_output := rects_collide_pong_h_l210_c8_6998_return_output;

     -- ball_hit_floor[pong_h_l201_c11_6fc1] LATENCY=0
     -- Inputs
     ball_hit_floor_pong_h_l201_c11_6fc1_ball <= VAR_ball_hit_floor_pong_h_l201_c11_6fc1_ball;
     -- Outputs
     VAR_ball_hit_floor_pong_h_l201_c11_6fc1_return_output := ball_hit_floor_pong_h_l201_c11_6fc1_return_output;

     -- ball_hit_roof[pong_h_l196_c6_2857] LATENCY=0
     -- Inputs
     ball_hit_roof_pong_h_l196_c6_2857_ball <= VAR_ball_hit_roof_pong_h_l196_c6_2857_ball;
     -- Outputs
     VAR_ball_hit_roof_pong_h_l196_c6_2857_return_output := ball_hit_roof_pong_h_l196_c6_2857_return_output;

     -- rect_move[pong_h_l190_c21_f01e] LATENCY=0
     -- Inputs
     rect_move_pong_h_l190_c21_f01e_state <= VAR_rect_move_pong_h_l190_c21_f01e_state;
     -- Outputs
     VAR_rect_move_pong_h_l190_c21_f01e_return_output := rect_move_pong_h_l190_c21_f01e_return_output;

     -- ball_in_r_goal[pong_h_l224_c11_b725] LATENCY=0
     -- Inputs
     ball_in_r_goal_pong_h_l224_c11_b725_ball <= VAR_ball_in_r_goal_pong_h_l224_c11_b725_ball;
     -- Outputs
     VAR_ball_in_r_goal_pong_h_l224_c11_b725_return_output := ball_in_r_goal_pong_h_l224_c11_b725_return_output;

     -- move_paddle[pong_h_l243_c33_e0dc] LATENCY=0
     -- Inputs
     move_paddle_pong_h_l243_c33_e0dc_pos <= VAR_move_paddle_pong_h_l243_c33_e0dc_pos;
     move_paddle_pong_h_l243_c33_e0dc_paddle_up <= VAR_move_paddle_pong_h_l243_c33_e0dc_paddle_up;
     move_paddle_pong_h_l243_c33_e0dc_paddle_down <= VAR_move_paddle_pong_h_l243_c33_e0dc_paddle_down;
     -- Outputs
     VAR_move_paddle_pong_h_l243_c33_e0dc_return_output := move_paddle_pong_h_l243_c33_e0dc_return_output;

     -- Submodule level 2
     VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_cond := VAR_ball_hit_floor_pong_h_l201_c11_6fc1_return_output;
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_cond := VAR_ball_hit_floor_pong_h_l201_c11_6fc1_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_cond := VAR_ball_hit_roof_pong_h_l196_c6_2857_return_output;
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_cond := VAR_ball_hit_roof_pong_h_l196_c6_2857_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_cond := VAR_ball_in_l_goal_pong_h_l208_c6_ff09_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_cond := VAR_ball_in_l_goal_pong_h_l208_c6_ff09_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_cond := VAR_ball_in_l_goal_pong_h_l208_c6_ff09_return_output;
     VAR_reset_MUX_pong_h_l208_c3_5c7d_cond := VAR_ball_in_l_goal_pong_h_l208_c6_ff09_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_cond := VAR_ball_in_r_goal_pong_h_l224_c11_b725_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_cond := VAR_ball_in_r_goal_pong_h_l224_c11_b725_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_cond := VAR_ball_in_r_goal_pong_h_l224_c11_b725_return_output;
     VAR_reset_MUX_pong_h_l224_c8_d2cb_cond := VAR_ball_in_r_goal_pong_h_l224_c11_b725_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l210_c5_20e4_iftrue := VAR_ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l226_c5_6b16_iftrue := VAR_ball_paddle_inc_vel_pong_h_l231_l215_DUPLICATE_3072_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_cond := VAR_rects_collide_pong_h_l210_c8_6998_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l210_c5_20e4_cond := VAR_rects_collide_pong_h_l210_c8_6998_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_cond := VAR_rects_collide_pong_h_l210_c8_6998_return_output;
     VAR_reset_MUX_pong_h_l210_c5_20e4_cond := VAR_rects_collide_pong_h_l210_c8_6998_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_cond := VAR_rects_collide_pong_h_l226_c8_1e3b_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l226_c5_6b16_cond := VAR_rects_collide_pong_h_l226_c8_1e3b_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_cond := VAR_rects_collide_pong_h_l226_c8_1e3b_return_output;
     VAR_reset_MUX_pong_h_l226_c5_6b16_cond := VAR_rects_collide_pong_h_l226_c8_1e3b_return_output;
     -- next_state_ball_vel_y_dir_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0[pong_h_l201_c8_1bbd] LATENCY=0
     VAR_next_state_ball_vel_y_dir_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0_pong_h_l201_c8_1bbd_return_output := CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0(
     VAR_rect_move_pong_h_l190_c21_f01e_return_output);

     -- reset_MUX[pong_h_l210_c5_20e4] LATENCY=0
     -- Inputs
     reset_MUX_pong_h_l210_c5_20e4_cond <= VAR_reset_MUX_pong_h_l210_c5_20e4_cond;
     reset_MUX_pong_h_l210_c5_20e4_iftrue <= VAR_reset_MUX_pong_h_l210_c5_20e4_iftrue;
     reset_MUX_pong_h_l210_c5_20e4_iffalse <= VAR_reset_MUX_pong_h_l210_c5_20e4_iffalse;
     -- Outputs
     VAR_reset_MUX_pong_h_l210_c5_20e4_return_output := reset_MUX_pong_h_l210_c5_20e4_return_output;

     -- CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l226_l224_l210_DUPLICATE_f1fd LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l226_l224_l210_DUPLICATE_f1fd_return_output := CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0(
     VAR_rect_move_pong_h_l190_c21_f01e_return_output);

     -- CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l224_l210_l226_DUPLICATE_ea9d LATENCY=0
     VAR_CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l224_l210_l226_DUPLICATE_ea9d_return_output := CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0(
     VAR_rect_move_pong_h_l190_c21_f01e_return_output);

     -- next_state_ball_rect_pos_FALSE_INPUT_MUX_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0[pong_h_l201_c8_1bbd] LATENCY=0
     VAR_next_state_ball_rect_pos_FALSE_INPUT_MUX_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0_pong_h_l201_c8_1bbd_return_output := CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0(
     VAR_rect_move_pong_h_l190_c21_f01e_return_output);

     -- reset_MUX[pong_h_l226_c5_6b16] LATENCY=0
     -- Inputs
     reset_MUX_pong_h_l226_c5_6b16_cond <= VAR_reset_MUX_pong_h_l226_c5_6b16_cond;
     reset_MUX_pong_h_l226_c5_6b16_iftrue <= VAR_reset_MUX_pong_h_l226_c5_6b16_iftrue;
     reset_MUX_pong_h_l226_c5_6b16_iffalse <= VAR_reset_MUX_pong_h_l226_c5_6b16_iffalse;
     -- Outputs
     VAR_reset_MUX_pong_h_l226_c5_6b16_return_output := reset_MUX_pong_h_l226_c5_6b16_return_output;

     -- Submodule level 3
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_iffalse := VAR_CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l224_l210_l226_DUPLICATE_ea9d_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_iffalse := VAR_CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l224_l210_l226_DUPLICATE_ea9d_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_iffalse := VAR_CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l224_l210_l226_DUPLICATE_ea9d_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l210_c5_20e4_iffalse := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l226_l224_l210_DUPLICATE_f1fd_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_iffalse := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l226_l224_l210_DUPLICATE_f1fd_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l226_c5_6b16_iffalse := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l226_l224_l210_DUPLICATE_f1fd_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_iffalse := VAR_next_state_ball_rect_pos_FALSE_INPUT_MUX_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0_pong_h_l201_c8_1bbd_return_output;
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_iffalse := VAR_next_state_ball_vel_y_dir_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0_pong_h_l201_c8_1bbd_return_output;
     VAR_reset_MUX_pong_h_l208_c3_5c7d_iftrue := VAR_reset_MUX_pong_h_l210_c5_20e4_return_output;
     VAR_reset_MUX_pong_h_l224_c8_d2cb_iftrue := VAR_reset_MUX_pong_h_l226_c5_6b16_return_output;
     -- next_state_ball_vel_x_dir_MUX[pong_h_l226_c5_6b16] LATENCY=0
     -- Inputs
     next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_cond <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_cond;
     next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_iftrue <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_iftrue;
     next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_iffalse <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_return_output := next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_return_output;

     -- next_state_ball_vel_y_dir_MUX[pong_h_l201_c8_1bbd] LATENCY=0
     -- Inputs
     next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_cond <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_cond;
     next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_iftrue <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_iftrue;
     next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_iffalse <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_return_output := next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_return_output;

     -- next_state_ball_vel_x_dir_MUX[pong_h_l210_c5_20e4] LATENCY=0
     -- Inputs
     next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_cond <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_cond;
     next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_iftrue <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_iftrue;
     next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_iffalse <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_return_output := next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_return_output;

     -- next_state_ball_vel_MUX[pong_h_l210_c5_20e4] LATENCY=0
     -- Inputs
     next_state_ball_vel_MUX_pong_h_l210_c5_20e4_cond <= VAR_next_state_ball_vel_MUX_pong_h_l210_c5_20e4_cond;
     next_state_ball_vel_MUX_pong_h_l210_c5_20e4_iftrue <= VAR_next_state_ball_vel_MUX_pong_h_l210_c5_20e4_iftrue;
     next_state_ball_vel_MUX_pong_h_l210_c5_20e4_iffalse <= VAR_next_state_ball_vel_MUX_pong_h_l210_c5_20e4_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_MUX_pong_h_l210_c5_20e4_return_output := next_state_ball_vel_MUX_pong_h_l210_c5_20e4_return_output;

     -- reset_MUX[pong_h_l224_c8_d2cb] LATENCY=0
     -- Inputs
     reset_MUX_pong_h_l224_c8_d2cb_cond <= VAR_reset_MUX_pong_h_l224_c8_d2cb_cond;
     reset_MUX_pong_h_l224_c8_d2cb_iftrue <= VAR_reset_MUX_pong_h_l224_c8_d2cb_iftrue;
     reset_MUX_pong_h_l224_c8_d2cb_iffalse <= VAR_reset_MUX_pong_h_l224_c8_d2cb_iffalse;
     -- Outputs
     VAR_reset_MUX_pong_h_l224_c8_d2cb_return_output := reset_MUX_pong_h_l224_c8_d2cb_return_output;

     -- next_state_ball_vel_MUX[pong_h_l226_c5_6b16] LATENCY=0
     -- Inputs
     next_state_ball_vel_MUX_pong_h_l226_c5_6b16_cond <= VAR_next_state_ball_vel_MUX_pong_h_l226_c5_6b16_cond;
     next_state_ball_vel_MUX_pong_h_l226_c5_6b16_iftrue <= VAR_next_state_ball_vel_MUX_pong_h_l226_c5_6b16_iftrue;
     next_state_ball_vel_MUX_pong_h_l226_c5_6b16_iffalse <= VAR_next_state_ball_vel_MUX_pong_h_l226_c5_6b16_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_MUX_pong_h_l226_c5_6b16_return_output := next_state_ball_vel_MUX_pong_h_l226_c5_6b16_return_output;

     -- next_state_ball_rect_pos_MUX[pong_h_l201_c8_1bbd] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_cond;
     next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_return_output := next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_return_output;

     -- Submodule level 4
     VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_iffalse := VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_1bbd_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_iftrue := VAR_next_state_ball_vel_MUX_pong_h_l210_c5_20e4_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_iftrue := VAR_next_state_ball_vel_MUX_pong_h_l226_c5_6b16_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_iftrue := VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_20e4_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_iftrue := VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_6b16_return_output;
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_iffalse := VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_1bbd_return_output;
     VAR_reset_MUX_pong_h_l208_c3_5c7d_iffalse := VAR_reset_MUX_pong_h_l224_c8_d2cb_return_output;
     -- next_state_ball_vel_y_dir_MUX[pong_h_l196_c3_9d0a] LATENCY=0
     -- Inputs
     next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_cond <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_cond;
     next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_iftrue <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_iftrue;
     next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_iffalse <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_return_output := next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_return_output;

     -- next_state_ball_vel_MUX[pong_h_l224_c8_d2cb] LATENCY=0
     -- Inputs
     next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_cond <= VAR_next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_cond;
     next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_iftrue <= VAR_next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_iftrue;
     next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_iffalse <= VAR_next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_return_output := next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_return_output;

     -- next_state_ball_rect_pos_MUX[pong_h_l196_c3_9d0a] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_cond;
     next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_return_output := next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_return_output;

     -- reset_MUX[pong_h_l208_c3_5c7d] LATENCY=0
     -- Inputs
     reset_MUX_pong_h_l208_c3_5c7d_cond <= VAR_reset_MUX_pong_h_l208_c3_5c7d_cond;
     reset_MUX_pong_h_l208_c3_5c7d_iftrue <= VAR_reset_MUX_pong_h_l208_c3_5c7d_iftrue;
     reset_MUX_pong_h_l208_c3_5c7d_iffalse <= VAR_reset_MUX_pong_h_l208_c3_5c7d_iffalse;
     -- Outputs
     VAR_reset_MUX_pong_h_l208_c3_5c7d_return_output := reset_MUX_pong_h_l208_c3_5c7d_return_output;

     -- next_state_ball_vel_x_dir_MUX[pong_h_l224_c8_d2cb] LATENCY=0
     -- Inputs
     next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_cond <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_cond;
     next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_iftrue <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_iftrue;
     next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_iffalse <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_return_output := next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_return_output;

     -- Submodule level 5
     VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_iffalse := VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_iffalse := VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_iffalse := VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_9d0a_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_iffalse := VAR_next_state_ball_vel_MUX_pong_h_l224_c8_d2cb_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_iffalse := VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_d2cb_return_output;
     VAR_next_state_MUX_pong_h_l254_c3_db11_cond := VAR_reset_MUX_pong_h_l208_c3_5c7d_return_output;
     -- next_state_ball_vel_MUX[pong_h_l208_c3_5c7d] LATENCY=0
     -- Inputs
     next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_cond <= VAR_next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_cond;
     next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_iftrue <= VAR_next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_iftrue;
     next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_iffalse <= VAR_next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_return_output := next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_return_output;

     -- next_state_ball_rect_pos_MUX[pong_h_l226_c5_6b16] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_cond;
     next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_return_output := next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_return_output;

     -- next_state_ball_vel_x_dir_MUX[pong_h_l208_c3_5c7d] LATENCY=0
     -- Inputs
     next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_cond <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_cond;
     next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_iftrue <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_iftrue;
     next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_iffalse <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_return_output := next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_return_output;

     -- next_state_ball_rect_pos_MUX[pong_h_l210_c5_20e4] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_cond;
     next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_return_output := next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_return_output;

     -- Submodule level 6
     VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_iftrue := VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_20e4_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_iftrue := VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_6b16_return_output;
     -- next_state_ball_rect_pos_MUX[pong_h_l224_c8_d2cb] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_cond;
     next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_return_output := next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_return_output;

     -- Submodule level 7
     VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_iffalse := VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_d2cb_return_output;
     -- next_state_ball_rect_pos_MUX[pong_h_l208_c3_5c7d] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_cond;
     next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_return_output := next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_return_output;

     -- Submodule level 8
     -- next_state_FALSE_INPUT_MUX_CONST_REF_RD_game_state_t_game_state_t_348e[pong_h_l254_c3_db11] LATENCY=0
     VAR_next_state_FALSE_INPUT_MUX_CONST_REF_RD_game_state_t_game_state_t_348e_pong_h_l254_c3_db11_return_output := CONST_REF_RD_game_state_t_game_state_t_348e(
     VAR_rect_move_pong_h_l190_c21_f01e_return_output,
     VAR_rect_move_pong_h_l191_c24_65c4_return_output,
     VAR_rect_move_pong_h_l192_c24_7967_return_output,
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_9d0a_return_output,
     VAR_next_state_ball_vel_MUX_pong_h_l208_c3_5c7d_return_output,
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_5c7d_return_output,
     VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_5c7d_return_output,
     VAR_move_paddle_pong_h_l243_c33_e0dc_return_output,
     VAR_move_paddle_pong_h_l248_c33_9e34_return_output);

     -- Submodule level 9
     VAR_next_state_MUX_pong_h_l254_c3_db11_iffalse := VAR_next_state_FALSE_INPUT_MUX_CONST_REF_RD_game_state_t_game_state_t_348e_pong_h_l254_c3_db11_return_output;
     -- next_state_MUX[pong_h_l254_c3_db11] LATENCY=0
     -- Inputs
     next_state_MUX_pong_h_l254_c3_db11_cond <= VAR_next_state_MUX_pong_h_l254_c3_db11_cond;
     next_state_MUX_pong_h_l254_c3_db11_iftrue <= VAR_next_state_MUX_pong_h_l254_c3_db11_iftrue;
     next_state_MUX_pong_h_l254_c3_db11_iffalse <= VAR_next_state_MUX_pong_h_l254_c3_db11_iffalse;
     -- Outputs
     VAR_next_state_MUX_pong_h_l254_c3_db11_return_output := next_state_MUX_pong_h_l254_c3_db11_return_output;

     -- Submodule level 10
     VAR_return_output := VAR_next_state_MUX_pong_h_l254_c3_db11_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
