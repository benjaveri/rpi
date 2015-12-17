#!/usr/bin/env python
import RPi.GPIO as GPIO
import time,random

# pinout BCM scheme - http://pinout.xyz/
dt = 0.001
D = [4,17,18,27,22,23,24,25]
E = 11
RW = 8
RS = 7

def wr(rs,rw,data):
  GPIO.output(RS,True if rs else False)
  GPIO.output(RW,True if rw else False)
  time.sleep(dt)
  GPIO.output(E,True)
  for i in range(8):
    GPIO.output(D[i],True if (data & (1<<i)) else False)
  time.sleep(dt)
  GPIO.output(E,False)
  time.sleep(dt)

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


# fill with char 0
wr(0,0,2) # home
wr(0,0,0x80) # dd = 0
writea([0,1,2,3,4,5,6,7])
wr(0,0,0xc0) # dd = 64
writea([0,1,2,3,4,5,6,7])
wr(0,0,0x40)
writea([ 0 for i in range(64) ])

# bounce class
class B:
  def __init__(self,id):
    self.id = id
    self.x = random.randint(1,3)
    self.y = random.randint(1,6)
    self.dx = random.randint(0,1)*2-1
    self.dy = random.randint(0,1)*2-1
    self.oy = 0

  def step(self):
    wr(0,0,0x40+self.id*8+self.oy)
    writea([0])
    wr(0,0,0x40+self.id*8+self.y)
    writea([1<<self.x])
    self.oy = self.y
    self.x = self.x+self.dx
    self.y = self.y+self.dy
    if (self.x==0) or (self.x==4): self.dx = -self.dx
    if (self.y==0) or (self.y==7): self.dy = -self.dy
  
b = [ B(i) for i in range(8) ]
while 1:
  for i in range(8): b[i].step()  
  time.sleep(.125)
