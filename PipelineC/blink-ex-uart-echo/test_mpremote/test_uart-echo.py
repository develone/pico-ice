ver = "Version 0.0.1 05/03/25 "
print(ver)
descr = "uart-echo-PipelineC.bin created using PipelineC" 
print(descr)
descr = "uart-echo-PipelineC.bin created using OSS-CAD-SUITE" 
print(descr)
descr = "pico-ice/PipelineC/blink-ex-uart-echo/ice_makefile_pipelinec" 
print(descr)
descr = "./build.sh" 
print(descr)
descr = "In 3 steps make clean make pipelinec make gateware.bin" 
descr = "rm -f /media/devel/5221-0000/*.bin" 
descr = "cp gateware.bin /media/devel/5221-0000/uart-echo-PipelineC.bin" 
print(descr)
descr = "Loads the iCE40UP5K with uart-echo-PipelineC.bin"
print(descr)
descr1 = "mpremote run test_uart-a-z.py"
print(descr1)
from machine import Pin
import ice
#frequency=12 since a pll is used to increase to 25MHz 
fpga = ice.fpga(cdone=Pin(ICE_DONE), clock=Pin(ICE_CLK), creset=Pin(ICE_RST), cram_cs=Pin(ICE_SS), cram_mosi=Pin(4), cram_sck=Pin(ICE_SCK), frequency=12)
file = open("uart-echo-PipelineC.bin","br")
fpga.start()
#fpga.cram(file)

