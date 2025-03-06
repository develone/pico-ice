
#include "uintN_t.h"
#include "intN_t.h"
//#include "bit_manip.h"
uint1_t BIN_OP_GTE_uint16_t_uint8_t(uint16_t left, uint8_t right)
{

    // Bottom without any extra bits    
    uint8_t left_bot = left;
    uint8_t right_bot = right;
    
  uint8_t top;
  top = left >> 8;
    uint1_t rv;
  if(top==0){
    // Subtractor based compare
    int9_t sub = (int9_t)left_bot - right_bot;
    uint1_t lt_zero = sub(8,8);
    rv = ~lt_zero;
  }else{
    // Left is large, GT/E is true
    rv = 1;
  }

  return rv;  
}