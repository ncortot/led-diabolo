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
P 2800 2500
F 0 "IC1" H 2050 3750 40  0000 L BNN
F 1 "ATMEGA328P-A" H 3200 1100 40  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 2550 1150 30  0000 C CIN
F 3 "" H 2800 2500 60  0000 C CNN
	1    2800 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 55C86F4C
P 1700 3900
F 0 "#PWR01" H 1700 3650 50  0001 C CNN
F 1 "GND" H 1700 3750 50  0000 C CNN
F 2 "" H 1700 3900 60  0000 C CNN
F 3 "" H 1700 3900 60  0000 C CNN
	1    1700 3900
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR02
U 1 1 55C86F93
P 2200 5200
F 0 "#PWR02" H 2200 5050 50  0001 C CNN
F 1 "+BATT" H 2200 5340 50  0000 C CNN
F 2 "" H 2200 5200 60  0000 C CNN
F 3 "" H 2200 5200 60  0000 C CNN
	1    2200 5200
	1    0    0    -1  
$EndComp
$Comp
L Battery BAT3
U 1 1 55C871AE
P 1100 5750
F 0 "BAT3" H 1200 5800 50  0000 L CNN
F 1 "Battery" H 1200 5700 50  0000 L CNN
F 2 "led-diabolo:BAT_HOLDER_12MM_PTH" H 1600 5600 30  0000 C CNN
F 3 "" V 1100 5790 60  0000 C CNN
	1    1100 5750
	1    0    0    -1  
$EndComp
$Comp
L Battery BAT2
U 1 1 55C871DE
P 1100 6250
F 0 "BAT2" H 1200 6300 50  0000 L CNN
F 1 "Battery" H 1200 6200 50  0000 L CNN
F 2 "led-diabolo:BAT_HOLDER_12MM_PTH" H 1600 6100 30  0000 C CNN
F 3 "" V 1100 6290 60  0000 C CNN
	1    1100 6250
	1    0    0    -1  
$EndComp
$Comp
L Battery BAT1
U 1 1 55C87218
P 1100 6750
F 0 "BAT1" H 1200 6800 50  0000 L CNN
F 1 "Battery" H 1200 6700 50  0000 L CNN
F 2 "led-diabolo:BAT_HOLDER_12MM_PTH" H 1600 6600 30  0000 C CNN
F 3 "" V 1100 6790 60  0000 C CNN
	1    1100 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 55C872C3
P 2200 7300
F 0 "#PWR03" H 2200 7050 50  0001 C CNN
F 1 "GND" H 2200 7150 50  0000 C CNN
F 2 "" H 2200 7300 60  0000 C CNN
F 3 "" H 2200 7300 60  0000 C CNN
	1    2200 7300
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 55C87504
P 8900 3700
F 0 "SW1" H 9050 3810 50  0000 C CNN
F 1 "SW_PUSH" H 8900 3620 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 8900 3550 30  0000 C CNN
F 3 "" H 8900 3700 60  0000 C CNN
	1    8900 3700
	1    0    0    -1  
$EndComp
$Comp
L AAT3220IGY-3.3-T1 U1
U 1 1 55C878CB
P 6700 5450
F 0 "U1" H 6500 5650 40  0000 C CNN
F 1 "AAT3220IGY-3.3-T1" H 6550 5650 40  0000 L CNN
F 2 "led-diabolo:SC59" H 6700 5550 30  0000 C CIN
F 3 "" H 6700 5450 60  0000 C CNN
	1    6700 5450
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 55C879D1
P 6100 5750
F 0 "C1" H 6125 5850 50  0000 L CNN
F 1 "1u" H 6125 5650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" V 6250 5600 30  0000 C CNN
F 3 "" H 6100 5750 60  0000 C CNN
	1    6100 5750
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 55C87A0F
P 7300 5750
F 0 "C2" H 7325 5850 50  0000 L CNN
F 1 "1u" H 7325 5650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" V 7150 5600 30  0000 C CNN
F 3 "" H 7300 5750 60  0000 C CNN
	1    7300 5750
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR04
U 1 1 55C87BBA
P 5500 5200
F 0 "#PWR04" H 5500 5050 50  0001 C CNN
F 1 "+BATT" H 5500 5340 50  0000 C CNN
F 2 "" H 5500 5200 60  0000 C CNN
F 3 "" H 5500 5200 60  0000 C CNN
	1    5500 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 55C87BE9
P 5500 6300
F 0 "#PWR05" H 5500 6050 50  0001 C CNN
F 1 "GND" H 5500 6150 50  0000 C CNN
F 2 "" H 5500 6300 60  0000 C CNN
F 3 "" H 5500 6300 60  0000 C CNN
	1    5500 6300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 55C87CFA
P 9400 3900
F 0 "#PWR06" H 9400 3650 50  0001 C CNN
F 1 "GND" H 9400 3750 50  0000 C CNN
F 2 "" H 9400 3900 60  0000 C CNN
F 3 "" H 9400 3900 60  0000 C CNN
	1    9400 3900
	1    0    0    -1  
$EndComp
$Comp
L ICSP P4
U 1 1 55C88F59
P 8750 1700
F 0 "P4" H 8750 1900 50  0000 C CNN
F 1 "ICSP" H 8750 1500 50  0000 C CNN
F 2 "led-diabolo:ICSP_2x03_POGO" H 8750 1450 30  0000 C CNN
F 3 "" H 8750 500 60  0000 C CNN
	1    8750 1700
	1    0    0    -1  
$EndComp
Text Label 7800 3700 0    60   ~ 0
PD2
Text Label 7800 1800 0    60   ~ 0
PC6
$Comp
L R R1
U 1 1 55C897B7
P 8750 1300
F 0 "R1" V 8830 1300 50  0000 C CNN
F 1 "10K" V 8750 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8680 1300 30  0000 C CNN
F 3 "" H 8750 1300 30  0000 C CNN
	1    8750 1300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 55C89D72
P 9300 2000
F 0 "#PWR07" H 9300 1750 50  0001 C CNN
F 1 "GND" H 9300 1850 50  0000 C CNN
F 2 "" H 9300 2000 60  0000 C CNN
F 3 "" H 9300 2000 60  0000 C CNN
	1    9300 2000
	1    0    0    -1  
$EndComp
Text Label 7800 1600 0    60   ~ 0
PB4
Text Label 7800 1700 0    60   ~ 0
PB5
Text Label 9600 1700 2    60   ~ 0
PB3
$Comp
L C C3
U 1 1 55C8AE24
P 1700 2300
F 0 "C3" H 1725 2400 50  0000 L CNN
F 1 "1u" H 1725 2200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" V 1650 1800 30  0000 C CNN
F 3 "" H 1700 2300 60  0000 C CNN
	1    1700 2300
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Small JP1
U 1 1 55C901AD
P 5800 5400
F 0 "JP1" H 5800 5480 50  0000 C CNN
F 1 "Jumper_NC_Small" H 5810 5340 50  0001 C CNN
F 2 "led-diabolo:SMD_JUMPER_2" H 5800 5350 30  0000 C CNN
F 3 "" H 5800 5400 60  0000 C CNN
	1    5800 5400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V_STDBY #PWR08
U 1 1 55C95229
P 1700 1200
F 0 "#PWR08" H 1700 1050 50  0001 C CNN
F 1 "+3.3V_STDBY" H 1700 1340 50  0000 C CNN
F 2 "" H 1700 1200 60  0000 C CNN
F 3 "" H 1700 1200 60  0000 C CNN
	1    1700 1200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V_STDBY #PWR09
U 1 1 55C9533B
P 9300 1100
F 0 "#PWR09" H 9300 950 50  0001 C CNN
F 1 "+3.3V_STDBY" H 9300 1240 50  0000 C CNN
F 2 "" H 9300 1100 60  0000 C CNN
F 3 "" H 9300 1100 60  0000 C CNN
	1    9300 1100
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 55C964DA
P 3550 5900
F 0 "R2" V 3630 5900 50  0000 C CNN
F 1 "10K" V 3550 5900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3450 5950 30  0000 C CNN
F 3 "" H 3550 5900 30  0000 C CNN
	1    3550 5900
	0    -1   -1   0   
$EndComp
$Comp
L Jumper_NC_Small JP3
U 1 1 55C96BAB
P 3500 5400
F 0 "JP3" H 3500 5480 50  0000 C CNN
F 1 "Jumper_NC_Small" H 3510 5340 50  0001 C CNN
F 2 "led-diabolo:SMD_JUMPER_2" H 3500 5350 30  0000 C CNN
F 3 "" H 3500 5400 60  0000 C CNN
	1    3500 5400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V_STDBY #PWR010
U 1 1 55C97934
P 7300 5000
F 0 "#PWR010" H 7300 4850 50  0001 C CNN
F 1 "+3.3V_STDBY" H 7300 5140 50  0000 C CNN
F 2 "" H 7300 5000 60  0000 C CNN
F 3 "" H 7300 5000 60  0000 C CNN
	1    7300 5000
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 55C98A36
P 3600 6550
F 0 "R3" V 3680 6550 50  0000 C CNN
F 1 "10K" V 3600 6550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3750 6800 30  0000 C CNN
F 3 "" H 3600 6550 30  0000 C CNN
	1    3600 6550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 55C98A40
P 4000 7000
F 0 "#PWR011" H 4000 6750 50  0001 C CNN
F 1 "GND" H 4000 6850 50  0000 C CNN
F 2 "" H 4000 7000 60  0000 C CNN
F 3 "" H 4000 7000 60  0000 C CNN
	1    4000 7000
	1    0    0    -1  
$EndComp
Text Label 3000 6300 0    60   ~ 0
+4.5V_EN
$Comp
L Jumper_NC_Small JP4
U 1 1 55C994E3
P 8300 3000
F 0 "JP4" H 8300 3080 50  0000 C CNN
F 1 "Jumper_NC_Small" H 8310 2940 50  0001 C CNN
F 2 "led-diabolo:SMD_JUMPER_1" H 8300 2950 30  0000 C CNN
F 3 "" H 8300 3000 60  0000 C CNN
	1    8300 3000
	1    0    0    -1  
$EndComp
$Comp
L Q_PMOS_GSD Q1
U 1 1 55C9B3B1
P 1700 5500
F 0 "Q1" H 2000 5550 50  0000 R CNN
F 1 "DMG2305UX" H 2350 5450 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 1800 5300 29  0000 C CNN
F 3 "" H 1700 5500 60  0000 C CNN
	1    1700 5500
	0    -1   -1   0   
$EndComp
$Comp
L Q_PMOS_GSD Q4
U 1 1 55C9BC82
P 4000 5500
F 0 "Q4" H 4300 5550 50  0000 R CNN
F 1 "DMG2305UX" H 4650 5450 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4100 5700 29  0000 C CNN
F 3 "" H 4000 5500 60  0000 C CNN
	1    4000 5500
	0    1    -1   0   
$EndComp
$Comp
L Q_PMOS_GSD Q2
U 1 1 55C9BCDF
P 8400 5500
F 0 "Q2" H 8700 5550 50  0000 R CNN
F 1 "IRLML5103PbF" H 9150 5450 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8500 5700 29  0000 C CNN
F 3 "" H 8400 5500 60  0000 C CNN
	1    8400 5500
	0    1    -1   0   
$EndComp
$Comp
L Q_NMOS_GSD Q3
U 1 1 55C9BED7
P 3900 6300
F 0 "Q3" H 4200 6350 50  0000 R CNN
F 1 "2N7002P" H 4450 6250 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4000 6100 29  0000 C CNN
F 3 "" H 3900 6300 60  0000 C CNN
	1    3900 6300
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR012
U 1 1 55C9D50C
P 3200 5200
F 0 "#PWR012" H 3200 5050 50  0001 C CNN
F 1 "+BATT" H 3200 5340 50  0000 C CNN
F 2 "" H 3200 5200 60  0000 C CNN
F 3 "" H 3200 5200 60  0000 C CNN
	1    3200 5200
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Small JP2
U 1 1 55C9DCEE
P 7900 5400
F 0 "JP2" H 7900 5480 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7910 5340 50  0001 C CNN
F 2 "led-diabolo:SMD_JUMPER_2" H 7800 5350 30  0000 C CNN
F 3 "" H 7900 5400 60  0000 C CNN
	1    7900 5400
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 55C9E345
P 7950 5900
F 0 "R4" V 8030 5900 50  0000 C CNN
F 1 "10K" V 7950 5900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7850 5950 30  0000 C CNN
F 3 "" H 7950 5900 30  0000 C CNN
	1    7950 5900
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR013
U 1 1 55C9E881
P 9200 5200
F 0 "#PWR013" H 9200 5050 50  0001 C CNN
F 1 "+3.3V" H 9200 5340 50  0000 C CNN
F 2 "" H 9200 5200 60  0000 C CNN
F 3 "" H 9200 5200 60  0000 C CNN
	1    9200 5200
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Small JP5
U 1 1 55C9EBA6
P 8300 3200
F 0 "JP5" H 8300 3280 50  0000 C CNN
F 1 "Jumper_NC_Small" H 8310 3140 50  0001 C CNN
F 2 "led-diabolo:SMD_JUMPER_1" H 8300 3150 30  0000 C CNN
F 3 "" H 8300 3200 60  0000 C CNN
	1    8300 3200
	1    0    0    -1  
$EndComp
Text Label 9000 5900 2    60   ~ 0
+3.3V_EN
$Comp
L CONN_02X06 P1
U 1 1 55C9FA9B
P 5950 1550
F 0 "P1" H 5950 1850 50  0000 C CNN
F 1 "CONN_02X05" H 5950 1250 50  0000 C CNN
F 2 "led-diabolo:Socket_Strip_Straight_2x06_2mm" H 5950 1200 30  0000 C CNN
F 3 "" H 5950 350 60  0000 C CNN
	1    5950 1550
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X06 P2
U 1 1 55C9FB0E
P 5950 2850
F 0 "P2" H 5950 3150 50  0000 C CNN
F 1 "CONN_02X05" H 5950 2550 50  0000 C CNN
F 2 "led-diabolo:Socket_Strip_Straight_2x06_2mm" H 5950 2500 30  0000 C CNN
F 3 "" H 5950 1650 60  0000 C CNN
	1    5950 2850
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X06 P3
U 1 1 55C9FB7C
P 5950 4050
F 0 "P3" H 5950 4350 50  0000 C CNN
F 1 "CONN_02X05" H 5950 3750 50  0000 C CNN
F 2 "led-diabolo:Socket_Strip_Straight_2x06_2mm" H 5950 3700 30  0000 C CNN
F 3 "" H 5950 2850 60  0000 C CNN
	1    5950 4050
	1    0    0    -1  
$EndComp
Text Label 6500 1300 2    60   ~ 0
PB1
Text Label 6500 1400 2    60   ~ 0
PB3
Text Label 6500 1500 2    60   ~ 0
PB5
Text Label 6500 1600 2    60   ~ 0
PB7
Text Label 5400 1400 0    60   ~ 0
PB2
Text Label 5400 1500 0    60   ~ 0
PB4
Text Label 5400 1600 0    60   ~ 0
PB6
Text Label 1300 2750 0    60   ~ 0
ADC6
Text Label 1300 2850 0    60   ~ 0
ADC7
Text Label 5400 1300 0    60   ~ 0
PB0
Text Label 5400 2700 0    60   ~ 0
PC2
Text Label 5400 2800 0    60   ~ 0
PC4
Text Label 5400 2600 0    60   ~ 0
PC0
Text Label 5400 3900 0    60   ~ 0
PD2
Text Label 5400 4000 0    60   ~ 0
PD4
Text Label 5400 4100 0    60   ~ 0
PD6
Text Label 5400 3800 0    60   ~ 0
PD0
Text Label 6500 2600 2    60   ~ 0
PC1
Text Label 6500 2700 2    60   ~ 0
PC3
Text Label 6500 2800 2    60   ~ 0
PC5
Text Label 6500 3800 2    60   ~ 0
PD1
Text Label 6500 3900 2    60   ~ 0
PD3
Text Label 6500 4000 2    60   ~ 0
PD5
Text Label 6500 4100 2    60   ~ 0
PD7
Text Label 5400 2900 0    60   ~ 0
PC6
Text Label 6500 3000 2    60   ~ 0
ADC7
$Comp
L GND #PWR014
U 1 1 55CA39FC
P 5500 2000
F 0 "#PWR014" H 5500 1750 50  0001 C CNN
F 1 "GND" H 5500 1850 50  0000 C CNN
F 2 "" H 5500 2000 60  0000 C CNN
F 3 "" H 5500 2000 60  0000 C CNN
	1    5500 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 55CA3A5B
P 5500 3300
F 0 "#PWR015" H 5500 3050 50  0001 C CNN
F 1 "GND" H 5500 3150 50  0000 C CNN
F 2 "" H 5500 3300 60  0000 C CNN
F 3 "" H 5500 3300 60  0000 C CNN
	1    5500 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 55CA3ABA
P 5500 4500
F 0 "#PWR016" H 5500 4250 50  0001 C CNN
F 1 "GND" H 5500 4350 50  0000 C CNN
F 2 "" H 5500 4500 60  0000 C CNN
F 3 "" H 5500 4500 60  0000 C CNN
	1    5500 4500
	1    0    0    -1  
$EndComp
$Comp
L +4.5V #PWR017
U 1 1 55CA3BF8
P 6800 3700
F 0 "#PWR017" H 6800 3550 50  0001 C CNN
F 1 "+4.5V" H 6800 3840 50  0000 C CNN
F 2 "" H 6800 3700 60  0000 C CNN
F 3 "" H 6800 3700 60  0000 C CNN
	1    6800 3700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR018
U 1 1 55CA3C57
P 6600 1100
F 0 "#PWR018" H 6600 950 50  0001 C CNN
F 1 "+3.3V" H 6600 1240 50  0000 C CNN
F 2 "" H 6600 1100 60  0000 C CNN
F 3 "" H 6600 1100 60  0000 C CNN
	1    6600 1100
	1    0    0    -1  
$EndComp
Text Label 9000 3000 2    60   ~ 0
+3.3V_EN
Text Label 9000 3200 2    60   ~ 0
+4.5V_EN
Text Label 4100 1400 2    60   ~ 0
PB0
Text Label 4100 1500 2    60   ~ 0
PB1
Text Label 4100 1600 2    60   ~ 0
PB2
Text Label 4100 1700 2    60   ~ 0
PB3
Text Label 4100 1800 2    60   ~ 0
PB4
Text Label 4100 1900 2    60   ~ 0
PB5
Text Label 4100 2000 2    60   ~ 0
PB6
Text Label 4100 2100 2    60   ~ 0
PB7
Text Label 4100 2250 2    60   ~ 0
PC0
Text Label 4100 2350 2    60   ~ 0
PC1
Text Label 4100 2450 2    60   ~ 0
PC2
Text Label 4100 2550 2    60   ~ 0
PC3
Text Label 4100 2650 2    60   ~ 0
PC4
Text Label 4100 2750 2    60   ~ 0
PC5
Text Label 4100 2850 2    60   ~ 0
PC6
Text Label 4100 3000 2    60   ~ 0
PD0
Text Label 4100 3100 2    60   ~ 0
PD1
Text Label 4100 3200 2    60   ~ 0
PD2
Text Label 4100 3300 2    60   ~ 0
PD3
Text Label 4100 3400 2    60   ~ 0
PD4
Text Label 4100 3500 2    60   ~ 0
PD5
Text Label 4100 3600 2    60   ~ 0
PD6
Text Label 4100 3700 2    60   ~ 0
PD7
$Comp
L PWR_FLAG #FLG019
U 1 1 55CA8767
P 8800 5200
F 0 "#FLG019" H 8800 5295 50  0001 C CNN
F 1 "PWR_FLAG" H 8800 5380 50  0000 C CNN
F 2 "" H 8800 5200 60  0000 C CNN
F 3 "" H 8800 5200 60  0000 C CNN
	1    8800 5200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG020
U 1 1 55CA90BE
P 2200 5600
F 0 "#FLG020" H 2200 5695 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 5780 50  0000 C CNN
F 2 "" H 2200 5600 60  0000 C CNN
F 3 "" H 2200 5600 60  0000 C CNN
	1    2200 5600
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG021
U 1 1 55CA918A
P 2200 6900
F 0 "#FLG021" H 2200 6995 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 7080 50  0000 C CNN
F 2 "" H 2200 6900 60  0000 C CNN
F 3 "" H 2200 6900 60  0000 C CNN
	1    2200 6900
	1    0    0    -1  
$EndComp
Text Label 7800 3000 0    60   ~ 0
PB6
Text Label 7800 3200 0    60   ~ 0
PB7
$Comp
L +4.5V #PWR022
U 1 1 55CAB46C
P 4500 5200
F 0 "#PWR022" H 4500 5050 50  0001 C CNN
F 1 "+4.5V" H 4500 5340 50  0000 C CNN
F 2 "" H 4500 5200 60  0000 C CNN
F 3 "" H 4500 5200 60  0000 C CNN
	1    4500 5200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG023
U 1 1 55CAB4D2
P 4500 5600
F 0 "#FLG023" H 4500 5695 50  0001 C CNN
F 1 "PWR_FLAG" H 4500 5780 50  0000 C CNN
F 2 "" H 4500 5600 60  0000 C CNN
F 3 "" H 4500 5600 60  0000 C CNN
	1    4500 5600
	-1   0    0    1   
$EndComp
$Comp
L +3.3V_STDBY #PWR024
U 1 1 55CAB932
P 6700 2400
F 0 "#PWR024" H 6700 2250 50  0001 C CNN
F 1 "+3.3V_STDBY" H 6700 2540 50  0000 C CNN
F 2 "" H 6700 2400 60  0000 C CNN
F 3 "" H 6700 2400 60  0000 C CNN
	1    6700 2400
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Small JP6
U 1 1 55CB70A6
P 8300 3700
F 0 "JP6" H 8300 3780 50  0000 C CNN
F 1 "Jumper_NC_Small" H 8310 3640 50  0001 C CNN
F 2 "led-diabolo:SMD_JUMPER_1" H 8300 3650 30  0000 C CNN
F 3 "" H 8300 3700 60  0000 C CNN
	1    8300 3700
	1    0    0    -1  
$EndComp
Text Label 5400 3000 0    60   ~ 0
ADC6
Wire Wire Line
	2200 5200 2200 5400
Wire Wire Line
	2200 5400 2200 5600
Wire Wire Line
	1100 5900 1100 6100
Wire Wire Line
	1100 6400 1100 6600
Wire Wire Line
	1100 7100 1100 6900
Wire Wire Line
	1700 1200 1700 1400
Wire Wire Line
	1700 1400 1700 1500
Wire Wire Line
	1700 1500 1700 1700
Wire Wire Line
	1700 1700 1700 2150
Wire Wire Line
	1700 1500 1900 1500
Wire Wire Line
	1900 1400 1700 1400
Connection ~ 1700 1400
Wire Wire Line
	1700 3500 1900 3500
Wire Wire Line
	1700 2450 1700 3500
Wire Wire Line
	1700 3500 1700 3600
Wire Wire Line
	1700 3600 1700 3700
Wire Wire Line
	1700 3700 1700 3900
Wire Wire Line
	1900 3600 1700 3600
Connection ~ 1700 3600
Wire Wire Line
	1900 3700 1700 3700
Connection ~ 1700 3700
Wire Wire Line
	5500 5200 5500 5400
Wire Wire Line
	5500 5400 5700 5400
Wire Wire Line
	5900 5400 6100 5400
Wire Wire Line
	6100 5400 6300 5400
Wire Wire Line
	6100 5400 6100 5600
Connection ~ 6100 5400
Wire Wire Line
	7100 5400 7300 5400
Wire Wire Line
	7300 5400 7600 5400
Wire Wire Line
	7600 5400 7800 5400
Wire Wire Line
	7300 5000 7300 5400
Wire Wire Line
	7300 5400 7300 5600
Connection ~ 7300 5400
Wire Wire Line
	7300 6100 7300 5900
Wire Wire Line
	5500 6100 6100 6100
Wire Wire Line
	6100 6100 6700 6100
Wire Wire Line
	6700 6100 7300 6100
Wire Wire Line
	5500 6100 5500 6300
Wire Wire Line
	6100 6100 6100 5900
Connection ~ 6100 6100
Wire Wire Line
	6700 5700 6700 6100
Connection ~ 6700 6100
Wire Wire Line
	9200 3700 9400 3700
Wire Wire Line
	9400 3700 9400 3900
Wire Wire Line
	7800 3700 8200 3700
Wire Wire Line
	7800 1800 8200 1800
Wire Wire Line
	8200 1800 8400 1800
Connection ~ 8200 1800
Wire Wire Line
	8200 1300 8200 1800
Wire Wire Line
	8400 1600 7800 1600
Wire Wire Line
	8400 1700 7800 1700
Wire Wire Line
	9300 1100 9300 1300
Wire Wire Line
	9300 1300 9300 1600
Connection ~ 9300 1300
Wire Wire Line
	9300 1600 9100 1600
Wire Wire Line
	9100 1800 9300 1800
Wire Wire Line
	9300 1800 9300 2000
Wire Wire Line
	9100 1700 9600 1700
Connection ~ 1700 1500
Connection ~ 1700 3500
Wire Wire Line
	8200 1300 8600 1300
Wire Wire Line
	8900 1300 9300 1300
Wire Wire Line
	3000 6300 3600 6300
Wire Wire Line
	3600 6300 3700 6300
Wire Wire Line
	1100 5600 1100 5400
Wire Wire Line
	1100 5400 1500 5400
Wire Wire Line
	2200 5400 1900 5400
Wire Wire Line
	1100 7100 1700 7100
Wire Wire Line
	1700 7100 2200 7100
Wire Wire Line
	2200 6900 2200 7100
Wire Wire Line
	2200 7100 2200 7300
Wire Wire Line
	1700 5700 1700 7100
Connection ~ 1700 7100
Wire Wire Line
	4000 5700 4000 5900
Wire Wire Line
	4000 5900 4000 6100
Connection ~ 4000 5900
Wire Wire Line
	3600 5400 3800 5400
Wire Wire Line
	3400 5400 3200 5400
Wire Wire Line
	3200 5200 3200 5400
Wire Wire Line
	3200 5400 3200 5900
Wire Wire Line
	3200 5900 3400 5900
Connection ~ 3200 5400
Wire Wire Line
	3700 5900 4000 5900
Wire Wire Line
	3600 6800 4000 6800
Wire Wire Line
	4000 6500 4000 6800
Wire Wire Line
	4000 6800 4000 7000
Connection ~ 4000 6800
Wire Wire Line
	3600 6800 3600 6700
Wire Wire Line
	3600 6400 3600 6300
Connection ~ 3600 6300
Wire Wire Line
	8000 5400 8200 5400
Wire Wire Line
	8600 5400 8800 5400
Wire Wire Line
	8800 5400 9200 5400
Wire Wire Line
	8800 5400 8800 5200
Wire Wire Line
	7600 5400 7600 5900
Wire Wire Line
	7600 5900 7800 5900
Connection ~ 7600 5400
Wire Wire Line
	8400 5900 8400 5700
Connection ~ 8400 5900
Wire Wire Line
	8100 5900 8400 5900
Wire Wire Line
	8400 5900 9000 5900
Connection ~ 1700 1700
Wire Wire Line
	1900 2000 1300 2000
Wire Wire Line
	1900 2750 1300 2750
Wire Wire Line
	1900 2850 1300 2850
Wire Wire Line
	6200 1300 6500 1300
Wire Wire Line
	5700 1400 5400 1400
Wire Wire Line
	6200 1400 6500 1400
Wire Wire Line
	5700 1500 5400 1500
Wire Wire Line
	6200 1500 6500 1500
Wire Wire Line
	5700 1600 5400 1600
Wire Wire Line
	6200 1600 6500 1600
Wire Wire Line
	5700 1300 5400 1300
Wire Wire Line
	5700 2700 5400 2700
Wire Wire Line
	5700 2800 5400 2800
Wire Wire Line
	5700 2900 5400 2900
Wire Wire Line
	5700 2600 5400 2600
Wire Wire Line
	5700 3900 5400 3900
Wire Wire Line
	5700 4000 5400 4000
Wire Wire Line
	5700 4100 5400 4100
Wire Wire Line
	5700 3800 5400 3800
Wire Wire Line
	6200 2600 6500 2600
Wire Wire Line
	6200 2700 6500 2700
Wire Wire Line
	6200 2800 6500 2800
Wire Wire Line
	6200 3000 6500 3000
Wire Wire Line
	6200 3800 6500 3800
Wire Wire Line
	6200 3900 6500 3900
Wire Wire Line
	6200 4000 6500 4000
Wire Wire Line
	6200 4100 6500 4100
Wire Wire Line
	5700 1800 5500 1800
Wire Wire Line
	5500 1700 5500 1800
Wire Wire Line
	5500 1800 5500 2000
Wire Wire Line
	5700 3100 5500 3100
Wire Wire Line
	5500 3100 5500 3300
Wire Wire Line
	5700 4300 5500 4300
Wire Wire Line
	5500 4200 5500 4300
Wire Wire Line
	5500 4300 5500 4500
Wire Wire Line
	6200 1800 6800 1800
Wire Wire Line
	6800 1800 6800 1200
Wire Wire Line
	6200 4300 6800 4300
Wire Wire Line
	6800 4300 6800 3700
Wire Wire Line
	8200 3000 7800 3000
Wire Wire Line
	8400 3000 9000 3000
Wire Wire Line
	8200 3200 7800 3200
Wire Wire Line
	8400 3200 9000 3200
Wire Wire Line
	3800 1400 4100 1400
Wire Wire Line
	3800 1500 4100 1500
Wire Wire Line
	3800 1600 4100 1600
Wire Wire Line
	3800 1700 4100 1700
Wire Wire Line
	3800 1800 4100 1800
Wire Wire Line
	3800 1900 4100 1900
Wire Wire Line
	3800 2000 4100 2000
Wire Wire Line
	3800 2100 4100 2100
Wire Wire Line
	3800 2250 4100 2250
Wire Wire Line
	3800 2350 4100 2350
Wire Wire Line
	3800 2450 4100 2450
Wire Wire Line
	3800 2550 4100 2550
Wire Wire Line
	3800 2650 4100 2650
Wire Wire Line
	3800 2750 4100 2750
Wire Wire Line
	3800 2850 4100 2850
Wire Wire Line
	3800 3000 4100 3000
Wire Wire Line
	3800 3100 4100 3100
Wire Wire Line
	3800 3200 4100 3200
Wire Wire Line
	3800 3300 4100 3300
Wire Wire Line
	3800 3400 4100 3400
Wire Wire Line
	3800 3500 4100 3500
Wire Wire Line
	3800 3600 4100 3600
Wire Wire Line
	3800 3700 4100 3700
Wire Wire Line
	9200 5400 9200 5200
Connection ~ 8800 5400
Connection ~ 2200 5400
Connection ~ 2200 7100
Wire Wire Line
	4200 5400 4500 5400
Wire Wire Line
	4500 5200 4500 5400
Wire Wire Line
	4500 5400 4500 5600
Connection ~ 4500 5400
Wire Wire Line
	6200 3100 6700 3100
Wire Wire Line
	6700 3100 6700 2400
Wire Wire Line
	8400 3700 8600 3700
Wire Wire Line
	5700 3000 5400 3000
Wire Wire Line
	6200 2900 6500 2900
Wire Wire Line
	5700 1700 5500 1700
Wire Wire Line
	6200 1700 6600 1700
Wire Wire Line
	5700 4200 5500 4200
Wire Wire Line
	6200 4200 6600 4200
Text Label 1300 2000 0    60   ~ 0
AREF
Text Label 6500 2900 2    60   ~ 0
AREF
$Comp
L +3.3V #PWR025
U 1 1 55CB8DC3
P 6600 3600
F 0 "#PWR025" H 6600 3450 50  0001 C CNN
F 1 "+3.3V" H 6600 3740 50  0000 C CNN
F 2 "" H 6600 3600 60  0000 C CNN
F 3 "" H 6600 3600 60  0000 C CNN
	1    6600 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4200 6600 3600
Connection ~ 5500 1800
Connection ~ 5500 4300
$Comp
L +4.5V #PWR026
U 1 1 55CB9287
P 6800 1200
F 0 "#PWR026" H 6800 1050 50  0001 C CNN
F 1 "+4.5V" H 6800 1340 50  0000 C CNN
F 2 "" H 6800 1200 60  0000 C CNN
F 3 "" H 6800 1200 60  0000 C CNN
	1    6800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1700 6600 1100
Wire Wire Line
	1900 1700 1700 1700
$EndSCHEMATC
