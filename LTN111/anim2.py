#!/usr/bin/env python
import RPi.GPIO as GPIO
import time

# pinoutBCM scheme - http://pinout.xyz/

D = [4,17,18,27,22,23,24,25]
E = 11
RW = 8
RS = 7

def wr(rs,rw,data):
  GPIO.output(RS,True if rs else False)
  GPIO.output(RW,True if rw else False)
  time.sleep(0.001)
  GPIO.output(E,True)
  for i in range(8):
    GPIO.output(D[i],True if (data & (1<<i)) else False)
  time.sleep(0.001)
  GPIO.output(E,False)
  time.sleep(0.001)

def writea(a):
  for ch in a:
    wr(1,0,ch)

def write(s):
  for ch in s:
    wr(1,0,ord(ch))


# setup
GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
GPIO.setup(E,GPIO.OUT)
GPIO.output(E,False)
GPIO.setup(RW,GPIO.OUT)
GPIO.setup(RS,GPIO.OUT)
for i in D: GPIO.setup(i,GPIO.OUT)

# go
wr(0,0,0x38) # 8-bit input mode
wr(0,0,1) # cls  
wr(0,0,12) # display on

# set up characters
wr(0,0,0x40)
writea([0b00000,0b00000,0b01010,0b00000,0b10001,0b01110,0b00000,0b00000])
writea([0b00000,0b00000,0b11010,0b00000,0b10001,0b01110,0b00000,0b00000])
writea([0b00000,0b00000,0b01010,0b00000,0b10001,0b01110,0b00000,0b00000])

# do animation
while True:
  for i in range(3):
    wr(0,0,0x80) # dd = 0
    writea([i])
    time.sleep(.5)
