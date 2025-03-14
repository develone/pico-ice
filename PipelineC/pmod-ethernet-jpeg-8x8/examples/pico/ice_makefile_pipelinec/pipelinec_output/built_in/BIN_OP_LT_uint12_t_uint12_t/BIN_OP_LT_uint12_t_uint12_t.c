
#include "uintN_t.h"
#include "intN_t.h"
//#include "bit_manip.h"
uint1_t BIN_OP_LT_uint12_t_uint12_t(uint12_t left, uint12_t right)
{

    // Bottom without any extra bits    
    uint12_t left_bot = left;
    uint12_t right_bot = right;
    uint1_t rv;

    // Subtractor based compare
    int13_t sub = (int13_t)left_bot - right_bot;
    uint1_t lt_zero = sub(12,12);
    rv = lt_zero;

  return rv;  
}