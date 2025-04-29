from machine import Pin
from machine import UART
import ice
#frequency=12 since a pll is used to increase to 25MHz 
fpga = ice.fpga(cdone=Pin(26), clock=Pin(24), creset=Pin(27), cram_cs=Pin(9), cram_mosi=Pin(8), cram_sck=Pin(10), frequency=12)
file = open("uart-echo-PipelineC.bin","br")
fpga.start()
fpga.cram(file)
uart.init(115200, bits=8, parity=None, stop=1, tx=1, rx=0) # init with given parameters
