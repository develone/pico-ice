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
entity uart_rx_connect_0CLK_de264c78 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in uart_rx_connect_global_to_module_t;
 module_to_global : out uart_rx_connect_module_to_global_t);
end uart_rx_connect_0CLK_de264c78;
architecture arch of uart_rx_connect_0CLK_de264c78 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal the_reg : unsigned(0 downto 0) := to_unsigned(0, 1);
signal REG_COMB_the_reg : unsigned(0 downto 0);

-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;

begin



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Registers
 the_reg,
 -- Clock cross input
 global_to_module)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_uart_rx : unsigned(0 downto 0);
 variable VAR_ice_27 : unsigned(0 downto 0);
 -- State registers comb logic variables
variable REG_VAR_the_reg : unsigned(0 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_the_reg := the_reg;
 -- Reads from global variables
     VAR_ice_27 := global_to_module.ice_27;
     -- Submodule level 0
     REG_VAR_the_reg := VAR_ice_27;
     VAR_uart_rx := the_reg;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_the_reg <= REG_VAR_the_reg;
-- Global wires driven various places in pipeline
if clk_en_internal='1' then
  module_to_global.uart_rx <= VAR_uart_rx;
else
  module_to_global.uart_rx <= to_unsigned(0, 1);
end if;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if clk_en_internal='1' then
     the_reg <= REG_COMB_the_reg;
 end if;
 end if;
end process;

end arch;
