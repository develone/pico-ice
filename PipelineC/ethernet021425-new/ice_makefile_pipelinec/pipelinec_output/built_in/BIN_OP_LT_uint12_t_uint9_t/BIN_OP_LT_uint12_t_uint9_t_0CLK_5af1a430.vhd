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
entity BIN_OP_LT_uint12_t_uint9_t_0CLK_5af1a430 is
port(
 left : in unsigned(11 downto 0);
 right : in unsigned(8 downto 0);
 return_output : out unsigned(0 downto 0));
end BIN_OP_LT_uint12_t_uint9_t_0CLK_5af1a430;
architecture arch of BIN_OP_LT_uint12_t_uint9_t_0CLK_5af1a430 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- CONST_SR_9[BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744]
signal CONST_SR_9_BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744_x : unsigned(11 downto 0);
signal CONST_SR_9_BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744_return_output : unsigned(11 downto 0);

-- BIN_OP_EQ[BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00]
signal BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_left : unsigned(2 downto 0);
signal BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_right : unsigned(0 downto 0);
signal BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f]
signal rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_iftrue : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_iffalse : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_return_output : unsigned(0 downto 0);

-- BIN_OP_MINUS[BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96]
signal BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_left : signed(9 downto 0);
signal BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_right : signed(9 downto 0);
signal BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_return_output : signed(10 downto 0);

function CAST_TO_int10_t_uint9_t( rhs : unsigned) return signed is

  --variable rhs : unsigned(8 downto 0);
  variable return_output : signed(9 downto 0);

begin

      return_output := signed(std_logic_vector(resize(rhs,10)));
    return return_output;
end function;

function int10_9_9( x : signed) return unsigned is
--variable x : signed(9 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(9- i);
      end loop;
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- CONST_SR_9_BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744 : 0 clocks latency
CONST_SR_9_BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744 : entity work.CONST_SR_9_uint12_t_0CLK_de264c78 port map (
CONST_SR_9_BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744_x,
CONST_SR_9_BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744_return_output);

-- BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00 : 0 clocks latency
BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00 : entity work.BIN_OP_EQ_uint3_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_left,
BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_right,
BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_return_output);

-- rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f : 0 clocks latency
rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_cond,
rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_iftrue,
rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_iffalse,
rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_return_output);

-- BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96 : 0 clocks latency
BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96 : entity work.BIN_OP_MINUS_int10_t_int10_t_0CLK_de264c78 port map (
BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_left,
BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_right,
BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 CONST_SR_9_BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744_return_output,
 BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_return_output,
 rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_return_output,
 BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : unsigned(11 downto 0);
 variable VAR_right : unsigned(8 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_left_bot : unsigned(8 downto 0);
 variable VAR_left_bot_BIN_OP_LT_uint12_t_uint9_t_c_l9_c13_7003_0 : unsigned(8 downto 0);
 variable VAR_right_bot : unsigned(8 downto 0);
 variable VAR_right_bot_BIN_OP_LT_uint12_t_uint9_t_c_l10_c13_e91b_0 : unsigned(8 downto 0);
 variable VAR_top : unsigned(2 downto 0);
 variable VAR_top_BIN_OP_LT_uint12_t_uint9_t_c_l13_c3_8520 : unsigned(2 downto 0);
 variable VAR_CONST_SR_9_BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744_return_output : unsigned(11 downto 0);
 variable VAR_CONST_SR_9_BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744_x : unsigned(11 downto 0);
 variable VAR_rv : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_cond : unsigned(0 downto 0);
 variable VAR_sub : signed(9 downto 0);
 variable VAR_sub_BIN_OP_LT_uint12_t_uint9_t_c_l17_c13_8f73_0 : signed(9 downto 0);
 variable VAR_CAST_TO_int10_t_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_64b9_return_output : signed(9 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_left : signed(9 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_right : signed(9 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_return_output : signed(10 downto 0);
 variable VAR_lt_zero : unsigned(0 downto 0);
 variable VAR_int10_9_9_BIN_OP_LT_uint12_t_uint9_t_c_l18_c23_b151_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_right := to_unsigned(0, 1);
     VAR_rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_iffalse := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_CONST_SR_9_BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744_x := VAR_left;
     VAR_left_bot_BIN_OP_LT_uint12_t_uint9_t_c_l9_c13_7003_0 := resize(VAR_left, 9);
     VAR_right_bot_BIN_OP_LT_uint12_t_uint9_t_c_l10_c13_e91b_0 := VAR_right;
     VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_right := signed(std_logic_vector(resize(VAR_right_bot_BIN_OP_LT_uint12_t_uint9_t_c_l10_c13_e91b_0, 10)));
     -- CONST_SR_9[BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744] LATENCY=0
     -- Inputs
     CONST_SR_9_BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744_x <= VAR_CONST_SR_9_BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744_x;
     -- Outputs
     VAR_CONST_SR_9_BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744_return_output := CONST_SR_9_BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744_return_output;

     -- CAST_TO_int10_t[BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_64b9] LATENCY=0
     VAR_CAST_TO_int10_t_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_64b9_return_output := CAST_TO_int10_t_uint9_t(
     VAR_left_bot_BIN_OP_LT_uint12_t_uint9_t_c_l9_c13_7003_0);

     -- Submodule level 1
     VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_left := VAR_CAST_TO_int10_t_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_64b9_return_output;
     VAR_top_BIN_OP_LT_uint12_t_uint9_t_c_l13_c3_8520 := resize(VAR_CONST_SR_9_BIN_OP_LT_uint12_t_uint9_t_c_l13_c9_5744_return_output, 3);
     VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_left := VAR_top_BIN_OP_LT_uint12_t_uint9_t_c_l13_c3_8520;
     -- BIN_OP_MINUS[BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_left <= VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_left;
     BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_right <= VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_right;
     -- Outputs
     VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_return_output := BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_return_output;

     -- BIN_OP_EQ[BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00] LATENCY=0
     -- Inputs
     BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_left <= VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_left;
     BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_right <= VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_right;
     -- Outputs
     VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_return_output := BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_return_output;

     -- Submodule level 2
     VAR_rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_cond := VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint9_t_c_l15_c6_4b00_return_output;
     VAR_sub_BIN_OP_LT_uint12_t_uint9_t_c_l17_c13_8f73_0 := resize(VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint9_t_c_l17_c19_db96_return_output, 10);
     -- int10_9_9[BIN_OP_LT_uint12_t_uint9_t_c_l18_c23_b151] LATENCY=0
     VAR_int10_9_9_BIN_OP_LT_uint12_t_uint9_t_c_l18_c23_b151_return_output := int10_9_9(
     VAR_sub_BIN_OP_LT_uint12_t_uint9_t_c_l17_c13_8f73_0);

     -- Submodule level 3
     VAR_rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_iftrue := VAR_int10_9_9_BIN_OP_LT_uint12_t_uint9_t_c_l18_c23_b151_return_output;
     -- rv_MUX[BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_cond <= VAR_rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_cond;
     rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_iftrue <= VAR_rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_iftrue;
     rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_iffalse <= VAR_rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_return_output := rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_return_output;

     -- Submodule level 4
     VAR_return_output := VAR_rv_MUX_BIN_OP_LT_uint12_t_uint9_t_c_l15_c3_2c6f_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
