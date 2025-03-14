
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.c_structs_pkg.all; -- User types
-- Clock crossings
package global_wires_pkg is

  type ice_39_global_to_module_t is record
         ice_39 : unsigned(0 downto 0);

  end record;

  type ice_40_global_to_module_t is record
         ice_40 : unsigned(0 downto 0);

  end record;

  type ice_41_global_to_module_t is record
         ice_41 : unsigned(0 downto 0);

  end record;

  type led_r_connect_global_to_module_t is record
         led_r : unsigned(0 downto 0);

  end record;

  type led_g_connect_global_to_module_t is record
         led_g : unsigned(0 downto 0);

  end record;

  type led_b_connect_global_to_module_t is record
         led_b : unsigned(0 downto 0);

  end record;

  type ice_45_global_to_module_t is record
         ice_45 : unsigned(0 downto 0);

  end record;

  type ice_47_global_to_module_t is record
         ice_47 : unsigned(0 downto 0);

  end record;

  type pmod_0a_o4_connect_global_to_module_t is record
         pmod_0a_o4 : unsigned(0 downto 0);

  end record;

  type pmod_0a_o3_connect_global_to_module_t is record
         pmod_0a_o3 : unsigned(0 downto 0);

  end record;

  type pmod_0a_i2_connect_global_to_module_t is record
         ice_2 : unsigned(0 downto 0);

  end record;

  type pmod_0a_i1_connect_global_to_module_t is record
         ice_4 : unsigned(0 downto 0);

  end record;

  type ice_46_global_to_module_t is record
         ice_46 : unsigned(0 downto 0);

  end record;

  type pmod_0b_o3_connect_global_to_module_t is record
         pmod_0b_o3 : unsigned(0 downto 0);

  end record;

  type pmod_0b_i2_connect_global_to_module_t is record
         ice_48 : unsigned(0 downto 0);

  end record;

  type pmod_0b_i1_connect_global_to_module_t is record
         ice_3 : unsigned(0 downto 0);

  end record;

  type rmii_connect_global_to_module_t is record
         pmod_0a_i1 : unsigned(0 downto 0);
     rmii_tx : unsigned(1 downto 0);
     rmii_tx_en : unsigned(0 downto 0);
     pmod_0b_i2 : unsigned(0 downto 0);
     pmod_0a_i2 : unsigned(0 downto 0);
     pmod_0b_i1 : unsigned(0 downto 0);

  end record;

  type no_skid_rmii_eth_mac_rx_fifo_wr_stream_in_global_to_module_t is record
         no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_return_output : no_skid_rmii_eth_mac_rx_fifo_FIFO_write_t;
     no_skid_rmii_eth_mac_rx_fifo_in : axis8_t_stream_t;

  end record;

  type no_skid_rmii_eth_mac_rx_fifo_rd_stream_out_global_to_module_t is record
         no_skid_rmii_eth_mac_rx_fifo_FIFO_READ_1_return_output : no_skid_rmii_eth_mac_rx_fifo_FIFO_read_t;
     no_skid_rmii_eth_mac_rx_fifo_out_ready : unsigned(0 downto 0);

  end record;

  type rmii_eth_mac_rx_fifo_wr_skid_in_global_to_module_t is record
         rmii_eth_mac_rx_fifo_in : axis8_t_stream_t;
     no_skid_rmii_eth_mac_rx_fifo_in_ready : unsigned(0 downto 0);

  end record;

  type rmii_eth_mac_rx_fifo_rd_skid_out_global_to_module_t is record
         no_skid_rmii_eth_mac_rx_fifo_out : axis8_t_stream_t;
     rmii_eth_mac_rx_fifo_out_ready : unsigned(0 downto 0);

  end record;

  type no_skid_rmii_eth_mac_tx_fifo_wr_stream_in_global_to_module_t is record
         no_skid_rmii_eth_mac_tx_fifo_FIFO_WRITE_1_return_output : no_skid_rmii_eth_mac_tx_fifo_FIFO_write_t;
     no_skid_rmii_eth_mac_tx_fifo_in : axis8_t_stream_t;

  end record;

  type no_skid_rmii_eth_mac_tx_fifo_rd_stream_out_global_to_module_t is record
         no_skid_rmii_eth_mac_tx_fifo_FIFO_READ_1_return_output : no_skid_rmii_eth_mac_tx_fifo_FIFO_read_t;
     no_skid_rmii_eth_mac_tx_fifo_out_ready : unsigned(0 downto 0);

  end record;

  type rmii_eth_mac_tx_fifo_wr_skid_in_global_to_module_t is record
         rmii_eth_mac_tx_fifo_in : axis8_t_stream_t;
     no_skid_rmii_eth_mac_tx_fifo_in_ready : unsigned(0 downto 0);

  end record;

  type rmii_eth_mac_tx_fifo_rd_skid_out_global_to_module_t is record
         no_skid_rmii_eth_mac_tx_fifo_out : axis8_t_stream_t;
     rmii_eth_mac_tx_fifo_out_ready : unsigned(0 downto 0);

  end record;

  type rmii_rx_mac_instance_global_to_module_t is record
         rmii_rx : unsigned(1 downto 0);
     rmii_crs_dv : unsigned(0 downto 0);

  end record;

  type rmii_rx_mac_fifo_connect_global_to_module_t is record
         rmii_eth_mac_rx_fifo_out : axis8_t_stream_t;

  end record;

  type rmii_tx_mac_instance_global_to_module_t is record
         rmii_eth_mac_tx_fifo_out : axis8_t_stream_t;

  end record;

  type rmii_tx_mac_fifo_connect_global_to_module_t is record
         eth_tx_mac_axis_in : axis8_t_stream_t;
     rmii_eth_mac_tx_fifo_in_ready : unsigned(0 downto 0);

  end record;

  type loopback_payload_fifo_wr_stream_in_global_to_module_t is record
         loopback_payload_fifo_FIFO_WRITE_1_return_output : loopback_payload_fifo_FIFO_write_t;
     loopback_payload_fifo_in : axis8_t_stream_t;

  end record;

  type loopback_payload_fifo_rd_stream_out_global_to_module_t is record
         loopback_payload_fifo_FIFO_READ_1_return_output : loopback_payload_fifo_FIFO_read_t;
     loopback_payload_fifo_out_ready : unsigned(0 downto 0);

  end record;

  type loopback_headers_fifo_wr_stream_in_global_to_module_t is record
         loopback_headers_fifo_FIFO_WRITE_1_return_output : loopback_headers_fifo_FIFO_write_t;
     loopback_headers_fifo_in : eth_header_t_stream_t;

  end record;

  type loopback_headers_fifo_rd_stream_out_global_to_module_t is record
         loopback_headers_fifo_FIFO_READ_1_return_output : loopback_headers_fifo_FIFO_read_t;
     loopback_headers_fifo_out_ready : unsigned(0 downto 0);

  end record;

  type rx_main_global_to_module_t is record
         loopback_payload_fifo_in_ready : unsigned(0 downto 0);
     loopback_headers_fifo_in_ready : unsigned(0 downto 0);
     eth_rx_mac_axis_out : axis8_t_stream_t;

  end record;

  type tx_main_global_to_module_t is record
         loopback_headers_fifo_out : eth_header_t_stream_t;
     loopback_payload_fifo_out : axis8_t_stream_t;
     eth_tx_mac_input_ready : unsigned(0 downto 0);

  end record;

  type pll_clk_module_to_global_t is record
         pll_clk : unsigned(0 downto 0);

  end record;
  

  type led_r_connect_module_to_global_t is record
         ice_41 : unsigned(0 downto 0);

  end record;
  

  type led_g_connect_module_to_global_t is record
         ice_39 : unsigned(0 downto 0);

  end record;
  

  type led_b_connect_module_to_global_t is record
         ice_40 : unsigned(0 downto 0);

  end record;
  

  type ice_2_module_to_global_t is record
         ice_2 : unsigned(0 downto 0);

  end record;
  

  type ice_4_module_to_global_t is record
         ice_4 : unsigned(0 downto 0);

  end record;
  

  type pmod_0a_o4_connect_module_to_global_t is record
         ice_45 : unsigned(0 downto 0);

  end record;
  

  type pmod_0a_o3_connect_module_to_global_t is record
         ice_47 : unsigned(0 downto 0);

  end record;
  

  type pmod_0a_i2_connect_module_to_global_t is record
         pmod_0a_i2 : unsigned(0 downto 0);

  end record;
  

  type pmod_0a_i1_connect_module_to_global_t is record
         pmod_0a_i1 : unsigned(0 downto 0);

  end record;
  

  type ice_48_module_to_global_t is record
         ice_48 : unsigned(0 downto 0);

  end record;
  

  type ice_3_module_to_global_t is record
         ice_3 : unsigned(0 downto 0);

  end record;
  

  type pmod_0b_o3_connect_module_to_global_t is record
         ice_46 : unsigned(0 downto 0);

  end record;
  

  type pmod_0b_i2_connect_module_to_global_t is record
         pmod_0b_i2 : unsigned(0 downto 0);

  end record;
  

  type pmod_0b_i1_connect_module_to_global_t is record
         pmod_0b_i1 : unsigned(0 downto 0);

  end record;
  

  type rmii_connect_module_to_global_t is record
         rmii_clk : unsigned(0 downto 0);
     pmod_0b_o3 : unsigned(0 downto 0);
     pmod_0a_o4 : unsigned(0 downto 0);
     pmod_0a_o3 : unsigned(0 downto 0);
     rmii_rx : unsigned(1 downto 0);
     rmii_crs_dv : unsigned(0 downto 0);

  end record;
  

  type no_skid_rmii_eth_mac_rx_fifo_wr_stream_in_module_to_global_t is record
         no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_CLOCK_ENABLE : unsigned(0 downto 0);
     no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_write_data : axis8_t_1;
     no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_write_enable : unsigned(0 downto 0);
     no_skid_rmii_eth_mac_rx_fifo_in_ready : unsigned(0 downto 0);

  end record;
  

  type no_skid_rmii_eth_mac_rx_fifo_rd_stream_out_module_to_global_t is record
         no_skid_rmii_eth_mac_rx_fifo_FIFO_READ_1_CLOCK_ENABLE : unsigned(0 downto 0);
     no_skid_rmii_eth_mac_rx_fifo_FIFO_READ_1_read_enable : unsigned(0 downto 0);
     no_skid_rmii_eth_mac_rx_fifo_out : axis8_t_stream_t;

  end record;
  

  type rmii_eth_mac_rx_fifo_wr_skid_in_module_to_global_t is record
         no_skid_rmii_eth_mac_rx_fifo_in : axis8_t_stream_t;

  end record;
  

  type rmii_eth_mac_rx_fifo_rd_skid_out_module_to_global_t is record
         rmii_eth_mac_rx_fifo_out : axis8_t_stream_t;
     no_skid_rmii_eth_mac_rx_fifo_out_ready : unsigned(0 downto 0);

  end record;
  

  type no_skid_rmii_eth_mac_tx_fifo_wr_stream_in_module_to_global_t is record
         no_skid_rmii_eth_mac_tx_fifo_FIFO_WRITE_1_CLOCK_ENABLE : unsigned(0 downto 0);
     no_skid_rmii_eth_mac_tx_fifo_FIFO_WRITE_1_write_data : axis8_t_1;
     no_skid_rmii_eth_mac_tx_fifo_FIFO_WRITE_1_write_enable : unsigned(0 downto 0);
     no_skid_rmii_eth_mac_tx_fifo_in_ready : unsigned(0 downto 0);

  end record;
  

  type no_skid_rmii_eth_mac_tx_fifo_rd_stream_out_module_to_global_t is record
         no_skid_rmii_eth_mac_tx_fifo_FIFO_READ_1_CLOCK_ENABLE : unsigned(0 downto 0);
     no_skid_rmii_eth_mac_tx_fifo_FIFO_READ_1_read_enable : unsigned(0 downto 0);
     no_skid_rmii_eth_mac_tx_fifo_out : axis8_t_stream_t;

  end record;
  

  type rmii_eth_mac_tx_fifo_wr_skid_in_module_to_global_t is record
         no_skid_rmii_eth_mac_tx_fifo_in : axis8_t_stream_t;
     rmii_eth_mac_tx_fifo_in_ready : unsigned(0 downto 0);

  end record;
  

  type rmii_eth_mac_tx_fifo_rd_skid_out_module_to_global_t is record
         rmii_eth_mac_tx_fifo_out : axis8_t_stream_t;
     no_skid_rmii_eth_mac_tx_fifo_out_ready : unsigned(0 downto 0);

  end record;
  

  type rmii_rx_mac_instance_module_to_global_t is record
         rmii_eth_mac_rx_fifo_in : axis8_t_stream_t;

  end record;
  

  type rmii_rx_mac_fifo_connect_module_to_global_t is record
         eth_rx_mac_axis_out : axis8_t_stream_t;
     rmii_eth_mac_rx_fifo_out_ready : unsigned(0 downto 0);

  end record;
  

  type rmii_tx_mac_instance_module_to_global_t is record
         rmii_eth_mac_tx_fifo_out_ready : unsigned(0 downto 0);
     rmii_tx : unsigned(1 downto 0);
     rmii_tx_en : unsigned(0 downto 0);

  end record;
  

  type rmii_tx_mac_fifo_connect_module_to_global_t is record
         rmii_eth_mac_tx_fifo_in : axis8_t_stream_t;
     eth_tx_mac_input_ready : unsigned(0 downto 0);

  end record;
  

  type loopback_payload_fifo_wr_stream_in_module_to_global_t is record
         loopback_payload_fifo_FIFO_WRITE_1_CLOCK_ENABLE : unsigned(0 downto 0);
     loopback_payload_fifo_FIFO_WRITE_1_write_data : axis8_t_1;
     loopback_payload_fifo_FIFO_WRITE_1_write_enable : unsigned(0 downto 0);
     loopback_payload_fifo_in_ready : unsigned(0 downto 0);

  end record;
  

  type loopback_payload_fifo_rd_stream_out_module_to_global_t is record
         loopback_payload_fifo_FIFO_READ_1_CLOCK_ENABLE : unsigned(0 downto 0);
     loopback_payload_fifo_FIFO_READ_1_read_enable : unsigned(0 downto 0);
     loopback_payload_fifo_out : axis8_t_stream_t;

  end record;
  

  type loopback_headers_fifo_wr_stream_in_module_to_global_t is record
         loopback_headers_fifo_FIFO_WRITE_1_CLOCK_ENABLE : unsigned(0 downto 0);
     loopback_headers_fifo_FIFO_WRITE_1_write_data : eth_header_t_1;
     loopback_headers_fifo_FIFO_WRITE_1_write_enable : unsigned(0 downto 0);
     loopback_headers_fifo_in_ready : unsigned(0 downto 0);

  end record;
  

  type loopback_headers_fifo_rd_stream_out_module_to_global_t is record
         loopback_headers_fifo_FIFO_READ_1_CLOCK_ENABLE : unsigned(0 downto 0);
     loopback_headers_fifo_FIFO_READ_1_read_enable : unsigned(0 downto 0);
     loopback_headers_fifo_out : eth_header_t_stream_t;

  end record;
  

  type rx_main_module_to_global_t is record
         loopback_payload_fifo_in : axis8_t_stream_t;
     loopback_headers_fifo_in : eth_header_t_stream_t;

  end record;
  

  type tx_main_module_to_global_t is record
         eth_tx_mac_axis_in : axis8_t_stream_t;
     loopback_payload_fifo_out_ready : unsigned(0 downto 0);
     loopback_headers_fifo_out_ready : unsigned(0 downto 0);

  end record;
  

  type blinky_main_module_to_global_t is record
         led_r : unsigned(0 downto 0);
     led_g : unsigned(0 downto 0);
     led_b : unsigned(0 downto 0);

  end record;
  
type global_to_module_t is record
    ice_39 : ice_39_global_to_module_t;
    ice_40 : ice_40_global_to_module_t;
    ice_41 : ice_41_global_to_module_t;
    led_r_connect : led_r_connect_global_to_module_t;
    led_g_connect : led_g_connect_global_to_module_t;
    led_b_connect : led_b_connect_global_to_module_t;
    ice_45 : ice_45_global_to_module_t;
    ice_47 : ice_47_global_to_module_t;
    pmod_0a_o4_connect : pmod_0a_o4_connect_global_to_module_t;
    pmod_0a_o3_connect : pmod_0a_o3_connect_global_to_module_t;
    pmod_0a_i2_connect : pmod_0a_i2_connect_global_to_module_t;
    pmod_0a_i1_connect : pmod_0a_i1_connect_global_to_module_t;
    ice_46 : ice_46_global_to_module_t;
    pmod_0b_o3_connect : pmod_0b_o3_connect_global_to_module_t;
    pmod_0b_i2_connect : pmod_0b_i2_connect_global_to_module_t;
    pmod_0b_i1_connect : pmod_0b_i1_connect_global_to_module_t;
    rmii_connect : rmii_connect_global_to_module_t;
    no_skid_rmii_eth_mac_rx_fifo_wr_stream_in : no_skid_rmii_eth_mac_rx_fifo_wr_stream_in_global_to_module_t;
    no_skid_rmii_eth_mac_rx_fifo_rd_stream_out : no_skid_rmii_eth_mac_rx_fifo_rd_stream_out_global_to_module_t;
    rmii_eth_mac_rx_fifo_wr_skid_in : rmii_eth_mac_rx_fifo_wr_skid_in_global_to_module_t;
    rmii_eth_mac_rx_fifo_rd_skid_out : rmii_eth_mac_rx_fifo_rd_skid_out_global_to_module_t;
    no_skid_rmii_eth_mac_tx_fifo_wr_stream_in : no_skid_rmii_eth_mac_tx_fifo_wr_stream_in_global_to_module_t;
    no_skid_rmii_eth_mac_tx_fifo_rd_stream_out : no_skid_rmii_eth_mac_tx_fifo_rd_stream_out_global_to_module_t;
    rmii_eth_mac_tx_fifo_wr_skid_in : rmii_eth_mac_tx_fifo_wr_skid_in_global_to_module_t;
    rmii_eth_mac_tx_fifo_rd_skid_out : rmii_eth_mac_tx_fifo_rd_skid_out_global_to_module_t;
    rmii_rx_mac_instance : rmii_rx_mac_instance_global_to_module_t;
    rmii_rx_mac_fifo_connect : rmii_rx_mac_fifo_connect_global_to_module_t;
    rmii_tx_mac_instance : rmii_tx_mac_instance_global_to_module_t;
    rmii_tx_mac_fifo_connect : rmii_tx_mac_fifo_connect_global_to_module_t;
    loopback_payload_fifo_wr_stream_in : loopback_payload_fifo_wr_stream_in_global_to_module_t;
    loopback_payload_fifo_rd_stream_out : loopback_payload_fifo_rd_stream_out_global_to_module_t;
    loopback_headers_fifo_wr_stream_in : loopback_headers_fifo_wr_stream_in_global_to_module_t;
    loopback_headers_fifo_rd_stream_out : loopback_headers_fifo_rd_stream_out_global_to_module_t;
    rx_main : rx_main_global_to_module_t;
    tx_main : tx_main_global_to_module_t;
  end record;
  
  type module_to_global_t is record
    pll_clk : pll_clk_module_to_global_t;
    led_r_connect : led_r_connect_module_to_global_t;
    led_g_connect : led_g_connect_module_to_global_t;
    led_b_connect : led_b_connect_module_to_global_t;
    ice_2 : ice_2_module_to_global_t;
    ice_4 : ice_4_module_to_global_t;
    pmod_0a_o4_connect : pmod_0a_o4_connect_module_to_global_t;
    pmod_0a_o3_connect : pmod_0a_o3_connect_module_to_global_t;
    pmod_0a_i2_connect : pmod_0a_i2_connect_module_to_global_t;
    pmod_0a_i1_connect : pmod_0a_i1_connect_module_to_global_t;
    ice_48 : ice_48_module_to_global_t;
    ice_3 : ice_3_module_to_global_t;
    pmod_0b_o3_connect : pmod_0b_o3_connect_module_to_global_t;
    pmod_0b_i2_connect : pmod_0b_i2_connect_module_to_global_t;
    pmod_0b_i1_connect : pmod_0b_i1_connect_module_to_global_t;
    rmii_connect : rmii_connect_module_to_global_t;
    no_skid_rmii_eth_mac_rx_fifo_wr_stream_in : no_skid_rmii_eth_mac_rx_fifo_wr_stream_in_module_to_global_t;
    no_skid_rmii_eth_mac_rx_fifo_rd_stream_out : no_skid_rmii_eth_mac_rx_fifo_rd_stream_out_module_to_global_t;
    rmii_eth_mac_rx_fifo_wr_skid_in : rmii_eth_mac_rx_fifo_wr_skid_in_module_to_global_t;
    rmii_eth_mac_rx_fifo_rd_skid_out : rmii_eth_mac_rx_fifo_rd_skid_out_module_to_global_t;
    no_skid_rmii_eth_mac_tx_fifo_wr_stream_in : no_skid_rmii_eth_mac_tx_fifo_wr_stream_in_module_to_global_t;
    no_skid_rmii_eth_mac_tx_fifo_rd_stream_out : no_skid_rmii_eth_mac_tx_fifo_rd_stream_out_module_to_global_t;
    rmii_eth_mac_tx_fifo_wr_skid_in : rmii_eth_mac_tx_fifo_wr_skid_in_module_to_global_t;
    rmii_eth_mac_tx_fifo_rd_skid_out : rmii_eth_mac_tx_fifo_rd_skid_out_module_to_global_t;
    rmii_rx_mac_instance : rmii_rx_mac_instance_module_to_global_t;
    rmii_rx_mac_fifo_connect : rmii_rx_mac_fifo_connect_module_to_global_t;
    rmii_tx_mac_instance : rmii_tx_mac_instance_module_to_global_t;
    rmii_tx_mac_fifo_connect : rmii_tx_mac_fifo_connect_module_to_global_t;
    loopback_payload_fifo_wr_stream_in : loopback_payload_fifo_wr_stream_in_module_to_global_t;
    loopback_payload_fifo_rd_stream_out : loopback_payload_fifo_rd_stream_out_module_to_global_t;
    loopback_headers_fifo_wr_stream_in : loopback_headers_fifo_wr_stream_in_module_to_global_t;
    loopback_headers_fifo_rd_stream_out : loopback_headers_fifo_rd_stream_out_module_to_global_t;
    rx_main : rx_main_module_to_global_t;
    tx_main : tx_main_module_to_global_t;
    blinky_main : blinky_main_module_to_global_t;
  end record;
  
  
end global_wires_pkg;
