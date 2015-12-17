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

# make a heart
wr(0,0,0x40)
writea([0x0a,0x1f,0x1f,0x1f,0x1f,0x0e,0x04,0x00])
writea([0x00,0x00,0x0a,0x00,0x11,0x0e,0x00,0x00])
writea([0x1f,0x11,0x11,0x1f,0x04,0x1f,0x0a,0x11])
writea([0x18,0x14,0x1f,0x05,0x07,0x1d,0x14,0x18])
writea([0x1f,0x11,0x1b,0x15,0x1b,0x15,0x1f,0x04])
writea([0b11111,0b10001,0b11111,0b00100,0b11111,0b00100,0b01010,0b01010])
writea([0b11111,0b10001,0b11111,0b00100,0b11111,0b00100,0b01010,0b01010])


wr(0,0,2) # home
wr(0,0,0x80) # dd = 0
write("\x00\x01\x02\x03\x04\x05\x06  ")
wr(0,0,0xc0) # dd = 64
write("        ")
