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
-- CONST_SR_8[BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20]
signal CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20_x : unsigned(15 downto 0);
signal CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20_return_output : unsigned(15 downto 0);

-- BIN_OP_EQ[BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf]
signal BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_left : unsigned(7 downto 0);
signal BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_right : unsigned(0 downto 0);
signal BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009]
signal rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_iftrue : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_iffalse : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_return_output : unsigned(0 downto 0);

-- BIN_OP_MINUS[BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2]
signal BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_left : signed(8 downto 0);
signal BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_right : signed(8 downto 0);
signal BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_return_output : signed(9 downto 0);

-- UNARY_OP_NOT[BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373]
signal UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373_return_output : unsigned(0 downto 0);

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
-- CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20 : 0 clocks latency
CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20 : entity work.CONST_SR_8_uint16_t_0CLK_de264c78 port map (
CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20_x,
CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20_return_output);

-- BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf : 0 clocks latency
BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf : entity work.BIN_OP_EQ_uint8_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_left,
BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_right,
BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_return_output);

-- rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009 : 0 clocks latency
rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_cond,
rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_iftrue,
rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_iffalse,
rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_return_output);

-- BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2 : 0 clocks latency
BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2 : entity work.BIN_OP_MINUS_int9_t_int9_t_0CLK_de264c78 port map (
BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_left,
BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_right,
BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_return_output);

-- UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373 : 0 clocks latency
UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373_expr,
UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20_return_output,
 BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_return_output,
 rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_return_output,
 BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_return_output,
 UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : unsigned(15 downto 0);
 variable VAR_right : unsigned(7 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_left_bot : unsigned(7 downto 0);
 variable VAR_left_bot_BIN_OP_GTE_uint16_t_uint8_t_c_l9_c13_5526_0 : unsigned(7 downto 0);
 variable VAR_right_bot : unsigned(7 downto 0);
 variable VAR_right_bot_BIN_OP_GTE_uint16_t_uint8_t_c_l10_c13_c322_0 : unsigned(7 downto 0);
 variable VAR_top : unsigned(7 downto 0);
 variable VAR_top_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c3_ed38 : unsigned(7 downto 0);
 variable VAR_CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20_return_output : unsigned(15 downto 0);
 variable VAR_CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20_x : unsigned(15 downto 0);
 variable VAR_rv : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_cond : unsigned(0 downto 0);
 variable VAR_sub : signed(8 downto 0);
 variable VAR_sub_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c12_4b74_0 : signed(8 downto 0);
 variable VAR_CAST_TO_int9_t_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_cf6e_return_output : signed(8 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_left : signed(8 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_right : signed(8 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_return_output : signed(9 downto 0);
 variable VAR_lt_zero : unsigned(0 downto 0);
 variable VAR_int9_8_8_BIN_OP_GTE_uint16_t_uint8_t_c_l18_c23_2eca_return_output : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_iffalse := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_right := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20_x := VAR_left;
     VAR_left_bot_BIN_OP_GTE_uint16_t_uint8_t_c_l9_c13_5526_0 := resize(VAR_left, 8);
     VAR_right_bot_BIN_OP_GTE_uint16_t_uint8_t_c_l10_c13_c322_0 := VAR_right;
     VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_right := signed(std_logic_vector(resize(VAR_right_bot_BIN_OP_GTE_uint16_t_uint8_t_c_l10_c13_c322_0, 9)));
     -- CAST_TO_int9_t[BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_cf6e] LATENCY=0
     VAR_CAST_TO_int9_t_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_cf6e_return_output := CAST_TO_int9_t_uint8_t(
     VAR_left_bot_BIN_OP_GTE_uint16_t_uint8_t_c_l9_c13_5526_0);

     -- CONST_SR_8[BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20] LATENCY=0
     -- Inputs
     CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20_x <= VAR_CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20_x;
     -- Outputs
     VAR_CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20_return_output := CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20_return_output;

     -- Submodule level 1
     VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_left := VAR_CAST_TO_int9_t_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_cf6e_return_output;
     VAR_top_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c3_ed38 := resize(VAR_CONST_SR_8_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c9_be20_return_output, 8);
     VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_left := VAR_top_BIN_OP_GTE_uint16_t_uint8_t_c_l13_c3_ed38;
     -- BIN_OP_MINUS[BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_left <= VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_left;
     BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_right <= VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_right;
     -- Outputs
     VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_return_output := BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_return_output;

     -- BIN_OP_EQ[BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf] LATENCY=0
     -- Inputs
     BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_left <= VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_left;
     BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_right <= VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_right;
     -- Outputs
     VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_return_output := BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_return_output;

     -- Submodule level 2
     VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_cond := VAR_BIN_OP_EQ_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c6_6ecf_return_output;
     VAR_sub_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c12_4b74_0 := resize(VAR_BIN_OP_MINUS_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c18_5bf2_return_output, 9);
     -- int9_8_8[BIN_OP_GTE_uint16_t_uint8_t_c_l18_c23_2eca] LATENCY=0
     VAR_int9_8_8_BIN_OP_GTE_uint16_t_uint8_t_c_l18_c23_2eca_return_output := int9_8_8(
     VAR_sub_BIN_OP_GTE_uint16_t_uint8_t_c_l17_c12_4b74_0);

     -- Submodule level 3
     VAR_UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373_expr := VAR_int9_8_8_BIN_OP_GTE_uint16_t_uint8_t_c_l18_c23_2eca_return_output;
     -- UNARY_OP_NOT[BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373_expr <= VAR_UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373_return_output := UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373_return_output;

     -- Submodule level 4
     VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_iftrue := VAR_UNARY_OP_NOT_BIN_OP_GTE_uint16_t_uint8_t_c_l19_c11_f373_return_output;
     -- rv_MUX[BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_cond <= VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_cond;
     rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_iftrue <= VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_iftrue;
     rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_iffalse <= VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_return_output := rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_return_output;

     -- Submodule level 5
     VAR_return_output := VAR_rv_MUX_BIN_OP_GTE_uint16_t_uint8_t_c_l15_c3_6009_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
