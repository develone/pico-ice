#include "intN_t.h"
#include "uintN_t.h"
#include "bit_math.h"


// Var ref read
uint32_t VAR_REF_RD_uint32_t_uint32_t_16_VAR_7a60(uint32_t ref_toks_0, uint32_t ref_toks_1, uint32_t ref_toks_2, uint32_t ref_toks_3, uint32_t ref_toks_4, uint32_t ref_toks_5, uint32_t ref_toks_6, uint32_t ref_toks_7, uint32_t ref_toks_8, uint32_t ref_toks_9, uint32_t ref_toks_10, uint32_t ref_toks_11, uint32_t ref_toks_12, uint32_t ref_toks_13, uint32_t ref_toks_14, uint32_t ref_toks_15, uint4_t var_dim_0)
{
  uint32_t base[16];
 // Assign ref toks to base
 base[0] = ref_toks_0;
 base[1] = ref_toks_1;
 base[2] = ref_toks_2;
 base[3] = ref_toks_3;
 base[4] = ref_toks_4;
 base[5] = ref_toks_5;
 base[6] = ref_toks_6;
 base[7] = ref_toks_7;
 base[8] = ref_toks_8;
 base[9] = ref_toks_9;
 base[10] = ref_toks_10;
 base[11] = ref_toks_11;
 base[12] = ref_toks_12;
 base[13] = ref_toks_13;
 base[14] = ref_toks_14;
 base[15] = ref_toks_15;
 // Make multiple constant references into base
 uint32_t ref_0;
 ref_0 = base[0];
 uint32_t ref_1;
 ref_1 = base[1];
 uint32_t ref_2;
 ref_2 = base[2];
 uint32_t ref_3;
 ref_3 = base[3];
 uint32_t ref_4;
 ref_4 = base[4];
 uint32_t ref_5;
 ref_5 = base[5];
 uint32_t ref_6;
 ref_6 = base[6];
 uint32_t ref_7;
 ref_7 = base[7];
 uint32_t ref_8;
 ref_8 = base[8];
 uint32_t ref_9;
 ref_9 = base[9];
 uint32_t ref_10;
 ref_10 = base[10];
 uint32_t ref_11;
 ref_11 = base[11];
 uint32_t ref_12;
 ref_12 = base[12];
 uint32_t ref_13;
 ref_13 = base[13];
 uint32_t ref_14;
 ref_14 = base[14];
 uint32_t ref_15;
 ref_15 = base[15];
 // Form select value
 uint4_t sel;
 sel = 0;
 sel = uint4_uint4_0( sel, var_dim_0);
 // Do nmux
 uint32_t rv;
 rv = uint32_mux16(sel,
     ref_0,
     ref_1,
     ref_2,
     ref_3,
     ref_4,
     ref_5,
     ref_6,
     ref_7,
     ref_8,
     ref_9,
     ref_10,
     ref_11,
     ref_12,
     ref_13,
     ref_14,
     ref_15
 );

  return rv;
}