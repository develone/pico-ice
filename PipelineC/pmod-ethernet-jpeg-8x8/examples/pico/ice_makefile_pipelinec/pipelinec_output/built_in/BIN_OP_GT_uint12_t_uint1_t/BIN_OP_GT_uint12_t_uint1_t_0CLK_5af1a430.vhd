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
-- Submodules: 6
entity BIN_OP_GT_uint12_t_uint1_t_0CLK_5af1a430 is
port(
 left : in unsigned(11 downto 0);
 right : in unsigned(0 downto 0);
 return_output : out unsigned(0 downto 0));
end BIN_OP_GT_uint12_t_uint1_t_0CLK_5af1a430;
architecture arch of BIN_OP_GT_uint12_t_uint1_t_0CLK_5af1a430 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- CONST_SR_1[BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9]
signal CONST_SR_1_BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9_x : unsigned(11 downto 0);
signal CONST_SR_1_BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9_return_output : unsigned(11 downto 0);

-- BIN_OP_EQ[BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4]
signal BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_left : unsigned(10 downto 0);
signal BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_right : unsigned(0 downto 0);
signal BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8]
signal rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_iftrue : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_iffalse : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_return_output : unsigned(0 downto 0);

-- BIN_OP_MINUS[BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817]
signal BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_left : signed(1 downto 0);
signal BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_right : signed(1 downto 0);
signal BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_return_output : signed(2 downto 0);

function CAST_TO_int2_t_uint1_t( rhs : unsigned) return signed is

  --variable rhs : unsigned(0 downto 0);
  variable return_output : signed(1 downto 0);

begin

      return_output := signed(std_logic_vector(resize(rhs,2)));
    return return_output;
end function;

function int2_1_1( x : signed) return unsigned is
--variable x : signed(1 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(1- i);
      end loop;
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- CONST_SR_1_BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9 : 0 clocks latency
CONST_SR_1_BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9 : entity work.CONST_SR_1_uint12_t_0CLK_de264c78 port map (
CONST_SR_1_BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9_x,
CONST_SR_1_BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9_return_output);

-- BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4 : 0 clocks latency
BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4 : entity work.BIN_OP_EQ_uint11_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_left,
BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_right,
BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_return_output);

-- rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8 : 0 clocks latency
rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_cond,
rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_iftrue,
rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_iffalse,
rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_return_output);

-- BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817 : 0 clocks latency
BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817 : entity work.BIN_OP_MINUS_int2_t_int2_t_0CLK_de264c78 port map (
BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_left,
BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_right,
BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 CONST_SR_1_BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9_return_output,
 BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_return_output,
 rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_return_output,
 BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : unsigned(11 downto 0);
 variable VAR_right : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_left_bot : unsigned(0 downto 0);
 variable VAR_left_bot_BIN_OP_GT_uint12_t_uint1_t_c_l9_c13_e0a5_0 : unsigned(0 downto 0);
 variable VAR_right_bot : unsigned(0 downto 0);
 variable VAR_top : unsigned(10 downto 0);
 variable VAR_top_BIN_OP_GT_uint12_t_uint1_t_c_l13_c3_f590 : unsigned(10 downto 0);
 variable VAR_CONST_SR_1_BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9_return_output : unsigned(11 downto 0);
 variable VAR_CONST_SR_1_BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9_x : unsigned(11 downto 0);
 variable VAR_rv : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_left : unsigned(10 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_cond : unsigned(0 downto 0);
 variable VAR_sub : signed(1 downto 0);
 variable VAR_sub_BIN_OP_GT_uint12_t_uint1_t_c_l17_c12_e48a_0 : signed(1 downto 0);
 variable VAR_CAST_TO_int2_t_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_17be_return_output : signed(1 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_left : signed(1 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_right : signed(1 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_return_output : signed(2 downto 0);
 variable VAR_lt_zero : unsigned(0 downto 0);
 variable VAR_int2_1_1_BIN_OP_GT_uint12_t_uint1_t_c_l18_c23_40dd_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_right := to_unsigned(0, 1);
     VAR_rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_iffalse := to_unsigned(1, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_CONST_SR_1_BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9_x := VAR_left;
     VAR_left_bot_BIN_OP_GT_uint12_t_uint1_t_c_l9_c13_e0a5_0 := resize(VAR_left, 1);
     VAR_BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_right := signed(std_logic_vector(resize(VAR_left_bot_BIN_OP_GT_uint12_t_uint1_t_c_l9_c13_e0a5_0, 2)));
     -- CAST_TO_int2_t[BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_17be] LATENCY=0
     VAR_CAST_TO_int2_t_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_17be_return_output := CAST_TO_int2_t_uint1_t(
     VAR_right);

     -- CONST_SR_1[BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9] LATENCY=0
     -- Inputs
     CONST_SR_1_BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9_x <= VAR_CONST_SR_1_BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9_x;
     -- Outputs
     VAR_CONST_SR_1_BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9_return_output := CONST_SR_1_BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9_return_output;

     -- Submodule level 1
     VAR_BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_left := VAR_CAST_TO_int2_t_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_17be_return_output;
     VAR_top_BIN_OP_GT_uint12_t_uint1_t_c_l13_c3_f590 := resize(VAR_CONST_SR_1_BIN_OP_GT_uint12_t_uint1_t_c_l13_c9_81e9_return_output, 11);
     VAR_BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_left := VAR_top_BIN_OP_GT_uint12_t_uint1_t_c_l13_c3_f590;
     -- BIN_OP_MINUS[BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_left <= VAR_BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_left;
     BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_right <= VAR_BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_right;
     -- Outputs
     VAR_BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_return_output := BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_return_output;

     -- BIN_OP_EQ[BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4] LATENCY=0
     -- Inputs
     BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_left <= VAR_BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_left;
     BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_right <= VAR_BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_right;
     -- Outputs
     VAR_BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_return_output := BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_return_output;

     -- Submodule level 2
     VAR_rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_cond := VAR_BIN_OP_EQ_BIN_OP_GT_uint12_t_uint1_t_c_l15_c6_a7f4_return_output;
     VAR_sub_BIN_OP_GT_uint12_t_uint1_t_c_l17_c12_e48a_0 := resize(VAR_BIN_OP_MINUS_BIN_OP_GT_uint12_t_uint1_t_c_l17_c18_2817_return_output, 2);
     -- int2_1_1[BIN_OP_GT_uint12_t_uint1_t_c_l18_c23_40dd] LATENCY=0
     VAR_int2_1_1_BIN_OP_GT_uint12_t_uint1_t_c_l18_c23_40dd_return_output := int2_1_1(
     VAR_sub_BIN_OP_GT_uint12_t_uint1_t_c_l17_c12_e48a_0);

     -- Submodule level 3
     VAR_rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_iftrue := VAR_int2_1_1_BIN_OP_GT_uint12_t_uint1_t_c_l18_c23_40dd_return_output;
     -- rv_MUX[BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_cond <= VAR_rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_cond;
     rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_iftrue <= VAR_rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_iftrue;
     rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_iffalse <= VAR_rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_return_output := rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_return_output;

     -- Submodule level 4
     VAR_return_output := VAR_rv_MUX_BIN_OP_GT_uint12_t_uint1_t_c_l15_c3_d5e8_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
