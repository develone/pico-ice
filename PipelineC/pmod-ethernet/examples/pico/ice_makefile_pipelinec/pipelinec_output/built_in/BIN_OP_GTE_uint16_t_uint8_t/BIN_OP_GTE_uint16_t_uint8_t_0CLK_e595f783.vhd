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
entity BIN_OP_GTE_uint16_t_uint8_t_0CLK_e595f783 is
port(
 left : in unsigned(15 downto 0);
 right : in unsigned(7 downto 0);
 return_output : out unsigned(0 downto 0));
end BIN_OP_GTE_uint16_t_uint8_t_0CLK_e595f783;
architecture arch of BIN_OP_GTE_uint16_t_uint8_t_0CLK_e595f783 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- CONST_SR_8[BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609]
signal CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609_x : unsigned(15 downto 0);
signal CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609_return_output : unsigned(15 downto 0);

-- BIN_OP_EQ[BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14]
signal BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_left : unsigned(7 downto 0);
signal BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_right : unsigned(0 downto 0);
signal BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66]
signal rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_iftrue : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_iffalse : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_return_output : unsigned(0 downto 0);

-- BIN_OP_MINUS[BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154]
signal BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_left : signed(8 downto 0);
signal BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_right : signed(8 downto 0);
signal BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_return_output : signed(9 downto 0);

-- UNARY_OP_NOT[BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3]
signal UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3_return_output : unsigned(0 downto 0);

function CAST_TO_int9_t_uint8_t( rhs : unsigned) return signed is

  --variable rhs : unsigned(7 downto 0);
  variable return_output : signed(8 downto 0);

begin

      return_output := signed(std_logic_vector(resize(rhs,9)));
    return return_output;
end function;

function int9_8_8( x : signed) return unsigned is
--variable x : signed(8 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(8- i);
      end loop;
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609 : 0 clocks latency
CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609 : entity work.CONST_SR_8_uint16_t_0CLK_de264c78 port map (
CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609_x,
CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609_return_output);

-- BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14 : 0 clocks latency
BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14 : entity work.BIN_OP_EQ_uint8_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_left,
BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_right,
BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_return_output);

-- rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66 : 0 clocks latency
rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_cond,
rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_iftrue,
rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_iffalse,
rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_return_output);

-- BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154 : 0 clocks latency
BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154 : entity work.BIN_OP_MINUS_int9_t_int9_t_0CLK_de264c78 port map (
BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_left,
BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_right,
BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_return_output);

-- UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3 : 0 clocks latency
UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3_expr,
UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609_return_output,
 BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_return_output,
 rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_return_output,
 BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_return_output,
 UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : unsigned(15 downto 0);
 variable VAR_right : unsigned(7 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_left_bot : unsigned(7 downto 0);
 variable VAR_left_bot_BIN_OP_GTE_uint16_t_uint8_t_c_l9_c13_70d0_0 : unsigned(7 downto 0);
 variable VAR_right_bot : unsigned(7 downto 0);
 variable VAR_right_bot_BIN_OP_GTE_uint16_t_uint8_t_c_l10_c13_e3bb_0 : unsigned(7 downto 0);
 variable VAR_top : unsigned(7 downto 0);
 variable VAR_top_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c3_0fa0 : unsigned(7 downto 0);
 variable VAR_CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609_return_output : unsigned(15 downto 0);
 variable VAR_CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609_x : unsigned(15 downto 0);
 variable VAR_rv : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_cond : unsigned(0 downto 0);
 variable VAR_sub : signed(8 downto 0);
 variable VAR_sub_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c12_d995_0 : signed(8 downto 0);
 variable VAR_CAST_TO_int9_t_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_6db8_return_output : signed(8 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_left : signed(8 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_right : signed(8 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_return_output : signed(9 downto 0);
 variable VAR_lt_zero : unsigned(0 downto 0);
 variable VAR_int9_8_8_BIN_OP_GTE_uint16_t_uint8_t_c_l18_c23_6a9c_return_output : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_right := to_unsigned(0, 1);
     VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_iffalse := to_unsigned(1, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609_x := VAR_left;
     VAR_left_bot_BIN_OP_GTE_uint16_t_uint8_t_c_l9_c13_70d0_0 := resize(VAR_left, 8);
     VAR_right_bot_BIN_OP_GTE_uint16_t_uint8_t_c_l10_c13_e3bb_0 := VAR_right;
     VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_right := signed(std_logic_vector(resize(VAR_right_bot_BIN_OP_GTE_uint16_t_uint8_t_c_l10_c13_e3bb_0, 9)));
     -- CONST_SR_8[BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609] LATENCY=0
     -- Inputs
     CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609_x <= VAR_CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609_x;
     -- Outputs
     VAR_CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609_return_output := CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609_return_output;

     -- CAST_TO_int9_t[BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_6db8] LATENCY=0
     VAR_CAST_TO_int9_t_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_6db8_return_output := CAST_TO_int9_t_uint8_t(
     VAR_left_bot_BIN_OP_GTE_uint16_t_uint8_t_c_l9_c13_70d0_0);

     -- Submodule level 1
     VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_left := VAR_CAST_TO_int9_t_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_6db8_return_output;
     VAR_top_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c3_0fa0 := resize(VAR_CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_2609_return_output, 8);
     VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_left := VAR_top_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c3_0fa0;
     -- BIN_OP_MINUS[BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_left <= VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_left;
     BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_right <= VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_right;
     -- Outputs
     VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_return_output := BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_return_output;

     -- BIN_OP_EQ[BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14] LATENCY=0
     -- Inputs
     BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_left <= VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_left;
     BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_right <= VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_right;
     -- Outputs
     VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_return_output := BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_return_output;

     -- Submodule level 2
     VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_cond := VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_5e14_return_output;
     VAR_sub_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c12_d995_0 := resize(VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_d154_return_output, 9);
     -- int9_8_8[BIN_OP_GTE_uint16_t_uint8_t_c_l18_c23_6a9c] LATENCY=0
     VAR_int9_8_8_BIN_OP_GTE_uint16_t_uint8_t_c_l18_c23_6a9c_return_output := int9_8_8(
     VAR_sub_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c12_d995_0);

     -- Submodule level 3
     VAR_UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3_expr := VAR_int9_8_8_BIN_OP_GTE_uint16_t_uint8_t_c_l18_c23_6a9c_return_output;
     -- UNARY_OP_NOT[BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3_expr <= VAR_UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3_return_output := UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3_return_output;

     -- Submodule level 4
     VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_iftrue := VAR_UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_66e3_return_output;
     -- rv_MUX[BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_cond <= VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_cond;
     rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_iftrue <= VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_iftrue;
     rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_iffalse <= VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_return_output := rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_return_output;

     -- Submodule level 5
     VAR_return_output := VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_ff66_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
