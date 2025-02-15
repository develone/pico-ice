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
entity BIN_OP_LT_uint12_t_uint10_t_0CLK_5af1a430 is
port(
 left : in unsigned(11 downto 0);
 right : in unsigned(9 downto 0);
 return_output : out unsigned(0 downto 0));
end BIN_OP_LT_uint12_t_uint10_t_0CLK_5af1a430;
architecture arch of BIN_OP_LT_uint12_t_uint10_t_0CLK_5af1a430 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- CONST_SR_10[BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5]
signal CONST_SR_10_BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5_x : unsigned(11 downto 0);
signal CONST_SR_10_BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5_return_output : unsigned(11 downto 0);

-- BIN_OP_EQ[BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210]
signal BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_left : unsigned(1 downto 0);
signal BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_right : unsigned(0 downto 0);
signal BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419]
signal rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_iftrue : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_iffalse : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_return_output : unsigned(0 downto 0);

-- BIN_OP_MINUS[BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462]
signal BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_left : signed(10 downto 0);
signal BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_right : signed(10 downto 0);
signal BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_return_output : signed(11 downto 0);

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
-- CONST_SR_10_BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5 : 0 clocks latency
CONST_SR_10_BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5 : entity work.CONST_SR_10_uint12_t_0CLK_de264c78 port map (
CONST_SR_10_BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5_x,
CONST_SR_10_BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5_return_output);

-- BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210 : 0 clocks latency
BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210 : entity work.BIN_OP_EQ_uint2_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_left,
BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_right,
BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_return_output);

-- rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419 : 0 clocks latency
rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_cond,
rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_iftrue,
rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_iffalse,
rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_return_output);

-- BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462 : 0 clocks latency
BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462 : entity work.BIN_OP_MINUS_int11_t_int11_t_0CLK_de264c78 port map (
BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_left,
BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_right,
BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 CONST_SR_10_BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5_return_output,
 BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_return_output,
 rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_return_output,
 BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : unsigned(11 downto 0);
 variable VAR_right : unsigned(9 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_left_bot : unsigned(9 downto 0);
 variable VAR_left_bot_BIN_OP_LT_uint12_t_uint10_t_c_l9_c14_d420_0 : unsigned(9 downto 0);
 variable VAR_right_bot : unsigned(9 downto 0);
 variable VAR_right_bot_BIN_OP_LT_uint12_t_uint10_t_c_l10_c14_1332_0 : unsigned(9 downto 0);
 variable VAR_top : unsigned(1 downto 0);
 variable VAR_top_BIN_OP_LT_uint12_t_uint10_t_c_l13_c3_d9ba : unsigned(1 downto 0);
 variable VAR_CONST_SR_10_BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5_return_output : unsigned(11 downto 0);
 variable VAR_CONST_SR_10_BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5_x : unsigned(11 downto 0);
 variable VAR_rv : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_cond : unsigned(0 downto 0);
 variable VAR_sub : signed(10 downto 0);
 variable VAR_sub_BIN_OP_LT_uint12_t_uint10_t_c_l17_c13_1e22_0 : signed(10 downto 0);
 variable VAR_CAST_TO_int11_t_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_f8a5_return_output : signed(10 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_left : signed(10 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_right : signed(10 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_return_output : signed(11 downto 0);
 variable VAR_lt_zero : unsigned(0 downto 0);
 variable VAR_int11_10_10_BIN_OP_LT_uint12_t_uint10_t_c_l18_c23_3559_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_right := to_unsigned(0, 1);
     VAR_rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_iffalse := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_CONST_SR_10_BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5_x := VAR_left;
     VAR_left_bot_BIN_OP_LT_uint12_t_uint10_t_c_l9_c14_d420_0 := resize(VAR_left, 10);
     VAR_right_bot_BIN_OP_LT_uint12_t_uint10_t_c_l10_c14_1332_0 := VAR_right;
     VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_right := signed(std_logic_vector(resize(VAR_right_bot_BIN_OP_LT_uint12_t_uint10_t_c_l10_c14_1332_0, 11)));
     -- CONST_SR_10[BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5] LATENCY=0
     -- Inputs
     CONST_SR_10_BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5_x <= VAR_CONST_SR_10_BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5_x;
     -- Outputs
     VAR_CONST_SR_10_BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5_return_output := CONST_SR_10_BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5_return_output;

     -- CAST_TO_int11_t[BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_f8a5] LATENCY=0
     VAR_CAST_TO_int11_t_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_f8a5_return_output := CAST_TO_int11_t_uint10_t(
     VAR_left_bot_BIN_OP_LT_uint12_t_uint10_t_c_l9_c14_d420_0);

     -- Submodule level 1
     VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_left := VAR_CAST_TO_int11_t_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_f8a5_return_output;
     VAR_top_BIN_OP_LT_uint12_t_uint10_t_c_l13_c3_d9ba := resize(VAR_CONST_SR_10_BIN_OP_LT_uint12_t_uint10_t_c_l13_c9_01d5_return_output, 2);
     VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_left := VAR_top_BIN_OP_LT_uint12_t_uint10_t_c_l13_c3_d9ba;
     -- BIN_OP_MINUS[BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_left <= VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_left;
     BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_right <= VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_right;
     -- Outputs
     VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_return_output := BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_return_output;

     -- BIN_OP_EQ[BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210] LATENCY=0
     -- Inputs
     BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_left <= VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_left;
     BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_right <= VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_right;
     -- Outputs
     VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_return_output := BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_return_output;

     -- Submodule level 2
     VAR_rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_cond := VAR_BIN_OP_EQ_BIN_OP_LT_uint12_t_uint10_t_c_l15_c6_b210_return_output;
     VAR_sub_BIN_OP_LT_uint12_t_uint10_t_c_l17_c13_1e22_0 := resize(VAR_BIN_OP_MINUS_BIN_OP_LT_uint12_t_uint10_t_c_l17_c19_d462_return_output, 11);
     -- int11_10_10[BIN_OP_LT_uint12_t_uint10_t_c_l18_c23_3559] LATENCY=0
     VAR_int11_10_10_BIN_OP_LT_uint12_t_uint10_t_c_l18_c23_3559_return_output := int11_10_10(
     VAR_sub_BIN_OP_LT_uint12_t_uint10_t_c_l17_c13_1e22_0);

     -- Submodule level 3
     VAR_rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_iftrue := VAR_int11_10_10_BIN_OP_LT_uint12_t_uint10_t_c_l18_c23_3559_return_output;
     -- rv_MUX[BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_cond <= VAR_rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_cond;
     rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_iftrue <= VAR_rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_iftrue;
     rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_iffalse <= VAR_rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_return_output := rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_return_output;

     -- Submodule level 4
     VAR_return_output := VAR_rv_MUX_BIN_OP_LT_uint12_t_uint10_t_c_l15_c3_2419_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
