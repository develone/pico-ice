
#include "uintN_t.h"
#include "intN_t.h"
//#include "bit_manip.h"
uint1_t BIN_OP_LT_uint12_t_uint10_t(uint12_t left, uint10_t right)
{

    // Bottom without any extra bits    
    uint10_t left_bot = left;
    uint10_t right_bot = right;
    
  uint2_t top;
  top = left >> 10;
    uint1_t rv;
  if(top==0){
    // Subtractor based compare
    int11_t sub = (int11_t)left_bot - right_bot;
    uint1_t lt_zero = sub(10,10);
    rv = lt_zero;
  }else{
    // Left is large, LT/E is false
    rv = 0;
  }

  return rv;  
}