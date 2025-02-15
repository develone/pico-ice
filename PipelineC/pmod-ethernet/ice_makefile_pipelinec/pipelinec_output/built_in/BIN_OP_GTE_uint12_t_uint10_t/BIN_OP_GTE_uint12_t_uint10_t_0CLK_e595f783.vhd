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
-- Submodules: 7
entity BIN_OP_GTE_uint12_t_uint10_t_0CLK_e595f783 is
port(
 left : in unsigned(11 downto 0);
 right : in unsigned(9 downto 0);
 return_output : out unsigned(0 downto 0));
end BIN_OP_GTE_uint12_t_uint10_t_0CLK_e595f783;
architecture arch of BIN_OP_GTE_uint12_t_uint10_t_0CLK_e595f783 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- CONST_SR_10[BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7]
signal CONST_SR_10_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7_x : unsigned(11 downto 0);
signal CONST_SR_10_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7_return_output : unsigned(11 downto 0);

-- BIN_OP_EQ[BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997]
signal BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_left : unsigned(1 downto 0);
signal BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_right : unsigned(0 downto 0);
signal BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498]
signal rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_iftrue : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_iffalse : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_return_output : unsigned(0 downto 0);

-- BIN_OP_MINUS[BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135]
signal BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_left : signed(10 downto 0);
signal BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_right : signed(10 downto 0);
signal BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_return_output : signed(11 downto 0);

-- UNARY_OP_NOT[BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473]
signal UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473_return_output : unsigned(0 downto 0);

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
-- CONST_SR_10_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7 : 0 clocks latency
CONST_SR_10_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7 : entity work.CONST_SR_10_uint12_t_0CLK_de264c78 port map (
CONST_SR_10_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7_x,
CONST_SR_10_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7_return_output);

-- BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997 : 0 clocks latency
BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997 : entity work.BIN_OP_EQ_uint2_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_left,
BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_right,
BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_return_output);

-- rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498 : 0 clocks latency
rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_cond,
rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_iftrue,
rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_iffalse,
rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_return_output);

-- BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135 : 0 clocks latency
BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135 : entity work.BIN_OP_MINUS_int11_t_int11_t_0CLK_de264c78 port map (
BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_left,
BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_right,
BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_return_output);

-- UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473 : 0 clocks latency
UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473_expr,
UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 CONST_SR_10_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7_return_output,
 BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_return_output,
 rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_return_output,
 BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_return_output,
 UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : unsigned(11 downto 0);
 variable VAR_right : unsigned(9 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_left_bot : unsigned(9 downto 0);
 variable VAR_left_bot_BIN_OP_GTE_uint12_t_uint10_t_c_l9_c14_d9e1_0 : unsigned(9 downto 0);
 variable VAR_right_bot : unsigned(9 downto 0);
 variable VAR_right_bot_BIN_OP_GTE_uint12_t_uint10_t_c_l10_c14_d202_0 : unsigned(9 downto 0);
 variable VAR_top : unsigned(1 downto 0);
 variable VAR_top_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c3_f169 : unsigned(1 downto 0);
 variable VAR_CONST_SR_10_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7_return_output : unsigned(11 downto 0);
 variable VAR_CONST_SR_10_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7_x : unsigned(11 downto 0);
 variable VAR_rv : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_cond : unsigned(0 downto 0);
 variable VAR_sub : signed(10 downto 0);
 variable VAR_sub_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c13_17e1_0 : signed(10 downto 0);
 variable VAR_CAST_TO_int11_t_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3649_return_output : signed(10 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_left : signed(10 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_right : signed(10 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_return_output : signed(11 downto 0);
 variable VAR_lt_zero : unsigned(0 downto 0);
 variable VAR_int11_10_10_BIN_OP_GTE_uint12_t_uint10_t_c_l18_c23_216b_return_output : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_iffalse := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_right := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_CONST_SR_10_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7_x := VAR_left;
     VAR_left_bot_BIN_OP_GTE_uint12_t_uint10_t_c_l9_c14_d9e1_0 := resize(VAR_left, 10);
     VAR_right_bot_BIN_OP_GTE_uint12_t_uint10_t_c_l10_c14_d202_0 := VAR_right;
     VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_right := signed(std_logic_vector(resize(VAR_right_bot_BIN_OP_GTE_uint12_t_uint10_t_c_l10_c14_d202_0, 11)));
     -- CAST_TO_int11_t[BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3649] LATENCY=0
     VAR_CAST_TO_int11_t_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3649_return_output := CAST_TO_int11_t_uint10_t(
     VAR_left_bot_BIN_OP_GTE_uint12_t_uint10_t_c_l9_c14_d9e1_0);

     -- CONST_SR_10[BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7] LATENCY=0
     -- Inputs
     CONST_SR_10_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7_x <= VAR_CONST_SR_10_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7_x;
     -- Outputs
     VAR_CONST_SR_10_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7_return_output := CONST_SR_10_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7_return_output;

     -- Submodule level 1
     VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_left := VAR_CAST_TO_int11_t_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3649_return_output;
     VAR_top_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c3_f169 := resize(VAR_CONST_SR_10_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c9_66f7_return_output, 2);
     VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_left := VAR_top_BIN_OP_GTE_uint12_t_uint10_t_c_l13_c3_f169;
     -- BIN_OP_MINUS[BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_left <= VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_left;
     BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_right <= VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_right;
     -- Outputs
     VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_return_output := BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_return_output;

     -- BIN_OP_EQ[BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997] LATENCY=0
     -- Inputs
     BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_left <= VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_left;
     BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_right <= VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_right;
     -- Outputs
     VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_return_output := BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_return_output;

     -- Submodule level 2
     VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_cond := VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c6_c997_return_output;
     VAR_sub_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c13_17e1_0 := resize(VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c19_3135_return_output, 11);
     -- int11_10_10[BIN_OP_GTE_uint12_t_uint10_t_c_l18_c23_216b] LATENCY=0
     VAR_int11_10_10_BIN_OP_GTE_uint12_t_uint10_t_c_l18_c23_216b_return_output := int11_10_10(
     VAR_sub_BIN_OP_GTE_uint12_t_uint10_t_c_l17_c13_17e1_0);

     -- Submodule level 3
     VAR_UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473_expr := VAR_int11_10_10_BIN_OP_GTE_uint12_t_uint10_t_c_l18_c23_216b_return_output;
     -- UNARY_OP_NOT[BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473_expr <= VAR_UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473_return_output := UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473_return_output;

     -- Submodule level 4
     VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_iftrue := VAR_UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint10_t_c_l19_c11_c473_return_output;
     -- rv_MUX[BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_cond <= VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_cond;
     rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_iftrue <= VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_iftrue;
     rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_iffalse <= VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_return_output := rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_return_output;

     -- Submodule level 5
     VAR_return_output := VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint10_t_c_l15_c3_0498_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
