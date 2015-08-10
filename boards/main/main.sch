EESchema Schematic File Version 2
LIBS:led-diabolo
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
LIBS:main-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "LED-Diabolo Main Board"
Date "2015-08-11"
Rev "2.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328P-A IC1
U 1 1 55C86CD5
P 2400 2700
F 0 "IC1" H 1650 3950 40  0000 L BNN
F 1 "ATMEGA328P-A" H 2800 1300 40  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 2400 2700 30  0000 C CIN
F 3 "" H 2400 2700 60  0000 C CNN
	1    2400 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 55C86F4C
P 1300 4100
F 0 "#PWR01" H 1300 3850 50  0001 C CNN
F 1 "GND" H 1300 3950 50  0000 C CNN
F 2 "" H 1300 4100 60  0000 C CNN
F 3 "" H 1300 4100 60  0000 C CNN
	1    1300 4100
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR02
U 1 1 55C86F93
P 1300 5600
F 0 "#PWR02" H 1300 5450 50  0001 C CNN
F 1 "+BATT" H 1300 5740 50  0000 C CNN
F 2 "" H 1300 5600 60  0000 C CNN
F 3 "" H 1300 5600 60  0000 C CNN
	1    1300 5600
	1    0    0    -1  
$EndComp
$Comp
L Battery BAT3
U 1 1 55C871AE
P 1300 5950
F 0 "BAT3" H 1400 6000 50  0000 L CNN
F 1 "Battery" H 1400 5900 50  0000 L CNN
F 2 "led-diabolo:BAT_HOLDER_12MM_PTH" H 1800 5800 30  0000 C CNN
F 3 "" V 1300 5990 60  0000 C CNN
	1    1300 5950
	1    0    0    -1  
$EndComp
$Comp
L Battery BAT2
U 1 1 55C871DE
P 1300 6450
F 0 "BAT2" H 1400 6500 50  0000 L CNN
F 1 "Battery" H 1400 6400 50  0000 L CNN
F 2 "led-diabolo:BAT_HOLDER_12MM_PTH" H 1800 6300 30  0000 C CNN
F 3 "" V 1300 6490 60  0000 C CNN
	1    1300 6450
	1    0    0    -1  
$EndComp
$Comp
L Battery BAT1
U 1 1 55C87218
P 1300 6950
F 0 "BAT1" H 1400 7000 50  0000 L CNN
F 1 "Battery" H 1400 6900 50  0000 L CNN
F 2 "led-diabolo:BAT_HOLDER_12MM_PTH" H 1800 6800 30  0000 C CNN
F 3 "" V 1300 6990 60  0000 C CNN
	1    1300 6950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 55C872C3
P 1300 7300
F 0 "#PWR03" H 1300 7050 50  0001 C CNN
F 1 "GND" H 1300 7150 50  0000 C CNN
F 2 "" H 1300 7300 60  0000 C CNN
F 3 "" H 1300 7300 60  0000 C CNN
	1    1300 7300
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 55C87504
P 8500 3700
F 0 "SW1" H 8650 3810 50  0000 C CNN
F 1 "SW_PUSH" H 8500 3620 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 8500 3550 30  0000 C CNN
F 3 "" H 8500 3700 60  0000 C CNN
	1    8500 3700
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 55C8770F
P 3750 6400
F 0 "D1" H 3750 6500 50  0000 C CNN
F 1 "D" H 3750 6300 50  0000 C CNN
F 2 "led-diabolo:SOD-80" H 3750 6550 30  0000 C CNN
F 3 "" H 3750 6400 60  0000 C CNN
	1    3750 6400
	-1   0    0    1   
$EndComp
$Comp
L AAT3220IGY-3.3-T1 U1
U 1 1 55C878CB
P 4700 6450
F 0 "U1" H 4500 6650 40  0000 C CNN
F 1 "AAT3220IGY-3.3-T1" H 4550 6650 40  0000 L CNN
F 2 "led-diabolo:SC59" H 4700 6550 30  0000 C CIN
F 3 "" H 4700 6450 60  0000 C CNN
	1    4700 6450
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 55C879D1
P 4100 6750
F 0 "C1" H 4125 6850 50  0000 L CNN
F 1 "1u" H 4125 6650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4138 6600 30  0000 C CNN
F 3 "" H 4100 6750 60  0000 C CNN
	1    4100 6750
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 55C87A0F
P 5300 6750
F 0 "C2" H 5325 6850 50  0000 L CNN
F 1 "1u" H 5325 6650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5338 6600 30  0000 C CNN
F 3 "" H 5300 6750 60  0000 C CNN
	1    5300 6750
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR04
U 1 1 55C87BBA
P 3000 6200
F 0 "#PWR04" H 3000 6050 50  0001 C CNN
F 1 "+BATT" H 3000 6340 50  0000 C CNN
F 2 "" H 3000 6200 60  0000 C CNN
F 3 "" H 3000 6200 60  0000 C CNN
	1    3000 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 55C87BE9
P 3000 7300
F 0 "#PWR05" H 3000 7050 50  0001 C CNN
F 1 "GND" H 3000 7150 50  0000 C CNN
F 2 "" H 3000 7300 60  0000 C CNN
F 3 "" H 3000 7300 60  0000 C CNN
	1    3000 7300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 55C87CFA
P 8000 3900
F 0 "#PWR06" H 8000 3650 50  0001 C CNN
F 1 "GND" H 8000 3750 50  0000 C CNN
F 2 "" H 8000 3900 60  0000 C CNN
F 3 "" H 8000 3900 60  0000 C CNN
	1    8000 3900
	1    0    0    -1  
$EndComp
$Comp
L ICSP P1
U 1 1 55C88F59
P 6650 3900
F 0 "P1" H 6650 4100 50  0000 C CNN
F 1 "ICSP" H 6650 3700 50  0000 C CNN
F 2 "led-diabolo:ICSP_2x03" H 6650 3600 50  0000 C CNN
F 3 "" H 6650 2700 60  0000 C CNN
	1    6650 3900
	1    0    0    -1  
$EndComp
Text Label 3650 1600 0    60   ~ 0
SW1
Text Label 8900 3700 0    60   ~ 0
SW1
Text Label 3550 3050 0    60   ~ 0
RESET
Text Label 5700 4000 0    60   ~ 0
RESET
$Comp
L R R1
U 1 1 55C897B7
P 6650 3500
F 0 "R1" V 6730 3500 50  0000 C CNN
F 1 "10K" V 6650 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6580 3500 30  0000 C CNN
F 3 "" H 6650 3500 30  0000 C CNN
	1    6650 3500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 55C89D72
P 7200 4200
F 0 "#PWR07" H 7200 3950 50  0001 C CNN
F 1 "GND" H 7200 4050 50  0000 C CNN
F 2 "" H 7200 4200 60  0000 C CNN
F 3 "" H 7200 4200 60  0000 C CNN
	1    7200 4200
	1    0    0    -1  
$EndComp
Text Label 5700 3800 0    60   ~ 0
MISO
Text Label 5700 3900 0    60   ~ 0
SCK
Text Label 7300 3900 0    60   ~ 0
MOSI
Text Label 3600 1900 0    60   ~ 0
MOSI
Text Label 3600 2000 0    60   ~ 0
MISO
Text Label 3650 2100 0    60   ~ 0
SCK
$Comp
L C C3
U 1 1 55C8AE24
P 1300 2450
F 0 "C3" H 1325 2550 50  0000 L CNN
F 1 "1u" H 1325 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" V 1150 2450 30  0000 C CNN
F 3 "" H 1300 2450 60  0000 C CNN
	1    1300 2450
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR08
U 1 1 55C8FADC
P 5700 4800
F 0 "#PWR08" H 5700 4650 50  0001 C CNN
F 1 "VDD" H 5700 4950 50  0000 C CNN
F 2 "" H 5700 4800 60  0000 C CNN
F 3 "" H 5700 4800 60  0000 C CNN
	1    5700 4800
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR09
U 1 1 55C9002C
P 6700 4800
F 0 "#PWR09" H 6700 4650 50  0001 C CNN
F 1 "+BATT" H 6700 4940 50  0000 C CNN
F 2 "" H 6700 4800 60  0000 C CNN
F 3 "" H 6700 4800 60  0000 C CNN
	1    6700 4800
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Small JP1
U 1 1 55C901AD
P 3300 6400
F 0 "JP1" H 3300 6480 50  0000 C CNN
F 1 "Jumper_NC_Small" H 3310 6340 50  0001 C CNN
F 2 "led-diabolo:SMD_JUMPER_2" H 3100 6350 30  0000 C CNN
F 3 "" H 3300 6400 60  0000 C CNN
	1    3300 6400
	1    0    0    -1  
$EndComp
$Comp
L TPS27081A U3
U 1 1 55C946F3
P 8000 5150
F 0 "U3" H 7700 5500 50  0000 R CNN
F 1 "TPS27081A" H 8400 4800 50  0000 R CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23-6" H 8000 4750 29  0000 C CNN
F 3 "" H 7360 5000 60  0000 C CNN
	1    8000 5150
	1    0    0    -1  
$EndComp
$Comp
L TPS27081A U2
U 1 1 55C9473D
P 4300 5150
F 0 "U2" H 4000 5500 50  0000 R CNN
F 1 "TPS27081A" H 4700 4800 50  0000 R CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23-6" H 4300 4750 29  0000 C CNN
F 3 "" H 3660 5000 60  0000 C CNN
	1    4300 5150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V_STDBY #PWR010
U 1 1 55C95229
P 1300 1400
F 0 "#PWR010" H 1300 1250 50  0001 C CNN
F 1 "+3.3V_STDBY" H 1300 1540 50  0000 C CNN
F 2 "" H 1300 1400 60  0000 C CNN
F 3 "" H 1300 1400 60  0000 C CNN
	1    1300 1400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V_STDBY #PWR011
U 1 1 55C9533B
P 7200 3300
F 0 "#PWR011" H 7200 3150 50  0001 C CNN
F 1 "+3.3V_STDBY" H 7200 3440 50  0000 C CNN
F 2 "" H 7200 3300 60  0000 C CNN
F 3 "" H 7200 3300 60  0000 C CNN
	1    7200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5600 1300 5800
Wire Wire Line
	1300 6100 1300 6300
Wire Wire Line
	1300 6600 1300 6800
Wire Wire Line
	1300 7300 1300 7100
Wire Wire Line
	1300 1400 1300 2300
Wire Wire Line
	1300 1700 1500 1700
Wire Wire Line
	1500 1600 1300 1600
Connection ~ 1300 1600
Wire Wire Line
	1500 3700 1300 3700
Wire Wire Line
	1300 2600 1300 4100
Wire Wire Line
	1500 3800 1300 3800
Connection ~ 1300 3800
Wire Wire Line
	1500 3900 1300 3900
Connection ~ 1300 3900
Wire Wire Line
	3000 6200 3000 6400
Wire Wire Line
	3000 6400 3200 6400
Wire Wire Line
	3900 6400 4300 6400
Wire Wire Line
	4100 6400 4100 6600
Connection ~ 4100 6400
Wire Wire Line
	5100 6400 5300 6400
Wire Wire Line
	5300 6200 5300 6600
Connection ~ 5300 6400
Wire Wire Line
	5300 7100 5300 6900
Wire Wire Line
	3000 7100 5300 7100
Wire Wire Line
	3000 7100 3000 7300
Wire Wire Line
	4100 7100 4100 6900
Connection ~ 4100 7100
Wire Wire Line
	4700 6700 4700 7100
Connection ~ 4700 7100
Wire Wire Line
	8200 3700 8000 3700
Wire Wire Line
	8000 3700 8000 3900
Wire Wire Line
	3400 1600 3800 1600
Wire Wire Line
	9050 3700 8800 3700
Wire Wire Line
	3400 3050 3800 3050
Wire Wire Line
	5700 4000 6300 4000
Connection ~ 6100 4000
Wire Wire Line
	6100 3500 6100 4000
Wire Wire Line
	6300 3800 5700 3800
Wire Wire Line
	6300 3900 5700 3900
Wire Wire Line
	7200 3300 7200 3800
Connection ~ 7200 3500
Wire Wire Line
	7200 3800 7000 3800
Wire Wire Line
	7000 4000 7200 4000
Wire Wire Line
	7200 4000 7200 4200
Wire Wire Line
	7000 3900 7500 3900
Wire Wire Line
	3400 1900 3800 1900
Wire Wire Line
	3400 2000 3800 2000
Wire Wire Line
	3400 2100 3800 2100
Connection ~ 1300 1700
Connection ~ 1300 3700
Wire Wire Line
	3400 6400 3600 6400
Wire Wire Line
	6100 3500 6500 3500
Wire Wire Line
	6800 3500 7200 3500
Wire Wire Line
	5100 5150 4900 5150
Wire Wire Line
	4900 5000 5300 5000
Wire Wire Line
	5100 5000 5100 5150
Connection ~ 5100 5000
Wire Wire Line
	6700 5000 7400 5000
$Comp
L GND #PWR012
U 1 1 55C95CB7
P 8800 5500
F 0 "#PWR012" H 8800 5250 50  0001 C CNN
F 1 "GND" H 8800 5350 50  0000 C CNN
F 2 "" H 8800 5500 60  0000 C CNN
F 3 "" H 8800 5500 60  0000 C CNN
	1    8800 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 55C95CEF
P 5100 5500
F 0 "#PWR013" H 5100 5250 50  0001 C CNN
F 1 "GND" H 5100 5350 50  0000 C CNN
F 2 "" H 5100 5500 60  0000 C CNN
F 3 "" H 5100 5500 60  0000 C CNN
	1    5100 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5300 8800 5300
Wire Wire Line
	8800 5300 8800 5500
Wire Wire Line
	8600 5000 9000 5000
$Comp
L VCC #PWR014
U 1 1 55C95DCA
P 9400 4800
F 0 "#PWR014" H 9400 4650 50  0001 C CNN
F 1 "VCC" H 9400 4950 50  0000 C CNN
F 2 "" H 9400 4800 60  0000 C CNN
F 3 "" H 9400 4800 60  0000 C CNN
	1    9400 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5300 5100 5300
Wire Wire Line
	5100 5300 5100 5500
$Comp
L +3.3V_STDBY #PWR015
U 1 1 55C9623E
P 3000 4800
F 0 "#PWR015" H 3000 4650 50  0001 C CNN
F 1 "+3.3V_STDBY" H 3000 4940 50  0000 C CNN
F 2 "" H 3000 4800 60  0000 C CNN
F 3 "" H 3000 4800 60  0000 C CNN
	1    3000 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4800 3000 5150
Wire Wire Line
	3000 5000 3700 5000
$Comp
L R R2
U 1 1 55C964DA
P 3350 5150
F 0 "R2" V 3430 5150 50  0000 C CNN
F 1 "10K" V 3350 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3280 5150 30  0000 C CNN
F 3 "" H 3350 5150 30  0000 C CNN
	1    3350 5150
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 55C966B0
P 7050 5150
F 0 "R3" V 7130 5150 50  0000 C CNN
F 1 "10K" V 7050 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6980 5150 30  0000 C CNN
F 3 "" H 7050 5150 30  0000 C CNN
	1    7050 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 5150 7200 5150
Wire Wire Line
	6900 5150 6700 5150
Wire Wire Line
	6700 5150 6700 4800
Wire Wire Line
	3700 5150 3500 5150
Wire Wire Line
	3000 5150 3200 5150
Connection ~ 3000 5000
$Comp
L Jumper_NC_Small JP2
U 1 1 55C96BAB
P 5400 5000
F 0 "JP2" H 5400 5080 50  0000 C CNN
F 1 "Jumper_NC_Small" H 5410 4940 50  0001 C CNN
F 2 "led-diabolo:SMD_JUMPER_2" H 5600 4950 30  0000 C CNN
F 3 "" H 5400 5000 60  0000 C CNN
	1    5400 5000
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Small JP3
U 1 1 55C96CA7
P 9100 5000
F 0 "JP3" H 9100 5080 50  0000 C CNN
F 1 "Jumper_NC_Small" H 9110 4940 50  0001 C CNN
F 2 "led-diabolo:SMD_JUMPER_2" H 9300 4950 30  0000 C CNN
F 3 "" H 9100 5000 60  0000 C CNN
	1    9100 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5150 8800 5150
Wire Wire Line
	8800 5150 8800 5000
Connection ~ 8800 5000
Wire Wire Line
	9200 5000 9400 5000
Wire Wire Line
	9400 5000 9400 4800
Wire Wire Line
	5500 5000 5700 5000
Wire Wire Line
	5700 5000 5700 4800
$EndSCHEMATC