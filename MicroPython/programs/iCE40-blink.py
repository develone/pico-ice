import time
from machine import Pin

print("starting")

OFF = 1
ON = 0

ledB = Pin(15, Pin.OUT)
ledR = Pin(13, Pin.OUT)
ledG = Pin(12, Pin.OUT)

ledB.value(OFF)
ledR.value(OFF)
ledG.value(OFF)

for i in range(10):
    ledR.value(OFF)
    time.sleep(1)
    ledR.value(ON)
    time.sleep(1)