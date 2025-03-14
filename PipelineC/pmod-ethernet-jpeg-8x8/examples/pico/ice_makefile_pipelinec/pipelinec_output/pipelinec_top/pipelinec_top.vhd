library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.c_structs_pkg.all;
use work.global_wires_pkg.all;

  entity pipelinec_top is
port(
clk_25p0_out : out std_logic;
clk_None : in std_logic;

-- IO for each main func
pll_clk_val_input : in unsigned(0 downto 0);
ice_39_return_output : out unsigned(0 downto 0);
ice_40_return_output : out unsigned(0 downto 0);
ice_41_return_output : out unsigned(0 downto 0);
ice_2_return_output : out unsigned(0 downto 0);
ice_3_return_output : out unsigned(0 downto 0);
ice_4_return_output : out unsigned(0 downto 0);
ice_25_return_output : out unsigned(0 downto 0);
ice_27_val_input : in unsigned(0 downto 0);
ice_31_return_output : out unsigned(0 downto 0);
ice_34_return_output : out unsigned(0 downto 0);
ice_36_return_output : out unsigned(0 downto 0);
ice_38_return_output : out unsigned(0 downto 0);
ice_42_return_output : out unsigned(0 downto 0);
ice_43_return_output : out unsigned(0 downto 0);
ice_44_return_output : out unsigned(0 downto 0);
ice_45_return_output : out unsigned(0 downto 0);
ice_46_return_output : out unsigned(0 downto 0);
ice_47_return_output : out unsigned(0 downto 0);
ice_48_return_output : out unsigned(0 downto 0)
  );
end pipelinec_top;
architecture arch of pipelinec_top is

attribute syn_keep : boolean;
attribute keep : string;
attribute dont_touch : string;

-- User defined clocks
signal clk_25p0 : std_logic;
attribute syn_keep of clk_25p0: signal is true;
attribute keep of clk_25p0: signal is "true";
attribute dont_touch of clk_25p0: signal is "true";

-- Global/clock crossing wires from modules to global area
signal module_to_global : module_to_global_t;
-- Global/clock crossing wires from the global area to modules
signal global_to_module : global_to_module_t;

begin
-- User defined clocks
clk_25p0 <= module_to_global.pll_clk.pll_clk(0);
clk_25p0_out <= clk_25p0;

-- Instantiate each main
-- main functions are always clock enabled, always running
pll_clk_0CLK_de264c78 : entity work.pll_clk_0CLK_de264c78 port map (
module_to_global.pll_clk,
pll_clk_val_input);

ice_39_0CLK_de264c78 : entity work.ice_39_0CLK_de264c78 port map (
global_to_module.ice_39,
ice_39_return_output);

ice_40_0CLK_de264c78 : entity work.ice_40_0CLK_de264c78 port map (
global_to_module.ice_40,
ice_40_return_output);

ice_41_0CLK_de264c78 : entity work.ice_41_0CLK_de264c78 port map (
global_to_module.ice_41,
ice_41_return_output);

led_r_connect_0CLK_de264c78 : entity work.led_r_connect_0CLK_de264c78 port map (
clk_25p0,
to_unsigned(1,1),
global_to_module.led_r_connect,
module_to_global.led_r_connect);

led_g_connect_0CLK_de264c78 : entity work.led_g_connect_0CLK_de264c78 port map (
clk_25p0,
to_unsigned(1,1),
global_to_module.led_g_connect,
module_to_global.led_g_connect);

led_b_connect_0CLK_de264c78 : entity work.led_b_connect_0CLK_de264c78 port map (
clk_25p0,
to_unsigned(1,1),
global_to_module.led_b_connect,
module_to_global.led_b_connect);

ice_2_0CLK_de264c78 : entity work.ice_2_0CLK_de264c78 port map (
global_to_module.ice_2,
ice_2_return_output);

ice_3_0CLK_de264c78 : entity work.ice_3_0CLK_de264c78 port map (
global_to_module.ice_3,
ice_3_return_output);

ice_4_0CLK_de264c78 : entity work.ice_4_0CLK_de264c78 port map (
global_to_module.ice_4,
ice_4_return_output);

ice_25_0CLK_de264c78 : entity work.ice_25_0CLK_de264c78 port map (
global_to_module.ice_25,
ice_25_return_output);

ice_27_0CLK_de264c78 : entity work.ice_27_0CLK_de264c78 port map (
module_to_global.ice_27,
ice_27_val_input);

ice_31_0CLK_de264c78 : entity work.ice_31_0CLK_de264c78 port map (
global_to_module.ice_31,
ice_31_return_output);

ice_34_0CLK_de264c78 : entity work.ice_34_0CLK_de264c78 port map (
global_to_module.ice_34,
ice_34_return_output);

ice_36_0CLK_de264c78 : entity work.ice_36_0CLK_de264c78 port map (
global_to_module.ice_36,
ice_36_return_output);

ice_38_0CLK_de264c78 : entity work.ice_38_0CLK_de264c78 port map (
global_to_module.ice_38,
ice_38_return_output);

ice_42_0CLK_de264c78 : entity work.ice_42_0CLK_de264c78 port map (
global_to_module.ice_42,
ice_42_return_output);

ice_43_0CLK_de264c78 : entity work.ice_43_0CLK_de264c78 port map (
global_to_module.ice_43,
ice_43_return_output);

ice_44_0CLK_de264c78 : entity work.ice_44_0CLK_de264c78 port map (
global_to_module.ice_44,
ice_44_return_output);

ice_45_0CLK_de264c78 : entity work.ice_45_0CLK_de264c78 port map (
global_to_module.ice_45,
ice_45_return_output);

ice_46_0CLK_de264c78 : entity work.ice_46_0CLK_de264c78 port map (
global_to_module.ice_46,
ice_46_return_output);

ice_47_0CLK_de264c78 : entity work.ice_47_0CLK_de264c78 port map (
global_to_module.ice_47,
ice_47_return_output);

ice_48_0CLK_de264c78 : entity work.ice_48_0CLK_de264c78 port map (
global_to_module.ice_48,
ice_48_return_output);

pmod_0a_o4_connect_0CLK_de264c78 : entity work.pmod_0a_o4_connect_0CLK_de264c78 port map (
global_to_module.pmod_0a_o4_connect,
module_to_global.pmod_0a_o4_connect);

pmod_0a_o3_connect_0CLK_de264c78 : entity work.pmod_0a_o3_connect_0CLK_de264c78 port map (
global_to_module.pmod_0a_o3_connect,
module_to_global.pmod_0a_o3_connect);

pmod_0a_o2_connect_0CLK_de264c78 : entity work.pmod_0a_o2_connect_0CLK_de264c78 port map (
global_to_module.pmod_0a_o2_connect,
module_to_global.pmod_0a_o2_connect);

pmod_0a_o1_connect_0CLK_de264c78 : entity work.pmod_0a_o1_connect_0CLK_de264c78 port map (
global_to_module.pmod_0a_o1_connect,
module_to_global.pmod_0a_o1_connect);

pmod_0b_o4_connect_0CLK_de264c78 : entity work.pmod_0b_o4_connect_0CLK_de264c78 port map (
global_to_module.pmod_0b_o4_connect,
module_to_global.pmod_0b_o4_connect);

pmod_0b_o3_connect_0CLK_de264c78 : entity work.pmod_0b_o3_connect_0CLK_de264c78 port map (
global_to_module.pmod_0b_o3_connect,
module_to_global.pmod_0b_o3_connect);

pmod_0b_o2_connect_0CLK_de264c78 : entity work.pmod_0b_o2_connect_0CLK_de264c78 port map (
global_to_module.pmod_0b_o2_connect,
module_to_global.pmod_0b_o2_connect);

pmod_0b_o1_connect_0CLK_de264c78 : entity work.pmod_0b_o1_connect_0CLK_de264c78 port map (
global_to_module.pmod_0b_o1_connect,
module_to_global.pmod_0b_o1_connect);

pmod_1a_o4_connect_0CLK_de264c78 : entity work.pmod_1a_o4_connect_0CLK_de264c78 port map (
global_to_module.pmod_1a_o4_connect,
module_to_global.pmod_1a_o4_connect);

pmod_1a_o3_connect_0CLK_de264c78 : entity work.pmod_1a_o3_connect_0CLK_de264c78 port map (
global_to_module.pmod_1a_o3_connect,
module_to_global.pmod_1a_o3_connect);

pmod_1a_o2_connect_0CLK_de264c78 : entity work.pmod_1a_o2_connect_0CLK_de264c78 port map (
global_to_module.pmod_1a_o2_connect,
module_to_global.pmod_1a_o2_connect);

pmod_1a_o1_connect_0CLK_de264c78 : entity work.pmod_1a_o1_connect_0CLK_de264c78 port map (
global_to_module.pmod_1a_o1_connect,
module_to_global.pmod_1a_o1_connect);

pmod_1b_o2_connect_0CLK_de264c78 : entity work.pmod_1b_o2_connect_0CLK_de264c78 port map (
global_to_module.pmod_1b_o2_connect,
module_to_global.pmod_1b_o2_connect);

pmod_1b_o1_connect_0CLK_de264c78 : entity work.pmod_1b_o1_connect_0CLK_de264c78 port map (
global_to_module.pmod_1b_o1_connect,
module_to_global.pmod_1b_o1_connect);

uart_tx_connect_0CLK_de264c78 : entity work.uart_tx_connect_0CLK_de264c78 port map (
clk_None,
to_unsigned(1,1),
global_to_module.uart_tx_connect,
module_to_global.uart_tx_connect);

uart_rx_connect_0CLK_de264c78 : entity work.uart_rx_connect_0CLK_de264c78 port map (
clk_25p0,
to_unsigned(1,1),
global_to_module.uart_rx_connect,
module_to_global.uart_rx_connect);

uart_rx_mac_0CLK_6e5ceb01 : entity work.uart_rx_mac_0CLK_6e5ceb01 port map (
clk_25p0,
to_unsigned(1,1),
global_to_module.uart_rx_mac,
module_to_global.uart_rx_mac);

uart_tx_mac_0CLK_494804b3 : entity work.uart_tx_mac_0CLK_494804b3 port map (
clk_None,
to_unsigned(1,1),
module_to_global.uart_tx_mac);

vga_hs_connect_0CLK_de264c78 : entity work.vga_hs_connect_0CLK_de264c78 port map (
clk_25p0,
to_unsigned(1,1),
global_to_module.vga_hs_connect,
module_to_global.vga_hs_connect);

vga_vs_connect_0CLK_de264c78 : entity work.vga_vs_connect_0CLK_de264c78 port map (
clk_25p0,
to_unsigned(1,1),
global_to_module.vga_vs_connect,
module_to_global.vga_vs_connect);

vga_r_connect_0CLK_de264c78 : entity work.vga_r_connect_0CLK_de264c78 port map (
clk_25p0,
to_unsigned(1,1),
global_to_module.vga_r_connect,
module_to_global.vga_r_connect);

vga_g_connect_0CLK_de264c78 : entity work.vga_g_connect_0CLK_de264c78 port map (
clk_25p0,
to_unsigned(1,1),
global_to_module.vga_g_connect,
module_to_global.vga_g_connect);

vga_b_connect_0CLK_de264c78 : entity work.vga_b_connect_0CLK_de264c78 port map (
clk_25p0,
to_unsigned(1,1),
global_to_module.vga_b_connect,
module_to_global.vga_b_connect);

vga_4b_connect_0CLK_295015b8 : entity work.vga_4b_connect_0CLK_295015b8 port map (
global_to_module.vga_4b_connect,
module_to_global.vga_4b_connect);

pong_vga_datapath_0CLK_79f6ca61 : entity work.pong_vga_datapath_0CLK_79f6ca61 port map (
clk_25p0,
to_unsigned(1,1),
global_to_module.pong_vga_datapath,
module_to_global.pong_vga_datapath);

blinky_main_0CLK_23f04728 : entity work.blinky_main_0CLK_23f04728 port map (
clk_25p0,
to_unsigned(1,1),
module_to_global.blinky_main);


-- Directly connected global register read wires
global_to_module.uart_tx_connect.uart_tx <= module_to_global.uart_tx_mac.uart_tx;

global_to_module.ice_48.ice_48 <= module_to_global.pmod_0b_o2_connect.ice_48;

global_to_module.pmod_0a_o4_connect.pmod_0a_o4 <= module_to_global.vga_4b_connect.pmod_0a_o4;

global_to_module.ice_4.ice_4 <= module_to_global.pmod_0a_o1_connect.ice_4;

global_to_module.pmod_0a_o1_connect.pmod_0a_o1 <= module_to_global.vga_4b_connect.pmod_0a_o1;

global_to_module.pmod_1a_o1_connect.pmod_1a_o1 <= module_to_global.vga_4b_connect.pmod_1a_o1;

global_to_module.pmod_1b_o1_connect.pmod_1b_o1 <= module_to_global.vga_hs_connect.pmod_1b_o1;

global_to_module.vga_4b_connect.vga_g_8b_to_4b <= module_to_global.vga_g_connect.vga_g_8b_to_4b;

global_to_module.pmod_0a_o3_connect.pmod_0a_o3 <= module_to_global.vga_4b_connect.pmod_0a_o3;

global_to_module.ice_40.ice_40 <= module_to_global.led_b_connect.ice_40;

global_to_module.vga_r_connect.vga_r <= module_to_global.pong_vga_datapath.vga_r;

global_to_module.vga_g_connect.vga_g <= module_to_global.pong_vga_datapath.vga_g;

global_to_module.vga_b_connect.vga_b <= module_to_global.pong_vga_datapath.vga_b;

global_to_module.pmod_1a_o4_connect.pmod_1a_o4 <= module_to_global.vga_4b_connect.pmod_1a_o4;

global_to_module.ice_39.ice_39 <= module_to_global.led_g_connect.ice_39;

global_to_module.ice_2.ice_2 <= module_to_global.pmod_0a_o2_connect.ice_2;

global_to_module.uart_rx_mac.uart_rx_mac_out_ready <= module_to_global.pong_vga_datapath.uart_rx_to_buttons_pong_top_c_l58_c29_361a.uart_rx_mac_out_ready;

global_to_module.vga_hs_connect.vga_hs <= module_to_global.pong_vga_datapath.vga_hs;

global_to_module.ice_41.ice_41 <= module_to_global.led_r_connect.ice_41;

global_to_module.ice_34.ice_34 <= module_to_global.pmod_1a_o3_connect.ice_34;

global_to_module.vga_4b_connect.vga_b_8b_to_4b <= module_to_global.vga_b_connect.vga_b_8b_to_4b;

global_to_module.vga_vs_connect.vga_vs <= module_to_global.pong_vga_datapath.vga_vs;

global_to_module.ice_38.ice_38 <= module_to_global.pmod_1a_o2_connect.ice_38;

global_to_module.led_b_connect.led_b <= module_to_global.blinky_main.led_b;

global_to_module.ice_44.ice_44 <= module_to_global.pmod_0b_o4_connect.ice_44;


global_to_module.ice_36.ice_36 <= module_to_global.pmod_1b_o2_connect.ice_36;

global_to_module.ice_47.ice_47 <= module_to_global.pmod_0a_o3_connect.ice_47;

global_to_module.pmod_0b_o4_connect.pmod_0b_o4 <= module_to_global.vga_4b_connect.pmod_0b_o4;

global_to_module.pmod_0b_o3_connect.pmod_0b_o3 <= module_to_global.vga_4b_connect.pmod_0b_o3;

global_to_module.pmod_1a_o3_connect.pmod_1a_o3 <= module_to_global.vga_4b_connect.pmod_1a_o3;

global_to_module.ice_45.ice_45 <= module_to_global.pmod_0a_o4_connect.ice_45;

global_to_module.led_r_connect.led_r <= module_to_global.blinky_main.led_r;

global_to_module.pmod_0b_o2_connect.pmod_0b_o2 <= module_to_global.vga_4b_connect.pmod_0b_o2;

global_to_module.ice_43.ice_43 <= module_to_global.pmod_1a_o1_connect.ice_43;

global_to_module.vga_4b_connect.vga_r_8b_to_4b <= module_to_global.vga_r_connect.vga_r_8b_to_4b;

global_to_module.ice_31.ice_31 <= module_to_global.pmod_1a_o4_connect.ice_31;

global_to_module.pong_vga_datapath.uart_rx_to_buttons_pong_top_c_l58_c29_361a.uart_rx_mac_word_out <= module_to_global.uart_rx_mac.uart_rx_mac_word_out;

global_to_module.pmod_1a_o2_connect.pmod_1a_o2 <= module_to_global.vga_4b_connect.pmod_1a_o2;

global_to_module.ice_3.ice_3 <= module_to_global.pmod_0b_o1_connect.ice_3;

global_to_module.ice_25.ice_25 <= module_to_global.uart_tx_connect.ice_25;

global_to_module.led_g_connect.led_g <= module_to_global.blinky_main.led_g;

global_to_module.pmod_0b_o1_connect.pmod_0b_o1 <= module_to_global.vga_4b_connect.pmod_0b_o1;

global_to_module.ice_42.ice_42 <= module_to_global.pmod_1b_o1_connect.ice_42;

global_to_module.uart_rx_connect.ice_27 <= module_to_global.ice_27.ice_27;

global_to_module.uart_rx_mac.uart_rx <= module_to_global.uart_rx_connect.uart_rx;

global_to_module.pmod_1b_o2_connect.pmod_1b_o2 <= module_to_global.vga_vs_connect.pmod_1b_o2;

global_to_module.ice_46.ice_46 <= module_to_global.pmod_0b_o3_connect.ice_46;

global_to_module.pmod_0a_o2_connect.pmod_0a_o2 <= module_to_global.vga_4b_connect.pmod_0a_o2;


end arch;
