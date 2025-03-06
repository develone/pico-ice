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
-- rect_move[pong_h_l190_c21_18a3]
signal rect_move_pong_h_l190_c21_18a3_state : rect_animated_t;
signal rect_move_pong_h_l190_c21_18a3_return_output : rect_animated_t;

-- rect_move[pong_h_l191_c24_2df6]
signal rect_move_pong_h_l191_c24_2df6_state : rect_animated_t;
signal rect_move_pong_h_l191_c24_2df6_return_output : rect_animated_t;

-- rect_move[pong_h_l192_c24_d7c5]
signal rect_move_pong_h_l192_c24_d7c5_state : rect_animated_t;
signal rect_move_pong_h_l192_c24_d7c5_return_output : rect_animated_t;

-- ball_hit_roof[pong_h_l196_c6_64ac]
signal ball_hit_roof_pong_h_l196_c6_64ac_ball : rect_animated_t;
signal ball_hit_roof_pong_h_l196_c6_64ac_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l196_c3_19f8]
signal next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_return_output : vga_pos_t;

-- next_state_ball_vel_y_dir_MUX[pong_h_l196_c3_19f8]
signal next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_cond : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_return_output : unsigned(0 downto 0);

-- ball_hit_floor[pong_h_l201_c11_7408]
signal ball_hit_floor_pong_h_l201_c11_7408_ball : rect_animated_t;
signal ball_hit_floor_pong_h_l201_c11_7408_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l201_c8_bf4b]
signal next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_return_output : vga_pos_t;

-- next_state_ball_vel_y_dir_MUX[pong_h_l201_c8_bf4b]
signal next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_cond : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_return_output : unsigned(0 downto 0);

-- ball_in_l_goal[pong_h_l208_c6_72e2]
signal ball_in_l_goal_pong_h_l208_c6_72e2_ball : rect_animated_t;
signal ball_in_l_goal_pong_h_l208_c6_72e2_return_output : unsigned(0 downto 0);

-- reset_MUX[pong_h_l208_c3_28c8]
signal reset_MUX_pong_h_l208_c3_28c8_cond : unsigned(0 downto 0);
signal reset_MUX_pong_h_l208_c3_28c8_iftrue : unsigned(0 downto 0);
signal reset_MUX_pong_h_l208_c3_28c8_iffalse : unsigned(0 downto 0);
signal reset_MUX_pong_h_l208_c3_28c8_return_output : unsigned(0 downto 0);

-- next_state_ball_vel_MUX[pong_h_l208_c3_28c8]
signal next_state_ball_vel_MUX_pong_h_l208_c3_28c8_cond : unsigned(0 downto 0);
signal next_state_ball_vel_MUX_pong_h_l208_c3_28c8_iftrue : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l208_c3_28c8_iffalse : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l208_c3_28c8_return_output : vga_pos_t;

-- next_state_ball_vel_x_dir_MUX[pong_h_l208_c3_28c8]
signal next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_cond : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l208_c3_28c8]
signal next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_return_output : vga_pos_t;

-- rects_collide[pong_h_l210_c8_ec53]
signal rects_collide_pong_h_l210_c8_ec53_r0 : rect_t;
signal rects_collide_pong_h_l210_c8_ec53_r1 : rect_t;
signal rects_collide_pong_h_l210_c8_ec53_return_output : unsigned(0 downto 0);

-- reset_MUX[pong_h_l210_c5_78fa]
signal reset_MUX_pong_h_l210_c5_78fa_cond : unsigned(0 downto 0);
signal reset_MUX_pong_h_l210_c5_78fa_iftrue : unsigned(0 downto 0);
signal reset_MUX_pong_h_l210_c5_78fa_iffalse : unsigned(0 downto 0);
signal reset_MUX_pong_h_l210_c5_78fa_return_output : unsigned(0 downto 0);

-- next_state_ball_vel_MUX[pong_h_l210_c5_78fa]
signal next_state_ball_vel_MUX_pong_h_l210_c5_78fa_cond : unsigned(0 downto 0);
signal next_state_ball_vel_MUX_pong_h_l210_c5_78fa_iftrue : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l210_c5_78fa_iffalse : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l210_c5_78fa_return_output : vga_pos_t;

-- next_state_ball_vel_x_dir_MUX[pong_h_l210_c5_78fa]
signal next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_cond : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l210_c5_78fa]
signal next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_return_output : vga_pos_t;

-- ball_in_r_goal[pong_h_l224_c11_486a]
signal ball_in_r_goal_pong_h_l224_c11_486a_ball : rect_animated_t;
signal ball_in_r_goal_pong_h_l224_c11_486a_return_output : unsigned(0 downto 0);

-- reset_MUX[pong_h_l224_c8_f74d]
signal reset_MUX_pong_h_l224_c8_f74d_cond : unsigned(0 downto 0);
signal reset_MUX_pong_h_l224_c8_f74d_iftrue : unsigned(0 downto 0);
signal reset_MUX_pong_h_l224_c8_f74d_iffalse : unsigned(0 downto 0);
signal reset_MUX_pong_h_l224_c8_f74d_return_output : unsigned(0 downto 0);

-- next_state_ball_vel_MUX[pong_h_l224_c8_f74d]
signal next_state_ball_vel_MUX_pong_h_l224_c8_f74d_cond : unsigned(0 downto 0);
signal next_state_ball_vel_MUX_pong_h_l224_c8_f74d_iftrue : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l224_c8_f74d_iffalse : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l224_c8_f74d_return_output : vga_pos_t;

-- next_state_ball_vel_x_dir_MUX[pong_h_l224_c8_f74d]
signal next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_cond : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l224_c8_f74d]
signal next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_return_output : vga_pos_t;

-- rects_collide[pong_h_l226_c8_fef0]
signal rects_collide_pong_h_l226_c8_fef0_r0 : rect_t;
signal rects_collide_pong_h_l226_c8_fef0_r1 : rect_t;
signal rects_collide_pong_h_l226_c8_fef0_return_output : unsigned(0 downto 0);

-- reset_MUX[pong_h_l226_c5_03d8]
signal reset_MUX_pong_h_l226_c5_03d8_cond : unsigned(0 downto 0);
signal reset_MUX_pong_h_l226_c5_03d8_iftrue : unsigned(0 downto 0);
signal reset_MUX_pong_h_l226_c5_03d8_iffalse : unsigned(0 downto 0);
signal reset_MUX_pong_h_l226_c5_03d8_return_output : unsigned(0 downto 0);

-- next_state_ball_vel_MUX[pong_h_l226_c5_03d8]
signal next_state_ball_vel_MUX_pong_h_l226_c5_03d8_cond : unsigned(0 downto 0);
signal next_state_ball_vel_MUX_pong_h_l226_c5_03d8_iftrue : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l226_c5_03d8_iffalse : vga_pos_t;
signal next_state_ball_vel_MUX_pong_h_l226_c5_03d8_return_output : vga_pos_t;

-- next_state_ball_vel_x_dir_MUX[pong_h_l226_c5_03d8]
signal next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_cond : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_iftrue : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_iffalse : unsigned(0 downto 0);
signal next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_return_output : unsigned(0 downto 0);

-- next_state_ball_rect_pos_MUX[pong_h_l226_c5_03d8]
signal next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_cond : unsigned(0 downto 0);
signal next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_iftrue : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_iffalse : vga_pos_t;
signal next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_return_output : vga_pos_t;

-- move_paddle[pong_h_l243_c33_f326]
signal move_paddle_pong_h_l243_c33_f326_pos : vga_pos_t;
signal move_paddle_pong_h_l243_c33_f326_paddle_up : unsigned(0 downto 0);
signal move_paddle_pong_h_l243_c33_f326_paddle_down : unsigned(0 downto 0);
signal move_paddle_pong_h_l243_c33_f326_return_output : vga_pos_t;

-- move_paddle[pong_h_l248_c33_dcf0]
signal move_paddle_pong_h_l248_c33_dcf0_pos : vga_pos_t;
signal move_paddle_pong_h_l248_c33_dcf0_paddle_up : unsigned(0 downto 0);
signal move_paddle_pong_h_l248_c33_dcf0_paddle_down : unsigned(0 downto 0);
signal move_paddle_pong_h_l248_c33_dcf0_return_output : vga_pos_t;

-- next_state_MUX[pong_h_l254_c3_548e]
signal next_state_MUX_pong_h_l254_c3_548e_cond : unsigned(0 downto 0);
signal next_state_MUX_pong_h_l254_c3_548e_iftrue : game_state_t;
signal next_state_MUX_pong_h_l254_c3_548e_iffalse : game_state_t;
signal next_state_MUX_pong_h_l254_c3_548e_return_output : game_state_t;

-- reset_state[pong_h_l256_c18_fb84]
signal reset_state_pong_h_l256_c18_fb84_return_output : game_state_t;

-- ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6
signal ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6_vel : vga_pos_t;
signal ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6_return_output : vga_pos_t;

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
-- rect_move_pong_h_l190_c21_18a3 : 0 clocks latency
rect_move_pong_h_l190_c21_18a3 : entity work.rect_move_0CLK_0810338e port map (
rect_move_pong_h_l190_c21_18a3_state,
rect_move_pong_h_l190_c21_18a3_return_output);

-- rect_move_pong_h_l191_c24_2df6 : 0 clocks latency
rect_move_pong_h_l191_c24_2df6 : entity work.rect_move_0CLK_0810338e port map (
rect_move_pong_h_l191_c24_2df6_state,
rect_move_pong_h_l191_c24_2df6_return_output);

-- rect_move_pong_h_l192_c24_d7c5 : 0 clocks latency
rect_move_pong_h_l192_c24_d7c5 : entity work.rect_move_0CLK_0810338e port map (
rect_move_pong_h_l192_c24_d7c5_state,
rect_move_pong_h_l192_c24_d7c5_return_output);

-- ball_hit_roof_pong_h_l196_c6_64ac : 0 clocks latency
ball_hit_roof_pong_h_l196_c6_64ac : entity work.ball_hit_roof_0CLK_a5a1cd4e port map (
ball_hit_roof_pong_h_l196_c6_64ac_ball,
ball_hit_roof_pong_h_l196_c6_64ac_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8 : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_cond,
next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_return_output);

-- next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8 : 0 clocks latency
next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_cond,
next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_iftrue,
next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_iffalse,
next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_return_output);

-- ball_hit_floor_pong_h_l201_c11_7408 : 0 clocks latency
ball_hit_floor_pong_h_l201_c11_7408 : entity work.ball_hit_floor_0CLK_6cd3ce08 port map (
ball_hit_floor_pong_h_l201_c11_7408_ball,
ball_hit_floor_pong_h_l201_c11_7408_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_cond,
next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_return_output);

-- next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b : 0 clocks latency
next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_cond,
next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_iftrue,
next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_iffalse,
next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_return_output);

-- ball_in_l_goal_pong_h_l208_c6_72e2 : 0 clocks latency
ball_in_l_goal_pong_h_l208_c6_72e2 : entity work.ball_in_l_goal_0CLK_db683457 port map (
ball_in_l_goal_pong_h_l208_c6_72e2_ball,
ball_in_l_goal_pong_h_l208_c6_72e2_return_output);

-- reset_MUX_pong_h_l208_c3_28c8 : 0 clocks latency
reset_MUX_pong_h_l208_c3_28c8 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
reset_MUX_pong_h_l208_c3_28c8_cond,
reset_MUX_pong_h_l208_c3_28c8_iftrue,
reset_MUX_pong_h_l208_c3_28c8_iffalse,
reset_MUX_pong_h_l208_c3_28c8_return_output);

-- next_state_ball_vel_MUX_pong_h_l208_c3_28c8 : 0 clocks latency
next_state_ball_vel_MUX_pong_h_l208_c3_28c8 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_vel_MUX_pong_h_l208_c3_28c8_cond,
next_state_ball_vel_MUX_pong_h_l208_c3_28c8_iftrue,
next_state_ball_vel_MUX_pong_h_l208_c3_28c8_iffalse,
next_state_ball_vel_MUX_pong_h_l208_c3_28c8_return_output);

-- next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8 : 0 clocks latency
next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_cond,
next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_iftrue,
next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_iffalse,
next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8 : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_cond,
next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_return_output);

-- rects_collide_pong_h_l210_c8_ec53 : 0 clocks latency
rects_collide_pong_h_l210_c8_ec53 : entity work.rects_collide_0CLK_2e4d93a1 port map (
rects_collide_pong_h_l210_c8_ec53_r0,
rects_collide_pong_h_l210_c8_ec53_r1,
rects_collide_pong_h_l210_c8_ec53_return_output);

-- reset_MUX_pong_h_l210_c5_78fa : 0 clocks latency
reset_MUX_pong_h_l210_c5_78fa : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
reset_MUX_pong_h_l210_c5_78fa_cond,
reset_MUX_pong_h_l210_c5_78fa_iftrue,
reset_MUX_pong_h_l210_c5_78fa_iffalse,
reset_MUX_pong_h_l210_c5_78fa_return_output);

-- next_state_ball_vel_MUX_pong_h_l210_c5_78fa : 0 clocks latency
next_state_ball_vel_MUX_pong_h_l210_c5_78fa : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_vel_MUX_pong_h_l210_c5_78fa_cond,
next_state_ball_vel_MUX_pong_h_l210_c5_78fa_iftrue,
next_state_ball_vel_MUX_pong_h_l210_c5_78fa_iffalse,
next_state_ball_vel_MUX_pong_h_l210_c5_78fa_return_output);

-- next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa : 0 clocks latency
next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_cond,
next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_iftrue,
next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_iffalse,
next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_cond,
next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_return_output);

-- ball_in_r_goal_pong_h_l224_c11_486a : 0 clocks latency
ball_in_r_goal_pong_h_l224_c11_486a : entity work.ball_in_r_goal_0CLK_55761013 port map (
ball_in_r_goal_pong_h_l224_c11_486a_ball,
ball_in_r_goal_pong_h_l224_c11_486a_return_output);

-- reset_MUX_pong_h_l224_c8_f74d : 0 clocks latency
reset_MUX_pong_h_l224_c8_f74d : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
reset_MUX_pong_h_l224_c8_f74d_cond,
reset_MUX_pong_h_l224_c8_f74d_iftrue,
reset_MUX_pong_h_l224_c8_f74d_iffalse,
reset_MUX_pong_h_l224_c8_f74d_return_output);

-- next_state_ball_vel_MUX_pong_h_l224_c8_f74d : 0 clocks latency
next_state_ball_vel_MUX_pong_h_l224_c8_f74d : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_vel_MUX_pong_h_l224_c8_f74d_cond,
next_state_ball_vel_MUX_pong_h_l224_c8_f74d_iftrue,
next_state_ball_vel_MUX_pong_h_l224_c8_f74d_iffalse,
next_state_ball_vel_MUX_pong_h_l224_c8_f74d_return_output);

-- next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d : 0 clocks latency
next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_cond,
next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_iftrue,
next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_iffalse,
next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_cond,
next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_return_output);

-- rects_collide_pong_h_l226_c8_fef0 : 0 clocks latency
rects_collide_pong_h_l226_c8_fef0 : entity work.rects_collide_0CLK_2e4d93a1 port map (
rects_collide_pong_h_l226_c8_fef0_r0,
rects_collide_pong_h_l226_c8_fef0_r1,
rects_collide_pong_h_l226_c8_fef0_return_output);

-- reset_MUX_pong_h_l226_c5_03d8 : 0 clocks latency
reset_MUX_pong_h_l226_c5_03d8 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
reset_MUX_pong_h_l226_c5_03d8_cond,
reset_MUX_pong_h_l226_c5_03d8_iftrue,
reset_MUX_pong_h_l226_c5_03d8_iffalse,
reset_MUX_pong_h_l226_c5_03d8_return_output);

-- next_state_ball_vel_MUX_pong_h_l226_c5_03d8 : 0 clocks latency
next_state_ball_vel_MUX_pong_h_l226_c5_03d8 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_vel_MUX_pong_h_l226_c5_03d8_cond,
next_state_ball_vel_MUX_pong_h_l226_c5_03d8_iftrue,
next_state_ball_vel_MUX_pong_h_l226_c5_03d8_iffalse,
next_state_ball_vel_MUX_pong_h_l226_c5_03d8_return_output);

-- next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8 : 0 clocks latency
next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_cond,
next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_iftrue,
next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_iffalse,
next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_return_output);

-- next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8 : 0 clocks latency
next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8 : entity work.MUX_uint1_t_vga_pos_t_vga_pos_t_0CLK_de264c78 port map (
next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_cond,
next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_iftrue,
next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_iffalse,
next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_return_output);

-- move_paddle_pong_h_l243_c33_f326 : 0 clocks latency
move_paddle_pong_h_l243_c33_f326 : entity work.move_paddle_0CLK_5633c838 port map (
move_paddle_pong_h_l243_c33_f326_pos,
move_paddle_pong_h_l243_c33_f326_paddle_up,
move_paddle_pong_h_l243_c33_f326_paddle_down,
move_paddle_pong_h_l243_c33_f326_return_output);

-- move_paddle_pong_h_l248_c33_dcf0 : 0 clocks latency
move_paddle_pong_h_l248_c33_dcf0 : entity work.move_paddle_0CLK_5633c838 port map (
move_paddle_pong_h_l248_c33_dcf0_pos,
move_paddle_pong_h_l248_c33_dcf0_paddle_up,
move_paddle_pong_h_l248_c33_dcf0_paddle_down,
move_paddle_pong_h_l248_c33_dcf0_return_output);

-- next_state_MUX_pong_h_l254_c3_548e : 0 clocks latency
next_state_MUX_pong_h_l254_c3_548e : entity work.MUX_uint1_t_game_state_t_game_state_t_0CLK_de264c78 port map (
next_state_MUX_pong_h_l254_c3_548e_cond,
next_state_MUX_pong_h_l254_c3_548e_iftrue,
next_state_MUX_pong_h_l254_c3_548e_iffalse,
next_state_MUX_pong_h_l254_c3_548e_return_output);

-- reset_state_pong_h_l256_c18_fb84 : 0 clocks latency
reset_state_pong_h_l256_c18_fb84 : entity work.reset_state_0CLK_b45f1687 port map (
reset_state_pong_h_l256_c18_fb84_return_output);

-- ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6 : 0 clocks latency
ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6 : entity work.ball_paddle_inc_vel_0CLK_d1a5eb1c port map (
ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6_vel,
ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 reset,
 state,
 user_input,
 -- All submodule outputs
 rect_move_pong_h_l190_c21_18a3_return_output,
 rect_move_pong_h_l191_c24_2df6_return_output,
 rect_move_pong_h_l192_c24_d7c5_return_output,
 ball_hit_roof_pong_h_l196_c6_64ac_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_return_output,
 next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_return_output,
 ball_hit_floor_pong_h_l201_c11_7408_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_return_output,
 next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_return_output,
 ball_in_l_goal_pong_h_l208_c6_72e2_return_output,
 reset_MUX_pong_h_l208_c3_28c8_return_output,
 next_state_ball_vel_MUX_pong_h_l208_c3_28c8_return_output,
 next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_return_output,
 rects_collide_pong_h_l210_c8_ec53_return_output,
 reset_MUX_pong_h_l210_c5_78fa_return_output,
 next_state_ball_vel_MUX_pong_h_l210_c5_78fa_return_output,
 next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_return_output,
 ball_in_r_goal_pong_h_l224_c11_486a_return_output,
 reset_MUX_pong_h_l224_c8_f74d_return_output,
 next_state_ball_vel_MUX_pong_h_l224_c8_f74d_return_output,
 next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_return_output,
 rects_collide_pong_h_l226_c8_fef0_return_output,
 reset_MUX_pong_h_l226_c5_03d8_return_output,
 next_state_ball_vel_MUX_pong_h_l226_c5_03d8_return_output,
 next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_return_output,
 next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_return_output,
 move_paddle_pong_h_l243_c33_f326_return_output,
 move_paddle_pong_h_l248_c33_dcf0_return_output,
 next_state_MUX_pong_h_l254_c3_548e_return_output,
 reset_state_pong_h_l256_c18_fb84_return_output,
 ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : game_state_t;
 variable VAR_reset : unsigned(0 downto 0);
 variable VAR_state : game_state_t;
 variable VAR_user_input : user_input_t;
 variable VAR_next_state : game_state_t;
 variable VAR_rect_move_pong_h_l190_c21_18a3_state : rect_animated_t;
 variable VAR_rect_move_pong_h_l190_c21_18a3_return_output : rect_animated_t;
 variable VAR_rect_move_pong_h_l191_c24_2df6_state : rect_animated_t;
 variable VAR_CONST_REF_RD_rect_animated_t_game_state_t_lpaddle_d41d_pong_h_l191_c34_c859_return_output : rect_animated_t;
 variable VAR_rect_move_pong_h_l191_c24_2df6_return_output : rect_animated_t;
 variable VAR_rect_move_pong_h_l192_c24_d7c5_state : rect_animated_t;
 variable VAR_CONST_REF_RD_rect_animated_t_game_state_t_rpaddle_d41d_pong_h_l192_c34_81f0_return_output : rect_animated_t;
 variable VAR_rect_move_pong_h_l192_c24_d7c5_return_output : rect_animated_t;
 variable VAR_ball_hit_roof_pong_h_l196_c6_64ac_ball : rect_animated_t;
 variable VAR_ball_hit_roof_pong_h_l196_c6_64ac_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_cond : unsigned(0 downto 0);
 variable VAR_ball_hit_floor_pong_h_l201_c11_7408_ball : rect_animated_t;
 variable VAR_ball_hit_floor_pong_h_l201_c11_7408_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_FALSE_INPUT_MUX_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0_pong_h_l201_c8_bf4b_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0_pong_h_l201_c8_bf4b_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_cond : unsigned(0 downto 0);
 variable VAR_ball_in_l_goal_pong_h_l208_c6_72e2_ball : rect_animated_t;
 variable VAR_ball_in_l_goal_pong_h_l208_c6_72e2_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l208_c3_28c8_iftrue : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l210_c5_78fa_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l208_c3_28c8_iffalse : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l224_c8_f74d_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l208_c3_28c8_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l208_c3_28c8_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_MUX_pong_h_l208_c3_28c8_iftrue : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l210_c5_78fa_return_output : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l208_c3_28c8_iffalse : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l224_c8_f74d_return_output : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l208_c3_28c8_return_output : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l208_c3_28c8_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_cond : unsigned(0 downto 0);
 variable VAR_rects_collide_pong_h_l210_c8_ec53_r0 : rect_t;
 variable VAR_rects_collide_pong_h_l210_c8_ec53_r1 : rect_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l210_c39_6093_return_output : rect_t;
 variable VAR_rects_collide_pong_h_l210_c8_ec53_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l210_c5_78fa_iftrue : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l210_c5_78fa_iffalse : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l210_c5_78fa_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_MUX_pong_h_l210_c5_78fa_iftrue : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l210_c5_78fa_iffalse : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l210_c5_78fa_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_cond : unsigned(0 downto 0);
 variable VAR_ball_in_r_goal_pong_h_l224_c11_486a_ball : rect_animated_t;
 variable VAR_ball_in_r_goal_pong_h_l224_c11_486a_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l224_c8_f74d_iftrue : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l226_c5_03d8_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l224_c8_f74d_iffalse : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l224_c8_f74d_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_MUX_pong_h_l224_c8_f74d_iftrue : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l226_c5_03d8_return_output : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l224_c8_f74d_iffalse : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l224_c8_f74d_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_return_output : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_return_output : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_cond : unsigned(0 downto 0);
 variable VAR_rects_collide_pong_h_l226_c8_fef0_r0 : rect_t;
 variable VAR_rects_collide_pong_h_l226_c8_fef0_r1 : rect_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l226_c39_345d_return_output : rect_t;
 variable VAR_rects_collide_pong_h_l226_c8_fef0_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l226_c5_03d8_iftrue : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l226_c5_03d8_iffalse : unsigned(0 downto 0);
 variable VAR_reset_MUX_pong_h_l226_c5_03d8_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_MUX_pong_h_l226_c5_03d8_iftrue : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l226_c5_03d8_iffalse : vga_pos_t;
 variable VAR_next_state_ball_vel_MUX_pong_h_l226_c5_03d8_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_iftrue : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_iffalse : unsigned(0 downto 0);
 variable VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_cond : unsigned(0 downto 0);
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_iftrue : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_iffalse : vga_pos_t;
 variable VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_cond : unsigned(0 downto 0);
 variable VAR_move_paddle_pong_h_l243_c33_f326_pos : vga_pos_t;
 variable VAR_move_paddle_pong_h_l243_c33_f326_paddle_up : unsigned(0 downto 0);
 variable VAR_move_paddle_pong_h_l243_c33_f326_paddle_down : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_vga_pos_t_game_state_t_rpaddle_rect_pos_d41d_pong_h_l244_c35_51e2_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_h_l245_c35_e20d_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_h_l246_c35_8b1e_return_output : unsigned(0 downto 0);
 variable VAR_move_paddle_pong_h_l243_c33_f326_return_output : vga_pos_t;
 variable VAR_move_paddle_pong_h_l248_c33_dcf0_pos : vga_pos_t;
 variable VAR_move_paddle_pong_h_l248_c33_dcf0_paddle_up : unsigned(0 downto 0);
 variable VAR_move_paddle_pong_h_l248_c33_dcf0_paddle_down : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_vga_pos_t_game_state_t_lpaddle_rect_pos_d41d_pong_h_l249_c35_6588_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_up_d41d_pong_h_l250_c35_ddfb_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d_pong_h_l251_c35_3e3e_return_output : unsigned(0 downto 0);
 variable VAR_move_paddle_pong_h_l248_c33_dcf0_return_output : vga_pos_t;
 variable VAR_next_state_MUX_pong_h_l254_c3_548e_iftrue : game_state_t;
 variable VAR_next_state_MUX_pong_h_l254_c3_548e_iffalse : game_state_t;
 variable VAR_next_state_FALSE_INPUT_MUX_CONST_REF_RD_game_state_t_game_state_t_348e_pong_h_l254_c3_548e_return_output : game_state_t;
 variable VAR_next_state_MUX_pong_h_l254_c3_548e_return_output : game_state_t;
 variable VAR_next_state_MUX_pong_h_l254_c3_548e_cond : unsigned(0 downto 0);
 variable VAR_reset_state_pong_h_l256_c18_fb84_return_output : game_state_t;
 variable VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_02a2_return_output : rect_animated_t;
 variable VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l213_l198_l229_l203_DUPLICATE_dcb1_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l210_l226_DUPLICATE_a69d_return_output : rect_t;
 variable VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_d41d_pong_h_l231_l215_DUPLICATE_9944_return_output : vga_pos_t;
 variable VAR_ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6_vel : vga_pos_t;
 variable VAR_ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l210_l226_l224_DUPLICATE_0bef_return_output : vga_pos_t;
 variable VAR_CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l226_l224_l210_DUPLICATE_c752_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_iftrue := to_unsigned(0, 1);
     VAR_reset_MUX_pong_h_l210_c5_78fa_iffalse := to_unsigned(1, 1);
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_iftrue := to_unsigned(1, 1);
     VAR_reset_MUX_pong_h_l226_c5_03d8_iffalse := to_unsigned(1, 1);
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_iftrue := to_unsigned(0, 1);
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_iftrue := to_unsigned(1, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_reset := reset;
     VAR_state := state;
     VAR_user_input := user_input;

     -- Submodule level 0
     VAR_reset_MUX_pong_h_l210_c5_78fa_iftrue := VAR_reset;
     VAR_reset_MUX_pong_h_l224_c8_f74d_iffalse := VAR_reset;
     VAR_reset_MUX_pong_h_l226_c5_03d8_iftrue := VAR_reset;
     -- CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d[pong_h_l210_c39_6093] LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l210_c39_6093_return_output := VAR_state.lpaddle.rect;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d[pong_h_l245_c35_e20d] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_h_l245_c35_e20d_return_output := VAR_user_input.paddle_r_up;

     -- reset_state[pong_h_l256_c18_fb84] LATENCY=0
     -- Inputs
     -- Outputs
     VAR_reset_state_pong_h_l256_c18_fb84_return_output := reset_state_pong_h_l256_c18_fb84_return_output;

     -- CONST_REF_RD_vga_pos_t_game_state_t_rpaddle_rect_pos_d41d[pong_h_l244_c35_51e2] LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_game_state_t_rpaddle_rect_pos_d41d_pong_h_l244_c35_51e2_return_output := VAR_state.rpaddle.rect.pos;

     -- CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l210_l226_DUPLICATE_a69d LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l210_l226_DUPLICATE_a69d_return_output := VAR_state.ball.rect;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d[pong_h_l251_c35_3e3e] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d_pong_h_l251_c35_3e3e_return_output := VAR_user_input.paddle_l_down;

     -- CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d[pong_h_l226_c39_345d] LATENCY=0
     VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l226_c39_345d_return_output := VAR_state.rpaddle.rect;

     -- CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_02a2 LATENCY=0
     VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_02a2_return_output := VAR_state.ball;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d[pong_h_l246_c35_8b1e] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_h_l246_c35_8b1e_return_output := VAR_user_input.paddle_r_down;

     -- CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_d41d_pong_h_l231_l215_DUPLICATE_9944 LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_d41d_pong_h_l231_l215_DUPLICATE_9944_return_output := VAR_state.ball.vel;

     -- CONST_REF_RD_uint1_t_user_input_t_paddle_l_up_d41d[pong_h_l250_c35_ddfb] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_up_d41d_pong_h_l250_c35_ddfb_return_output := VAR_user_input.paddle_l_up;

     -- CONST_REF_RD_rect_animated_t_game_state_t_lpaddle_d41d[pong_h_l191_c34_c859] LATENCY=0
     VAR_CONST_REF_RD_rect_animated_t_game_state_t_lpaddle_d41d_pong_h_l191_c34_c859_return_output := VAR_state.lpaddle;

     -- CONST_REF_RD_vga_pos_t_game_state_t_lpaddle_rect_pos_d41d[pong_h_l249_c35_6588] LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_game_state_t_lpaddle_rect_pos_d41d_pong_h_l249_c35_6588_return_output := VAR_state.lpaddle.rect.pos;

     -- CONST_REF_RD_rect_animated_t_game_state_t_rpaddle_d41d[pong_h_l192_c34_81f0] LATENCY=0
     VAR_CONST_REF_RD_rect_animated_t_game_state_t_rpaddle_d41d_pong_h_l192_c34_81f0_return_output := VAR_state.rpaddle;

     -- CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l213_l198_l229_l203_DUPLICATE_dcb1 LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l213_l198_l229_l203_DUPLICATE_dcb1_return_output := VAR_state.ball.rect.pos;

     -- Submodule level 1
     VAR_ball_hit_floor_pong_h_l201_c11_7408_ball := VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_02a2_return_output;
     VAR_ball_hit_roof_pong_h_l196_c6_64ac_ball := VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_02a2_return_output;
     VAR_ball_in_l_goal_pong_h_l208_c6_72e2_ball := VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_02a2_return_output;
     VAR_ball_in_r_goal_pong_h_l224_c11_486a_ball := VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_02a2_return_output;
     VAR_rect_move_pong_h_l190_c21_18a3_state := VAR_CONST_REF_RD_rect_animated_t_game_state_t_ball_d41d_pong_h_l224_l190_l208_l201_l196_DUPLICATE_02a2_return_output;
     VAR_rect_move_pong_h_l191_c24_2df6_state := VAR_CONST_REF_RD_rect_animated_t_game_state_t_lpaddle_d41d_pong_h_l191_c34_c859_return_output;
     VAR_rect_move_pong_h_l192_c24_d7c5_state := VAR_CONST_REF_RD_rect_animated_t_game_state_t_rpaddle_d41d_pong_h_l192_c34_81f0_return_output;
     VAR_rects_collide_pong_h_l210_c8_ec53_r0 := VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l210_l226_DUPLICATE_a69d_return_output;
     VAR_rects_collide_pong_h_l226_c8_fef0_r0 := VAR_CONST_REF_RD_rect_t_game_state_t_ball_rect_d41d_pong_h_l210_l226_DUPLICATE_a69d_return_output;
     VAR_rects_collide_pong_h_l210_c8_ec53_r1 := VAR_CONST_REF_RD_rect_t_game_state_t_lpaddle_rect_d41d_pong_h_l210_c39_6093_return_output;
     VAR_rects_collide_pong_h_l226_c8_fef0_r1 := VAR_CONST_REF_RD_rect_t_game_state_t_rpaddle_rect_d41d_pong_h_l226_c39_345d_return_output;
     VAR_move_paddle_pong_h_l248_c33_dcf0_paddle_down := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_down_d41d_pong_h_l251_c35_3e3e_return_output;
     VAR_move_paddle_pong_h_l248_c33_dcf0_paddle_up := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_l_up_d41d_pong_h_l250_c35_ddfb_return_output;
     VAR_move_paddle_pong_h_l243_c33_f326_paddle_down := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_down_d41d_pong_h_l246_c35_8b1e_return_output;
     VAR_move_paddle_pong_h_l243_c33_f326_paddle_up := VAR_CONST_REF_RD_uint1_t_user_input_t_paddle_r_up_d41d_pong_h_l245_c35_e20d_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_iftrue := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l213_l198_l229_l203_DUPLICATE_dcb1_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_iftrue := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l213_l198_l229_l203_DUPLICATE_dcb1_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_iftrue := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l213_l198_l229_l203_DUPLICATE_dcb1_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_iftrue := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_d41d_pong_h_l213_l198_l229_l203_DUPLICATE_dcb1_return_output;
     VAR_ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6_vel := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_d41d_pong_h_l231_l215_DUPLICATE_9944_return_output;
     VAR_move_paddle_pong_h_l248_c33_dcf0_pos := VAR_CONST_REF_RD_vga_pos_t_game_state_t_lpaddle_rect_pos_d41d_pong_h_l249_c35_6588_return_output;
     VAR_move_paddle_pong_h_l243_c33_f326_pos := VAR_CONST_REF_RD_vga_pos_t_game_state_t_rpaddle_rect_pos_d41d_pong_h_l244_c35_51e2_return_output;
     VAR_next_state_MUX_pong_h_l254_c3_548e_iftrue := VAR_reset_state_pong_h_l256_c18_fb84_return_output;
     -- rect_move[pong_h_l191_c24_2df6] LATENCY=0
     -- Inputs
     rect_move_pong_h_l191_c24_2df6_state <= VAR_rect_move_pong_h_l191_c24_2df6_state;
     -- Outputs
     VAR_rect_move_pong_h_l191_c24_2df6_return_output := rect_move_pong_h_l191_c24_2df6_return_output;

     -- rects_collide[pong_h_l226_c8_fef0] LATENCY=0
     -- Inputs
     rects_collide_pong_h_l226_c8_fef0_r0 <= VAR_rects_collide_pong_h_l226_c8_fef0_r0;
     rects_collide_pong_h_l226_c8_fef0_r1 <= VAR_rects_collide_pong_h_l226_c8_fef0_r1;
     -- Outputs
     VAR_rects_collide_pong_h_l226_c8_fef0_return_output := rects_collide_pong_h_l226_c8_fef0_return_output;

     -- ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6 LATENCY=0
     -- Inputs
     ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6_vel <= VAR_ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6_vel;
     -- Outputs
     VAR_ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6_return_output := ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6_return_output;

     -- ball_in_l_goal[pong_h_l208_c6_72e2] LATENCY=0
     -- Inputs
     ball_in_l_goal_pong_h_l208_c6_72e2_ball <= VAR_ball_in_l_goal_pong_h_l208_c6_72e2_ball;
     -- Outputs
     VAR_ball_in_l_goal_pong_h_l208_c6_72e2_return_output := ball_in_l_goal_pong_h_l208_c6_72e2_return_output;

     -- ball_in_r_goal[pong_h_l224_c11_486a] LATENCY=0
     -- Inputs
     ball_in_r_goal_pong_h_l224_c11_486a_ball <= VAR_ball_in_r_goal_pong_h_l224_c11_486a_ball;
     -- Outputs
     VAR_ball_in_r_goal_pong_h_l224_c11_486a_return_output := ball_in_r_goal_pong_h_l224_c11_486a_return_output;

     -- ball_hit_floor[pong_h_l201_c11_7408] LATENCY=0
     -- Inputs
     ball_hit_floor_pong_h_l201_c11_7408_ball <= VAR_ball_hit_floor_pong_h_l201_c11_7408_ball;
     -- Outputs
     VAR_ball_hit_floor_pong_h_l201_c11_7408_return_output := ball_hit_floor_pong_h_l201_c11_7408_return_output;

     -- ball_hit_roof[pong_h_l196_c6_64ac] LATENCY=0
     -- Inputs
     ball_hit_roof_pong_h_l196_c6_64ac_ball <= VAR_ball_hit_roof_pong_h_l196_c6_64ac_ball;
     -- Outputs
     VAR_ball_hit_roof_pong_h_l196_c6_64ac_return_output := ball_hit_roof_pong_h_l196_c6_64ac_return_output;

     -- rects_collide[pong_h_l210_c8_ec53] LATENCY=0
     -- Inputs
     rects_collide_pong_h_l210_c8_ec53_r0 <= VAR_rects_collide_pong_h_l210_c8_ec53_r0;
     rects_collide_pong_h_l210_c8_ec53_r1 <= VAR_rects_collide_pong_h_l210_c8_ec53_r1;
     -- Outputs
     VAR_rects_collide_pong_h_l210_c8_ec53_return_output := rects_collide_pong_h_l210_c8_ec53_return_output;

     -- move_paddle[pong_h_l243_c33_f326] LATENCY=0
     -- Inputs
     move_paddle_pong_h_l243_c33_f326_pos <= VAR_move_paddle_pong_h_l243_c33_f326_pos;
     move_paddle_pong_h_l243_c33_f326_paddle_up <= VAR_move_paddle_pong_h_l243_c33_f326_paddle_up;
     move_paddle_pong_h_l243_c33_f326_paddle_down <= VAR_move_paddle_pong_h_l243_c33_f326_paddle_down;
     -- Outputs
     VAR_move_paddle_pong_h_l243_c33_f326_return_output := move_paddle_pong_h_l243_c33_f326_return_output;

     -- rect_move[pong_h_l192_c24_d7c5] LATENCY=0
     -- Inputs
     rect_move_pong_h_l192_c24_d7c5_state <= VAR_rect_move_pong_h_l192_c24_d7c5_state;
     -- Outputs
     VAR_rect_move_pong_h_l192_c24_d7c5_return_output := rect_move_pong_h_l192_c24_d7c5_return_output;

     -- move_paddle[pong_h_l248_c33_dcf0] LATENCY=0
     -- Inputs
     move_paddle_pong_h_l248_c33_dcf0_pos <= VAR_move_paddle_pong_h_l248_c33_dcf0_pos;
     move_paddle_pong_h_l248_c33_dcf0_paddle_up <= VAR_move_paddle_pong_h_l248_c33_dcf0_paddle_up;
     move_paddle_pong_h_l248_c33_dcf0_paddle_down <= VAR_move_paddle_pong_h_l248_c33_dcf0_paddle_down;
     -- Outputs
     VAR_move_paddle_pong_h_l248_c33_dcf0_return_output := move_paddle_pong_h_l248_c33_dcf0_return_output;

     -- rect_move[pong_h_l190_c21_18a3] LATENCY=0
     -- Inputs
     rect_move_pong_h_l190_c21_18a3_state <= VAR_rect_move_pong_h_l190_c21_18a3_state;
     -- Outputs
     VAR_rect_move_pong_h_l190_c21_18a3_return_output := rect_move_pong_h_l190_c21_18a3_return_output;

     -- Submodule level 2
     VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_cond := VAR_ball_hit_floor_pong_h_l201_c11_7408_return_output;
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_cond := VAR_ball_hit_floor_pong_h_l201_c11_7408_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_cond := VAR_ball_hit_roof_pong_h_l196_c6_64ac_return_output;
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_cond := VAR_ball_hit_roof_pong_h_l196_c6_64ac_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_cond := VAR_ball_in_l_goal_pong_h_l208_c6_72e2_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l208_c3_28c8_cond := VAR_ball_in_l_goal_pong_h_l208_c6_72e2_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_cond := VAR_ball_in_l_goal_pong_h_l208_c6_72e2_return_output;
     VAR_reset_MUX_pong_h_l208_c3_28c8_cond := VAR_ball_in_l_goal_pong_h_l208_c6_72e2_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_cond := VAR_ball_in_r_goal_pong_h_l224_c11_486a_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l224_c8_f74d_cond := VAR_ball_in_r_goal_pong_h_l224_c11_486a_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_cond := VAR_ball_in_r_goal_pong_h_l224_c11_486a_return_output;
     VAR_reset_MUX_pong_h_l224_c8_f74d_cond := VAR_ball_in_r_goal_pong_h_l224_c11_486a_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l210_c5_78fa_iftrue := VAR_ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l226_c5_03d8_iftrue := VAR_ball_paddle_inc_vel_pong_h_l215_l231_DUPLICATE_7bb6_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_cond := VAR_rects_collide_pong_h_l210_c8_ec53_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l210_c5_78fa_cond := VAR_rects_collide_pong_h_l210_c8_ec53_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_cond := VAR_rects_collide_pong_h_l210_c8_ec53_return_output;
     VAR_reset_MUX_pong_h_l210_c5_78fa_cond := VAR_rects_collide_pong_h_l210_c8_ec53_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_cond := VAR_rects_collide_pong_h_l226_c8_fef0_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l226_c5_03d8_cond := VAR_rects_collide_pong_h_l226_c8_fef0_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_cond := VAR_rects_collide_pong_h_l226_c8_fef0_return_output;
     VAR_reset_MUX_pong_h_l226_c5_03d8_cond := VAR_rects_collide_pong_h_l226_c8_fef0_return_output;
     -- next_state_ball_rect_pos_FALSE_INPUT_MUX_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0[pong_h_l201_c8_bf4b] LATENCY=0
     VAR_next_state_ball_rect_pos_FALSE_INPUT_MUX_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0_pong_h_l201_c8_bf4b_return_output := CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0(
     VAR_rect_move_pong_h_l190_c21_18a3_return_output);

     -- CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l226_l224_l210_DUPLICATE_c752 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l226_l224_l210_DUPLICATE_c752_return_output := CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0(
     VAR_rect_move_pong_h_l190_c21_18a3_return_output);

     -- next_state_ball_vel_y_dir_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0[pong_h_l201_c8_bf4b] LATENCY=0
     VAR_next_state_ball_vel_y_dir_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0_pong_h_l201_c8_bf4b_return_output := CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0(
     VAR_rect_move_pong_h_l190_c21_18a3_return_output);

     -- CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l210_l226_l224_DUPLICATE_0bef LATENCY=0
     VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l210_l226_l224_DUPLICATE_0bef_return_output := CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0(
     VAR_rect_move_pong_h_l190_c21_18a3_return_output);

     -- reset_MUX[pong_h_l210_c5_78fa] LATENCY=0
     -- Inputs
     reset_MUX_pong_h_l210_c5_78fa_cond <= VAR_reset_MUX_pong_h_l210_c5_78fa_cond;
     reset_MUX_pong_h_l210_c5_78fa_iftrue <= VAR_reset_MUX_pong_h_l210_c5_78fa_iftrue;
     reset_MUX_pong_h_l210_c5_78fa_iffalse <= VAR_reset_MUX_pong_h_l210_c5_78fa_iffalse;
     -- Outputs
     VAR_reset_MUX_pong_h_l210_c5_78fa_return_output := reset_MUX_pong_h_l210_c5_78fa_return_output;

     -- reset_MUX[pong_h_l226_c5_03d8] LATENCY=0
     -- Inputs
     reset_MUX_pong_h_l226_c5_03d8_cond <= VAR_reset_MUX_pong_h_l226_c5_03d8_cond;
     reset_MUX_pong_h_l226_c5_03d8_iftrue <= VAR_reset_MUX_pong_h_l226_c5_03d8_iftrue;
     reset_MUX_pong_h_l226_c5_03d8_iffalse <= VAR_reset_MUX_pong_h_l226_c5_03d8_iffalse;
     -- Outputs
     VAR_reset_MUX_pong_h_l226_c5_03d8_return_output := reset_MUX_pong_h_l226_c5_03d8_return_output;

     -- Submodule level 3
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_iffalse := VAR_CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l226_l224_l210_DUPLICATE_c752_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_iffalse := VAR_CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l226_l224_l210_DUPLICATE_c752_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_iffalse := VAR_CONST_REF_RD_uint1_t_game_state_t_ball_vel_x_dir_b6d0_pong_h_l226_l224_l210_DUPLICATE_c752_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l210_c5_78fa_iffalse := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l210_l226_l224_DUPLICATE_0bef_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l224_c8_f74d_iffalse := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l210_l226_l224_DUPLICATE_0bef_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l226_c5_03d8_iffalse := VAR_CONST_REF_RD_vga_pos_t_game_state_t_ball_vel_b6d0_pong_h_l210_l226_l224_DUPLICATE_0bef_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_iffalse := VAR_next_state_ball_rect_pos_FALSE_INPUT_MUX_CONST_REF_RD_vga_pos_t_game_state_t_ball_rect_pos_b6d0_pong_h_l201_c8_bf4b_return_output;
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_iffalse := VAR_next_state_ball_vel_y_dir_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_game_state_t_ball_vel_y_dir_b6d0_pong_h_l201_c8_bf4b_return_output;
     VAR_reset_MUX_pong_h_l208_c3_28c8_iftrue := VAR_reset_MUX_pong_h_l210_c5_78fa_return_output;
     VAR_reset_MUX_pong_h_l224_c8_f74d_iftrue := VAR_reset_MUX_pong_h_l226_c5_03d8_return_output;
     -- next_state_ball_vel_MUX[pong_h_l226_c5_03d8] LATENCY=0
     -- Inputs
     next_state_ball_vel_MUX_pong_h_l226_c5_03d8_cond <= VAR_next_state_ball_vel_MUX_pong_h_l226_c5_03d8_cond;
     next_state_ball_vel_MUX_pong_h_l226_c5_03d8_iftrue <= VAR_next_state_ball_vel_MUX_pong_h_l226_c5_03d8_iftrue;
     next_state_ball_vel_MUX_pong_h_l226_c5_03d8_iffalse <= VAR_next_state_ball_vel_MUX_pong_h_l226_c5_03d8_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_MUX_pong_h_l226_c5_03d8_return_output := next_state_ball_vel_MUX_pong_h_l226_c5_03d8_return_output;

     -- next_state_ball_vel_y_dir_MUX[pong_h_l201_c8_bf4b] LATENCY=0
     -- Inputs
     next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_cond <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_cond;
     next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_iftrue <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_iftrue;
     next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_iffalse <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_return_output := next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_return_output;

     -- next_state_ball_vel_x_dir_MUX[pong_h_l210_c5_78fa] LATENCY=0
     -- Inputs
     next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_cond <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_cond;
     next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_iftrue <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_iftrue;
     next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_iffalse <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_return_output := next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_return_output;

     -- next_state_ball_rect_pos_MUX[pong_h_l201_c8_bf4b] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_cond;
     next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_return_output := next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_return_output;

     -- next_state_ball_vel_x_dir_MUX[pong_h_l226_c5_03d8] LATENCY=0
     -- Inputs
     next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_cond <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_cond;
     next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_iftrue <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_iftrue;
     next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_iffalse <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_return_output := next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_return_output;

     -- reset_MUX[pong_h_l224_c8_f74d] LATENCY=0
     -- Inputs
     reset_MUX_pong_h_l224_c8_f74d_cond <= VAR_reset_MUX_pong_h_l224_c8_f74d_cond;
     reset_MUX_pong_h_l224_c8_f74d_iftrue <= VAR_reset_MUX_pong_h_l224_c8_f74d_iftrue;
     reset_MUX_pong_h_l224_c8_f74d_iffalse <= VAR_reset_MUX_pong_h_l224_c8_f74d_iffalse;
     -- Outputs
     VAR_reset_MUX_pong_h_l224_c8_f74d_return_output := reset_MUX_pong_h_l224_c8_f74d_return_output;

     -- next_state_ball_vel_MUX[pong_h_l210_c5_78fa] LATENCY=0
     -- Inputs
     next_state_ball_vel_MUX_pong_h_l210_c5_78fa_cond <= VAR_next_state_ball_vel_MUX_pong_h_l210_c5_78fa_cond;
     next_state_ball_vel_MUX_pong_h_l210_c5_78fa_iftrue <= VAR_next_state_ball_vel_MUX_pong_h_l210_c5_78fa_iftrue;
     next_state_ball_vel_MUX_pong_h_l210_c5_78fa_iffalse <= VAR_next_state_ball_vel_MUX_pong_h_l210_c5_78fa_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_MUX_pong_h_l210_c5_78fa_return_output := next_state_ball_vel_MUX_pong_h_l210_c5_78fa_return_output;

     -- Submodule level 4
     VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_iffalse := VAR_next_state_ball_rect_pos_MUX_pong_h_l201_c8_bf4b_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l208_c3_28c8_iftrue := VAR_next_state_ball_vel_MUX_pong_h_l210_c5_78fa_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l224_c8_f74d_iftrue := VAR_next_state_ball_vel_MUX_pong_h_l226_c5_03d8_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_iftrue := VAR_next_state_ball_vel_x_dir_MUX_pong_h_l210_c5_78fa_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_iftrue := VAR_next_state_ball_vel_x_dir_MUX_pong_h_l226_c5_03d8_return_output;
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_iffalse := VAR_next_state_ball_vel_y_dir_MUX_pong_h_l201_c8_bf4b_return_output;
     VAR_reset_MUX_pong_h_l208_c3_28c8_iffalse := VAR_reset_MUX_pong_h_l224_c8_f74d_return_output;
     -- next_state_ball_vel_y_dir_MUX[pong_h_l196_c3_19f8] LATENCY=0
     -- Inputs
     next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_cond <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_cond;
     next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_iftrue <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_iftrue;
     next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_iffalse <= VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_return_output := next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_return_output;

     -- next_state_ball_vel_MUX[pong_h_l224_c8_f74d] LATENCY=0
     -- Inputs
     next_state_ball_vel_MUX_pong_h_l224_c8_f74d_cond <= VAR_next_state_ball_vel_MUX_pong_h_l224_c8_f74d_cond;
     next_state_ball_vel_MUX_pong_h_l224_c8_f74d_iftrue <= VAR_next_state_ball_vel_MUX_pong_h_l224_c8_f74d_iftrue;
     next_state_ball_vel_MUX_pong_h_l224_c8_f74d_iffalse <= VAR_next_state_ball_vel_MUX_pong_h_l224_c8_f74d_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_MUX_pong_h_l224_c8_f74d_return_output := next_state_ball_vel_MUX_pong_h_l224_c8_f74d_return_output;

     -- reset_MUX[pong_h_l208_c3_28c8] LATENCY=0
     -- Inputs
     reset_MUX_pong_h_l208_c3_28c8_cond <= VAR_reset_MUX_pong_h_l208_c3_28c8_cond;
     reset_MUX_pong_h_l208_c3_28c8_iftrue <= VAR_reset_MUX_pong_h_l208_c3_28c8_iftrue;
     reset_MUX_pong_h_l208_c3_28c8_iffalse <= VAR_reset_MUX_pong_h_l208_c3_28c8_iffalse;
     -- Outputs
     VAR_reset_MUX_pong_h_l208_c3_28c8_return_output := reset_MUX_pong_h_l208_c3_28c8_return_output;

     -- next_state_ball_vel_x_dir_MUX[pong_h_l224_c8_f74d] LATENCY=0
     -- Inputs
     next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_cond <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_cond;
     next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_iftrue <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_iftrue;
     next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_iffalse <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_return_output := next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_return_output;

     -- next_state_ball_rect_pos_MUX[pong_h_l196_c3_19f8] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_cond;
     next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_return_output := next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_return_output;

     -- Submodule level 5
     VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_iffalse := VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_iffalse := VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_iffalse := VAR_next_state_ball_rect_pos_MUX_pong_h_l196_c3_19f8_return_output;
     VAR_next_state_ball_vel_MUX_pong_h_l208_c3_28c8_iffalse := VAR_next_state_ball_vel_MUX_pong_h_l224_c8_f74d_return_output;
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_iffalse := VAR_next_state_ball_vel_x_dir_MUX_pong_h_l224_c8_f74d_return_output;
     VAR_next_state_MUX_pong_h_l254_c3_548e_cond := VAR_reset_MUX_pong_h_l208_c3_28c8_return_output;
     -- next_state_ball_rect_pos_MUX[pong_h_l226_c5_03d8] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_cond;
     next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_return_output := next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_return_output;

     -- next_state_ball_vel_x_dir_MUX[pong_h_l208_c3_28c8] LATENCY=0
     -- Inputs
     next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_cond <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_cond;
     next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_iftrue <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_iftrue;
     next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_iffalse <= VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_return_output := next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_return_output;

     -- next_state_ball_vel_MUX[pong_h_l208_c3_28c8] LATENCY=0
     -- Inputs
     next_state_ball_vel_MUX_pong_h_l208_c3_28c8_cond <= VAR_next_state_ball_vel_MUX_pong_h_l208_c3_28c8_cond;
     next_state_ball_vel_MUX_pong_h_l208_c3_28c8_iftrue <= VAR_next_state_ball_vel_MUX_pong_h_l208_c3_28c8_iftrue;
     next_state_ball_vel_MUX_pong_h_l208_c3_28c8_iffalse <= VAR_next_state_ball_vel_MUX_pong_h_l208_c3_28c8_iffalse;
     -- Outputs
     VAR_next_state_ball_vel_MUX_pong_h_l208_c3_28c8_return_output := next_state_ball_vel_MUX_pong_h_l208_c3_28c8_return_output;

     -- next_state_ball_rect_pos_MUX[pong_h_l210_c5_78fa] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_cond;
     next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_return_output := next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_return_output;

     -- Submodule level 6
     VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_iftrue := VAR_next_state_ball_rect_pos_MUX_pong_h_l210_c5_78fa_return_output;
     VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_iftrue := VAR_next_state_ball_rect_pos_MUX_pong_h_l226_c5_03d8_return_output;
     -- next_state_ball_rect_pos_MUX[pong_h_l224_c8_f74d] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_cond;
     next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_return_output := next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_return_output;

     -- Submodule level 7
     VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_iffalse := VAR_next_state_ball_rect_pos_MUX_pong_h_l224_c8_f74d_return_output;
     -- next_state_ball_rect_pos_MUX[pong_h_l208_c3_28c8] LATENCY=0
     -- Inputs
     next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_cond <= VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_cond;
     next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_iftrue <= VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_iftrue;
     next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_iffalse <= VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_iffalse;
     -- Outputs
     VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_return_output := next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_return_output;

     -- Submodule level 8
     -- next_state_FALSE_INPUT_MUX_CONST_REF_RD_game_state_t_game_state_t_348e[pong_h_l254_c3_548e] LATENCY=0
     VAR_next_state_FALSE_INPUT_MUX_CONST_REF_RD_game_state_t_game_state_t_348e_pong_h_l254_c3_548e_return_output := CONST_REF_RD_game_state_t_game_state_t_348e(
     VAR_rect_move_pong_h_l190_c21_18a3_return_output,
     VAR_rect_move_pong_h_l191_c24_2df6_return_output,
     VAR_rect_move_pong_h_l192_c24_d7c5_return_output,
     VAR_next_state_ball_vel_y_dir_MUX_pong_h_l196_c3_19f8_return_output,
     VAR_next_state_ball_vel_MUX_pong_h_l208_c3_28c8_return_output,
     VAR_next_state_ball_vel_x_dir_MUX_pong_h_l208_c3_28c8_return_output,
     VAR_next_state_ball_rect_pos_MUX_pong_h_l208_c3_28c8_return_output,
     VAR_move_paddle_pong_h_l243_c33_f326_return_output,
     VAR_move_paddle_pong_h_l248_c33_dcf0_return_output);

     -- Submodule level 9
     VAR_next_state_MUX_pong_h_l254_c3_548e_iffalse := VAR_next_state_FALSE_INPUT_MUX_CONST_REF_RD_game_state_t_game_state_t_348e_pong_h_l254_c3_548e_return_output;
     -- next_state_MUX[pong_h_l254_c3_548e] LATENCY=0
     -- Inputs
     next_state_MUX_pong_h_l254_c3_548e_cond <= VAR_next_state_MUX_pong_h_l254_c3_548e_cond;
     next_state_MUX_pong_h_l254_c3_548e_iftrue <= VAR_next_state_MUX_pong_h_l254_c3_548e_iftrue;
     next_state_MUX_pong_h_l254_c3_548e_iffalse <= VAR_next_state_MUX_pong_h_l254_c3_548e_iffalse;
     -- Outputs
     VAR_next_state_MUX_pong_h_l254_c3_548e_return_output := next_state_MUX_pong_h_l254_c3_548e_return_output;

     -- Submodule level 10
     VAR_return_output := VAR_next_state_MUX_pong_h_l254_c3_548e_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
