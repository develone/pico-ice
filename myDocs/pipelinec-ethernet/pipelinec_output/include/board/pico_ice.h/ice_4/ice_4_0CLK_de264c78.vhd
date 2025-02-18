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
-- Submodules: 0
entity ice_4_0CLK_de264c78 is
port(
 module_to_global : out ice_4_module_to_global_t;
 val_input : in unsigned(0 downto 0));
end ice_4_0CLK_de264c78;
architecture arch of ice_4_0CLK_de264c78 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

begin



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 val_input)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_val_input : unsigned(0 downto 0);
 variable VAR_ice_4 : unsigned(0 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_val_input := val_input;

     -- Submodule level 0
     VAR_ice_4 := VAR_val_input;
   end if;
 end loop;

-- Global wires driven various places in pipeline
module_to_global.ice_4 <= VAR_ice_4;
end process;

end arch;
