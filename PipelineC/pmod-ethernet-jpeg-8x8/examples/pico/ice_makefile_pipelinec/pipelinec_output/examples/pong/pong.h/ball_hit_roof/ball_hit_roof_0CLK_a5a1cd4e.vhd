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
entity ball_hit_roof_0CLK_a5a1cd4e is
port(
 ball : in rect_animated_t;
 return_output : out unsigned(0 downto 0));
end ball_hit_roof_0CLK_a5a1cd4e;
architecture arch of ball_hit_roof_0CLK_a5a1cd4e is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_EQ[pong_h_l107_c11_5cb7]
signal BIN_OP_EQ_pong_h_l107_c11_5cb7_left : unsigned(0 downto 0);
signal BIN_OP_EQ_pong_h_l107_c11_5cb7_right : unsigned(0 downto 0);
signal BIN_OP_EQ_pong_h_l107_c11_5cb7_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[pong_h_l107_c33_4b15]
signal BIN_OP_EQ_pong_h_l107_c33_4b15_left : unsigned(11 downto 0);
signal BIN_OP_EQ_pong_h_l107_c33_4b15_right : unsigned(0 downto 0);
signal BIN_OP_EQ_pong_h_l107_c33_4b15_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[pong_h_l107_c11_895c]
signal BIN_OP_AND_pong_h_l107_c11_895c_left : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l107_c11_895c_right : unsigned(0 downto 0);
signal BIN_OP_AND_pong_h_l107_c11_895c_return_output : unsigned(0 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_pong_h_l107_c11_5cb7 : 0 clocks latency
BIN_OP_EQ_pong_h_l107_c11_5cb7 : entity work.BIN_OP_EQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_pong_h_l107_c11_5cb7_left,
BIN_OP_EQ_pong_h_l107_c11_5cb7_right,
BIN_OP_EQ_pong_h_l107_c11_5cb7_return_output);

-- BIN_OP_EQ_pong_h_l107_c33_4b15 : 0 clocks latency
BIN_OP_EQ_pong_h_l107_c33_4b15 : entity work.BIN_OP_EQ_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_pong_h_l107_c33_4b15_left,
BIN_OP_EQ_pong_h_l107_c33_4b15_right,
BIN_OP_EQ_pong_h_l107_c33_4b15_return_output);

-- BIN_OP_AND_pong_h_l107_c11_895c : 0 clocks latency
BIN_OP_AND_pong_h_l107_c11_895c : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_pong_h_l107_c11_895c_left,
BIN_OP_AND_pong_h_l107_c11_895c_right,
BIN_OP_AND_pong_h_l107_c11_895c_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 ball,
 -- All submodule outputs
 BIN_OP_EQ_pong_h_l107_c11_5cb7_return_output,
 BIN_OP_EQ_pong_h_l107_c33_4b15_return_output,
 BIN_OP_AND_pong_h_l107_c11_895c_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_ball : rect_animated_t;
 variable VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d_pong_h_l107_c11_acee_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_pong_h_l107_c11_5cb7_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_pong_h_l107_c11_5cb7_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_pong_h_l107_c11_5cb7_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l107_c11_895c_left : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_pong_h_l107_c33_e501_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_pong_h_l107_c33_4b15_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_pong_h_l107_c33_4b15_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_pong_h_l107_c33_4b15_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l107_c11_895c_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pong_h_l107_c11_895c_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_EQ_pong_h_l107_c33_4b15_right := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_pong_h_l107_c11_5cb7_right := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_ball := ball;

     -- Submodule level 0
     -- CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d[pong_h_l107_c11_acee] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d_pong_h_l107_c11_acee_return_output := VAR_ball.vel_y_dir;

     -- CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d[pong_h_l107_c33_e501] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_pong_h_l107_c33_e501_return_output := VAR_ball.rect.pos.y;

     -- Submodule level 1
     VAR_BIN_OP_EQ_pong_h_l107_c33_4b15_left := VAR_CONST_REF_RD_uint12_t_rect_animated_t_rect_pos_y_d41d_pong_h_l107_c33_e501_return_output;
     VAR_BIN_OP_EQ_pong_h_l107_c11_5cb7_left := VAR_CONST_REF_RD_uint1_t_rect_animated_t_vel_y_dir_d41d_pong_h_l107_c11_acee_return_output;
     -- BIN_OP_EQ[pong_h_l107_c11_5cb7] LATENCY=0
     -- Inputs
     BIN_OP_EQ_pong_h_l107_c11_5cb7_left <= VAR_BIN_OP_EQ_pong_h_l107_c11_5cb7_left;
     BIN_OP_EQ_pong_h_l107_c11_5cb7_right <= VAR_BIN_OP_EQ_pong_h_l107_c11_5cb7_right;
     -- Outputs
     VAR_BIN_OP_EQ_pong_h_l107_c11_5cb7_return_output := BIN_OP_EQ_pong_h_l107_c11_5cb7_return_output;

     -- BIN_OP_EQ[pong_h_l107_c33_4b15] LATENCY=0
     -- Inputs
     BIN_OP_EQ_pong_h_l107_c33_4b15_left <= VAR_BIN_OP_EQ_pong_h_l107_c33_4b15_left;
     BIN_OP_EQ_pong_h_l107_c33_4b15_right <= VAR_BIN_OP_EQ_pong_h_l107_c33_4b15_right;
     -- Outputs
     VAR_BIN_OP_EQ_pong_h_l107_c33_4b15_return_output := BIN_OP_EQ_pong_h_l107_c33_4b15_return_output;

     -- Submodule level 2
     VAR_BIN_OP_AND_pong_h_l107_c11_895c_left := VAR_BIN_OP_EQ_pong_h_l107_c11_5cb7_return_output;
     VAR_BIN_OP_AND_pong_h_l107_c11_895c_right := VAR_BIN_OP_EQ_pong_h_l107_c33_4b15_return_output;
     -- BIN_OP_AND[pong_h_l107_c11_895c] LATENCY=0
     -- Inputs
     BIN_OP_AND_pong_h_l107_c11_895c_left <= VAR_BIN_OP_AND_pong_h_l107_c11_895c_left;
     BIN_OP_AND_pong_h_l107_c11_895c_right <= VAR_BIN_OP_AND_pong_h_l107_c11_895c_right;
     -- Outputs
     VAR_BIN_OP_AND_pong_h_l107_c11_895c_return_output := BIN_OP_AND_pong_h_l107_c11_895c_return_output;

     -- Submodule level 3
     VAR_return_output := VAR_BIN_OP_AND_pong_h_l107_c11_895c_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
