
// Configure PMOD ports to be used for LED demo
// if pmod is moved, change pmod name used here
#define LED_8SSD_D7 pmod_1b_o4 // ice_28
#define LED_8SSD_D0 pmod_1a_o1 // ice_43
#define LED_8SSD_D5 pmod_1b_o3 // ice_32
#define LED_8SSD_D6 pmod_1a_o4 // ice_31
#define LED_8SSD_D2 pmod_1a_o2 // ice_38
#define LED_8SSD_D3 pmod_1b_o2 // ice_36
#define LED_8SSD_D1 pmod_1b_o1 // ice_42
#define LED_8SSD_D4 pmod_1a_o3 // ice_34

#pragma MAIN_MHZ led_8ssd_main 12.0
void led_8ssd_main(){
  // Match verilog names
  uint1_t d0;
  uint1_t d1;
  uint1_t d2;
  uint1_t d3;
  uint1_t d4;
  uint1_t d5;
  uint1_t d6;
  uint1_t d7;
  // TODO just make array?
  // ?? uint1_t d[8];

  // TODO insert code here to correctly drive the display
  // *See note below in zip files
  static uint1_t toggle_dummy_signal; 
  d0 = toggle_dummy_signal;
  d1 = toggle_dummy_signal;
  d2 = toggle_dummy_signal;
  d3 = toggle_dummy_signal;
  d4 = toggle_dummy_signal;
  d5 = toggle_dummy_signal;
  d6 = toggle_dummy_signal;
  d7 = toggle_dummy_signal;
  toggle_dummy_signal = ~toggle_dummy_signal;

  // Drive the top level pin outputs connect to pmod
  LED_8SSD_D0 = d0;
  LED_8SSD_D1 = d1;
  LED_8SSD_D2 = d2;
  LED_8SSD_D3 = d3;
  LED_8SSD_D4 = d4;
  LED_8SSD_D5 = d5;
  LED_8SSD_D6 = d6;
  LED_8SSD_D7 = d7;
}
