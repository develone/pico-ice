library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.c_structs_pkg.all;
use work.global_wires_pkg.all;

  entity pipelinec_top is
port(
-- All clocks
clk_25p0_out : out std_logic;
clk_50p0_out : out std_logic;
clk_None : in std_logic;

-- IO for each main func
pll_clk_val_input : in unsigned(0 downto 0);
ice_39_return_output : out unsigned(0 downto 0);
ice_40_return_output : out unsigned(0 downto 0);
ice_41_return_output : out unsigned(0 downto 0);
ice_45_return_output : out unsigned(0 downto 0);
ice_47_return_output : out unsigned(0 downto 0);
ice_2_val_input : in unsigned(0 downto 0);
ice_4_val_input : in unsigned(0 downto 0);
ice_46_return_output : out unsigned(0 downto 0);
ice_48_val_input : in unsigned(0 downto 0);
ice_3_val_input : in unsigned(0 downto 0)
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
signal clk_50p0 : std_logic;
attribute syn_keep of clk_50p0: signal is true;
attribute keep of clk_50p0: signal is "true";
attribute dont_touch of clk_50p0: signal is "true";

-- Global/clock crossing wires from modules to global area
signal module_to_global : module_to_global_t;
-- Global/clock crossing wires from the global area to modules
signal global_to_module : global_to_module_t;
signal clk_cross_no_skid_rmii_eth_mac_tx_fifo_FIFO_return_output : no_skid_rmii_eth_mac_tx_fifo_FIFO_read_t;
signal clk_cross_loopback_headers_fifo_FIFO_return_output : loopback_headers_fifo_FIFO_read_t;
signal clk_cross_no_skid_rmii_eth_mac_rx_fifo_FIFO_return_output : no_skid_rmii_eth_mac_rx_fifo_FIFO_read_t;
signal clk_cross_loopback_payload_fifo_FIFO_return_output : loopback_payload_fifo_FIFO_read_t;

begin
-- User defined clocks
clk_25p0 <= module_to_global.pll_clk.pll_clk(0);
clk_25p0_out <= clk_25p0;
clk_50p0 <= module_to_global.rmii_connect.rmii_clk(0);
clk_50p0_out <= clk_50p0;

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
clk_50p0,
to_unsigned(1,1),
global_to_module.led_r_connect,
module_to_global.led_r_connect);

led_g_connect_0CLK_de264c78 : entity work.led_g_connect_0CLK_de264c78 port map (
clk_50p0,
to_unsigned(1,1),
global_to_module.led_g_connect,
module_to_global.led_g_connect);

led_b_connect_0CLK_de264c78 : entity work.led_b_connect_0CLK_de264c78 port map (
clk_50p0,
to_unsigned(1,1),
global_to_module.led_b_connect,
module_to_global.led_b_connect);

ice_45_0CLK_de264c78 : entity work.ice_45_0CLK_de264c78 port map (
global_to_module.ice_45,
ice_45_return_output);

ice_47_0CLK_de264c78 : entity work.ice_47_0CLK_de264c78 port map (
global_to_module.ice_47,
ice_47_return_output);

ice_2_0CLK_de264c78 : entity work.ice_2_0CLK_de264c78 port map (
module_to_global.ice_2,
ice_2_val_input);

ice_4_0CLK_de264c78 : entity work.ice_4_0CLK_de264c78 port map (
module_to_global.ice_4,
ice_4_val_input);

pmod_0a_o4_connect_0CLK_de264c78 : entity work.pmod_0a_o4_connect_0CLK_de264c78 port map (
global_to_module.pmod_0a_o4_connect,
module_to_global.pmod_0a_o4_connect);

pmod_0a_o3_connect_0CLK_de264c78 : entity work.pmod_0a_o3_connect_0CLK_de264c78 port map (
global_to_module.pmod_0a_o3_connect,
module_to_global.pmod_0a_o3_connect);

pmod_0a_i2_connect_0CLK_de264c78 : entity work.pmod_0a_i2_connect_0CLK_de264c78 port map (
global_to_module.pmod_0a_i2_connect,
module_to_global.pmod_0a_i2_connect);

pmod_0a_i1_connect_0CLK_de264c78 : entity work.pmod_0a_i1_connect_0CLK_de264c78 port map (
global_to_module.pmod_0a_i1_connect,
module_to_global.pmod_0a_i1_connect);

ice_46_0CLK_de264c78 : entity work.ice_46_0CLK_de264c78 port map (
global_to_module.ice_46,
ice_46_return_output);

ice_48_0CLK_de264c78 : entity work.ice_48_0CLK_de264c78 port map (
module_to_global.ice_48,
ice_48_val_input);

ice_3_0CLK_de264c78 : entity work.ice_3_0CLK_de264c78 port map (
module_to_global.ice_3,
ice_3_val_input);

pmod_0b_o3_connect_0CLK_de264c78 : entity work.pmod_0b_o3_connect_0CLK_de264c78 port map (
global_to_module.pmod_0b_o3_connect,
module_to_global.pmod_0b_o3_connect);

pmod_0b_i2_connect_0CLK_de264c78 : entity work.pmod_0b_i2_connect_0CLK_de264c78 port map (
global_to_module.pmod_0b_i2_connect,
module_to_global.pmod_0b_i2_connect);

pmod_0b_i1_connect_0CLK_de264c78 : entity work.pmod_0b_i1_connect_0CLK_de264c78 port map (
global_to_module.pmod_0b_i1_connect,
module_to_global.pmod_0b_i1_connect);

rmii_connect_0CLK_380ecc95 : entity work.rmii_connect_0CLK_380ecc95 port map (
clk_50p0,
to_unsigned(1,1),
global_to_module.rmii_connect,
module_to_global.rmii_connect);

no_skid_rmii_eth_mac_rx_fifo_wr_stream_in_0CLK_a5a1cd4e : entity work.no_skid_rmii_eth_mac_rx_fifo_wr_stream_in_0CLK_a5a1cd4e port map (
to_unsigned(1,1),
global_to_module.no_skid_rmii_eth_mac_rx_fifo_wr_stream_in,
module_to_global.no_skid_rmii_eth_mac_rx_fifo_wr_stream_in);

no_skid_rmii_eth_mac_rx_fifo_rd_stream_out_0CLK_6f2c5aad : entity work.no_skid_rmii_eth_mac_rx_fifo_rd_stream_out_0CLK_6f2c5aad port map (
to_unsigned(1,1),
global_to_module.no_skid_rmii_eth_mac_rx_fifo_rd_stream_out,
module_to_global.no_skid_rmii_eth_mac_rx_fifo_rd_stream_out);

rmii_eth_mac_rx_fifo_wr_skid_in_0CLK_d14799aa : entity work.rmii_eth_mac_rx_fifo_wr_skid_in_0CLK_d14799aa port map (
clk_50p0,
to_unsigned(1,1),
global_to_module.rmii_eth_mac_rx_fifo_wr_skid_in,
module_to_global.rmii_eth_mac_rx_fifo_wr_skid_in);

rmii_eth_mac_rx_fifo_rd_skid_out_0CLK_de264c78 : entity work.rmii_eth_mac_rx_fifo_rd_skid_out_0CLK_de264c78 port map (
global_to_module.rmii_eth_mac_rx_fifo_rd_skid_out,
module_to_global.rmii_eth_mac_rx_fifo_rd_skid_out);

no_skid_rmii_eth_mac_tx_fifo_wr_stream_in_0CLK_a5a1cd4e : entity work.no_skid_rmii_eth_mac_tx_fifo_wr_stream_in_0CLK_a5a1cd4e port map (
to_unsigned(1,1),
global_to_module.no_skid_rmii_eth_mac_tx_fifo_wr_stream_in,
module_to_global.no_skid_rmii_eth_mac_tx_fifo_wr_stream_in);

no_skid_rmii_eth_mac_tx_fifo_rd_stream_out_0CLK_6f2c5aad : entity work.no_skid_rmii_eth_mac_tx_fifo_rd_stream_out_0CLK_6f2c5aad port map (
to_unsigned(1,1),
global_to_module.no_skid_rmii_eth_mac_tx_fifo_rd_stream_out,
module_to_global.no_skid_rmii_eth_mac_tx_fifo_rd_stream_out);

rmii_eth_mac_tx_fifo_wr_skid_in_0CLK_de264c78 : entity work.rmii_eth_mac_tx_fifo_wr_skid_in_0CLK_de264c78 port map (
global_to_module.rmii_eth_mac_tx_fifo_wr_skid_in,
module_to_global.rmii_eth_mac_tx_fifo_wr_skid_in);

rmii_eth_mac_tx_fifo_rd_skid_out_0CLK_d14799aa : entity work.rmii_eth_mac_tx_fifo_rd_skid_out_0CLK_d14799aa port map (
clk_50p0,
to_unsigned(1,1),
global_to_module.rmii_eth_mac_tx_fifo_rd_skid_out,
module_to_global.rmii_eth_mac_tx_fifo_rd_skid_out);

rmii_rx_mac_instance_0CLK_7b4a07f7 : entity work.rmii_rx_mac_instance_0CLK_7b4a07f7 port map (
clk_50p0,
to_unsigned(1,1),
global_to_module.rmii_rx_mac_instance,
module_to_global.rmii_rx_mac_instance);

rmii_rx_mac_fifo_connect_0CLK_de264c78 : entity work.rmii_rx_mac_fifo_connect_0CLK_de264c78 port map (
global_to_module.rmii_rx_mac_fifo_connect,
module_to_global.rmii_rx_mac_fifo_connect);

rmii_tx_mac_instance_0CLK_715a9e3e : entity work.rmii_tx_mac_instance_0CLK_715a9e3e port map (
clk_50p0,
to_unsigned(1,1),
global_to_module.rmii_tx_mac_instance,
module_to_global.rmii_tx_mac_instance);

rmii_tx_mac_fifo_connect_0CLK_de264c78 : entity work.rmii_tx_mac_fifo_connect_0CLK_de264c78 port map (
global_to_module.rmii_tx_mac_fifo_connect,
module_to_global.rmii_tx_mac_fifo_connect);

loopback_payload_fifo_wr_stream_in_0CLK_a5a1cd4e : entity work.loopback_payload_fifo_wr_stream_in_0CLK_a5a1cd4e port map (
to_unsigned(1,1),
global_to_module.loopback_payload_fifo_wr_stream_in,
module_to_global.loopback_payload_fifo_wr_stream_in);

loopback_payload_fifo_rd_stream_out_0CLK_6f2c5aad : entity work.loopback_payload_fifo_rd_stream_out_0CLK_6f2c5aad port map (
to_unsigned(1,1),
global_to_module.loopback_payload_fifo_rd_stream_out,
module_to_global.loopback_payload_fifo_rd_stream_out);

loopback_headers_fifo_wr_stream_in_0CLK_a5a1cd4e : entity work.loopback_headers_fifo_wr_stream_in_0CLK_a5a1cd4e port map (
to_unsigned(1,1),
global_to_module.loopback_headers_fifo_wr_stream_in,
module_to_global.loopback_headers_fifo_wr_stream_in);

loopback_headers_fifo_rd_stream_out_0CLK_6f2c5aad : entity work.loopback_headers_fifo_rd_stream_out_0CLK_6f2c5aad port map (
to_unsigned(1,1),
global_to_module.loopback_headers_fifo_rd_stream_out,
module_to_global.loopback_headers_fifo_rd_stream_out);

rx_main_0CLK_e35f392a : entity work.rx_main_0CLK_e35f392a port map (
clk_25p0,
to_unsigned(1,1),
global_to_module.rx_main,
module_to_global.rx_main);

tx_main_0CLK_88173f38 : entity work.tx_main_0CLK_88173f38 port map (
clk_25p0,
to_unsigned(1,1),
global_to_module.tx_main,
module_to_global.tx_main);

blinky_main_0CLK_23f04728 : entity work.blinky_main_0CLK_23f04728 port map (
clk_50p0,
to_unsigned(1,1),
module_to_global.blinky_main);


-- Instantiate each unidirectional data clock crossing
no_skid_rmii_eth_mac_tx_fifo_FIFO : entity work.clk_cross_no_skid_rmii_eth_mac_tx_fifo_FIFO port map
(
in_clk => clk_25p0,
in_clk_en => module_to_global.no_skid_rmii_eth_mac_tx_fifo_wr_stream_in.no_skid_rmii_eth_mac_tx_fifo_FIFO_WRITE_1_CLOCK_ENABLE,
write_data => module_to_global.no_skid_rmii_eth_mac_tx_fifo_wr_stream_in.no_skid_rmii_eth_mac_tx_fifo_FIFO_WRITE_1_write_data,
write_enable => module_to_global.no_skid_rmii_eth_mac_tx_fifo_wr_stream_in.no_skid_rmii_eth_mac_tx_fifo_FIFO_WRITE_1_write_enable,
wr_return_output => global_to_module.no_skid_rmii_eth_mac_tx_fifo_wr_stream_in.no_skid_rmii_eth_mac_tx_fifo_FIFO_WRITE_1_return_output,
out_clk => clk_50p0,
out_clk_en => module_to_global.no_skid_rmii_eth_mac_tx_fifo_rd_stream_out.no_skid_rmii_eth_mac_tx_fifo_FIFO_READ_1_CLOCK_ENABLE,
read_enable => module_to_global.no_skid_rmii_eth_mac_tx_fifo_rd_stream_out.no_skid_rmii_eth_mac_tx_fifo_FIFO_READ_1_read_enable,
rd_return_output => clk_cross_no_skid_rmii_eth_mac_tx_fifo_FIFO_return_output
);
global_to_module.no_skid_rmii_eth_mac_tx_fifo_rd_stream_out.no_skid_rmii_eth_mac_tx_fifo_FIFO_READ_1_return_output <= clk_cross_no_skid_rmii_eth_mac_tx_fifo_FIFO_return_output;

loopback_headers_fifo_FIFO : entity work.clk_cross_loopback_headers_fifo_FIFO port map
(
in_clk => clk_25p0,
in_clk_en => module_to_global.loopback_headers_fifo_wr_stream_in.loopback_headers_fifo_FIFO_WRITE_1_CLOCK_ENABLE,
write_data => module_to_global.loopback_headers_fifo_wr_stream_in.loopback_headers_fifo_FIFO_WRITE_1_write_data,
write_enable => module_to_global.loopback_headers_fifo_wr_stream_in.loopback_headers_fifo_FIFO_WRITE_1_write_enable,
wr_return_output => global_to_module.loopback_headers_fifo_wr_stream_in.loopback_headers_fifo_FIFO_WRITE_1_return_output,
out_clk => clk_25p0,
out_clk_en => module_to_global.loopback_headers_fifo_rd_stream_out.loopback_headers_fifo_FIFO_READ_1_CLOCK_ENABLE,
read_enable => module_to_global.loopback_headers_fifo_rd_stream_out.loopback_headers_fifo_FIFO_READ_1_read_enable,
rd_return_output => clk_cross_loopback_headers_fifo_FIFO_return_output
);
global_to_module.loopback_headers_fifo_rd_stream_out.loopback_headers_fifo_FIFO_READ_1_return_output <= clk_cross_loopback_headers_fifo_FIFO_return_output;

no_skid_rmii_eth_mac_rx_fifo_FIFO : entity work.clk_cross_no_skid_rmii_eth_mac_rx_fifo_FIFO port map
(
in_clk => clk_50p0,
in_clk_en => module_to_global.no_skid_rmii_eth_mac_rx_fifo_wr_stream_in.no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_CLOCK_ENABLE,
write_data => module_to_global.no_skid_rmii_eth_mac_rx_fifo_wr_stream_in.no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_write_data,
write_enable => module_to_global.no_skid_rmii_eth_mac_rx_fifo_wr_stream_in.no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_write_enable,
wr_return_output => global_to_module.no_skid_rmii_eth_mac_rx_fifo_wr_stream_in.no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_return_output,
out_clk => clk_25p0,
out_clk_en => module_to_global.no_skid_rmii_eth_mac_rx_fifo_rd_stream_out.no_skid_rmii_eth_mac_rx_fifo_FIFO_READ_1_CLOCK_ENABLE,
read_enable => module_to_global.no_skid_rmii_eth_mac_rx_fifo_rd_stream_out.no_skid_rmii_eth_mac_rx_fifo_FIFO_READ_1_read_enable,
rd_return_output => clk_cross_no_skid_rmii_eth_mac_rx_fifo_FIFO_return_output
);
global_to_module.no_skid_rmii_eth_mac_rx_fifo_rd_stream_out.no_skid_rmii_eth_mac_rx_fifo_FIFO_READ_1_return_output <= clk_cross_no_skid_rmii_eth_mac_rx_fifo_FIFO_return_output;

loopback_payload_fifo_FIFO : entity work.clk_cross_loopback_payload_fifo_FIFO port map
(
in_clk => clk_25p0,
in_clk_en => module_to_global.loopback_payload_fifo_wr_stream_in.loopback_payload_fifo_FIFO_WRITE_1_CLOCK_ENABLE,
write_data => module_to_global.loopback_payload_fifo_wr_stream_in.loopback_payload_fifo_FIFO_WRITE_1_write_data,
write_enable => module_to_global.loopback_payload_fifo_wr_stream_in.loopback_payload_fifo_FIFO_WRITE_1_write_enable,
wr_return_output => global_to_module.loopback_payload_fifo_wr_stream_in.loopback_payload_fifo_FIFO_WRITE_1_return_output,
out_clk => clk_25p0,
out_clk_en => module_to_global.loopback_payload_fifo_rd_stream_out.loopback_payload_fifo_FIFO_READ_1_CLOCK_ENABLE,
read_enable => module_to_global.loopback_payload_fifo_rd_stream_out.loopback_payload_fifo_FIFO_READ_1_read_enable,
rd_return_output => clk_cross_loopback_payload_fifo_FIFO_return_output
);
global_to_module.loopback_payload_fifo_rd_stream_out.loopback_payload_fifo_FIFO_READ_1_return_output <= clk_cross_loopback_payload_fifo_FIFO_return_output;


-- Directly connected global register read wires
global_to_module.rmii_eth_mac_rx_fifo_rd_skid_out.no_skid_rmii_eth_mac_rx_fifo_out <= module_to_global.no_skid_rmii_eth_mac_rx_fifo_rd_stream_out.no_skid_rmii_eth_mac_rx_fifo_out;

global_to_module.rmii_eth_mac_rx_fifo_wr_skid_in.no_skid_rmii_eth_mac_rx_fifo_in_ready <= module_to_global.no_skid_rmii_eth_mac_rx_fifo_wr_stream_in.no_skid_rmii_eth_mac_rx_fifo_in_ready;

global_to_module.pmod_0b_i1_connect.ice_3 <= module_to_global.ice_3.ice_3;

global_to_module.rmii_connect.pmod_0a_i1 <= module_to_global.pmod_0a_i1_connect.pmod_0a_i1;

global_to_module.no_skid_rmii_eth_mac_tx_fifo_wr_stream_in.no_skid_rmii_eth_mac_tx_fifo_in <= module_to_global.rmii_eth_mac_tx_fifo_wr_skid_in.no_skid_rmii_eth_mac_tx_fifo_in;

global_to_module.rmii_eth_mac_tx_fifo_rd_skid_out.rmii_eth_mac_tx_fifo_out_ready <= module_to_global.rmii_tx_mac_instance.rmii_eth_mac_tx_fifo_out_ready;

global_to_module.rmii_connect.pmod_0a_i2 <= module_to_global.pmod_0a_i2_connect.pmod_0a_i2;

global_to_module.rmii_connect.pmod_0b_i2 <= module_to_global.pmod_0b_i2_connect.pmod_0b_i2;

global_to_module.no_skid_rmii_eth_mac_tx_fifo_rd_stream_out.no_skid_rmii_eth_mac_tx_fifo_out_ready <= module_to_global.rmii_eth_mac_tx_fifo_rd_skid_out.no_skid_rmii_eth_mac_tx_fifo_out_ready;

global_to_module.ice_46.ice_46 <= module_to_global.pmod_0b_o3_connect.ice_46;

global_to_module.pmod_0a_i2_connect.ice_2 <= module_to_global.ice_2.ice_2;

global_to_module.tx_main.loopback_payload_fifo_out <= module_to_global.loopback_payload_fifo_rd_stream_out.loopback_payload_fifo_out;

global_to_module.rx_main.loopback_headers_fifo_in_ready <= module_to_global.loopback_headers_fifo_wr_stream_in.loopback_headers_fifo_in_ready;

global_to_module.loopback_headers_fifo_wr_stream_in.loopback_headers_fifo_in <= module_to_global.rx_main.loopback_headers_fifo_in;


global_to_module.rmii_eth_mac_rx_fifo_rd_skid_out.rmii_eth_mac_rx_fifo_out_ready <= module_to_global.rmii_rx_mac_fifo_connect.rmii_eth_mac_rx_fifo_out_ready;

global_to_module.led_g_connect.led_g <= module_to_global.blinky_main.led_g;

global_to_module.ice_39.ice_39 <= module_to_global.led_g_connect.ice_39;

global_to_module.ice_45.ice_45 <= module_to_global.pmod_0a_o4_connect.ice_45;


global_to_module.pmod_0a_i1_connect.ice_4 <= module_to_global.ice_4.ice_4;

global_to_module.rmii_connect.rmii_tx_en <= module_to_global.rmii_tx_mac_instance.rmii_tx_en;

global_to_module.rmii_tx_mac_instance.rmii_eth_mac_tx_fifo_out <= module_to_global.rmii_eth_mac_tx_fifo_rd_skid_out.rmii_eth_mac_tx_fifo_out;

global_to_module.rmii_connect.rmii_tx <= module_to_global.rmii_tx_mac_instance.rmii_tx;

global_to_module.ice_40.ice_40 <= module_to_global.led_b_connect.ice_40;

global_to_module.rmii_tx_mac_fifo_connect.eth_tx_mac_axis_in <= module_to_global.tx_main.eth_tx_mac_axis_in;

global_to_module.loopback_headers_fifo_rd_stream_out.loopback_headers_fifo_out_ready <= module_to_global.tx_main.loopback_headers_fifo_out_ready;

global_to_module.rmii_rx_mac_instance.rmii_crs_dv <= module_to_global.rmii_connect.rmii_crs_dv;

global_to_module.rmii_eth_mac_tx_fifo_wr_skid_in.no_skid_rmii_eth_mac_tx_fifo_in_ready <= module_to_global.no_skid_rmii_eth_mac_tx_fifo_wr_stream_in.no_skid_rmii_eth_mac_tx_fifo_in_ready;

global_to_module.rx_main.eth_rx_mac_axis_out <= module_to_global.rmii_rx_mac_fifo_connect.eth_rx_mac_axis_out;

global_to_module.no_skid_rmii_eth_mac_rx_fifo_wr_stream_in.no_skid_rmii_eth_mac_rx_fifo_in <= module_to_global.rmii_eth_mac_rx_fifo_wr_skid_in.no_skid_rmii_eth_mac_rx_fifo_in;

global_to_module.rmii_eth_mac_rx_fifo_wr_skid_in.rmii_eth_mac_rx_fifo_in <= module_to_global.rmii_rx_mac_instance.rmii_eth_mac_rx_fifo_in;

global_to_module.loopback_payload_fifo_rd_stream_out.loopback_payload_fifo_out_ready <= module_to_global.tx_main.loopback_payload_fifo_out_ready;

global_to_module.loopback_payload_fifo_wr_stream_in.loopback_payload_fifo_in <= module_to_global.rx_main.loopback_payload_fifo_in;

global_to_module.rx_main.loopback_payload_fifo_in_ready <= module_to_global.loopback_payload_fifo_wr_stream_in.loopback_payload_fifo_in_ready;

global_to_module.rmii_rx_mac_instance.rmii_rx <= module_to_global.rmii_connect.rmii_rx;

global_to_module.pmod_0b_i2_connect.ice_48 <= module_to_global.ice_48.ice_48;

global_to_module.rmii_connect.pmod_0b_i1 <= module_to_global.pmod_0b_i1_connect.pmod_0b_i1;

global_to_module.led_b_connect.led_b <= module_to_global.blinky_main.led_b;

global_to_module.pmod_0b_o3_connect.pmod_0b_o3 <= module_to_global.rmii_connect.pmod_0b_o3;

global_to_module.tx_main.loopback_headers_fifo_out <= module_to_global.loopback_headers_fifo_rd_stream_out.loopback_headers_fifo_out;

global_to_module.rmii_eth_mac_tx_fifo_rd_skid_out.no_skid_rmii_eth_mac_tx_fifo_out <= module_to_global.no_skid_rmii_eth_mac_tx_fifo_rd_stream_out.no_skid_rmii_eth_mac_tx_fifo_out;

global_to_module.rmii_eth_mac_tx_fifo_wr_skid_in.rmii_eth_mac_tx_fifo_in <= module_to_global.rmii_tx_mac_fifo_connect.rmii_eth_mac_tx_fifo_in;

global_to_module.pmod_0a_o3_connect.pmod_0a_o3 <= module_to_global.rmii_connect.pmod_0a_o3;

global_to_module.tx_main.eth_tx_mac_input_ready <= module_to_global.rmii_tx_mac_fifo_connect.eth_tx_mac_input_ready;

global_to_module.rmii_rx_mac_fifo_connect.rmii_eth_mac_rx_fifo_out <= module_to_global.rmii_eth_mac_rx_fifo_rd_skid_out.rmii_eth_mac_rx_fifo_out;

global_to_module.ice_41.ice_41 <= module_to_global.led_r_connect.ice_41;

global_to_module.pmod_0a_o4_connect.pmod_0a_o4 <= module_to_global.rmii_connect.pmod_0a_o4;

global_to_module.led_r_connect.led_r <= module_to_global.blinky_main.led_r;

global_to_module.ice_47.ice_47 <= module_to_global.pmod_0a_o3_connect.ice_47;

global_to_module.rmii_tx_mac_fifo_connect.rmii_eth_mac_tx_fifo_in_ready <= module_to_global.rmii_eth_mac_tx_fifo_wr_skid_in.rmii_eth_mac_tx_fifo_in_ready;

global_to_module.no_skid_rmii_eth_mac_rx_fifo_rd_stream_out.no_skid_rmii_eth_mac_rx_fifo_out_ready <= module_to_global.rmii_eth_mac_rx_fifo_rd_skid_out.no_skid_rmii_eth_mac_rx_fifo_out_ready;


end arch;
