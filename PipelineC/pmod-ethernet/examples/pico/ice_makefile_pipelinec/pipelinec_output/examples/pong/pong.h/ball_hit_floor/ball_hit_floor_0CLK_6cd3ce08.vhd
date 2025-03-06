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
-- Submodules: 2
entity ball_hit_floor_0CLK_6cd3ce08 is
port(
 ball : in rect_animated_t;
 return_output : out unsigned(0 downto 0));
end ball_hit_floor_0CLK_6cd3ce08;
architecture arch of ball_hit_floor_0CLK_6cd3ce08 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_GTE[pong_h_l113_c33_a3b1]
signal BIN_OP_GTE_pong_h_l113_c33_a3b1_left : unsigned(11 downto 0);
signal BIN_OP_GTE_pong_h_l113_c33_a3b1_right : unsigned(8 downto 0);
signal BIN_OP_GTE_pong_h_l113_c33_a3b1_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[pong_h_l113_c11_abd3]
signal BIN_OP_AND_pong_h_l113_c11_abd3_left : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l113_c11_abd3_right : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l113_c11_abd3_return_output : unsigned(0 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_GTE_pong_h_l113_c33_a3b1 : 0 clocks latency
BIN_OP_GTE_pong_h_l113_c33_a3b1 : entity work.BIN_OP_GTE_uint12_t_uint9_t_0CLK_e595f783 port map (
BIN_OP_GTE_pong_h_l113_c33_a3b1_left,
BIN_OP_GTE_pong_h_l113_c33_a3b1_right,
BIN_OP_GTE_pong_h_l113_c33_a3b1_return_output);

-- BIN_OP_AND_pong_h_l113_c11_abd3 : 0 clocks latency
BIN_OP_AND_pong_h_l113_c11_abd3 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_pong_h_l113_c11_abd3_left,
BIN_OP_AND_pong_h_l113_c11_abd3_right,
BIN_OP_AND_pong_h_l113_c11_abd3_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 ball,
 -- All submodule outputs
 BIN_OP_GTE_pong_h_l113_c33_a3b1_return_output,
 BIN_OP_AND_pong_h_l113_c11_abd3_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_ball : rect_animated_t;
 variable VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d_pong_h_l113_c11_7f03_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l113_c11_abd3_left : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_pong_h_l113_c33_a532_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_pong_h_l113_c33_a3b1_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_pong_h_l113_c33_a3b1_right : unsigned(8 downto 0);
 variable VAR_BIN_OP_GTE_pong_h_l113_c33_a3b1_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l113_c11_abd3_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l113_c11_abd3_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_GTE_pong_h_l113_c33_a3b1_right := to_unsigned(468, 9);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_ball := ball;

     -- Submodule level 0
     -- CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d[pong_h_l113_c33_a532] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_pong_h_l113_c33_a532_return_output := VAR_ball.rect.pos.y;

     -- CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d[pong_h_l113_c11_7f03] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d_pong_h_l113_c11_7f03_return_output := VAR_ball.vel_y_dir;

     -- Submodule level 1
     VAR_BIN_OP_GTE_pong_h_l113_c33_a3b1_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_pong_h_l113_c33_a532_return_output;
     VAR_BIN_OP_AND_pong_h_l113_c11_abd3_left := VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d_pong_h_l113_c11_7f03_return_output;
     -- BIN_OP_GTE[pong_h_l113_c33_a3b1] LATENCY=0
     -- Inputs
     BIN_OP_GTE_pong_h_l113_c33_a3b1_left <= VAR_BIN_OP_GTE_pong_h_l113_c33_a3b1_left;
     BIN_OP_GTE_pong_h_l113_c33_a3b1_right <= VAR_BIN_OP_GTE_pong_h_l113_c33_a3b1_right;
     -- Outputs
     VAR_BIN_OP_GTE_pong_h_l113_c33_a3b1_return_output := BIN_OP_GTE_pong_h_l113_c33_a3b1_return_output;

     -- Submodule level 2
     VAR_BIN_OP_AND_pong_h_l113_c11_abd3_right := VAR_BIN_OP_GTE_pong_h_l113_c33_a3b1_return_output;
     -- BIN_OP_AND[pong_h_l113_c11_abd3] LATENCY=0
     -- Inputs
     BIN_OP_AND_pong_h_l113_c11_abd3_left <= VAR_BIN_OP_AND_pong_h_l113_c11_abd3_left;
     BIN_OP_AND_pong_h_l113_c11_abd3_right <= VAR_BIN_OP_AND_pong_h_l113_c11_abd3_right;
     -- Outputs
     VAR_BIN_OP_AND_pong_h_l113_c11_abd3_return_output := BIN_OP_AND_pong_h_l113_c11_abd3_return_output;

     -- Submodule level 3
     VAR_return_output := VAR_BIN_OP_AND_pong_h_l113_c11_abd3_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
