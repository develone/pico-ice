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
-- Submodules: 19
entity uint32_mux16_0CLK_4e6656cf is
port(
 sel : in unsigned(3 downto 0);
 in0 : in unsigned(31 downto 0);
 in1 : in unsigned(31 downto 0);
 in2 : in unsigned(31 downto 0);
 in3 : in unsigned(31 downto 0);
 in4 : in unsigned(31 downto 0);
 in5 : in unsigned(31 downto 0);
 in6 : in unsigned(31 downto 0);
 in7 : in unsigned(31 downto 0);
 in8 : in unsigned(31 downto 0);
 in9 : in unsigned(31 downto 0);
 in10 : in unsigned(31 downto 0);
 in11 : in unsigned(31 downto 0);
 in12 : in unsigned(31 downto 0);
 in13 : in unsigned(31 downto 0);
 in14 : in unsigned(31 downto 0);
 in15 : in unsigned(31 downto 0);
 return_output : out unsigned(31 downto 0));
end uint32_mux16_0CLK_4e6656cf;
architecture arch of uint32_mux16_0CLK_4e6656cf is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- layer0_node0_MUX[bit_math_h_l18_c3_2652]
signal layer0_node0_MUX_bit_math_h_l18_c3_2652_cond : unsigned(0 downto 0);
signal layer0_node0_MUX_bit_math_h_l18_c3_2652_iftrue : unsigned(31 downto 0);
signal layer0_node0_MUX_bit_math_h_l18_c3_2652_iffalse : unsigned(31 downto 0);
signal layer0_node0_MUX_bit_math_h_l18_c3_2652_return_output : unsigned(31 downto 0);

-- layer0_node1_MUX[bit_math_h_l29_c3_a65f]
signal layer0_node1_MUX_bit_math_h_l29_c3_a65f_cond : unsigned(0 downto 0);
signal layer0_node1_MUX_bit_math_h_l29_c3_a65f_iftrue : unsigned(31 downto 0);
signal layer0_node1_MUX_bit_math_h_l29_c3_a65f_iffalse : unsigned(31 downto 0);
signal layer0_node1_MUX_bit_math_h_l29_c3_a65f_return_output : unsigned(31 downto 0);

-- layer0_node2_MUX[bit_math_h_l40_c3_4257]
signal layer0_node2_MUX_bit_math_h_l40_c3_4257_cond : unsigned(0 downto 0);
signal layer0_node2_MUX_bit_math_h_l40_c3_4257_iftrue : unsigned(31 downto 0);
signal layer0_node2_MUX_bit_math_h_l40_c3_4257_iffalse : unsigned(31 downto 0);
signal layer0_node2_MUX_bit_math_h_l40_c3_4257_return_output : unsigned(31 downto 0);

-- layer0_node3_MUX[bit_math_h_l51_c3_6ec9]
signal layer0_node3_MUX_bit_math_h_l51_c3_6ec9_cond : unsigned(0 downto 0);
signal layer0_node3_MUX_bit_math_h_l51_c3_6ec9_iftrue : unsigned(31 downto 0);
signal layer0_node3_MUX_bit_math_h_l51_c3_6ec9_iffalse : unsigned(31 downto 0);
signal layer0_node3_MUX_bit_math_h_l51_c3_6ec9_return_output : unsigned(31 downto 0);

-- layer0_node4_MUX[bit_math_h_l62_c3_7ace]
signal layer0_node4_MUX_bit_math_h_l62_c3_7ace_cond : unsigned(0 downto 0);
signal layer0_node4_MUX_bit_math_h_l62_c3_7ace_iftrue : unsigned(31 downto 0);
signal layer0_node4_MUX_bit_math_h_l62_c3_7ace_iffalse : unsigned(31 downto 0);
signal layer0_node4_MUX_bit_math_h_l62_c3_7ace_return_output : unsigned(31 downto 0);

-- layer0_node5_MUX[bit_math_h_l73_c3_c881]
signal layer0_node5_MUX_bit_math_h_l73_c3_c881_cond : unsigned(0 downto 0);
signal layer0_node5_MUX_bit_math_h_l73_c3_c881_iftrue : unsigned(31 downto 0);
signal layer0_node5_MUX_bit_math_h_l73_c3_c881_iffalse : unsigned(31 downto 0);
signal layer0_node5_MUX_bit_math_h_l73_c3_c881_return_output : unsigned(31 downto 0);

-- layer0_node6_MUX[bit_math_h_l84_c3_4044]
signal layer0_node6_MUX_bit_math_h_l84_c3_4044_cond : unsigned(0 downto 0);
signal layer0_node6_MUX_bit_math_h_l84_c3_4044_iftrue : unsigned(31 downto 0);
signal layer0_node6_MUX_bit_math_h_l84_c3_4044_iffalse : unsigned(31 downto 0);
signal layer0_node6_MUX_bit_math_h_l84_c3_4044_return_output : unsigned(31 downto 0);

-- layer0_node7_MUX[bit_math_h_l95_c3_3f98]
signal layer0_node7_MUX_bit_math_h_l95_c3_3f98_cond : unsigned(0 downto 0);
signal layer0_node7_MUX_bit_math_h_l95_c3_3f98_iftrue : unsigned(31 downto 0);
signal layer0_node7_MUX_bit_math_h_l95_c3_3f98_iffalse : unsigned(31 downto 0);
signal layer0_node7_MUX_bit_math_h_l95_c3_3f98_return_output : unsigned(31 downto 0);

-- layer1_node0_MUX[bit_math_h_l112_c3_4eaa]
signal layer1_node0_MUX_bit_math_h_l112_c3_4eaa_cond : unsigned(0 downto 0);
signal layer1_node0_MUX_bit_math_h_l112_c3_4eaa_iftrue : unsigned(31 downto 0);
signal layer1_node0_MUX_bit_math_h_l112_c3_4eaa_iffalse : unsigned(31 downto 0);
signal layer1_node0_MUX_bit_math_h_l112_c3_4eaa_return_output : unsigned(31 downto 0);

-- layer1_node1_MUX[bit_math_h_l123_c3_c282]
signal layer1_node1_MUX_bit_math_h_l123_c3_c282_cond : unsigned(0 downto 0);
signal layer1_node1_MUX_bit_math_h_l123_c3_c282_iftrue : unsigned(31 downto 0);
signal layer1_node1_MUX_bit_math_h_l123_c3_c282_iffalse : unsigned(31 downto 0);
signal layer1_node1_MUX_bit_math_h_l123_c3_c282_return_output : unsigned(31 downto 0);

-- layer1_node2_MUX[bit_math_h_l134_c3_11b1]
signal layer1_node2_MUX_bit_math_h_l134_c3_11b1_cond : unsigned(0 downto 0);
signal layer1_node2_MUX_bit_math_h_l134_c3_11b1_iftrue : unsigned(31 downto 0);
signal layer1_node2_MUX_bit_math_h_l134_c3_11b1_iffalse : unsigned(31 downto 0);
signal layer1_node2_MUX_bit_math_h_l134_c3_11b1_return_output : unsigned(31 downto 0);

-- layer1_node3_MUX[bit_math_h_l145_c3_bb9a]
signal layer1_node3_MUX_bit_math_h_l145_c3_bb9a_cond : unsigned(0 downto 0);
signal layer1_node3_MUX_bit_math_h_l145_c3_bb9a_iftrue : unsigned(31 downto 0);
signal layer1_node3_MUX_bit_math_h_l145_c3_bb9a_iffalse : unsigned(31 downto 0);
signal layer1_node3_MUX_bit_math_h_l145_c3_bb9a_return_output : unsigned(31 downto 0);

-- layer2_node0_MUX[bit_math_h_l162_c3_08f6]
signal layer2_node0_MUX_bit_math_h_l162_c3_08f6_cond : unsigned(0 downto 0);
signal layer2_node0_MUX_bit_math_h_l162_c3_08f6_iftrue : unsigned(31 downto 0);
signal layer2_node0_MUX_bit_math_h_l162_c3_08f6_iffalse : unsigned(31 downto 0);
signal layer2_node0_MUX_bit_math_h_l162_c3_08f6_return_output : unsigned(31 downto 0);

-- layer2_node1_MUX[bit_math_h_l173_c3_dfa9]
signal layer2_node1_MUX_bit_math_h_l173_c3_dfa9_cond : unsigned(0 downto 0);
signal layer2_node1_MUX_bit_math_h_l173_c3_dfa9_iftrue : unsigned(31 downto 0);
signal layer2_node1_MUX_bit_math_h_l173_c3_dfa9_iffalse : unsigned(31 downto 0);
signal layer2_node1_MUX_bit_math_h_l173_c3_dfa9_return_output : unsigned(31 downto 0);

-- layer3_node0_MUX[bit_math_h_l190_c3_87d8]
signal layer3_node0_MUX_bit_math_h_l190_c3_87d8_cond : unsigned(0 downto 0);
signal layer3_node0_MUX_bit_math_h_l190_c3_87d8_iftrue : unsigned(31 downto 0);
signal layer3_node0_MUX_bit_math_h_l190_c3_87d8_iffalse : unsigned(31 downto 0);
signal layer3_node0_MUX_bit_math_h_l190_c3_87d8_return_output : unsigned(31 downto 0);

function uint4_0_0( x : unsigned) return unsigned is
--variable x : unsigned(3 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(0- i);
      end loop;
return return_output;
end function;

function uint4_1_1( x : unsigned) return unsigned is
--variable x : unsigned(3 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(1- i);
      end loop;
return return_output;
end function;

function uint4_2_2( x : unsigned) return unsigned is
--variable x : unsigned(3 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(2- i);
      end loop;
return return_output;
end function;

function uint4_3_3( x : unsigned) return unsigned is
--variable x : unsigned(3 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(3- i);
      end loop;
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- layer0_node0_MUX_bit_math_h_l18_c3_2652 : 0 clocks latency
layer0_node0_MUX_bit_math_h_l18_c3_2652 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
layer0_node0_MUX_bit_math_h_l18_c3_2652_cond,
layer0_node0_MUX_bit_math_h_l18_c3_2652_iftrue,
layer0_node0_MUX_bit_math_h_l18_c3_2652_iffalse,
layer0_node0_MUX_bit_math_h_l18_c3_2652_return_output);

-- layer0_node1_MUX_bit_math_h_l29_c3_a65f : 0 clocks latency
layer0_node1_MUX_bit_math_h_l29_c3_a65f : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
layer0_node1_MUX_bit_math_h_l29_c3_a65f_cond,
layer0_node1_MUX_bit_math_h_l29_c3_a65f_iftrue,
layer0_node1_MUX_bit_math_h_l29_c3_a65f_iffalse,
layer0_node1_MUX_bit_math_h_l29_c3_a65f_return_output);

-- layer0_node2_MUX_bit_math_h_l40_c3_4257 : 0 clocks latency
layer0_node2_MUX_bit_math_h_l40_c3_4257 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
layer0_node2_MUX_bit_math_h_l40_c3_4257_cond,
layer0_node2_MUX_bit_math_h_l40_c3_4257_iftrue,
layer0_node2_MUX_bit_math_h_l40_c3_4257_iffalse,
layer0_node2_MUX_bit_math_h_l40_c3_4257_return_output);

-- layer0_node3_MUX_bit_math_h_l51_c3_6ec9 : 0 clocks latency
layer0_node3_MUX_bit_math_h_l51_c3_6ec9 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
layer0_node3_MUX_bit_math_h_l51_c3_6ec9_cond,
layer0_node3_MUX_bit_math_h_l51_c3_6ec9_iftrue,
layer0_node3_MUX_bit_math_h_l51_c3_6ec9_iffalse,
layer0_node3_MUX_bit_math_h_l51_c3_6ec9_return_output);

-- layer0_node4_MUX_bit_math_h_l62_c3_7ace : 0 clocks latency
layer0_node4_MUX_bit_math_h_l62_c3_7ace : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
layer0_node4_MUX_bit_math_h_l62_c3_7ace_cond,
layer0_node4_MUX_bit_math_h_l62_c3_7ace_iftrue,
layer0_node4_MUX_bit_math_h_l62_c3_7ace_iffalse,
layer0_node4_MUX_bit_math_h_l62_c3_7ace_return_output);

-- layer0_node5_MUX_bit_math_h_l73_c3_c881 : 0 clocks latency
layer0_node5_MUX_bit_math_h_l73_c3_c881 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
layer0_node5_MUX_bit_math_h_l73_c3_c881_cond,
layer0_node5_MUX_bit_math_h_l73_c3_c881_iftrue,
layer0_node5_MUX_bit_math_h_l73_c3_c881_iffalse,
layer0_node5_MUX_bit_math_h_l73_c3_c881_return_output);

-- layer0_node6_MUX_bit_math_h_l84_c3_4044 : 0 clocks latency
layer0_node6_MUX_bit_math_h_l84_c3_4044 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
layer0_node6_MUX_bit_math_h_l84_c3_4044_cond,
layer0_node6_MUX_bit_math_h_l84_c3_4044_iftrue,
layer0_node6_MUX_bit_math_h_l84_c3_4044_iffalse,
layer0_node6_MUX_bit_math_h_l84_c3_4044_return_output);

-- layer0_node7_MUX_bit_math_h_l95_c3_3f98 : 0 clocks latency
layer0_node7_MUX_bit_math_h_l95_c3_3f98 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
layer0_node7_MUX_bit_math_h_l95_c3_3f98_cond,
layer0_node7_MUX_bit_math_h_l95_c3_3f98_iftrue,
layer0_node7_MUX_bit_math_h_l95_c3_3f98_iffalse,
layer0_node7_MUX_bit_math_h_l95_c3_3f98_return_output);

-- layer1_node0_MUX_bit_math_h_l112_c3_4eaa : 0 clocks latency
layer1_node0_MUX_bit_math_h_l112_c3_4eaa : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
layer1_node0_MUX_bit_math_h_l112_c3_4eaa_cond,
layer1_node0_MUX_bit_math_h_l112_c3_4eaa_iftrue,
layer1_node0_MUX_bit_math_h_l112_c3_4eaa_iffalse,
layer1_node0_MUX_bit_math_h_l112_c3_4eaa_return_output);

-- layer1_node1_MUX_bit_math_h_l123_c3_c282 : 0 clocks latency
layer1_node1_MUX_bit_math_h_l123_c3_c282 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
layer1_node1_MUX_bit_math_h_l123_c3_c282_cond,
layer1_node1_MUX_bit_math_h_l123_c3_c282_iftrue,
layer1_node1_MUX_bit_math_h_l123_c3_c282_iffalse,
layer1_node1_MUX_bit_math_h_l123_c3_c282_return_output);

-- layer1_node2_MUX_bit_math_h_l134_c3_11b1 : 0 clocks latency
layer1_node2_MUX_bit_math_h_l134_c3_11b1 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
layer1_node2_MUX_bit_math_h_l134_c3_11b1_cond,
layer1_node2_MUX_bit_math_h_l134_c3_11b1_iftrue,
layer1_node2_MUX_bit_math_h_l134_c3_11b1_iffalse,
layer1_node2_MUX_bit_math_h_l134_c3_11b1_return_output);

-- layer1_node3_MUX_bit_math_h_l145_c3_bb9a : 0 clocks latency
layer1_node3_MUX_bit_math_h_l145_c3_bb9a : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
layer1_node3_MUX_bit_math_h_l145_c3_bb9a_cond,
layer1_node3_MUX_bit_math_h_l145_c3_bb9a_iftrue,
layer1_node3_MUX_bit_math_h_l145_c3_bb9a_iffalse,
layer1_node3_MUX_bit_math_h_l145_c3_bb9a_return_output);

-- layer2_node0_MUX_bit_math_h_l162_c3_08f6 : 0 clocks latency
layer2_node0_MUX_bit_math_h_l162_c3_08f6 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
layer2_node0_MUX_bit_math_h_l162_c3_08f6_cond,
layer2_node0_MUX_bit_math_h_l162_c3_08f6_iftrue,
layer2_node0_MUX_bit_math_h_l162_c3_08f6_iffalse,
layer2_node0_MUX_bit_math_h_l162_c3_08f6_return_output);

-- layer2_node1_MUX_bit_math_h_l173_c3_dfa9 : 0 clocks latency
layer2_node1_MUX_bit_math_h_l173_c3_dfa9 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
layer2_node1_MUX_bit_math_h_l173_c3_dfa9_cond,
layer2_node1_MUX_bit_math_h_l173_c3_dfa9_iftrue,
layer2_node1_MUX_bit_math_h_l173_c3_dfa9_iffalse,
layer2_node1_MUX_bit_math_h_l173_c3_dfa9_return_output);

-- layer3_node0_MUX_bit_math_h_l190_c3_87d8 : 0 clocks latency
layer3_node0_MUX_bit_math_h_l190_c3_87d8 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
layer3_node0_MUX_bit_math_h_l190_c3_87d8_cond,
layer3_node0_MUX_bit_math_h_l190_c3_87d8_iftrue,
layer3_node0_MUX_bit_math_h_l190_c3_87d8_iffalse,
layer3_node0_MUX_bit_math_h_l190_c3_87d8_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 sel,
 in0,
 in1,
 in2,
 in3,
 in4,
 in5,
 in6,
 in7,
 in8,
 in9,
 in10,
 in11,
 in12,
 in13,
 in14,
 in15,
 -- All submodule outputs
 layer0_node0_MUX_bit_math_h_l18_c3_2652_return_output,
 layer0_node1_MUX_bit_math_h_l29_c3_a65f_return_output,
 layer0_node2_MUX_bit_math_h_l40_c3_4257_return_output,
 layer0_node3_MUX_bit_math_h_l51_c3_6ec9_return_output,
 layer0_node4_MUX_bit_math_h_l62_c3_7ace_return_output,
 layer0_node5_MUX_bit_math_h_l73_c3_c881_return_output,
 layer0_node6_MUX_bit_math_h_l84_c3_4044_return_output,
 layer0_node7_MUX_bit_math_h_l95_c3_3f98_return_output,
 layer1_node0_MUX_bit_math_h_l112_c3_4eaa_return_output,
 layer1_node1_MUX_bit_math_h_l123_c3_c282_return_output,
 layer1_node2_MUX_bit_math_h_l134_c3_11b1_return_output,
 layer1_node3_MUX_bit_math_h_l145_c3_bb9a_return_output,
 layer2_node0_MUX_bit_math_h_l162_c3_08f6_return_output,
 layer2_node1_MUX_bit_math_h_l173_c3_dfa9_return_output,
 layer3_node0_MUX_bit_math_h_l190_c3_87d8_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(31 downto 0);
 variable VAR_sel : unsigned(3 downto 0);
 variable VAR_in0 : unsigned(31 downto 0);
 variable VAR_in1 : unsigned(31 downto 0);
 variable VAR_in2 : unsigned(31 downto 0);
 variable VAR_in3 : unsigned(31 downto 0);
 variable VAR_in4 : unsigned(31 downto 0);
 variable VAR_in5 : unsigned(31 downto 0);
 variable VAR_in6 : unsigned(31 downto 0);
 variable VAR_in7 : unsigned(31 downto 0);
 variable VAR_in8 : unsigned(31 downto 0);
 variable VAR_in9 : unsigned(31 downto 0);
 variable VAR_in10 : unsigned(31 downto 0);
 variable VAR_in11 : unsigned(31 downto 0);
 variable VAR_in12 : unsigned(31 downto 0);
 variable VAR_in13 : unsigned(31 downto 0);
 variable VAR_in14 : unsigned(31 downto 0);
 variable VAR_in15 : unsigned(31 downto 0);
 variable VAR_sel0 : unsigned(0 downto 0);
 variable VAR_uint4_0_0_bit_math_h_l14_c10_3470_return_output : unsigned(0 downto 0);
 variable VAR_layer0_node0 : unsigned(31 downto 0);
 variable VAR_layer0_node0_MUX_bit_math_h_l18_c3_2652_iftrue : unsigned(31 downto 0);
 variable VAR_layer0_node0_MUX_bit_math_h_l18_c3_2652_iffalse : unsigned(31 downto 0);
 variable VAR_layer0_node0_MUX_bit_math_h_l18_c3_2652_return_output : unsigned(31 downto 0);
 variable VAR_layer0_node0_MUX_bit_math_h_l18_c3_2652_cond : unsigned(0 downto 0);
 variable VAR_layer0_node1 : unsigned(31 downto 0);
 variable VAR_layer0_node1_MUX_bit_math_h_l29_c3_a65f_iftrue : unsigned(31 downto 0);
 variable VAR_layer0_node1_MUX_bit_math_h_l29_c3_a65f_iffalse : unsigned(31 downto 0);
 variable VAR_layer0_node1_MUX_bit_math_h_l29_c3_a65f_return_output : unsigned(31 downto 0);
 variable VAR_layer0_node1_MUX_bit_math_h_l29_c3_a65f_cond : unsigned(0 downto 0);
 variable VAR_layer0_node2 : unsigned(31 downto 0);
 variable VAR_layer0_node2_MUX_bit_math_h_l40_c3_4257_iftrue : unsigned(31 downto 0);
 variable VAR_layer0_node2_MUX_bit_math_h_l40_c3_4257_iffalse : unsigned(31 downto 0);
 variable VAR_layer0_node2_MUX_bit_math_h_l40_c3_4257_return_output : unsigned(31 downto 0);
 variable VAR_layer0_node2_MUX_bit_math_h_l40_c3_4257_cond : unsigned(0 downto 0);
 variable VAR_layer0_node3 : unsigned(31 downto 0);
 variable VAR_layer0_node3_MUX_bit_math_h_l51_c3_6ec9_iftrue : unsigned(31 downto 0);
 variable VAR_layer0_node3_MUX_bit_math_h_l51_c3_6ec9_iffalse : unsigned(31 downto 0);
 variable VAR_layer0_node3_MUX_bit_math_h_l51_c3_6ec9_return_output : unsigned(31 downto 0);
 variable VAR_layer0_node3_MUX_bit_math_h_l51_c3_6ec9_cond : unsigned(0 downto 0);
 variable VAR_layer0_node4 : unsigned(31 downto 0);
 variable VAR_layer0_node4_MUX_bit_math_h_l62_c3_7ace_iftrue : unsigned(31 downto 0);
 variable VAR_layer0_node4_MUX_bit_math_h_l62_c3_7ace_iffalse : unsigned(31 downto 0);
 variable VAR_layer0_node4_MUX_bit_math_h_l62_c3_7ace_return_output : unsigned(31 downto 0);
 variable VAR_layer0_node4_MUX_bit_math_h_l62_c3_7ace_cond : unsigned(0 downto 0);
 variable VAR_layer0_node5 : unsigned(31 downto 0);
 variable VAR_layer0_node5_MUX_bit_math_h_l73_c3_c881_iftrue : unsigned(31 downto 0);
 variable VAR_layer0_node5_MUX_bit_math_h_l73_c3_c881_iffalse : unsigned(31 downto 0);
 variable VAR_layer0_node5_MUX_bit_math_h_l73_c3_c881_return_output : unsigned(31 downto 0);
 variable VAR_layer0_node5_MUX_bit_math_h_l73_c3_c881_cond : unsigned(0 downto 0);
 variable VAR_layer0_node6 : unsigned(31 downto 0);
 variable VAR_layer0_node6_MUX_bit_math_h_l84_c3_4044_iftrue : unsigned(31 downto 0);
 variable VAR_layer0_node6_MUX_bit_math_h_l84_c3_4044_iffalse : unsigned(31 downto 0);
 variable VAR_layer0_node6_MUX_bit_math_h_l84_c3_4044_return_output : unsigned(31 downto 0);
 variable VAR_layer0_node6_MUX_bit_math_h_l84_c3_4044_cond : unsigned(0 downto 0);
 variable VAR_layer0_node7 : unsigned(31 downto 0);
 variable VAR_layer0_node7_MUX_bit_math_h_l95_c3_3f98_iftrue : unsigned(31 downto 0);
 variable VAR_layer0_node7_MUX_bit_math_h_l95_c3_3f98_iffalse : unsigned(31 downto 0);
 variable VAR_layer0_node7_MUX_bit_math_h_l95_c3_3f98_return_output : unsigned(31 downto 0);
 variable VAR_layer0_node7_MUX_bit_math_h_l95_c3_3f98_cond : unsigned(0 downto 0);
 variable VAR_sel1 : unsigned(0 downto 0);
 variable VAR_uint4_1_1_bit_math_h_l108_c10_4f7a_return_output : unsigned(0 downto 0);
 variable VAR_layer1_node0 : unsigned(31 downto 0);
 variable VAR_layer1_node0_MUX_bit_math_h_l112_c3_4eaa_iftrue : unsigned(31 downto 0);
 variable VAR_layer1_node0_MUX_bit_math_h_l112_c3_4eaa_iffalse : unsigned(31 downto 0);
 variable VAR_layer1_node0_MUX_bit_math_h_l112_c3_4eaa_return_output : unsigned(31 downto 0);
 variable VAR_layer1_node0_MUX_bit_math_h_l112_c3_4eaa_cond : unsigned(0 downto 0);
 variable VAR_layer1_node1 : unsigned(31 downto 0);
 variable VAR_layer1_node1_MUX_bit_math_h_l123_c3_c282_iftrue : unsigned(31 downto 0);
 variable VAR_layer1_node1_MUX_bit_math_h_l123_c3_c282_iffalse : unsigned(31 downto 0);
 variable VAR_layer1_node1_MUX_bit_math_h_l123_c3_c282_return_output : unsigned(31 downto 0);
 variable VAR_layer1_node1_MUX_bit_math_h_l123_c3_c282_cond : unsigned(0 downto 0);
 variable VAR_layer1_node2 : unsigned(31 downto 0);
 variable VAR_layer1_node2_MUX_bit_math_h_l134_c3_11b1_iftrue : unsigned(31 downto 0);
 variable VAR_layer1_node2_MUX_bit_math_h_l134_c3_11b1_iffalse : unsigned(31 downto 0);
 variable VAR_layer1_node2_MUX_bit_math_h_l134_c3_11b1_return_output : unsigned(31 downto 0);
 variable VAR_layer1_node2_MUX_bit_math_h_l134_c3_11b1_cond : unsigned(0 downto 0);
 variable VAR_layer1_node3 : unsigned(31 downto 0);
 variable VAR_layer1_node3_MUX_bit_math_h_l145_c3_bb9a_iftrue : unsigned(31 downto 0);
 variable VAR_layer1_node3_MUX_bit_math_h_l145_c3_bb9a_iffalse : unsigned(31 downto 0);
 variable VAR_layer1_node3_MUX_bit_math_h_l145_c3_bb9a_return_output : unsigned(31 downto 0);
 variable VAR_layer1_node3_MUX_bit_math_h_l145_c3_bb9a_cond : unsigned(0 downto 0);
 variable VAR_sel2 : unsigned(0 downto 0);
 variable VAR_uint4_2_2_bit_math_h_l158_c10_d4eb_return_output : unsigned(0 downto 0);
 variable VAR_layer2_node0 : unsigned(31 downto 0);
 variable VAR_layer2_node0_MUX_bit_math_h_l162_c3_08f6_iftrue : unsigned(31 downto 0);
 variable VAR_layer2_node0_MUX_bit_math_h_l162_c3_08f6_iffalse : unsigned(31 downto 0);
 variable VAR_layer2_node0_MUX_bit_math_h_l162_c3_08f6_return_output : unsigned(31 downto 0);
 variable VAR_layer2_node0_MUX_bit_math_h_l162_c3_08f6_cond : unsigned(0 downto 0);
 variable VAR_layer2_node1 : unsigned(31 downto 0);
 variable VAR_layer2_node1_MUX_bit_math_h_l173_c3_dfa9_iftrue : unsigned(31 downto 0);
 variable VAR_layer2_node1_MUX_bit_math_h_l173_c3_dfa9_iffalse : unsigned(31 downto 0);
 variable VAR_layer2_node1_MUX_bit_math_h_l173_c3_dfa9_return_output : unsigned(31 downto 0);
 variable VAR_layer2_node1_MUX_bit_math_h_l173_c3_dfa9_cond : unsigned(0 downto 0);
 variable VAR_sel3 : unsigned(0 downto 0);
 variable VAR_uint4_3_3_bit_math_h_l186_c10_e01c_return_output : unsigned(0 downto 0);
 variable VAR_layer3_node0 : unsigned(31 downto 0);
 variable VAR_layer3_node0_MUX_bit_math_h_l190_c3_87d8_iftrue : unsigned(31 downto 0);
 variable VAR_layer3_node0_MUX_bit_math_h_l190_c3_87d8_iffalse : unsigned(31 downto 0);
 variable VAR_layer3_node0_MUX_bit_math_h_l190_c3_87d8_return_output : unsigned(31 downto 0);
 variable VAR_layer3_node0_MUX_bit_math_h_l190_c3_87d8_cond : unsigned(0 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_sel := sel;
     VAR_in0 := in0;
     VAR_in1 := in1;
     VAR_in2 := in2;
     VAR_in3 := in3;
     VAR_in4 := in4;
     VAR_in5 := in5;
     VAR_in6 := in6;
     VAR_in7 := in7;
     VAR_in8 := in8;
     VAR_in9 := in9;
     VAR_in10 := in10;
     VAR_in11 := in11;
     VAR_in12 := in12;
     VAR_in13 := in13;
     VAR_in14 := in14;
     VAR_in15 := in15;

     -- Submodule level 0
     VAR_layer0_node0_MUX_bit_math_h_l18_c3_2652_iffalse := VAR_in0;
     VAR_layer0_node0_MUX_bit_math_h_l18_c3_2652_iftrue := VAR_in1;
     VAR_layer0_node5_MUX_bit_math_h_l73_c3_c881_iffalse := VAR_in10;
     VAR_layer0_node5_MUX_bit_math_h_l73_c3_c881_iftrue := VAR_in11;
     VAR_layer0_node6_MUX_bit_math_h_l84_c3_4044_iffalse := VAR_in12;
     VAR_layer0_node6_MUX_bit_math_h_l84_c3_4044_iftrue := VAR_in13;
     VAR_layer0_node7_MUX_bit_math_h_l95_c3_3f98_iffalse := VAR_in14;
     VAR_layer0_node7_MUX_bit_math_h_l95_c3_3f98_iftrue := VAR_in15;
     VAR_layer0_node1_MUX_bit_math_h_l29_c3_a65f_iffalse := VAR_in2;
     VAR_layer0_node1_MUX_bit_math_h_l29_c3_a65f_iftrue := VAR_in3;
     VAR_layer0_node2_MUX_bit_math_h_l40_c3_4257_iffalse := VAR_in4;
     VAR_layer0_node2_MUX_bit_math_h_l40_c3_4257_iftrue := VAR_in5;
     VAR_layer0_node3_MUX_bit_math_h_l51_c3_6ec9_iffalse := VAR_in6;
     VAR_layer0_node3_MUX_bit_math_h_l51_c3_6ec9_iftrue := VAR_in7;
     VAR_layer0_node4_MUX_bit_math_h_l62_c3_7ace_iffalse := VAR_in8;
     VAR_layer0_node4_MUX_bit_math_h_l62_c3_7ace_iftrue := VAR_in9;
     -- uint4_3_3[bit_math_h_l186_c10_e01c] LATENCY=0
     VAR_uint4_3_3_bit_math_h_l186_c10_e01c_return_output := uint4_3_3(
     VAR_sel);

     -- uint4_0_0[bit_math_h_l14_c10_3470] LATENCY=0
     VAR_uint4_0_0_bit_math_h_l14_c10_3470_return_output := uint4_0_0(
     VAR_sel);

     -- uint4_2_2[bit_math_h_l158_c10_d4eb] LATENCY=0
     VAR_uint4_2_2_bit_math_h_l158_c10_d4eb_return_output := uint4_2_2(
     VAR_sel);

     -- uint4_1_1[bit_math_h_l108_c10_4f7a] LATENCY=0
     VAR_uint4_1_1_bit_math_h_l108_c10_4f7a_return_output := uint4_1_1(
     VAR_sel);

     -- Submodule level 1
     VAR_layer0_node0_MUX_bit_math_h_l18_c3_2652_cond := VAR_uint4_0_0_bit_math_h_l14_c10_3470_return_output;
     VAR_layer0_node1_MUX_bit_math_h_l29_c3_a65f_cond := VAR_uint4_0_0_bit_math_h_l14_c10_3470_return_output;
     VAR_layer0_node2_MUX_bit_math_h_l40_c3_4257_cond := VAR_uint4_0_0_bit_math_h_l14_c10_3470_return_output;
     VAR_layer0_node3_MUX_bit_math_h_l51_c3_6ec9_cond := VAR_uint4_0_0_bit_math_h_l14_c10_3470_return_output;
     VAR_layer0_node4_MUX_bit_math_h_l62_c3_7ace_cond := VAR_uint4_0_0_bit_math_h_l14_c10_3470_return_output;
     VAR_layer0_node5_MUX_bit_math_h_l73_c3_c881_cond := VAR_uint4_0_0_bit_math_h_l14_c10_3470_return_output;
     VAR_layer0_node6_MUX_bit_math_h_l84_c3_4044_cond := VAR_uint4_0_0_bit_math_h_l14_c10_3470_return_output;
     VAR_layer0_node7_MUX_bit_math_h_l95_c3_3f98_cond := VAR_uint4_0_0_bit_math_h_l14_c10_3470_return_output;
     VAR_layer1_node0_MUX_bit_math_h_l112_c3_4eaa_cond := VAR_uint4_1_1_bit_math_h_l108_c10_4f7a_return_output;
     VAR_layer1_node1_MUX_bit_math_h_l123_c3_c282_cond := VAR_uint4_1_1_bit_math_h_l108_c10_4f7a_return_output;
     VAR_layer1_node2_MUX_bit_math_h_l134_c3_11b1_cond := VAR_uint4_1_1_bit_math_h_l108_c10_4f7a_return_output;
     VAR_layer1_node3_MUX_bit_math_h_l145_c3_bb9a_cond := VAR_uint4_1_1_bit_math_h_l108_c10_4f7a_return_output;
     VAR_layer2_node0_MUX_bit_math_h_l162_c3_08f6_cond := VAR_uint4_2_2_bit_math_h_l158_c10_d4eb_return_output;
     VAR_layer2_node1_MUX_bit_math_h_l173_c3_dfa9_cond := VAR_uint4_2_2_bit_math_h_l158_c10_d4eb_return_output;
     VAR_layer3_node0_MUX_bit_math_h_l190_c3_87d8_cond := VAR_uint4_3_3_bit_math_h_l186_c10_e01c_return_output;
     -- layer0_node1_MUX[bit_math_h_l29_c3_a65f] LATENCY=0
     -- Inputs
     layer0_node1_MUX_bit_math_h_l29_c3_a65f_cond <= VAR_layer0_node1_MUX_bit_math_h_l29_c3_a65f_cond;
     layer0_node1_MUX_bit_math_h_l29_c3_a65f_iftrue <= VAR_layer0_node1_MUX_bit_math_h_l29_c3_a65f_iftrue;
     layer0_node1_MUX_bit_math_h_l29_c3_a65f_iffalse <= VAR_layer0_node1_MUX_bit_math_h_l29_c3_a65f_iffalse;
     -- Outputs
     VAR_layer0_node1_MUX_bit_math_h_l29_c3_a65f_return_output := layer0_node1_MUX_bit_math_h_l29_c3_a65f_return_output;

     -- layer0_node7_MUX[bit_math_h_l95_c3_3f98] LATENCY=0
     -- Inputs
     layer0_node7_MUX_bit_math_h_l95_c3_3f98_cond <= VAR_layer0_node7_MUX_bit_math_h_l95_c3_3f98_cond;
     layer0_node7_MUX_bit_math_h_l95_c3_3f98_iftrue <= VAR_layer0_node7_MUX_bit_math_h_l95_c3_3f98_iftrue;
     layer0_node7_MUX_bit_math_h_l95_c3_3f98_iffalse <= VAR_layer0_node7_MUX_bit_math_h_l95_c3_3f98_iffalse;
     -- Outputs
     VAR_layer0_node7_MUX_bit_math_h_l95_c3_3f98_return_output := layer0_node7_MUX_bit_math_h_l95_c3_3f98_return_output;

     -- layer0_node5_MUX[bit_math_h_l73_c3_c881] LATENCY=0
     -- Inputs
     layer0_node5_MUX_bit_math_h_l73_c3_c881_cond <= VAR_layer0_node5_MUX_bit_math_h_l73_c3_c881_cond;
     layer0_node5_MUX_bit_math_h_l73_c3_c881_iftrue <= VAR_layer0_node5_MUX_bit_math_h_l73_c3_c881_iftrue;
     layer0_node5_MUX_bit_math_h_l73_c3_c881_iffalse <= VAR_layer0_node5_MUX_bit_math_h_l73_c3_c881_iffalse;
     -- Outputs
     VAR_layer0_node5_MUX_bit_math_h_l73_c3_c881_return_output := layer0_node5_MUX_bit_math_h_l73_c3_c881_return_output;

     -- layer0_node0_MUX[bit_math_h_l18_c3_2652] LATENCY=0
     -- Inputs
     layer0_node0_MUX_bit_math_h_l18_c3_2652_cond <= VAR_layer0_node0_MUX_bit_math_h_l18_c3_2652_cond;
     layer0_node0_MUX_bit_math_h_l18_c3_2652_iftrue <= VAR_layer0_node0_MUX_bit_math_h_l18_c3_2652_iftrue;
     layer0_node0_MUX_bit_math_h_l18_c3_2652_iffalse <= VAR_layer0_node0_MUX_bit_math_h_l18_c3_2652_iffalse;
     -- Outputs
     VAR_layer0_node0_MUX_bit_math_h_l18_c3_2652_return_output := layer0_node0_MUX_bit_math_h_l18_c3_2652_return_output;

     -- layer0_node2_MUX[bit_math_h_l40_c3_4257] LATENCY=0
     -- Inputs
     layer0_node2_MUX_bit_math_h_l40_c3_4257_cond <= VAR_layer0_node2_MUX_bit_math_h_l40_c3_4257_cond;
     layer0_node2_MUX_bit_math_h_l40_c3_4257_iftrue <= VAR_layer0_node2_MUX_bit_math_h_l40_c3_4257_iftrue;
     layer0_node2_MUX_bit_math_h_l40_c3_4257_iffalse <= VAR_layer0_node2_MUX_bit_math_h_l40_c3_4257_iffalse;
     -- Outputs
     VAR_layer0_node2_MUX_bit_math_h_l40_c3_4257_return_output := layer0_node2_MUX_bit_math_h_l40_c3_4257_return_output;

     -- layer0_node6_MUX[bit_math_h_l84_c3_4044] LATENCY=0
     -- Inputs
     layer0_node6_MUX_bit_math_h_l84_c3_4044_cond <= VAR_layer0_node6_MUX_bit_math_h_l84_c3_4044_cond;
     layer0_node6_MUX_bit_math_h_l84_c3_4044_iftrue <= VAR_layer0_node6_MUX_bit_math_h_l84_c3_4044_iftrue;
     layer0_node6_MUX_bit_math_h_l84_c3_4044_iffalse <= VAR_layer0_node6_MUX_bit_math_h_l84_c3_4044_iffalse;
     -- Outputs
     VAR_layer0_node6_MUX_bit_math_h_l84_c3_4044_return_output := layer0_node6_MUX_bit_math_h_l84_c3_4044_return_output;

     -- layer0_node3_MUX[bit_math_h_l51_c3_6ec9] LATENCY=0
     -- Inputs
     layer0_node3_MUX_bit_math_h_l51_c3_6ec9_cond <= VAR_layer0_node3_MUX_bit_math_h_l51_c3_6ec9_cond;
     layer0_node3_MUX_bit_math_h_l51_c3_6ec9_iftrue <= VAR_layer0_node3_MUX_bit_math_h_l51_c3_6ec9_iftrue;
     layer0_node3_MUX_bit_math_h_l51_c3_6ec9_iffalse <= VAR_layer0_node3_MUX_bit_math_h_l51_c3_6ec9_iffalse;
     -- Outputs
     VAR_layer0_node3_MUX_bit_math_h_l51_c3_6ec9_return_output := layer0_node3_MUX_bit_math_h_l51_c3_6ec9_return_output;

     -- layer0_node4_MUX[bit_math_h_l62_c3_7ace] LATENCY=0
     -- Inputs
     layer0_node4_MUX_bit_math_h_l62_c3_7ace_cond <= VAR_layer0_node4_MUX_bit_math_h_l62_c3_7ace_cond;
     layer0_node4_MUX_bit_math_h_l62_c3_7ace_iftrue <= VAR_layer0_node4_MUX_bit_math_h_l62_c3_7ace_iftrue;
     layer0_node4_MUX_bit_math_h_l62_c3_7ace_iffalse <= VAR_layer0_node4_MUX_bit_math_h_l62_c3_7ace_iffalse;
     -- Outputs
     VAR_layer0_node4_MUX_bit_math_h_l62_c3_7ace_return_output := layer0_node4_MUX_bit_math_h_l62_c3_7ace_return_output;

     -- Submodule level 2
     VAR_layer1_node0_MUX_bit_math_h_l112_c3_4eaa_iffalse := VAR_layer0_node0_MUX_bit_math_h_l18_c3_2652_return_output;
     VAR_layer1_node0_MUX_bit_math_h_l112_c3_4eaa_iftrue := VAR_layer0_node1_MUX_bit_math_h_l29_c3_a65f_return_output;
     VAR_layer1_node1_MUX_bit_math_h_l123_c3_c282_iffalse := VAR_layer0_node2_MUX_bit_math_h_l40_c3_4257_return_output;
     VAR_layer1_node1_MUX_bit_math_h_l123_c3_c282_iftrue := VAR_layer0_node3_MUX_bit_math_h_l51_c3_6ec9_return_output;
     VAR_layer1_node2_MUX_bit_math_h_l134_c3_11b1_iffalse := VAR_layer0_node4_MUX_bit_math_h_l62_c3_7ace_return_output;
     VAR_layer1_node2_MUX_bit_math_h_l134_c3_11b1_iftrue := VAR_layer0_node5_MUX_bit_math_h_l73_c3_c881_return_output;
     VAR_layer1_node3_MUX_bit_math_h_l145_c3_bb9a_iffalse := VAR_layer0_node6_MUX_bit_math_h_l84_c3_4044_return_output;
     VAR_layer1_node3_MUX_bit_math_h_l145_c3_bb9a_iftrue := VAR_layer0_node7_MUX_bit_math_h_l95_c3_3f98_return_output;
     -- layer1_node0_MUX[bit_math_h_l112_c3_4eaa] LATENCY=0
     -- Inputs
     layer1_node0_MUX_bit_math_h_l112_c3_4eaa_cond <= VAR_layer1_node0_MUX_bit_math_h_l112_c3_4eaa_cond;
     layer1_node0_MUX_bit_math_h_l112_c3_4eaa_iftrue <= VAR_layer1_node0_MUX_bit_math_h_l112_c3_4eaa_iftrue;
     layer1_node0_MUX_bit_math_h_l112_c3_4eaa_iffalse <= VAR_layer1_node0_MUX_bit_math_h_l112_c3_4eaa_iffalse;
     -- Outputs
     VAR_layer1_node0_MUX_bit_math_h_l112_c3_4eaa_return_output := layer1_node0_MUX_bit_math_h_l112_c3_4eaa_return_output;

     -- layer1_node3_MUX[bit_math_h_l145_c3_bb9a] LATENCY=0
     -- Inputs
     layer1_node3_MUX_bit_math_h_l145_c3_bb9a_cond <= VAR_layer1_node3_MUX_bit_math_h_l145_c3_bb9a_cond;
     layer1_node3_MUX_bit_math_h_l145_c3_bb9a_iftrue <= VAR_layer1_node3_MUX_bit_math_h_l145_c3_bb9a_iftrue;
     layer1_node3_MUX_bit_math_h_l145_c3_bb9a_iffalse <= VAR_layer1_node3_MUX_bit_math_h_l145_c3_bb9a_iffalse;
     -- Outputs
     VAR_layer1_node3_MUX_bit_math_h_l145_c3_bb9a_return_output := layer1_node3_MUX_bit_math_h_l145_c3_bb9a_return_output;

     -- layer1_node1_MUX[bit_math_h_l123_c3_c282] LATENCY=0
     -- Inputs
     layer1_node1_MUX_bit_math_h_l123_c3_c282_cond <= VAR_layer1_node1_MUX_bit_math_h_l123_c3_c282_cond;
     layer1_node1_MUX_bit_math_h_l123_c3_c282_iftrue <= VAR_layer1_node1_MUX_bit_math_h_l123_c3_c282_iftrue;
     layer1_node1_MUX_bit_math_h_l123_c3_c282_iffalse <= VAR_layer1_node1_MUX_bit_math_h_l123_c3_c282_iffalse;
     -- Outputs
     VAR_layer1_node1_MUX_bit_math_h_l123_c3_c282_return_output := layer1_node1_MUX_bit_math_h_l123_c3_c282_return_output;

     -- layer1_node2_MUX[bit_math_h_l134_c3_11b1] LATENCY=0
     -- Inputs
     layer1_node2_MUX_bit_math_h_l134_c3_11b1_cond <= VAR_layer1_node2_MUX_bit_math_h_l134_c3_11b1_cond;
     layer1_node2_MUX_bit_math_h_l134_c3_11b1_iftrue <= VAR_layer1_node2_MUX_bit_math_h_l134_c3_11b1_iftrue;
     layer1_node2_MUX_bit_math_h_l134_c3_11b1_iffalse <= VAR_layer1_node2_MUX_bit_math_h_l134_c3_11b1_iffalse;
     -- Outputs
     VAR_layer1_node2_MUX_bit_math_h_l134_c3_11b1_return_output := layer1_node2_MUX_bit_math_h_l134_c3_11b1_return_output;

     -- Submodule level 3
     VAR_layer2_node0_MUX_bit_math_h_l162_c3_08f6_iffalse := VAR_layer1_node0_MUX_bit_math_h_l112_c3_4eaa_return_output;
     VAR_layer2_node0_MUX_bit_math_h_l162_c3_08f6_iftrue := VAR_layer1_node1_MUX_bit_math_h_l123_c3_c282_return_output;
     VAR_layer2_node1_MUX_bit_math_h_l173_c3_dfa9_iffalse := VAR_layer1_node2_MUX_bit_math_h_l134_c3_11b1_return_output;
     VAR_layer2_node1_MUX_bit_math_h_l173_c3_dfa9_iftrue := VAR_layer1_node3_MUX_bit_math_h_l145_c3_bb9a_return_output;
     -- layer2_node0_MUX[bit_math_h_l162_c3_08f6] LATENCY=0
     -- Inputs
     layer2_node0_MUX_bit_math_h_l162_c3_08f6_cond <= VAR_layer2_node0_MUX_bit_math_h_l162_c3_08f6_cond;
     layer2_node0_MUX_bit_math_h_l162_c3_08f6_iftrue <= VAR_layer2_node0_MUX_bit_math_h_l162_c3_08f6_iftrue;
     layer2_node0_MUX_bit_math_h_l162_c3_08f6_iffalse <= VAR_layer2_node0_MUX_bit_math_h_l162_c3_08f6_iffalse;
     -- Outputs
     VAR_layer2_node0_MUX_bit_math_h_l162_c3_08f6_return_output := layer2_node0_MUX_bit_math_h_l162_c3_08f6_return_output;

     -- layer2_node1_MUX[bit_math_h_l173_c3_dfa9] LATENCY=0
     -- Inputs
     layer2_node1_MUX_bit_math_h_l173_c3_dfa9_cond <= VAR_layer2_node1_MUX_bit_math_h_l173_c3_dfa9_cond;
     layer2_node1_MUX_bit_math_h_l173_c3_dfa9_iftrue <= VAR_layer2_node1_MUX_bit_math_h_l173_c3_dfa9_iftrue;
     layer2_node1_MUX_bit_math_h_l173_c3_dfa9_iffalse <= VAR_layer2_node1_MUX_bit_math_h_l173_c3_dfa9_iffalse;
     -- Outputs
     VAR_layer2_node1_MUX_bit_math_h_l173_c3_dfa9_return_output := layer2_node1_MUX_bit_math_h_l173_c3_dfa9_return_output;

     -- Submodule level 4
     VAR_layer3_node0_MUX_bit_math_h_l190_c3_87d8_iffalse := VAR_layer2_node0_MUX_bit_math_h_l162_c3_08f6_return_output;
     VAR_layer3_node0_MUX_bit_math_h_l190_c3_87d8_iftrue := VAR_layer2_node1_MUX_bit_math_h_l173_c3_dfa9_return_output;
     -- layer3_node0_MUX[bit_math_h_l190_c3_87d8] LATENCY=0
     -- Inputs
     layer3_node0_MUX_bit_math_h_l190_c3_87d8_cond <= VAR_layer3_node0_MUX_bit_math_h_l190_c3_87d8_cond;
     layer3_node0_MUX_bit_math_h_l190_c3_87d8_iftrue <= VAR_layer3_node0_MUX_bit_math_h_l190_c3_87d8_iftrue;
     layer3_node0_MUX_bit_math_h_l190_c3_87d8_iffalse <= VAR_layer3_node0_MUX_bit_math_h_l190_c3_87d8_iffalse;
     -- Outputs
     VAR_layer3_node0_MUX_bit_math_h_l190_c3_87d8_return_output := layer3_node0_MUX_bit_math_h_l190_c3_87d8_return_output;

     -- Submodule level 5
     VAR_return_output := VAR_layer3_node0_MUX_bit_math_h_l190_c3_87d8_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
