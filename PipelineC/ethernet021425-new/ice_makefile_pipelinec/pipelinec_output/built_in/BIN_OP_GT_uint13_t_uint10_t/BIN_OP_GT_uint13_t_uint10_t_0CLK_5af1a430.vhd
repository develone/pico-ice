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
entity BIN_OP_GT_uint13_t_uint10_t_0CLK_5af1a430 is
port(
 left : in unsigned(12 downto 0);
 right : in unsigned(9 downto 0);
 return_output : out unsigned(0 downto 0));
end BIN_OP_GT_uint13_t_uint10_t_0CLK_5af1a430;
architecture arch of BIN_OP_GT_uint13_t_uint10_t_0CLK_5af1a430 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- CONST_SR_10[BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03]
signal CONST_SR_10_BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03_x : unsigned(12 downto 0);
signal CONST_SR_10_BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03_return_output : unsigned(12 downto 0);

-- BIN_OP_EQ[BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca]
signal BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_left : unsigned(2 downto 0);
signal BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_right : unsigned(0 downto 0);
signal BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346]
signal rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_iftrue : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_iffalse : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_return_output : unsigned(0 downto 0);

-- BIN_OP_MINUS[BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2]
signal BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_left : signed(10 downto 0);
signal BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_right : signed(10 downto 0);
signal BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_return_output : signed(11 downto 0);

function CAST_TO_int11_t_uint10_t( rhs : unsigned) return signed is

  --variable rhs : unsigned(9 downto 0);
  variable return_output : signed(10 downto 0);

begin

      return_output := signed(std_logic_vector(resize(rhs,11)));
    return return_output;
end function;

function int11_10_10( x : signed) return unsigned is
--variable x : signed(10 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(10- i);
      end loop;
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- CONST_SR_10_BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03 : 0 clocks latency
CONST_SR_10_BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03 : entity work.CONST_SR_10_uint13_t_0CLK_de264c78 port map (
CONST_SR_10_BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03_x,
CONST_SR_10_BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03_return_output);

-- BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca : 0 clocks latency
BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca : entity work.BIN_OP_EQ_uint3_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_left,
BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_right,
BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_return_output);

-- rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346 : 0 clocks latency
rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_cond,
rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_iftrue,
rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_iffalse,
rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_return_output);

-- BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2 : 0 clocks latency
BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2 : entity work.BIN_OP_MINUS_int11_t_int11_t_0CLK_de264c78 port map (
BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_left,
BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_right,
BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 CONST_SR_10_BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03_return_output,
 BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_return_output,
 rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_return_output,
 BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : unsigned(12 downto 0);
 variable VAR_right : unsigned(9 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_left_bot : unsigned(9 downto 0);
 variable VAR_left_bot_BIN_OP_GT_uint13_t_uint10_t_c_l9_c14_212f_0 : unsigned(9 downto 0);
 variable VAR_right_bot : unsigned(9 downto 0);
 variable VAR_top : unsigned(2 downto 0);
 variable VAR_top_BIN_OP_GT_uint13_t_uint10_t_c_l13_c3_c3e7 : unsigned(2 downto 0);
 variable VAR_CONST_SR_10_BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03_return_output : unsigned(12 downto 0);
 variable VAR_CONST_SR_10_BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03_x : unsigned(12 downto 0);
 variable VAR_rv : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_cond : unsigned(0 downto 0);
 variable VAR_sub : signed(10 downto 0);
 variable VAR_sub_BIN_OP_GT_uint13_t_uint10_t_c_l17_c13_03d7_0 : signed(10 downto 0);
 variable VAR_CAST_TO_int11_t_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_f064_return_output : signed(10 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_left : signed(10 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_right : signed(10 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_return_output : signed(11 downto 0);
 variable VAR_lt_zero : unsigned(0 downto 0);
 variable VAR_int11_10_10_BIN_OP_GT_uint13_t_uint10_t_c_l18_c23_3b4c_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_iffalse := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_right := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_CONST_SR_10_BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03_x := VAR_left;
     VAR_left_bot_BIN_OP_GT_uint13_t_uint10_t_c_l9_c14_212f_0 := resize(VAR_left, 10);
     VAR_BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_right := signed(std_logic_vector(resize(VAR_left_bot_BIN_OP_GT_uint13_t_uint10_t_c_l9_c14_212f_0, 11)));
     -- CAST_TO_int11_t[BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_f064] LATENCY=0
     VAR_CAST_TO_int11_t_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_f064_return_output := CAST_TO_int11_t_uint10_t(
     VAR_right);

     -- CONST_SR_10[BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03] LATENCY=0
     -- Inputs
     CONST_SR_10_BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03_x <= VAR_CONST_SR_10_BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03_x;
     -- Outputs
     VAR_CONST_SR_10_BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03_return_output := CONST_SR_10_BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03_return_output;

     -- Submodule level 1
     VAR_BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_left := VAR_CAST_TO_int11_t_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_f064_return_output;
     VAR_top_BIN_OP_GT_uint13_t_uint10_t_c_l13_c3_c3e7 := resize(VAR_CONST_SR_10_BIN_OP_GT_uint13_t_uint10_t_c_l13_c9_fd03_return_output, 3);
     VAR_BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_left := VAR_top_BIN_OP_GT_uint13_t_uint10_t_c_l13_c3_c3e7;
     -- BIN_OP_EQ[BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca] LATENCY=0
     -- Inputs
     BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_left <= VAR_BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_left;
     BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_right <= VAR_BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_right;
     -- Outputs
     VAR_BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_return_output := BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_return_output;

     -- BIN_OP_MINUS[BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_left <= VAR_BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_left;
     BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_right <= VAR_BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_right;
     -- Outputs
     VAR_BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_return_output := BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_return_output;

     -- Submodule level 2
     VAR_rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_cond := VAR_BIN_OP_EQ_BIN_OP_GT_uint13_t_uint10_t_c_l15_c6_1cca_return_output;
     VAR_sub_BIN_OP_GT_uint13_t_uint10_t_c_l17_c13_03d7_0 := resize(VAR_BIN_OP_MINUS_BIN_OP_GT_uint13_t_uint10_t_c_l17_c19_1ae2_return_output, 11);
     -- int11_10_10[BIN_OP_GT_uint13_t_uint10_t_c_l18_c23_3b4c] LATENCY=0
     VAR_int11_10_10_BIN_OP_GT_uint13_t_uint10_t_c_l18_c23_3b4c_return_output := int11_10_10(
     VAR_sub_BIN_OP_GT_uint13_t_uint10_t_c_l17_c13_03d7_0);

     -- Submodule level 3
     VAR_rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_iftrue := VAR_int11_10_10_BIN_OP_GT_uint13_t_uint10_t_c_l18_c23_3b4c_return_output;
     -- rv_MUX[BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_cond <= VAR_rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_cond;
     rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_iftrue <= VAR_rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_iftrue;
     rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_iffalse <= VAR_rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_return_output := rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_return_output;

     -- Submodule level 4
     VAR_return_output := VAR_rv_MUX_BIN_OP_GT_uint13_t_uint10_t_c_l15_c3_a346_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
