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
-- Submodules: 3
entity rmii_connect_0CLK_380ecc95 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in rmii_connect_global_to_module_t;
 module_to_global : out rmii_connect_module_to_global_t);
end rmii_connect_0CLK_380ecc95;
architecture arch of rmii_connect_0CLK_380ecc95 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal rmii_tx_reg : unsigned(1 downto 0) := to_unsigned(0, 2);
signal rmii_tx_en_reg : unsigned(0 downto 0) := to_unsigned(0, 1);
signal rmii_rx_reg : unsigned(1 downto 0) := to_unsigned(0, 2);
signal rmii_crs_dv_reg : unsigned(0 downto 0) := to_unsigned(0, 1);
signal REG_COMB_rmii_tx_reg : unsigned(1 downto 0);
signal REG_COMB_rmii_tx_en_reg : unsigned(0 downto 0);
signal REG_COMB_rmii_rx_reg : unsigned(1 downto 0);
signal REG_COMB_rmii_crs_dv_reg : unsigned(0 downto 0);

-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
function uint2_0_0( x : unsigned) return unsigned is
--variable x : unsigned(1 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(0- i);
      end loop;
return return_output;
end function;

function uint2_1_1( x : unsigned) return unsigned is
--variable x : unsigned(1 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(1- i);
      end loop;
return return_output;
end function;

function uint1_uint1( x : unsigned;
 y : unsigned) return unsigned is

  --variable x : unsigned(0 downto 0);
  --variable y : unsigned(0 downto 0);
  variable return_output : unsigned(1 downto 0);

begin

    return_output := unsigned(std_logic_vector(x)) & unsigned(std_logic_vector(y));
    return return_output;

end function;


begin

-- SUBMODULE INSTANCES 


-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Registers
 rmii_tx_reg,
 rmii_tx_en_reg,
 rmii_rx_reg,
 rmii_crs_dv_reg,
 -- Clock cross input
 global_to_module)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_rmii_clk : unsigned(0 downto 0);
 variable VAR_pmod_0a_i1 : unsigned(0 downto 0);
 variable VAR_pmod_0b_o3 : unsigned(0 downto 0);
 variable VAR_pmod_0a_o4 : unsigned(0 downto 0);
 variable VAR_rmii_tx : unsigned(1 downto 0);
 variable VAR_pmod_0a_o3 : unsigned(0 downto 0);
 variable VAR_rmii_tx_en : unsigned(0 downto 0);
 variable VAR_rmii_rx : unsigned(1 downto 0);
 variable VAR_pmod_0b_i2 : unsigned(0 downto 0);
 variable VAR_pmod_0a_i2 : unsigned(0 downto 0);
 variable VAR_rmii_crs_dv : unsigned(0 downto 0);
 variable VAR_pmod_0b_i1 : unsigned(0 downto 0);
 variable VAR_uint2_0_0_rmii_wires_c_l22_c16_fe85_return_output : unsigned(0 downto 0);
 variable VAR_uint2_1_1_rmii_wires_c_l23_c16_5363_return_output : unsigned(0 downto 0);
 variable VAR_uint1_uint1_rmii_wires_c_l32_c17_2381_return_output : unsigned(1 downto 0);
 -- State registers comb logic variables
variable REG_VAR_rmii_tx_reg : unsigned(1 downto 0);
variable REG_VAR_rmii_tx_en_reg : unsigned(0 downto 0);
variable REG_VAR_rmii_rx_reg : unsigned(1 downto 0);
variable REG_VAR_rmii_crs_dv_reg : unsigned(0 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_rmii_tx_reg := rmii_tx_reg;
  REG_VAR_rmii_tx_en_reg := rmii_tx_en_reg;
  REG_VAR_rmii_rx_reg := rmii_rx_reg;
  REG_VAR_rmii_crs_dv_reg := rmii_crs_dv_reg;
 -- Reads from global variables
     VAR_pmod_0a_i1 := global_to_module.pmod_0a_i1;
     VAR_rmii_tx := global_to_module.rmii_tx;
     VAR_rmii_tx_en := global_to_module.rmii_tx_en;
     VAR_pmod_0b_i2 := global_to_module.pmod_0b_i2;
     VAR_pmod_0a_i2 := global_to_module.pmod_0a_i2;
     VAR_pmod_0b_i1 := global_to_module.pmod_0b_i1;
     -- Submodule level 0
     VAR_rmii_clk := VAR_pmod_0a_i1;
     REG_VAR_rmii_tx_en_reg := VAR_rmii_tx_en;
     VAR_pmod_0a_o3 := rmii_tx_en_reg;
     REG_VAR_rmii_tx_reg := VAR_rmii_tx;
     REG_VAR_rmii_crs_dv_reg := VAR_pmod_0b_i1;
     VAR_rmii_crs_dv := rmii_crs_dv_reg;
     -- uint2_0_0[rmii_wires_c_l22_c16_fe85] LATENCY=0
     VAR_uint2_0_0_rmii_wires_c_l22_c16_fe85_return_output := uint2_0_0(
     rmii_tx_reg);

     -- uint1_uint1[rmii_wires_c_l32_c17_2381] LATENCY=0
     VAR_uint1_uint1_rmii_wires_c_l32_c17_2381_return_output := uint1_uint1(
     VAR_pmod_0b_i2,
     VAR_pmod_0a_i2);

     -- uint2_1_1[rmii_wires_c_l23_c16_5363] LATENCY=0
     VAR_uint2_1_1_rmii_wires_c_l23_c16_5363_return_output := uint2_1_1(
     rmii_tx_reg);

     -- Submodule level 1
     VAR_pmod_0a_o4 := VAR_uint2_1_1_rmii_wires_c_l23_c16_5363_return_output;
     VAR_pmod_0b_o3 := VAR_uint2_0_0_rmii_wires_c_l22_c16_fe85_return_output;
     REG_VAR_rmii_rx_reg := VAR_uint1_uint1_rmii_wires_c_l32_c17_2381_return_output;
     VAR_rmii_rx := rmii_rx_reg;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_rmii_tx_reg <= REG_VAR_rmii_tx_reg;
REG_COMB_rmii_tx_en_reg <= REG_VAR_rmii_tx_en_reg;
REG_COMB_rmii_rx_reg <= REG_VAR_rmii_rx_reg;
REG_COMB_rmii_crs_dv_reg <= REG_VAR_rmii_crs_dv_reg;
-- Global wires driven various places in pipeline
if clk_en_internal='1' then
  module_to_global.rmii_clk <= VAR_rmii_clk;
else
  module_to_global.rmii_clk <= to_unsigned(0, 1);
end if;
if clk_en_internal='1' then
  module_to_global.pmod_0b_o3 <= VAR_pmod_0b_o3;
else
  module_to_global.pmod_0b_o3 <= to_unsigned(0, 1);
end if;
if clk_en_internal='1' then
  module_to_global.pmod_0a_o4 <= VAR_pmod_0a_o4;
else
  module_to_global.pmod_0a_o4 <= to_unsigned(0, 1);
end if;
if clk_en_internal='1' then
  module_to_global.pmod_0a_o3 <= VAR_pmod_0a_o3;
else
  module_to_global.pmod_0a_o3 <= to_unsigned(0, 1);
end if;
if clk_en_internal='1' then
  module_to_global.rmii_rx <= VAR_rmii_rx;
else
  module_to_global.rmii_rx <= to_unsigned(0, 2);
end if;
if clk_en_internal='1' then
  module_to_global.rmii_crs_dv <= VAR_rmii_crs_dv;
else
  module_to_global.rmii_crs_dv <= to_unsigned(0, 1);
end if;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if clk_en_internal='1' then
     rmii_tx_reg <= REG_COMB_rmii_tx_reg;
     rmii_tx_en_reg <= REG_COMB_rmii_tx_en_reg;
     rmii_rx_reg <= REG_COMB_rmii_rx_reg;
     rmii_crs_dv_reg <= REG_COMB_rmii_crs_dv_reg;
 end if;
 end if;
end process;

end arch;
