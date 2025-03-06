
#include "uintN_t.h"
#include "intN_t.h"
//#include "bit_manip.h"
uint1_t BIN_OP_LT_uint12_t_uint9_t(uint12_t left, uint9_t right)
{

    // Bottom without any extra bits    
    uint9_t left_bot = left;
    uint9_t right_bot = right;
    
  uint3_t top;
  top = left >> 9;
    uint1_t rv;
  if(top==0){
    // Subtractor based compare
    int10_t sub = (int10_t)left_bot - right_bot;
    uint1_t lt_zero = sub(9,9);
    rv = lt_zero;
  }else{
    // Left is large, LT/E is false
    rv = 0;
  }

  return rv;  
}