#!/usr/bin/env python
import RPi.GPIO as GPIO
import time

# pinoutBCM scheme - http://pinout.xyz/

D = [4,17,18,27,22,23,24,25]
E = 11
RW = 8
RS = 7

# test pin
TP = RS

GPIO.setmode(GPIO.BCM)
GPIO.setup(TP,GPIO.OUT)

while True:
  GPIO.output(TP,True)
  time.sleep(0.1)
  GPIO.output(TP,False)
  time.sleep(0.1)
