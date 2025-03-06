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
entity BIN_OP_LT_uint12_t_uint13_t_0CLK_5af1a430 is
port(
 left : in unsigned(11 downto 0);
 right : in unsigned(12 downto 0);
 return_output : out unsigned(0 downto 0));
end BIN_OP_LT_uint12_t_uint13_t_0CLK_5af1a430;
architecture arch of BIN_OP_LT_uint12_t_uint13_t_0CLK_5af1a430 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- CONST_SR_12[BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854]
signal CONST_SR_12_BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854_x : unsigned(12 downto 0);
signal CONST_SR_12_BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854_return_output : unsigned(12 downto 0);

-- BIN_OP_EQ[BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62]
signal BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_left : unsigned(0 downto 0);
signal BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_right : unsigned(0 downto 0);
signal BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2]
signal rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_iftrue : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_iffalse : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_return_output : unsigned(0 downto 0);

-- BIN_OP_MINUS[BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e]
signal BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_left : signed(12 downto 0);
signal BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_right : signed(12 downto 0);
signal BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_return_output : signed(13 downto 0);

function CAST_TO_int13_t_uint12_t( rhs : unsigned) return signed is

  --variable rhs : unsigned(11 downto 0);
  variable return_output : signed(12 downto 0);

begin

      return_output := signed(std_logic_vector(resize(rhs,13)));
    return return_output;
end function;

function int13_12_12( x : signed) return unsigned is
--variable x : signed(12 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(12- i);
      end loop;
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- CONST_SR_12_BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854 : 0 clocks latency
CONST_SR_12_BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854 : entity work.CONST_SR_12_uint13_t_0CLK_de264c78 port map (
CONST_SR_12_BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854_x,
CONST_SR_12_BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854_return_output);

-- BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62 : 0 clocks latency
BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62 : entity work.BIN_OP_EQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_left,
BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_right,
BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_return_output);

-- rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2 : 0 clocks latency
rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_cond,
rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_iftrue,
rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_iffalse,
rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_return_output);

-- BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e : 0 clocks latency
BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e : entity work.BIN_OP_MINUS_int13_t_int13_t_0CLK_de264c78 port map (
BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_left,
BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_right,
BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 CONST_SR_12_BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854_return_output,
 BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_return_output,
 rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_return_output,
 BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : unsigned(11 downto 0);
 variable VAR_right : unsigned(12 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_left_bot : unsigned(11 downto 0);
 variable VAR_right_bot : unsigned(11 downto 0);
 variable VAR_right_bot_BIN_OP_LT_uint12_t_uint13_t_c_l10_c14_47ff_0 : unsigned(11 downto 0);
 variable VAR_top : unsigned(0 downto 0);
 variable VAR_top_BIN_OP_LT_uint12_t_uint13_t_c_l13_c3_3361 : unsigned(0 downto 0);
 variable VAR_CONST_SR_12_BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854_return_output : unsigned(12 downto 0);
 variable VAR_CONST_SR_12_BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854_x : unsigned(12 downto 0);
 variable VAR_rv : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_cond : unsigned(0 downto 0);
 variable VAR_sub : signed(12 downto 0);
 variable VAR_sub_BIN_OP_LT_uint12_t_uint13_t_c_l17_c13_f8ba_0 : signed(12 downto 0);
 variable VAR_CAST_TO_int13_t_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_2076_return_output : signed(12 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_left : signed(12 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_right : signed(12 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_return_output : signed(13 downto 0);
 variable VAR_lt_zero : unsigned(0 downto 0);
 variable VAR_int13_12_12_BIN_OP_LT_uint12_t_uint13_t_c_l18_c23_e94b_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_iffalse := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_right := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_CONST_SR_12_BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854_x := VAR_right;
     VAR_right_bot_BIN_OP_LT_uint12_t_uint13_t_c_l10_c14_47ff_0 := resize(VAR_right, 12);
     VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_right := signed(std_logic_vector(resize(VAR_right_bot_BIN_OP_LT_uint12_t_uint13_t_c_l10_c14_47ff_0, 13)));
     -- CONST_SR_12[BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854] LATENCY=0
     -- Inputs
     CONST_SR_12_BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854_x <= VAR_CONST_SR_12_BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854_x;
     -- Outputs
     VAR_CONST_SR_12_BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854_return_output := CONST_SR_12_BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854_return_output;

     -- CAST_TO_int13_t[BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_2076] LATENCY=0
     VAR_CAST_TO_int13_t_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_2076_return_output := CAST_TO_int13_t_uint12_t(
     VAR_left);

     -- Submodule level 1
     VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_left := VAR_CAST_TO_int13_t_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_2076_return_output;
     VAR_top_BIN_OP_LT_uint12_t_uint13_t_c_l13_c3_3361 := resize(VAR_CONST_SR_12_BIN_OP_LT_uint12_t_uint13_t_c_l13_c9_f854_return_output, 1);
     VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_left := VAR_top_BIN_OP_LT_uint12_t_uint13_t_c_l13_c3_3361;
     -- BIN_OP_EQ[BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62] LATENCY=0
     -- Inputs
     BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_left <= VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_left;
     BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_right <= VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_right;
     -- Outputs
     VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_return_output := BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_return_output;

     -- BIN_OP_MINUS[BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_left <= VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_left;
     BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_right <= VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_right;
     -- Outputs
     VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_return_output := BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_return_output;

     -- Submodule level 2
     VAR_rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_cond := VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint13_t_c_l15_c6_cc62_return_output;
     VAR_sub_BIN_OP_LT_uint12_t_uint13_t_c_l17_c13_f8ba_0 := resize(VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint13_t_c_l17_c19_983e_return_output, 13);
     -- int13_12_12[BIN_OP_LT_uint12_t_uint13_t_c_l18_c23_e94b] LATENCY=0
     VAR_int13_12_12_BIN_OP_LT_uint12_t_uint13_t_c_l18_c23_e94b_return_output := int13_12_12(
     VAR_sub_BIN_OP_LT_uint12_t_uint13_t_c_l17_c13_f8ba_0);

     -- Submodule level 3
     VAR_rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_iftrue := VAR_int13_12_12_BIN_OP_LT_uint12_t_uint13_t_c_l18_c23_e94b_return_output;
     -- rv_MUX[BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_cond <= VAR_rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_cond;
     rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_iftrue <= VAR_rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_iftrue;
     rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_iffalse <= VAR_rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_return_output := rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_return_output;

     -- Submodule level 4
     VAR_return_output := VAR_rv_MUX_BIN_OP_LT_uint12_t_uint13_t_c_l15_c3_84f2_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
