from machine import Pin
from machine import UART
import ice
uart = UART(0, 115200)
uart.init(115200, bits=8, parity=None, stop=1, tx=0, rx=1) # init with given parameters
stat = "sending abc...xyz recieving ABC...XYZ"
print(stat)
bufout = "abcdefghijklmnopqrstuvwxyz"
print( bufout)
uart.write(bufout)
print(uart.read(26))
bufout = "0123456789"
print( bufout)
uart.write(bufout)
print(uart.read(10))
stat = "sending ZYX...CBA recieving zyx...cba"
print(stat)
bufout = "ZYXWUTUSRQPONMLKJIHGFEDCBA"
print( bufout)
uart.write(bufout)
print(uart.read(26))
