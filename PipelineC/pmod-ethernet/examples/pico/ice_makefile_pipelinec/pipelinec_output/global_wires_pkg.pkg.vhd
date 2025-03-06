
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

  type ice_2_global_to_module_t is record
         ice_2 : unsigned(0 downto 0);

  end record;

  type ice_3_global_to_module_t is record
         ice_3 : unsigned(0 downto 0);

  end record;

  type ice_4_global_to_module_t is record
         ice_4 : unsigned(0 downto 0);

  end record;

  type ice_25_global_to_module_t is record
         ice_25 : unsigned(0 downto 0);

  end record;

  type ice_31_global_to_module_t is record
         ice_31 : unsigned(0 downto 0);

  end record;

  type ice_34_global_to_module_t is record
         ice_34 : unsigned(0 downto 0);

  end record;

  type ice_36_global_to_module_t is record
         ice_36 : unsigned(0 downto 0);

  end record;

  type ice_38_global_to_module_t is record
         ice_38 : unsigned(0 downto 0);

  end record;

  type ice_42_global_to_module_t is record
         ice_42 : unsigned(0 downto 0);

  end record;

  type ice_43_global_to_module_t is record
         ice_43 : unsigned(0 downto 0);

  end record;

  type ice_44_global_to_module_t is record
         ice_44 : unsigned(0 downto 0);

  end record;

  type ice_45_global_to_module_t is record
         ice_45 : unsigned(0 downto 0);

  end record;

  type ice_46_global_to_module_t is record
         ice_46 : unsigned(0 downto 0);

  end record;

  type ice_47_global_to_module_t is record
         ice_47 : unsigned(0 downto 0);

  end record;

  type ice_48_global_to_module_t is record
         ice_48 : unsigned(0 downto 0);

  end record;

  type pmod_0a_o4_connect_global_to_module_t is record
         pmod_0a_o4 : unsigned(0 downto 0);

  end record;

  type pmod_0a_o3_connect_global_to_module_t is record
         pmod_0a_o3 : unsigned(0 downto 0);

  end record;

  type pmod_0a_o2_connect_global_to_module_t is record
         pmod_0a_o2 : unsigned(0 downto 0);

  end record;

  type pmod_0a_o1_connect_global_to_module_t is record
         pmod_0a_o1 : unsigned(0 downto 0);

  end record;

  type pmod_0b_o4_connect_global_to_module_t is record
         pmod_0b_o4 : unsigned(0 downto 0);

  end record;

  type pmod_0b_o3_connect_global_to_module_t is record
         pmod_0b_o3 : unsigned(0 downto 0);

  end record;

  type pmod_0b_o2_connect_global_to_module_t is record
         pmod_0b_o2 : unsigned(0 downto 0);

  end record;

  type pmod_0b_o1_connect_global_to_module_t is record
         pmod_0b_o1 : unsigned(0 downto 0);

  end record;

  type pmod_1a_o4_connect_global_to_module_t is record
         pmod_1a_o4 : unsigned(0 downto 0);

  end record;

  type pmod_1a_o3_connect_global_to_module_t is record
         pmod_1a_o3 : unsigned(0 downto 0);

  end record;

  type pmod_1a_o2_connect_global_to_module_t is record
         pmod_1a_o2 : unsigned(0 downto 0);

  end record;

  type pmod_1a_o1_connect_global_to_module_t is record
         pmod_1a_o1 : unsigned(0 downto 0);

  end record;

  type pmod_1b_o2_connect_global_to_module_t is record
         pmod_1b_o2 : unsigned(0 downto 0);

  end record;

  type pmod_1b_o1_connect_global_to_module_t is record
         pmod_1b_o1 : unsigned(0 downto 0);

  end record;

  type uart_tx_connect_global_to_module_t is record
         uart_tx : unsigned(0 downto 0);

  end record;

  type uart_rx_connect_global_to_module_t is record
         ice_27 : unsigned(0 downto 0);

  end record;

  type uart_rx_mac_global_to_module_t is record
         uart_rx : unsigned(0 downto 0);
     uart_rx_mac_out_ready : unsigned(0 downto 0);

  end record;

  type vga_hs_connect_global_to_module_t is record
         vga_hs : unsigned(0 downto 0);

  end record;

  type vga_vs_connect_global_to_module_t is record
         vga_vs : unsigned(0 downto 0);

  end record;

  type vga_r_connect_global_to_module_t is record
         vga_r : unsigned(7 downto 0);

  end record;

  type vga_g_connect_global_to_module_t is record
         vga_g : unsigned(7 downto 0);

  end record;

  type vga_b_connect_global_to_module_t is record
         vga_b : unsigned(7 downto 0);

  end record;

  type vga_4b_connect_global_to_module_t is record
         vga_r_8b_to_4b : unsigned(7 downto 0);
     vga_g_8b_to_4b : unsigned(7 downto 0);
     vga_b_8b_to_4b : unsigned(7 downto 0);

  end record;

  type uart_rx_to_buttons_global_to_module_t is record
         uart_rx_mac_word_out : uint8_t_stream_t;

  end record;

  type pong_vga_datapath_global_to_module_t is record
    
    uart_rx_to_buttons_pong_top_c_l58_c29_361a : uart_rx_to_buttons_global_to_module_t;
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
  

  type ice_27_module_to_global_t is record
         ice_27 : unsigned(0 downto 0);

  end record;
  

  type pmod_0a_o4_connect_module_to_global_t is record
         ice_45 : unsigned(0 downto 0);

  end record;
  

  type pmod_0a_o3_connect_module_to_global_t is record
         ice_47 : unsigned(0 downto 0);

  end record;
  

  type pmod_0a_o2_connect_module_to_global_t is record
         ice_2 : unsigned(0 downto 0);

  end record;
  

  type pmod_0a_o1_connect_module_to_global_t is record
         ice_4 : unsigned(0 downto 0);

  end record;
  

  type pmod_0b_o4_connect_module_to_global_t is record
         ice_44 : unsigned(0 downto 0);

  end record;
  

  type pmod_0b_o3_connect_module_to_global_t is record
         ice_46 : unsigned(0 downto 0);

  end record;
  

  type pmod_0b_o2_connect_module_to_global_t is record
         ice_48 : unsigned(0 downto 0);

  end record;
  

  type pmod_0b_o1_connect_module_to_global_t is record
         ice_3 : unsigned(0 downto 0);

  end record;
  

  type pmod_1a_o4_connect_module_to_global_t is record
         ice_31 : unsigned(0 downto 0);

  end record;
  

  type pmod_1a_o3_connect_module_to_global_t is record
         ice_34 : unsigned(0 downto 0);

  end record;
  

  type pmod_1a_o2_connect_module_to_global_t is record
         ice_38 : unsigned(0 downto 0);

  end record;
  

  type pmod_1a_o1_connect_module_to_global_t is record
         ice_43 : unsigned(0 downto 0);

  end record;
  

  type pmod_1b_o2_connect_module_to_global_t is record
         ice_36 : unsigned(0 downto 0);

  end record;
  

  type pmod_1b_o1_connect_module_to_global_t is record
         ice_42 : unsigned(0 downto 0);

  end record;
  

  type uart_tx_connect_module_to_global_t is record
         ice_25 : unsigned(0 downto 0);

  end record;
  

  type uart_rx_connect_module_to_global_t is record
         uart_rx : unsigned(0 downto 0);

  end record;
  

  type uart_rx_mac_module_to_global_t is record
         uart_rx_mac_word_out : uint8_t_stream_t;

  end record;
  

  type uart_tx_mac_module_to_global_t is record
         uart_tx : unsigned(0 downto 0);

  end record;
  

  type vga_hs_connect_module_to_global_t is record
         pmod_1b_o1 : unsigned(0 downto 0);

  end record;
  

  type vga_vs_connect_module_to_global_t is record
         pmod_1b_o2 : unsigned(0 downto 0);

  end record;
  

  type vga_r_connect_module_to_global_t is record
         vga_r_8b_to_4b : unsigned(7 downto 0);

  end record;
  

  type vga_g_connect_module_to_global_t is record
         vga_g_8b_to_4b : unsigned(7 downto 0);

  end record;
  

  type vga_b_connect_module_to_global_t is record
         vga_b_8b_to_4b : unsigned(7 downto 0);

  end record;
  

  type vga_4b_connect_module_to_global_t is record
         pmod_0a_o1 : unsigned(0 downto 0);
     pmod_0a_o2 : unsigned(0 downto 0);
     pmod_0a_o3 : unsigned(0 downto 0);
     pmod_0a_o4 : unsigned(0 downto 0);
     pmod_1a_o1 : unsigned(0 downto 0);
     pmod_1a_o2 : unsigned(0 downto 0);
     pmod_1a_o3 : unsigned(0 downto 0);
     pmod_1a_o4 : unsigned(0 downto 0);
     pmod_0b_o1 : unsigned(0 downto 0);
     pmod_0b_o2 : unsigned(0 downto 0);
     pmod_0b_o3 : unsigned(0 downto 0);
     pmod_0b_o4 : unsigned(0 downto 0);

  end record;
  

  type uart_rx_to_buttons_module_to_global_t is record
         uart_rx_mac_out_ready : unsigned(0 downto 0);

  end record;
  

  type pong_vga_datapath_module_to_global_t is record
         vga_r : unsigned(7 downto 0);
     vga_g : unsigned(7 downto 0);
     vga_b : unsigned(7 downto 0);
     vga_hs : unsigned(0 downto 0);
     vga_vs : unsigned(0 downto 0);

    uart_rx_to_buttons_pong_top_c_l58_c29_361a : uart_rx_to_buttons_module_to_global_t;
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
    ice_2 : ice_2_global_to_module_t;
    ice_3 : ice_3_global_to_module_t;
    ice_4 : ice_4_global_to_module_t;
    ice_25 : ice_25_global_to_module_t;
    ice_31 : ice_31_global_to_module_t;
    ice_34 : ice_34_global_to_module_t;
    ice_36 : ice_36_global_to_module_t;
    ice_38 : ice_38_global_to_module_t;
    ice_42 : ice_42_global_to_module_t;
    ice_43 : ice_43_global_to_module_t;
    ice_44 : ice_44_global_to_module_t;
    ice_45 : ice_45_global_to_module_t;
    ice_46 : ice_46_global_to_module_t;
    ice_47 : ice_47_global_to_module_t;
    ice_48 : ice_48_global_to_module_t;
    pmod_0a_o4_connect : pmod_0a_o4_connect_global_to_module_t;
    pmod_0a_o3_connect : pmod_0a_o3_connect_global_to_module_t;
    pmod_0a_o2_connect : pmod_0a_o2_connect_global_to_module_t;
    pmod_0a_o1_connect : pmod_0a_o1_connect_global_to_module_t;
    pmod_0b_o4_connect : pmod_0b_o4_connect_global_to_module_t;
    pmod_0b_o3_connect : pmod_0b_o3_connect_global_to_module_t;
    pmod_0b_o2_connect : pmod_0b_o2_connect_global_to_module_t;
    pmod_0b_o1_connect : pmod_0b_o1_connect_global_to_module_t;
    pmod_1a_o4_connect : pmod_1a_o4_connect_global_to_module_t;
    pmod_1a_o3_connect : pmod_1a_o3_connect_global_to_module_t;
    pmod_1a_o2_connect : pmod_1a_o2_connect_global_to_module_t;
    pmod_1a_o1_connect : pmod_1a_o1_connect_global_to_module_t;
    pmod_1b_o2_connect : pmod_1b_o2_connect_global_to_module_t;
    pmod_1b_o1_connect : pmod_1b_o1_connect_global_to_module_t;
    uart_tx_connect : uart_tx_connect_global_to_module_t;
    uart_rx_connect : uart_rx_connect_global_to_module_t;
    uart_rx_mac : uart_rx_mac_global_to_module_t;
    vga_hs_connect : vga_hs_connect_global_to_module_t;
    vga_vs_connect : vga_vs_connect_global_to_module_t;
    vga_r_connect : vga_r_connect_global_to_module_t;
    vga_g_connect : vga_g_connect_global_to_module_t;
    vga_b_connect : vga_b_connect_global_to_module_t;
    vga_4b_connect : vga_4b_connect_global_to_module_t;
    pong_vga_datapath : pong_vga_datapath_global_to_module_t;
  end record;
  
  type module_to_global_t is record
    pll_clk : pll_clk_module_to_global_t;
    led_r_connect : led_r_connect_module_to_global_t;
    led_g_connect : led_g_connect_module_to_global_t;
    led_b_connect : led_b_connect_module_to_global_t;
    ice_27 : ice_27_module_to_global_t;
    pmod_0a_o4_connect : pmod_0a_o4_connect_module_to_global_t;
    pmod_0a_o3_connect : pmod_0a_o3_connect_module_to_global_t;
    pmod_0a_o2_connect : pmod_0a_o2_connect_module_to_global_t;
    pmod_0a_o1_connect : pmod_0a_o1_connect_module_to_global_t;
    pmod_0b_o4_connect : pmod_0b_o4_connect_module_to_global_t;
    pmod_0b_o3_connect : pmod_0b_o3_connect_module_to_global_t;
    pmod_0b_o2_connect : pmod_0b_o2_connect_module_to_global_t;
    pmod_0b_o1_connect : pmod_0b_o1_connect_module_to_global_t;
    pmod_1a_o4_connect : pmod_1a_o4_connect_module_to_global_t;
    pmod_1a_o3_connect : pmod_1a_o3_connect_module_to_global_t;
    pmod_1a_o2_connect : pmod_1a_o2_connect_module_to_global_t;
    pmod_1a_o1_connect : pmod_1a_o1_connect_module_to_global_t;
    pmod_1b_o2_connect : pmod_1b_o2_connect_module_to_global_t;
    pmod_1b_o1_connect : pmod_1b_o1_connect_module_to_global_t;
    uart_tx_connect : uart_tx_connect_module_to_global_t;
    uart_rx_connect : uart_rx_connect_module_to_global_t;
    uart_rx_mac : uart_rx_mac_module_to_global_t;
    uart_tx_mac : uart_tx_mac_module_to_global_t;
    vga_hs_connect : vga_hs_connect_module_to_global_t;
    vga_vs_connect : vga_vs_connect_module_to_global_t;
    vga_r_connect : vga_r_connect_module_to_global_t;
    vga_g_connect : vga_g_connect_module_to_global_t;
    vga_b_connect : vga_b_connect_module_to_global_t;
    vga_4b_connect : vga_4b_connect_module_to_global_t;
    pong_vga_datapath : pong_vga_datapath_module_to_global_t;
    blinky_main : blinky_main_module_to_global_t;
  end record;
  
  
end global_wires_pkg;
