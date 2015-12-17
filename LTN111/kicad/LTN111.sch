EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:IC_raspberry
LIBS:LTN111-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "RPi with LTN111"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RASPBERRY_IO RPi1
U 1 1 5671F47C
P 4850 4000
F 0 "RPi1" H 4850 4700 60  0000 C CNN
F 1 "RASPBERRY_IO" V 4850 4000 50  0000 C CNN
F 2 "" H 4850 4000 60  0000 C CNN
F 3 "" H 4850 4000 60  0000 C CNN
	1    4850 4000
	1    0    0    -1  
$EndComp
Entry Wire Line
	6300 3500 6400 3600
Entry Wire Line
	6300 3400 6400 3500
Entry Wire Line
	6300 3600 6400 3700
Entry Wire Line
	6300 3700 6400 3800
Entry Wire Line
	6300 3800 6400 3900
Entry Wire Line
	6300 3900 6400 4000
Entry Wire Line
	6300 4000 6400 4100
Entry Wire Line
	6300 3300 6400 3400
Wire Wire Line
	6400 3400 6550 3400
Wire Wire Line
	6400 3500 6550 3500
Wire Wire Line
	6550 3600 6400 3600
Wire Wire Line
	6400 3700 6550 3700
Wire Wire Line
	6550 3800 6400 3800
Wire Wire Line
	6400 3900 6550 3900
Wire Wire Line
	6550 4000 6400 4000
Wire Wire Line
	6400 4100 6550 4100
Text Label 6450 4100 0    60   ~ 0
D0
Text Label 6450 4000 0    60   ~ 0
D1
Text Label 6450 3900 0    60   ~ 0
D2
Text Label 6450 3800 0    60   ~ 0
D3
Text Label 6450 3700 0    60   ~ 0
D4
Text Label 6450 3600 0    60   ~ 0
D5
Text Label 6450 3500 0    60   ~ 0
D6
Text Label 6450 3400 0    60   ~ 0
D7
Entry Wire Line
	6300 4100 6400 4200
Entry Wire Line
	6300 4200 6400 4300
Entry Wire Line
	6300 4300 6400 4400
Wire Wire Line
	6400 4200 6550 4200
Wire Wire Line
	6550 4300 6400 4300
Wire Wire Line
	6400 4400 6550 4400
Text Label 6450 4200 0    60   ~ 0
E
Text Label 6450 4300 0    60   ~ 0
RW
Text Label 6450 4400 0    60   ~ 0
RS
Wire Wire Line
	5250 3600 5650 3600
Wire Wire Line
	5650 3600 5650 3700
$Comp
L GND #PWR1
U 1 1 5671FACA
P 5650 3700
F 0 "#PWR1" H 5650 3450 50  0001 C CNN
F 1 "GND" H 5650 3550 50  0000 C CNN
F 2 "" H 5650 3700 50  0000 C CNN
F 3 "" H 5650 3700 50  0000 C CNN
	1    5650 3700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR2
U 1 1 5671FB15
P 5900 4400
F 0 "#PWR2" H 5900 4250 50  0001 C CNN
F 1 "+5V" H 5900 4540 50  0000 C CNN
F 2 "" H 5900 4400 50  0000 C CNN
F 3 "" H 5900 4400 50  0000 C CNN
	1    5900 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4400 5900 4600
Wire Wire Line
	5900 4600 6550 4600
$Comp
L R R2
U 1 1 5671FB63
P 6400 4950
F 0 "R2" V 6480 4950 50  0000 C CNN
F 1 "47k" V 6400 4950 50  0000 C CNN
F 2 "" V 6330 4950 50  0000 C CNN
F 3 "" H 6400 4950 50  0000 C CNN
	1    6400 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 5671FBBB
P 6400 5200
F 0 "#PWR3" H 6400 4950 50  0001 C CNN
F 1 "GND" H 6400 5050 50  0000 C CNN
F 2 "" H 6400 5200 50  0000 C CNN
F 3 "" H 6400 5200 50  0000 C CNN
	1    6400 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4500 6550 4500
Wire Wire Line
	6400 4500 6400 4800
Wire Wire Line
	6400 5100 6400 5200
$Comp
L R R1
U 1 1 5671FF64
P 6150 4500
F 0 "R1" V 6230 4500 50  0000 C CNN
F 1 "4k7" V 6150 4500 50  0000 C CNN
F 2 "" V 6080 4500 50  0000 C CNN
F 3 "" H 6150 4500 50  0000 C CNN
	1    6150 4500
	0    1    1    0   
$EndComp
$Comp
L SIL14 U1
U 1 1 5671F515
P 6900 4050
F 0 "U1" H 6950 4800 50  0000 C CNN
F 1 "LTN111R-10" V 6920 4050 50  0000 C CNN
F 2 "" H 6900 4050 50  0000 C CNN
F 3 "" H 6900 4050 50  0000 C CNN
	1    6900 4050
	1    0    0    1   
$EndComp
Wire Wire Line
	6550 4700 6550 5150
Wire Wire Line
	6550 5150 6400 5150
Connection ~ 6400 5150
Connection ~ 6400 4500
Wire Wire Line
	6000 4500 5900 4500
Connection ~ 5900 4500
Wire Wire Line
	4250 3700 4450 3700
Wire Wire Line
	4250 3900 4450 3900
Wire Wire Line
	4250 4000 4450 4000
Wire Wire Line
	4250 4100 4450 4100
Wire Wire Line
	4250 4500 4450 4500
Wire Wire Line
	5250 3900 5450 3900
Wire Wire Line
	5250 4100 5450 4100
Wire Wire Line
	5250 4200 5450 4200
Wire Wire Line
	5250 4400 5450 4400
Wire Wire Line
	5250 4500 5450 4500
Wire Wire Line
	5250 4600 5450 4600
Entry Wire Line
	5450 3900 5550 4000
Entry Wire Line
	5450 4100 5550 4200
Entry Wire Line
	5450 4200 5550 4300
Entry Wire Line
	5450 4400 5550 4500
Entry Wire Line
	5450 4500 5550 4600
Entry Wire Line
	5450 4600 5550 4700
Entry Wire Line
	4150 4400 4250 4500
Entry Wire Line
	4150 4000 4250 4100
Entry Wire Line
	4150 3900 4250 4000
Entry Wire Line
	4150 3800 4250 3900
Entry Wire Line
	4150 3600 4250 3700
Text Label 4300 3700 0    60   ~ 0
D0
Text Label 4300 3900 0    60   ~ 0
D1
Text Label 5300 3900 0    60   ~ 0
D2
Text Label 4300 4000 0    60   ~ 0
D3
Text Label 4300 4100 0    60   ~ 0
D4
Text Label 5300 4100 0    60   ~ 0
D5
Text Label 5300 4200 0    60   ~ 0
D6
Text Label 5300 4400 0    60   ~ 0
D7
Text Label 4300 4500 0    60   ~ 0
E
Text Label 5300 4500 0    60   ~ 0
RW
Text Label 5300 4600 0    60   ~ 0
RS
Wire Bus Line
	4150 3000 4150 4800
Wire Bus Line
	4150 3000 6300 3000
Wire Bus Line
	6300 3000 6300 4300
Wire Bus Line
	5550 4000 5550 4800
Wire Bus Line
	5550 4800 4150 4800
$EndSCHEMATC
