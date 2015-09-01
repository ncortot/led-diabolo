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
LIBS:led-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "LED-Diabolo LED Board"
Date "2015-09-01"
Rev "2.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X06 P1
U 1 1 55C9FA9B
P 1650 1450
F 0 "P1" H 1650 1800 50  0000 C CNN
F 1 "CONN_02X05" H 1650 1100 50  0000 C CNN
F 2 "led-diabolo:Pin_Header_Straight_2x06_2mm" H 1650 1050 30  0000 C CNN
F 3 "" H 1650 250 60  0000 C CNN
	1    1650 1450
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X06 P2
U 1 1 55C9FB0E
P 1650 2750
F 0 "P2" H 1650 3100 50  0000 C CNN
F 1 "CONN_02X05" H 1650 2400 50  0000 C CNN
F 2 "led-diabolo:Pin_Header_Straight_2x06_2mm" H 1650 2350 30  0000 C CNN
F 3 "" H 1650 1550 60  0000 C CNN
	1    1650 2750
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X06 P3
U 1 1 55C9FB7C
P 1650 3950
F 0 "P3" H 1650 4300 50  0000 C CNN
F 1 "CONN_02X05" H 1650 3600 50  0000 C CNN
F 2 "led-diabolo:Pin_Header_Straight_2x06_2mm" H 1650 3550 30  0000 C CNN
F 3 "" H 1650 2750 60  0000 C CNN
	1    1650 3950
	1    0    0    -1  
$EndComp
Text Label 2200 1200 2    60   ~ 0
PB1
Text Label 2200 1300 2    60   ~ 0
PB3
Text Label 2200 1400 2    60   ~ 0
PB5
Text Label 2200 1500 2    60   ~ 0
PB7
Text Label 1100 1300 0    60   ~ 0
PB2
Text Label 1100 1400 0    60   ~ 0
PB4
Text Label 1100 1500 0    60   ~ 0
PB6
Text Label 1100 1200 0    60   ~ 0
PB0
Text Label 1100 2600 0    60   ~ 0
PC2
Text Label 1100 2700 0    60   ~ 0
PC4
Text Label 1100 2500 0    60   ~ 0
PC0
Text Label 1100 3800 0    60   ~ 0
PD2
Text Label 1100 3900 0    60   ~ 0
PD4
Text Label 1100 4000 0    60   ~ 0
PD6
Text Label 1100 3700 0    60   ~ 0
PD0
Text Label 2200 2500 2    60   ~ 0
PC1
Text Label 2200 2600 2    60   ~ 0
PC3
Text Label 2200 2700 2    60   ~ 0
PC5
Text Label 2200 3700 2    60   ~ 0
PD1
Text Label 2200 3800 2    60   ~ 0
PD3
Text Label 2200 3900 2    60   ~ 0
PD5
Text Label 2200 4000 2    60   ~ 0
PD7
Text Label 1100 2800 0    60   ~ 0
PC6
Text Label 2200 2900 2    60   ~ 0
ADC7
$Comp
L GND #PWR01
U 1 1 55CA39FC
P 1200 1900
F 0 "#PWR01" H 1200 1650 50  0001 C CNN
F 1 "GND" H 1200 1750 50  0000 C CNN
F 2 "" H 1200 1900 60  0000 C CNN
F 3 "" H 1200 1900 60  0000 C CNN
	1    1200 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 55CA3A5B
P 1200 3200
F 0 "#PWR02" H 1200 2950 50  0001 C CNN
F 1 "GND" H 1200 3050 50  0000 C CNN
F 2 "" H 1200 3200 60  0000 C CNN
F 3 "" H 1200 3200 60  0000 C CNN
	1    1200 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 55CA3ABA
P 1200 4400
F 0 "#PWR03" H 1200 4150 50  0001 C CNN
F 1 "GND" H 1200 4250 50  0000 C CNN
F 2 "" H 1200 4400 60  0000 C CNN
F 3 "" H 1200 4400 60  0000 C CNN
	1    1200 4400
	1    0    0    -1  
$EndComp
$Comp
L +4.5V #PWR04
U 1 1 55CA3BF8
P 2500 3600
F 0 "#PWR04" H 2500 3450 50  0001 C CNN
F 1 "+4.5V" H 2500 3740 50  0000 C CNN
F 2 "" H 2500 3600 60  0000 C CNN
F 3 "" H 2500 3600 60  0000 C CNN
	1    2500 3600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 55CA3C57
P 2300 3500
F 0 "#PWR05" H 2300 3350 50  0001 C CNN
F 1 "+3.3V" H 2300 3640 50  0000 C CNN
F 2 "" H 2300 3500 60  0000 C CNN
F 3 "" H 2300 3500 60  0000 C CNN
	1    2300 3500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V_STDBY #PWR06
U 1 1 55CAB932
P 2300 1000
F 0 "#PWR06" H 2300 850 50  0001 C CNN
F 1 "+3.3V_STDBY" H 2300 1140 50  0000 C CNN
F 2 "" H 2300 1000 60  0000 C CNN
F 3 "" H 2300 1000 60  0000 C CNN
	1    2300 1000
	1    0    0    -1  
$EndComp
Text Label 1100 2900 0    60   ~ 0
ADC6
Text Label 2200 2800 2    60   ~ 0
AREF
$Comp
L +4.5V #PWR07
U 1 1 55CB9287
P 2500 1100
F 0 "#PWR07" H 2500 950 50  0001 C CNN
F 1 "+4.5V" H 2500 1240 50  0000 C CNN
F 2 "" H 2500 1100 60  0000 C CNN
F 3 "" H 2500 1100 60  0000 C CNN
	1    2500 1100
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR08
U 1 1 55CC6748
P 2500 2400
F 0 "#PWR08" H 2500 2250 50  0001 C CNN
F 1 "+BATT" H 2500 2540 50  0000 C CNN
F 2 "" H 2500 2400 60  0000 C CNN
F 3 "" H 2500 2400 60  0000 C CNN
	1    2500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1200 2200 1200
Wire Wire Line
	1400 1300 1100 1300
Wire Wire Line
	1900 1300 2200 1300
Wire Wire Line
	1400 1400 1100 1400
Wire Wire Line
	1900 1400 2200 1400
Wire Wire Line
	1400 1500 1100 1500
Wire Wire Line
	1900 1500 2200 1500
Wire Wire Line
	1400 1200 1100 1200
Wire Wire Line
	1400 2600 1100 2600
Wire Wire Line
	1400 2700 1100 2700
Wire Wire Line
	1400 2800 1100 2800
Wire Wire Line
	1400 2500 1100 2500
Wire Wire Line
	1400 3800 1100 3800
Wire Wire Line
	1400 3900 1100 3900
Wire Wire Line
	1400 4000 1100 4000
Wire Wire Line
	1400 3700 1100 3700
Wire Wire Line
	1900 2500 2200 2500
Wire Wire Line
	1900 2600 2200 2600
Wire Wire Line
	1900 2700 2200 2700
Wire Wire Line
	1900 2900 2200 2900
Wire Wire Line
	1900 3700 2200 3700
Wire Wire Line
	1900 3800 2200 3800
Wire Wire Line
	1900 3900 2200 3900
Wire Wire Line
	1900 4000 2200 4000
Wire Wire Line
	1400 1700 1200 1700
Wire Wire Line
	1200 1600 1200 1900
Wire Wire Line
	1400 3000 1200 3000
Wire Wire Line
	1200 3000 1200 3200
Wire Wire Line
	1400 4200 1200 4200
Wire Wire Line
	1200 4100 1200 4400
Wire Wire Line
	1900 1700 2500 1700
Wire Wire Line
	2500 1700 2500 1100
Wire Wire Line
	1900 4200 2500 4200
Wire Wire Line
	2500 4200 2500 3600
Wire Wire Line
	1900 3000 2500 3000
Wire Wire Line
	2500 3000 2500 2400
Wire Wire Line
	1400 2900 1100 2900
Wire Wire Line
	1900 2800 2200 2800
Wire Wire Line
	1400 1600 1200 1600
Wire Wire Line
	1900 1600 2300 1600
Wire Wire Line
	1400 4100 1200 4100
Wire Wire Line
	1900 4100 2300 4100
Wire Wire Line
	2300 4100 2300 3500
Connection ~ 1200 1700
Connection ~ 1200 4200
Wire Wire Line
	2300 1600 2300 1000
$Comp
L +3.3V_STDBY #PWR09
U 1 1 55E60151
P 1900 6300
F 0 "#PWR09" H 1900 6150 50  0001 C CNN
F 1 "+3.3V_STDBY" H 1900 6440 50  0000 C CNN
F 2 "" H 1900 6300 60  0000 C CNN
F 3 "" H 1900 6300 60  0000 C CNN
	1    1900 6300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 55E60165
P 2400 6300
F 0 "#PWR010" H 2400 6150 50  0001 C CNN
F 1 "+3.3V" H 2400 6440 50  0000 C CNN
F 2 "" H 2400 6300 60  0000 C CNN
F 3 "" H 2400 6300 60  0000 C CNN
	1    2400 6300
	1    0    0    -1  
$EndComp
$Comp
L +4.5V #PWR011
U 1 1 55E60179
P 2900 6300
F 0 "#PWR011" H 2900 6150 50  0001 C CNN
F 1 "+4.5V" H 2900 6440 50  0000 C CNN
F 2 "" H 2900 6300 60  0000 C CNN
F 3 "" H 2900 6300 60  0000 C CNN
	1    2900 6300
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR012
U 1 1 55E6018D
P 3400 6300
F 0 "#PWR012" H 3400 6150 50  0001 C CNN
F 1 "+BATT" H 3400 6440 50  0000 C CNN
F 2 "" H 3400 6300 60  0000 C CNN
F 3 "" H 3400 6300 60  0000 C CNN
	1    3400 6300
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG013
U 1 1 55E601A6
P 1900 6500
F 0 "#FLG013" H 1900 6595 50  0001 C CNN
F 1 "PWR_FLAG" H 1900 6680 50  0000 C CNN
F 2 "" H 1900 6500 60  0000 C CNN
F 3 "" H 1900 6500 60  0000 C CNN
	1    1900 6500
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG014
U 1 1 55E601EC
P 2400 6500
F 0 "#FLG014" H 2400 6595 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 6680 50  0000 C CNN
F 2 "" H 2400 6500 60  0000 C CNN
F 3 "" H 2400 6500 60  0000 C CNN
	1    2400 6500
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG015
U 1 1 55E60200
P 2900 6500
F 0 "#FLG015" H 2900 6595 50  0001 C CNN
F 1 "PWR_FLAG" H 2900 6680 50  0000 C CNN
F 2 "" H 2900 6500 60  0000 C CNN
F 3 "" H 2900 6500 60  0000 C CNN
	1    2900 6500
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG016
U 1 1 55E60214
P 3400 6500
F 0 "#FLG016" H 3400 6595 50  0001 C CNN
F 1 "PWR_FLAG" H 3400 6680 50  0000 C CNN
F 2 "" H 3400 6500 60  0000 C CNN
F 3 "" H 3400 6500 60  0000 C CNN
	1    3400 6500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 6300 1900 6500
Wire Wire Line
	2400 6300 2400 6500
Wire Wire Line
	2900 6300 2900 6500
Wire Wire Line
	3400 6300 3400 6500
$Comp
L GND #PWR017
U 1 1 55E60392
P 1400 6550
F 0 "#PWR017" H 1400 6300 50  0001 C CNN
F 1 "GND" H 1400 6400 50  0000 C CNN
F 2 "" H 1400 6550 60  0000 C CNN
F 3 "" H 1400 6550 60  0000 C CNN
	1    1400 6550
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG018
U 1 1 55E603A6
P 1400 6350
F 0 "#FLG018" H 1400 6445 50  0001 C CNN
F 1 "PWR_FLAG" H 1400 6530 50  0000 C CNN
F 2 "" H 1400 6350 60  0000 C CNN
F 3 "" H 1400 6350 60  0000 C CNN
	1    1400 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6350 1400 6550
$EndSCHEMATC
