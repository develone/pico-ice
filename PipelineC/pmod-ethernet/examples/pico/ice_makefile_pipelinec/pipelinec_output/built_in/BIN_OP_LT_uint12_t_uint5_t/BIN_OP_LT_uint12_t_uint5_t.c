
#include "uintN_t.h"
#include "intN_t.h"
//#include "bit_manip.h"
uint1_t BIN_OP_LT_uint12_t_uint5_t(uint12_t left, uint5_t right)
{

    // Bottom without any extra bits    
    uint5_t left_bot = left;
    uint5_t right_bot = right;
    
  uint7_t top;
  top = left >> 5;
    uint1_t rv;
  if(top==0){
    // Subtractor based compare
    int6_t sub = (int6_t)left_bot - right_bot;
    uint1_t lt_zero = sub(5,5);
    rv = lt_zero;
  }else{
    // Left is large, LT/E is false
    rv = 0;
  }

  return rv;  
}