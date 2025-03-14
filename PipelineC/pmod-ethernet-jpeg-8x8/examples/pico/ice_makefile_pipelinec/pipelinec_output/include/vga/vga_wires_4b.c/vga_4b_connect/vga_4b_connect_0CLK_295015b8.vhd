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
use work.global_wires_pkg.all;
-- Submodules: 15
entity vga_4b_connect_0CLK_295015b8 is
port(
 global_to_module : in vga_4b_connect_global_to_module_t;
 module_to_global : out vga_4b_connect_module_to_global_t);
end vga_4b_connect_0CLK_295015b8;
architecture arch of vga_4b_connect_0CLK_295015b8 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- CONST_SR_4[vga_wires_4b_c_l17_c15_b50a]
signal CONST_SR_4_vga_wires_4b_c_l17_c15_b50a_x : unsigned(7 downto 0);
signal CONST_SR_4_vga_wires_4b_c_l17_c15_b50a_return_output : unsigned(7 downto 0);

-- CONST_SR_4[vga_wires_4b_c_l18_c15_2211]
signal CONST_SR_4_vga_wires_4b_c_l18_c15_2211_x : unsigned(7 downto 0);
signal CONST_SR_4_vga_wires_4b_c_l18_c15_2211_return_output : unsigned(7 downto 0);

-- CONST_SR_4[vga_wires_4b_c_l19_c15_1bb7]
signal CONST_SR_4_vga_wires_4b_c_l19_c15_1bb7_x : unsigned(7 downto 0);
signal CONST_SR_4_vga_wires_4b_c_l19_c15_1bb7_return_output : unsigned(7 downto 0);

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
-- CONST_SR_4_vga_wires_4b_c_l17_c15_b50a : 0 clocks latency
CONST_SR_4_vga_wires_4b_c_l17_c15_b50a : entity work.CONST_SR_4_uint8_t_0CLK_de264c78 port map (
CONST_SR_4_vga_wires_4b_c_l17_c15_b50a_x,
CONST_SR_4_vga_wires_4b_c_l17_c15_b50a_return_output);

-- CONST_SR_4_vga_wires_4b_c_l18_c15_2211 : 0 clocks latency
CONST_SR_4_vga_wires_4b_c_l18_c15_2211 : entity work.CONST_SR_4_uint8_t_0CLK_de264c78 port map (
CONST_SR_4_vga_wires_4b_c_l18_c15_2211_x,
CONST_SR_4_vga_wires_4b_c_l18_c15_2211_return_output);

-- CONST_SR_4_vga_wires_4b_c_l19_c15_1bb7 : 0 clocks latency
CONST_SR_4_vga_wires_4b_c_l19_c15_1bb7 : entity work.CONST_SR_4_uint8_t_0CLK_de264c78 port map (
CONST_SR_4_vga_wires_4b_c_l19_c15_1bb7_x,
CONST_SR_4_vga_wires_4b_c_l19_c15_1bb7_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 CONST_SR_4_vga_wires_4b_c_l17_c15_b50a_return_output,
 CONST_SR_4_vga_wires_4b_c_l18_c15_2211_return_output,
 CONST_SR_4_vga_wires_4b_c_l19_c15_1bb7_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_vga_r_8b_to_4b : unsigned(7 downto 0);
 variable VAR_vga_g_8b_to_4b : unsigned(7 downto 0);
 variable VAR_vga_b_8b_to_4b : unsigned(7 downto 0);
 variable VAR_pmod_0a_o1 : unsigned(0 downto 0);
 variable VAR_pmod_0a_o2 : unsigned(0 downto 0);
 variable VAR_pmod_0a_o3 : unsigned(0 downto 0);
 variable VAR_pmod_0a_o4 : unsigned(0 downto 0);
 variable VAR_pmod_1a_o1 : unsigned(0 downto 0);
 variable VAR_pmod_1a_o2 : unsigned(0 downto 0);
 variable VAR_pmod_1a_o3 : unsigned(0 downto 0);
 variable VAR_pmod_1a_o4 : unsigned(0 downto 0);
 variable VAR_pmod_0b_o1 : unsigned(0 downto 0);
 variable VAR_pmod_0b_o2 : unsigned(0 downto 0);
 variable VAR_pmod_0b_o3 : unsigned(0 downto 0);
 variable VAR_pmod_0b_o4 : unsigned(0 downto 0);
 variable VAR_r : unsigned(3 downto 0);
 variable VAR_r_vga_wires_4b_c_l17_c11_80a4_0 : unsigned(3 downto 0);
 variable VAR_CONST_SR_4_vga_wires_4b_c_l17_c15_b50a_return_output : unsigned(7 downto 0);
 variable VAR_CONST_SR_4_vga_wires_4b_c_l17_c15_b50a_x : unsigned(7 downto 0);
 variable VAR_g : unsigned(3 downto 0);
 variable VAR_g_vga_wires_4b_c_l18_c11_eb1e_0 : unsigned(3 downto 0);
 variable VAR_CONST_SR_4_vga_wires_4b_c_l18_c15_2211_return_output : unsigned(7 downto 0);
 variable VAR_CONST_SR_4_vga_wires_4b_c_l18_c15_2211_x : unsigned(7 downto 0);
 variable VAR_b : unsigned(3 downto 0);
 variable VAR_b_vga_wires_4b_c_l19_c11_d75a_0 : unsigned(3 downto 0);
 variable VAR_CONST_SR_4_vga_wires_4b_c_l19_c15_1bb7_return_output : unsigned(7 downto 0);
 variable VAR_CONST_SR_4_vga_wires_4b_c_l19_c15_1bb7_x : unsigned(7 downto 0);
 variable VAR_uint4_0_0_vga_wires_4b_c_l20_c16_7ed8_return_output : unsigned(0 downto 0);
 variable VAR_uint4_1_1_vga_wires_4b_c_l21_c16_c09a_return_output : unsigned(0 downto 0);
 variable VAR_uint4_2_2_vga_wires_4b_c_l22_c16_809e_return_output : unsigned(0 downto 0);
 variable VAR_uint4_3_3_vga_wires_4b_c_l23_c16_ac1a_return_output : unsigned(0 downto 0);
 variable VAR_uint4_0_0_vga_wires_4b_c_l24_c16_49c2_return_output : unsigned(0 downto 0);
 variable VAR_uint4_1_1_vga_wires_4b_c_l25_c16_f5bf_return_output : unsigned(0 downto 0);
 variable VAR_uint4_2_2_vga_wires_4b_c_l26_c16_41eb_return_output : unsigned(0 downto 0);
 variable VAR_uint4_3_3_vga_wires_4b_c_l27_c16_1591_return_output : unsigned(0 downto 0);
 variable VAR_uint4_0_0_vga_wires_4b_c_l28_c16_78c7_return_output : unsigned(0 downto 0);
 variable VAR_uint4_1_1_vga_wires_4b_c_l29_c16_e7fc_return_output : unsigned(0 downto 0);
 variable VAR_uint4_2_2_vga_wires_4b_c_l30_c16_23e9_return_output : unsigned(0 downto 0);
 variable VAR_uint4_3_3_vga_wires_4b_c_l31_c16_98d0_return_output : unsigned(0 downto 0);
begin
 -- Reads from global variables
     VAR_vga_r_8b_to_4b := global_to_module.vga_r_8b_to_4b;
     VAR_vga_g_8b_to_4b := global_to_module.vga_g_8b_to_4b;
     VAR_vga_b_8b_to_4b := global_to_module.vga_b_8b_to_4b;
     -- Submodule level 0
     VAR_CONST_SR_4_vga_wires_4b_c_l17_c15_b50a_x := VAR_vga_r_8b_to_4b;
     VAR_CONST_SR_4_vga_wires_4b_c_l19_c15_1bb7_x := VAR_vga_b_8b_to_4b;
     VAR_CONST_SR_4_vga_wires_4b_c_l18_c15_2211_x := VAR_vga_g_8b_to_4b;
     -- CONST_SR_4[vga_wires_4b_c_l19_c15_1bb7] LATENCY=0
     -- Inputs
     CONST_SR_4_vga_wires_4b_c_l19_c15_1bb7_x <= VAR_CONST_SR_4_vga_wires_4b_c_l19_c15_1bb7_x;
     -- Outputs
     VAR_CONST_SR_4_vga_wires_4b_c_l19_c15_1bb7_return_output := CONST_SR_4_vga_wires_4b_c_l19_c15_1bb7_return_output;

     -- CONST_SR_4[vga_wires_4b_c_l17_c15_b50a] LATENCY=0
     -- Inputs
     CONST_SR_4_vga_wires_4b_c_l17_c15_b50a_x <= VAR_CONST_SR_4_vga_wires_4b_c_l17_c15_b50a_x;
     -- Outputs
     VAR_CONST_SR_4_vga_wires_4b_c_l17_c15_b50a_return_output := CONST_SR_4_vga_wires_4b_c_l17_c15_b50a_return_output;

     -- CONST_SR_4[vga_wires_4b_c_l18_c15_2211] LATENCY=0
     -- Inputs
     CONST_SR_4_vga_wires_4b_c_l18_c15_2211_x <= VAR_CONST_SR_4_vga_wires_4b_c_l18_c15_2211_x;
     -- Outputs
     VAR_CONST_SR_4_vga_wires_4b_c_l18_c15_2211_return_output := CONST_SR_4_vga_wires_4b_c_l18_c15_2211_return_output;

     -- Submodule level 1
     VAR_b_vga_wires_4b_c_l19_c11_d75a_0 := resize(VAR_CONST_SR_4_vga_wires_4b_c_l19_c15_1bb7_return_output, 4);
     VAR_r_vga_wires_4b_c_l17_c11_80a4_0 := resize(VAR_CONST_SR_4_vga_wires_4b_c_l17_c15_b50a_return_output, 4);
     VAR_g_vga_wires_4b_c_l18_c11_eb1e_0 := resize(VAR_CONST_SR_4_vga_wires_4b_c_l18_c15_2211_return_output, 4);
     -- uint4_1_1[vga_wires_4b_c_l29_c16_e7fc] LATENCY=0
     VAR_uint4_1_1_vga_wires_4b_c_l29_c16_e7fc_return_output := uint4_1_1(
     VAR_b_vga_wires_4b_c_l19_c11_d75a_0);

     -- uint4_1_1[vga_wires_4b_c_l21_c16_c09a] LATENCY=0
     VAR_uint4_1_1_vga_wires_4b_c_l21_c16_c09a_return_output := uint4_1_1(
     VAR_r_vga_wires_4b_c_l17_c11_80a4_0);

     -- uint4_3_3[vga_wires_4b_c_l23_c16_ac1a] LATENCY=0
     VAR_uint4_3_3_vga_wires_4b_c_l23_c16_ac1a_return_output := uint4_3_3(
     VAR_r_vga_wires_4b_c_l17_c11_80a4_0);

     -- uint4_2_2[vga_wires_4b_c_l22_c16_809e] LATENCY=0
     VAR_uint4_2_2_vga_wires_4b_c_l22_c16_809e_return_output := uint4_2_2(
     VAR_r_vga_wires_4b_c_l17_c11_80a4_0);

     -- uint4_3_3[vga_wires_4b_c_l31_c16_98d0] LATENCY=0
     VAR_uint4_3_3_vga_wires_4b_c_l31_c16_98d0_return_output := uint4_3_3(
     VAR_b_vga_wires_4b_c_l19_c11_d75a_0);

     -- uint4_0_0[vga_wires_4b_c_l28_c16_78c7] LATENCY=0
     VAR_uint4_0_0_vga_wires_4b_c_l28_c16_78c7_return_output := uint4_0_0(
     VAR_b_vga_wires_4b_c_l19_c11_d75a_0);

     -- uint4_2_2[vga_wires_4b_c_l26_c16_41eb] LATENCY=0
     VAR_uint4_2_2_vga_wires_4b_c_l26_c16_41eb_return_output := uint4_2_2(
     VAR_g_vga_wires_4b_c_l18_c11_eb1e_0);

     -- uint4_3_3[vga_wires_4b_c_l27_c16_1591] LATENCY=0
     VAR_uint4_3_3_vga_wires_4b_c_l27_c16_1591_return_output := uint4_3_3(
     VAR_g_vga_wires_4b_c_l18_c11_eb1e_0);

     -- uint4_2_2[vga_wires_4b_c_l30_c16_23e9] LATENCY=0
     VAR_uint4_2_2_vga_wires_4b_c_l30_c16_23e9_return_output := uint4_2_2(
     VAR_b_vga_wires_4b_c_l19_c11_d75a_0);

     -- uint4_0_0[vga_wires_4b_c_l20_c16_7ed8] LATENCY=0
     VAR_uint4_0_0_vga_wires_4b_c_l20_c16_7ed8_return_output := uint4_0_0(
     VAR_r_vga_wires_4b_c_l17_c11_80a4_0);

     -- uint4_0_0[vga_wires_4b_c_l24_c16_49c2] LATENCY=0
     VAR_uint4_0_0_vga_wires_4b_c_l24_c16_49c2_return_output := uint4_0_0(
     VAR_g_vga_wires_4b_c_l18_c11_eb1e_0);

     -- uint4_1_1[vga_wires_4b_c_l25_c16_f5bf] LATENCY=0
     VAR_uint4_1_1_vga_wires_4b_c_l25_c16_f5bf_return_output := uint4_1_1(
     VAR_g_vga_wires_4b_c_l18_c11_eb1e_0);

     -- Submodule level 2
     VAR_pmod_0b_o4 := VAR_uint4_3_3_vga_wires_4b_c_l31_c16_98d0_return_output;
     VAR_pmod_0b_o1 := VAR_uint4_0_0_vga_wires_4b_c_l28_c16_78c7_return_output;
     VAR_pmod_1a_o2 := VAR_uint4_1_1_vga_wires_4b_c_l25_c16_f5bf_return_output;
     VAR_pmod_0b_o2 := VAR_uint4_1_1_vga_wires_4b_c_l29_c16_e7fc_return_output;
     VAR_pmod_0a_o1 := VAR_uint4_0_0_vga_wires_4b_c_l20_c16_7ed8_return_output;
     VAR_pmod_0a_o3 := VAR_uint4_2_2_vga_wires_4b_c_l22_c16_809e_return_output;
     VAR_pmod_1a_o3 := VAR_uint4_2_2_vga_wires_4b_c_l26_c16_41eb_return_output;
     VAR_pmod_0a_o4 := VAR_uint4_3_3_vga_wires_4b_c_l23_c16_ac1a_return_output;
     VAR_pmod_0a_o2 := VAR_uint4_1_1_vga_wires_4b_c_l21_c16_c09a_return_output;
     VAR_pmod_0b_o3 := VAR_uint4_2_2_vga_wires_4b_c_l30_c16_23e9_return_output;
     VAR_pmod_1a_o1 := VAR_uint4_0_0_vga_wires_4b_c_l24_c16_49c2_return_output;
     VAR_pmod_1a_o4 := VAR_uint4_3_3_vga_wires_4b_c_l27_c16_1591_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then

   end if;
 end loop;

-- Global wires driven various places in pipeline
module_to_global.pmod_0a_o1 <= VAR_pmod_0a_o1;
module_to_global.pmod_0a_o2 <= VAR_pmod_0a_o2;
module_to_global.pmod_0a_o3 <= VAR_pmod_0a_o3;
module_to_global.pmod_0a_o4 <= VAR_pmod_0a_o4;
module_to_global.pmod_1a_o1 <= VAR_pmod_1a_o1;
module_to_global.pmod_1a_o2 <= VAR_pmod_1a_o2;
module_to_global.pmod_1a_o3 <= VAR_pmod_1a_o3;
module_to_global.pmod_1a_o4 <= VAR_pmod_1a_o4;
module_to_global.pmod_0b_o1 <= VAR_pmod_0b_o1;
module_to_global.pmod_0b_o2 <= VAR_pmod_0b_o2;
module_to_global.pmod_0b_o3 <= VAR_pmod_0b_o3;
module_to_global.pmod_0b_o4 <= VAR_pmod_0b_o4;
end process;

end arch;
