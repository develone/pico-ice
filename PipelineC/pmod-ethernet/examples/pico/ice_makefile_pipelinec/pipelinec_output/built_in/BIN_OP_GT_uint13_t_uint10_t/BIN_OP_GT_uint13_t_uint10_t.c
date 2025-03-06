
#include "uintN_t.h"
#include "intN_t.h"
//#include "bit_manip.h"
uint1_t BIN_OP_GT_uint13_t_uint10_t(uint13_t left, uint10_t right)
{

    // Bottom without any extra bits    
    uint10_t left_bot = left;
    uint10_t right_bot = right;
    
  uint3_t top;
  top = left >> 10;
    uint1_t rv;
  if(top==0){
    // Subtractor based compare
    int11_t sub = (int11_t)right_bot - left_bot;
    uint1_t lt_zero = sub(10,10);
    rv = lt_zero;
  }else{
    // Left is large, GT/E is true
    rv = 1;
  }

  return rv;  
}