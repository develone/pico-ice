// This describes the work to be done:
// 	Input data format
// 	Output data format
// 	The actual computation 'work' to be done
// Ideally in PipelineC/C code that can be compiled+checked in software easily.
#pragma once
#include "intN_t.h"
#ifdef __PIPELINEC__
#include "stream/stream.h"
#endif
// Do work on inputs to form outputs

// JPEG_HDL demo for work()

typedef struct work_inputs_t
{
    int16_t left;
    int16_t right;
    int16_t sam;
    uint8_t lo_hi;
    uint8_t fwd_inv;
} work_inputs_t;
#ifdef __PIPELINEC__
#include "work_inputs_t_bytes_t.h"
DECL_STREAM_TYPE(work_inputs_t)
#else
#include "type_bytes_t.h/work_inputs_t_bytes_t.h/work_inputs_t_bytes.h"
#endif
typedef struct work_outputs_t
{
  int16_t res;
} work_outputs_t;
#ifdef __PIPELINEC__
#include "work_outputs_t_bytes_t.h"
DECL_STREAM_TYPE(work_outputs_t)
#else
#include "type_bytes_t.h/work_outputs_t_bytes_t.h/work_outputs_t_bytes.h"
#endif

// Basic PipelineC implementation without pointers
work_outputs_t work(work_inputs_t inputs)
{
    work_outputs_t o;
    if(inputs.lo_hi){
        if(inputs.fwd_inv){
            o.res = (inputs.sam - (inputs.left >> 1) + (inputs.right >> 1));
        }else{
            o.res = (inputs.sam + ((inputs.left >> 1) + (inputs.right >> 1)));
        }
    }else{
        if(inputs.fwd_inv) {
            o.res = (inputs.sam + ((inputs.left + inputs.right) + 2) >> 2));
        }else{
            o.res = (inputs.sam - (((inputs.left + inputs.right) + 2) >> 2));
        }
    }
    return o;
}

// For now CPU will use same code as hardware
void work_cpu(work_inputs_t* inputs, work_outputs_t* outputs)
{ 
    *outputs = work(*inputs);
}


// Helper to init a work_inputs_t
int max_val = 100;
work_inputs_t work_inputs_init(int test_num)
{
  // Randomizeish values
  work_inputs_t inputs;
  inputs.left = rand()%max_val;
  inputs.right = rand()%max_val;
  inputs.sam = rand()%max_val;
  inputs.lo_hi = rand()%max_val;
  inputs.fwd_in = rand()%max_val;
  return inputs;
}

// Helper to compare two outputs
int compare_bad(int test_num, work_outputs_t cpu, work_outputs_t fpga)
{
  if(cpu.res != fpga.res)
  {
    printf("Output %d: does not match! FPGA: %d, CPU: %d\n", test_num, fpga.res, cpu.res);
    return 1;
  }
  return 0;
}
