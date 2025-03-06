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
entity BIN_OP_GTE_uint12_t_uint2_t_0CLK_e595f783 is
port(
 left : in unsigned(11 downto 0);
 right : in unsigned(1 downto 0);
 return_output : out unsigned(0 downto 0));
end BIN_OP_GTE_uint12_t_uint2_t_0CLK_e595f783;
architecture arch of BIN_OP_GTE_uint12_t_uint2_t_0CLK_e595f783 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- CONST_SR_2[BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430]
signal CONST_SR_2_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430_x : unsigned(11 downto 0);
signal CONST_SR_2_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430_return_output : unsigned(11 downto 0);

-- BIN_OP_EQ[BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681]
signal BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_left : unsigned(9 downto 0);
signal BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_right : unsigned(0 downto 0);
signal BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4]
signal rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_iftrue : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_iffalse : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_return_output : unsigned(0 downto 0);

-- BIN_OP_MINUS[BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075]
signal BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_left : signed(2 downto 0);
signal BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_right : signed(2 downto 0);
signal BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_return_output : signed(3 downto 0);

-- UNARY_OP_NOT[BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff]
signal UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff_return_output : unsigned(0 downto 0);

function CAST_TO_int3_t_uint2_t( rhs : unsigned) return signed is

  --variable rhs : unsigned(1 downto 0);
  variable return_output : signed(2 downto 0);

begin

      return_output := signed(std_logic_vector(resize(rhs,3)));
    return return_output;
end function;

function int3_2_2( x : signed) return unsigned is
--variable x : signed(2 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(2- i);
      end loop;
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- CONST_SR_2_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430 : 0 clocks latency
CONST_SR_2_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430 : entity work.CONST_SR_2_uint12_t_0CLK_de264c78 port map (
CONST_SR_2_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430_x,
CONST_SR_2_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430_return_output);

-- BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681 : 0 clocks latency
BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681 : entity work.BIN_OP_EQ_uint10_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_left,
BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_right,
BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_return_output);

-- rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4 : 0 clocks latency
rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_cond,
rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_iftrue,
rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_iffalse,
rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_return_output);

-- BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075 : 0 clocks latency
BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075 : entity work.BIN_OP_MINUS_int3_t_int3_t_0CLK_de264c78 port map (
BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_left,
BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_right,
BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_return_output);

-- UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff : 0 clocks latency
UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff_expr,
UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 CONST_SR_2_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430_return_output,
 BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_return_output,
 rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_return_output,
 BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_return_output,
 UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : unsigned(11 downto 0);
 variable VAR_right : unsigned(1 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_left_bot : unsigned(1 downto 0);
 variable VAR_left_bot_BIN_OP_GTE_uint12_t_uint2_t_c_l9_c13_f35c_0 : unsigned(1 downto 0);
 variable VAR_right_bot : unsigned(1 downto 0);
 variable VAR_right_bot_BIN_OP_GTE_uint12_t_uint2_t_c_l10_c13_0ca8_0 : unsigned(1 downto 0);
 variable VAR_top : unsigned(9 downto 0);
 variable VAR_top_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c3_1648 : unsigned(9 downto 0);
 variable VAR_CONST_SR_2_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430_return_output : unsigned(11 downto 0);
 variable VAR_CONST_SR_2_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430_x : unsigned(11 downto 0);
 variable VAR_rv : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_left : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_cond : unsigned(0 downto 0);
 variable VAR_sub : signed(2 downto 0);
 variable VAR_sub_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c12_6364_0 : signed(2 downto 0);
 variable VAR_CAST_TO_int3_t_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_b42f_return_output : signed(2 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_left : signed(2 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_right : signed(2 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_return_output : signed(3 downto 0);
 variable VAR_lt_zero : unsigned(0 downto 0);
 variable VAR_int3_2_2_BIN_OP_GTE_uint12_t_uint2_t_c_l18_c23_7266_return_output : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_right := to_unsigned(0, 1);
     VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_iffalse := to_unsigned(1, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_CONST_SR_2_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430_x := VAR_left;
     VAR_left_bot_BIN_OP_GTE_uint12_t_uint2_t_c_l9_c13_f35c_0 := resize(VAR_left, 2);
     VAR_right_bot_BIN_OP_GTE_uint12_t_uint2_t_c_l10_c13_0ca8_0 := VAR_right;
     VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_right := signed(std_logic_vector(resize(VAR_right_bot_BIN_OP_GTE_uint12_t_uint2_t_c_l10_c13_0ca8_0, 3)));
     -- CONST_SR_2[BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430] LATENCY=0
     -- Inputs
     CONST_SR_2_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430_x <= VAR_CONST_SR_2_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430_x;
     -- Outputs
     VAR_CONST_SR_2_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430_return_output := CONST_SR_2_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430_return_output;

     -- CAST_TO_int3_t[BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_b42f] LATENCY=0
     VAR_CAST_TO_int3_t_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_b42f_return_output := CAST_TO_int3_t_uint2_t(
     VAR_left_bot_BIN_OP_GTE_uint12_t_uint2_t_c_l9_c13_f35c_0);

     -- Submodule level 1
     VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_left := VAR_CAST_TO_int3_t_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_b42f_return_output;
     VAR_top_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c3_1648 := resize(VAR_CONST_SR_2_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c9_f430_return_output, 10);
     VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_left := VAR_top_BIN_OP_GTE_uint12_t_uint2_t_c_l13_c3_1648;
     -- BIN_OP_EQ[BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681] LATENCY=0
     -- Inputs
     BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_left <= VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_left;
     BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_right <= VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_right;
     -- Outputs
     VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_return_output := BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_return_output;

     -- BIN_OP_MINUS[BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_left <= VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_left;
     BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_right <= VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_right;
     -- Outputs
     VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_return_output := BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_return_output;

     -- Submodule level 2
     VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_cond := VAR_BIN_OP_EQ_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c6_5681_return_output;
     VAR_sub_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c12_6364_0 := resize(VAR_BIN_OP_MINUS_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c18_c075_return_output, 3);
     -- int3_2_2[BIN_OP_GTE_uint12_t_uint2_t_c_l18_c23_7266] LATENCY=0
     VAR_int3_2_2_BIN_OP_GTE_uint12_t_uint2_t_c_l18_c23_7266_return_output := int3_2_2(
     VAR_sub_BIN_OP_GTE_uint12_t_uint2_t_c_l17_c12_6364_0);

     -- Submodule level 3
     VAR_UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff_expr := VAR_int3_2_2_BIN_OP_GTE_uint12_t_uint2_t_c_l18_c23_7266_return_output;
     -- UNARY_OP_NOT[BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff_expr <= VAR_UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff_return_output := UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff_return_output;

     -- Submodule level 4
     VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_iftrue := VAR_UNARY_OP_NOT_BIN_OP_GTE_uint12_t_uint2_t_c_l19_c11_5cff_return_output;
     -- rv_MUX[BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_cond <= VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_cond;
     rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_iftrue <= VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_iftrue;
     rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_iffalse <= VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_return_output := rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_return_output;

     -- Submodule level 5
     VAR_return_output := VAR_rv_MUX_BIN_OP_GTE_uint12_t_uint2_t_c_l15_c3_9fb4_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
