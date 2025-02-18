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
-- Submodules: 2
entity VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_0CLK_8bf83e3e is
port(
 ref_toks_0 : in unsigned(31 downto 0);
 ref_toks_1 : in unsigned(31 downto 0);
 ref_toks_2 : in unsigned(31 downto 0);
 ref_toks_3 : in unsigned(31 downto 0);
 ref_toks_4 : in unsigned(31 downto 0);
 ref_toks_5 : in unsigned(31 downto 0);
 ref_toks_6 : in unsigned(31 downto 0);
 ref_toks_7 : in unsigned(31 downto 0);
 ref_toks_8 : in unsigned(31 downto 0);
 ref_toks_9 : in unsigned(31 downto 0);
 ref_toks_10 : in unsigned(31 downto 0);
 ref_toks_11 : in unsigned(31 downto 0);
 ref_toks_12 : in unsigned(31 downto 0);
 ref_toks_13 : in unsigned(31 downto 0);
 ref_toks_14 : in unsigned(31 downto 0);
 ref_toks_15 : in unsigned(31 downto 0);
 var_dim_0 : in unsigned(3 downto 0);
 return_output : out unsigned(31 downto 0));
end VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_0CLK_8bf83e3e;
architecture arch of VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_0CLK_8bf83e3e is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- uint32_mux16[VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382]
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_sel : unsigned(3 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in0 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in1 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in2 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in3 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in4 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in5 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in6 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in7 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in8 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in9 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in10 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in11 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in12 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in13 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in14 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in15 : unsigned(31 downto 0);
signal uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_return_output : unsigned(31 downto 0);

function uint4_uint4_0( inp : unsigned;
 x : unsigned) return unsigned is

  --variable inp : unsigned(3 downto 0);
  --variable x : unsigned(3 downto 0);
  variable intermediate : unsigned(3 downto 0);
  variable return_output : unsigned(3 downto 0);

begin

    intermediate := (others => '0');
    intermediate(3 downto 0) := unsigned(inp);
    intermediate(3 downto 0) := x;
    
    return_output := intermediate(3 downto 0) ;
    
    return return_output;

end function;


begin

-- SUBMODULE INSTANCES 
-- uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382 : 0 clocks latency
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382 : entity work.uint32_mux16_0CLK_4e6656cf port map (
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_sel,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in0,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in1,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in2,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in3,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in4,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in5,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in6,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in7,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in8,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in9,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in10,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in11,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in12,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in13,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in14,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in15,
uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 ref_toks_0,
 ref_toks_1,
 ref_toks_2,
 ref_toks_3,
 ref_toks_4,
 ref_toks_5,
 ref_toks_6,
 ref_toks_7,
 ref_toks_8,
 ref_toks_9,
 ref_toks_10,
 ref_toks_11,
 ref_toks_12,
 ref_toks_13,
 ref_toks_14,
 ref_toks_15,
 var_dim_0,
 -- All submodule outputs
 uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_ref_toks_0 : unsigned(31 downto 0);
 variable VAR_ref_toks_1 : unsigned(31 downto 0);
 variable VAR_ref_toks_2 : unsigned(31 downto 0);
 variable VAR_ref_toks_3 : unsigned(31 downto 0);
 variable VAR_ref_toks_4 : unsigned(31 downto 0);
 variable VAR_ref_toks_5 : unsigned(31 downto 0);
 variable VAR_ref_toks_6 : unsigned(31 downto 0);
 variable VAR_ref_toks_7 : unsigned(31 downto 0);
 variable VAR_ref_toks_8 : unsigned(31 downto 0);
 variable VAR_ref_toks_9 : unsigned(31 downto 0);
 variable VAR_ref_toks_10 : unsigned(31 downto 0);
 variable VAR_ref_toks_11 : unsigned(31 downto 0);
 variable VAR_ref_toks_12 : unsigned(31 downto 0);
 variable VAR_ref_toks_13 : unsigned(31 downto 0);
 variable VAR_ref_toks_14 : unsigned(31 downto 0);
 variable VAR_ref_toks_15 : unsigned(31 downto 0);
 variable VAR_var_dim_0 : unsigned(3 downto 0);
 variable VAR_return_output : unsigned(31 downto 0);
 variable VAR_base : uint32_t_16;
 variable VAR_ref_0 : unsigned(31 downto 0);
 variable VAR_ref_1 : unsigned(31 downto 0);
 variable VAR_ref_2 : unsigned(31 downto 0);
 variable VAR_ref_3 : unsigned(31 downto 0);
 variable VAR_ref_4 : unsigned(31 downto 0);
 variable VAR_ref_5 : unsigned(31 downto 0);
 variable VAR_ref_6 : unsigned(31 downto 0);
 variable VAR_ref_7 : unsigned(31 downto 0);
 variable VAR_ref_8 : unsigned(31 downto 0);
 variable VAR_ref_9 : unsigned(31 downto 0);
 variable VAR_ref_10 : unsigned(31 downto 0);
 variable VAR_ref_11 : unsigned(31 downto 0);
 variable VAR_ref_12 : unsigned(31 downto 0);
 variable VAR_ref_13 : unsigned(31 downto 0);
 variable VAR_ref_14 : unsigned(31 downto 0);
 variable VAR_ref_15 : unsigned(31 downto 0);
 variable VAR_sel : unsigned(3 downto 0);
 variable VAR_sel_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l62_c2_6675 : unsigned(3 downto 0);
 variable VAR_uint4_uint4_0_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l63_c8_1021_return_output : unsigned(3 downto 0);
 variable VAR_rv : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_sel : unsigned(3 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in0 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in1 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in2 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in3 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in4 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in5 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in6 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in7 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in8 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in9 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in10 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in11 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in12 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in13 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in14 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in15 : unsigned(31 downto 0);
 variable VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_return_output : unsigned(31 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_sel_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l62_c2_6675 := resize(to_unsigned(0, 1), 4);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_ref_toks_0 := ref_toks_0;
     VAR_ref_toks_1 := ref_toks_1;
     VAR_ref_toks_2 := ref_toks_2;
     VAR_ref_toks_3 := ref_toks_3;
     VAR_ref_toks_4 := ref_toks_4;
     VAR_ref_toks_5 := ref_toks_5;
     VAR_ref_toks_6 := ref_toks_6;
     VAR_ref_toks_7 := ref_toks_7;
     VAR_ref_toks_8 := ref_toks_8;
     VAR_ref_toks_9 := ref_toks_9;
     VAR_ref_toks_10 := ref_toks_10;
     VAR_ref_toks_11 := ref_toks_11;
     VAR_ref_toks_12 := ref_toks_12;
     VAR_ref_toks_13 := ref_toks_13;
     VAR_ref_toks_14 := ref_toks_14;
     VAR_ref_toks_15 := ref_toks_15;
     VAR_var_dim_0 := var_dim_0;

     -- Submodule level 0
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in0 := VAR_ref_toks_0;
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in1 := VAR_ref_toks_1;
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in10 := VAR_ref_toks_10;
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in11 := VAR_ref_toks_11;
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in12 := VAR_ref_toks_12;
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in13 := VAR_ref_toks_13;
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in14 := VAR_ref_toks_14;
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in15 := VAR_ref_toks_15;
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in2 := VAR_ref_toks_2;
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in3 := VAR_ref_toks_3;
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in4 := VAR_ref_toks_4;
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in5 := VAR_ref_toks_5;
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in6 := VAR_ref_toks_6;
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in7 := VAR_ref_toks_7;
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in8 := VAR_ref_toks_8;
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in9 := VAR_ref_toks_9;
     -- uint4_uint4_0[VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l63_c8_1021] LATENCY=0
     VAR_uint4_uint4_0_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l63_c8_1021_return_output := uint4_uint4_0(
     VAR_sel_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l62_c2_6675,
     VAR_var_dim_0);

     -- Submodule level 1
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_sel := VAR_uint4_uint4_0_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l63_c8_1021_return_output;
     -- uint32_mux16[VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382] LATENCY=0
     -- Inputs
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_sel <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_sel;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in0 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in0;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in1 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in1;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in2 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in2;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in3 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in3;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in4 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in4;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in5 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in5;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in6 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in6;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in7 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in7;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in8 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in8;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in9 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in9;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in10 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in10;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in11 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in11;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in12 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in12;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in13 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in13;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in14 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in14;
     uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in15 <= VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_in15;
     -- Outputs
     VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_return_output := uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_return_output;

     -- Submodule level 2
     VAR_return_output := VAR_uint32_mux16_VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60_c_l66_c7_7382_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
