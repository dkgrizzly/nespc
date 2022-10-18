EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "NESPC Floppy Disk Controller"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x24_Counter_Clockwise U1
U 1 1 75E3678E
P 2850 2550
F 0 "U1" H 2900 3867 50  0000 C CNN
F 1 "FDC37C78" H 2900 3776 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 2850 2550 50  0001 C CNN
F 3 "~" H 2850 2550 50  0001 C CNN
	1    2850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1550 2650 1550
Wire Wire Line
	1900 1650 2650 1650
Wire Wire Line
	1900 1750 2650 1750
Text Label 1900 1750 0    50   ~ 0
CPU_D2
Text Label 1900 1650 0    50   ~ 0
CPU_D1
Text Label 1900 1550 0    50   ~ 0
CPU_D0
Wire Wire Line
	1900 1850 2650 1850
Wire Wire Line
	1900 2150 2650 2150
Wire Wire Line
	1900 2250 2650 2250
Wire Wire Line
	1900 2350 2650 2350
Wire Wire Line
	1900 2450 2650 2450
Text Label 1900 2450 0    50   ~ 0
CPU_D7
Text Label 1900 2350 0    50   ~ 0
CPU_D6
Text Label 1900 2250 0    50   ~ 0
CPU_D5
Text Label 1900 2150 0    50   ~ 0
CPU_D4
Text Label 1900 1850 0    50   ~ 0
CPU_D3
Wire Wire Line
	2650 2050 1900 2050
Text Label 1900 2050 0    50   ~ 0
+5V
Wire Wire Line
	1900 1950 2650 1950
Text Label 1900 1950 0    50   ~ 0
GND
Wire Wire Line
	2650 2550 1900 2550
Text Label 1900 2550 0    50   ~ 0
+5V
Wire Wire Line
	2650 2650 1900 2650
Text Label 1900 2650 0    50   ~ 0
~IRQ
Wire Wire Line
	2650 2750 1900 2750
Wire Wire Line
	2650 2850 1900 2850
Text Label 1900 2850 0    50   ~ 0
FLP_~TRK0
Wire Wire Line
	2650 2950 1900 2950
Text Label 1900 2950 0    50   ~ 0
FLP_~INDEX
Wire Wire Line
	2650 3050 1900 3050
Text Label 1900 3050 0    50   ~ 0
FLP_~WRTPRT
Wire Wire Line
	2650 3250 1900 3250
Text Label 1900 3250 0    50   ~ 0
+5V
Wire Wire Line
	1900 3150 2650 3150
Text Label 1900 3150 0    50   ~ 0
GND
Text Label 1900 2750 0    50   ~ 0
FDC_TC
Wire Wire Line
	5850 2650 6600 2650
Text Label 6600 2650 2    50   ~ 0
FLP_~TRK0
Wire Wire Line
	5850 1750 6600 1750
Text Label 6600 1750 2    50   ~ 0
FLP_~INDEX
Wire Wire Line
	5850 2750 6600 2750
Text Label 6600 2750 2    50   ~ 0
FLP_~WRTPRT
Wire Wire Line
	2650 3350 1900 3350
Text Label 1900 3350 0    50   ~ 0
FLP_~DSKCHG
Wire Wire Line
	2650 3450 1900 3450
Text Label 1900 3450 0    50   ~ 0
FLP_~RDATA
Wire Wire Line
	2650 3550 1900 3550
Text Label 1900 3550 0    50   ~ 0
FLP_DRVDEN0
Wire Wire Line
	2650 3650 1900 3650
Text Label 1900 3650 0    50   ~ 0
FLP_DRVDEN1
Wire Wire Line
	2650 3750 1900 3750
Text Label 1900 3750 0    50   ~ 0
FLP_DENSEL
Wire Wire Line
	3150 3750 3900 3750
Text Label 3900 3750 2    50   ~ 0
FLP_MEDIA_ID0
Wire Wire Line
	3150 3650 3900 3650
Text Label 3900 3650 2    50   ~ 0
FLP_MEDIA_ID1
Wire Wire Line
	3150 3550 3900 3550
Text Label 3900 3550 2    50   ~ 0
FLP_~WDATA
Wire Wire Line
	3150 3450 3900 3450
Text Label 3900 3450 2    50   ~ 0
FLP_~WGATE
Wire Wire Line
	3150 3350 3900 3350
Text Label 3900 3350 2    50   ~ 0
FLP_~HDSEL
Wire Wire Line
	3150 3050 3900 3050
Text Label 3900 3050 2    50   ~ 0
+5V
Wire Wire Line
	3900 3250 3150 3250
Text Label 3900 3250 2    50   ~ 0
GND
Wire Wire Line
	5850 1450 6600 1450
Text Label 6600 1450 2    50   ~ 0
FLP_DENSEL
Wire Wire Line
	5850 2450 6600 2450
Text Label 6600 2450 2    50   ~ 0
FLP_~WDATA
Text Label 6600 2550 2    50   ~ 0
FLP_~WGATE
Wire Wire Line
	5850 2950 6600 2950
Text Label 6600 2950 2    50   ~ 0
FLP_~HDSEL
Wire Wire Line
	3150 3150 3900 3150
Text Label 3900 3150 2    50   ~ 0
FLP_~STEP
Wire Wire Line
	3150 2950 3900 2950
Text Label 3900 2950 2    50   ~ 0
FLP_~DIR
Wire Wire Line
	3150 2850 3900 2850
Text Label 3900 2850 2    50   ~ 0
FLP_~MTR1
Wire Wire Line
	3150 2750 3900 2750
Text Label 3900 2750 2    50   ~ 0
FLP_~DS1
Wire Wire Line
	3150 2650 3900 2650
Text Label 3900 2650 2    50   ~ 0
FLP_~MTR0
Wire Wire Line
	3150 2550 3900 2550
Text Label 3900 2550 2    50   ~ 0
FLP_~DS0
Wire Wire Line
	3150 2450 3900 2450
Text Label 3900 2450 2    50   ~ 0
FDC_RST
Wire Wire Line
	3900 2150 3150 2150
Text Label 3900 2150 2    50   ~ 0
GND
Wire Wire Line
	3150 2050 3900 2050
Text Label 3900 2050 2    50   ~ 0
CPU_A2
Wire Wire Line
	3150 1850 3900 1850
Wire Wire Line
	3150 1950 3900 1950
Text Label 3900 1850 2    50   ~ 0
CPU_A0
Text Label 3900 1950 2    50   ~ 0
CPU_A1
Wire Wire Line
	3900 1750 3150 1750
Text Label 3900 1750 2    50   ~ 0
~FDCSEL
Wire Wire Line
	3150 1650 3900 1650
Text Label 3900 1650 2    50   ~ 0
~PRG_OE
Wire Wire Line
	3150 1550 3900 1550
Text Label 3900 1550 2    50   ~ 0
~PRG_WE
Wire Wire Line
	2650 1450 1900 1450
Text Label 1900 1450 0    50   ~ 0
+5V
NoConn ~ 3150 2350
NoConn ~ 3150 1450
Wire Wire Line
	3900 2250 3150 2250
Text Label 3900 2250 2    50   ~ 0
CLK24
Wire Wire Line
	5850 2250 6600 2250
Text Label 6600 2250 2    50   ~ 0
FLP_~DIR
Wire Wire Line
	5850 2150 6600 2150
Text Label 6600 2150 2    50   ~ 0
FLP_~MTR1
Wire Wire Line
	5850 1950 6600 1950
Text Label 6600 1950 2    50   ~ 0
FLP_~DS1
Wire Wire Line
	5850 1850 6600 1850
Text Label 6600 1850 2    50   ~ 0
FLP_~MTR0
Text Label 6600 2050 2    50   ~ 0
FLP_~DS0
Wire Wire Line
	5850 2350 6600 2350
Text Label 6600 2350 2    50   ~ 0
FLP_~STEP
NoConn ~ 5850 1550
NoConn ~ 5850 1650
Wire Wire Line
	5850 3050 6600 3050
Text Label 6600 3050 2    50   ~ 0
FLP_~DSKCHG
Wire Wire Line
	5850 2850 6600 2850
Text Label 6600 2850 2    50   ~ 0
FLP_~RDATA
Wire Wire Line
	5850 2550 6600 2550
Wire Wire Line
	5850 2050 6600 2050
$Comp
L Connector_Generic:Conn_02x17_Odd_Even J2
U 1 1 75E36812
P 5550 2250
F 0 "J2" H 5600 3267 50  0000 C CNN
F 1 "Floppy" H 5600 3176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x17_P2.54mm_Vertical" H 5550 2250 50  0001 C CNN
F 3 "~" H 5550 2250 50  0001 C CNN
	1    5550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1450 5350 1450
Text Label 4600 1450 0    50   ~ 0
GND
Wire Wire Line
	4600 1550 5350 1550
Text Label 4600 1550 0    50   ~ 0
GND
Wire Wire Line
	4600 1650 5350 1650
Text Label 4600 1650 0    50   ~ 0
GND
Wire Wire Line
	4600 1750 5350 1750
Text Label 4600 1750 0    50   ~ 0
GND
Wire Wire Line
	4600 1850 5350 1850
Text Label 4600 1850 0    50   ~ 0
GND
Wire Wire Line
	4600 1950 5350 1950
Text Label 4600 1950 0    50   ~ 0
GND
Wire Wire Line
	4600 2050 5350 2050
Text Label 4600 2050 0    50   ~ 0
GND
Wire Wire Line
	4600 2150 5350 2150
Text Label 4600 2150 0    50   ~ 0
GND
Wire Wire Line
	4600 2250 5350 2250
Text Label 4600 2250 0    50   ~ 0
GND
Wire Wire Line
	4600 2350 5350 2350
Text Label 4600 2350 0    50   ~ 0
GND
Wire Wire Line
	4600 2450 5350 2450
Text Label 4600 2450 0    50   ~ 0
GND
Wire Wire Line
	4600 2550 5350 2550
Text Label 4600 2550 0    50   ~ 0
GND
Wire Wire Line
	4600 2650 5350 2650
Text Label 4600 2650 0    50   ~ 0
GND
Wire Wire Line
	4600 2750 5350 2750
Text Label 4600 2750 0    50   ~ 0
GND
Wire Wire Line
	4600 2850 5350 2850
Text Label 4600 2850 0    50   ~ 0
GND
Wire Wire Line
	4600 2950 5350 2950
Text Label 4600 2950 0    50   ~ 0
GND
Wire Wire Line
	4600 3050 5350 3050
Text Label 4600 3050 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 76935B71
P 8100 2350
AR Path="/76935B71" Ref="J?"  Part="1" 
AR Path="/75E32237/76935B71" Ref="J1"  Part="1" 
F 0 "J1" H 8150 3467 50  0000 C CNN
F 1 "EXPANSION" H 8150 3376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 8100 2350 50  0001 C CNN
F 3 "~" H 8100 2350 50  0001 C CNN
	1    8100 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2650 7150 2650
Wire Wire Line
	7900 2750 7150 2750
Text Label 7150 2650 0    50   ~ 0
CPU_A2
Text Label 7150 2750 0    50   ~ 0
CPU_A3
Wire Wire Line
	9150 2450 8400 2450
Wire Wire Line
	9150 2550 8400 2550
Wire Wire Line
	9150 2650 8400 2650
Wire Wire Line
	9150 2750 8400 2750
Wire Wire Line
	9150 2850 8400 2850
Wire Wire Line
	9150 2950 8400 2950
Wire Wire Line
	9150 3050 8400 3050
Wire Wire Line
	9150 3150 8400 3150
Text Label 9150 3150 2    50   ~ 0
CPU_D7
Text Label 9150 3050 2    50   ~ 0
CPU_D6
Text Label 9150 2950 2    50   ~ 0
CPU_D5
Text Label 9150 2850 2    50   ~ 0
CPU_D4
Text Label 9150 2750 2    50   ~ 0
CPU_D3
Text Label 9150 2650 2    50   ~ 0
CPU_D2
Text Label 9150 2550 2    50   ~ 0
CPU_D1
Text Label 9150 2450 2    50   ~ 0
CPU_D0
Wire Wire Line
	7900 1450 7150 1450
Text Label 7150 1450 0    50   ~ 0
+5V
Wire Wire Line
	9150 1450 8400 1450
Text Label 9150 1450 2    50   ~ 0
+5V
Wire Wire Line
	7150 2050 7900 2050
Text Label 7150 2050 0    50   ~ 0
GND
Wire Wire Line
	7900 1550 7150 1550
Text Label 7150 1550 0    50   ~ 0
GND
Wire Wire Line
	7150 1850 7900 1850
Text Label 7150 1850 0    50   ~ 0
~IOSEL0
Wire Wire Line
	9150 1950 8400 1950
Text Label 9150 1950 2    50   ~ 0
~IOSEL1
Wire Wire Line
	7150 2250 7900 2250
Text Label 7150 2250 0    50   ~ 0
~IOSEL2
Wire Wire Line
	9150 2050 8400 2050
Text Label 9150 2050 2    50   ~ 0
~IOSEL3
Wire Wire Line
	9150 1850 8400 1850
Text Label 9150 1850 2    50   ~ 0
~DEVSEL0
Wire Wire Line
	7150 1950 7900 1950
Text Label 7150 1950 0    50   ~ 0
~DEVSEL1
Wire Wire Line
	9150 2150 8400 2150
Text Label 9150 2150 2    50   ~ 0
~DEVSEL2
Wire Wire Line
	7150 2150 7900 2150
Text Label 7150 2150 0    50   ~ 0
~DEVSEL3
Wire Wire Line
	9150 1650 8400 1650
Wire Wire Line
	7150 1650 7900 1650
Text Label 7150 1650 0    50   ~ 0
SYSCLK
Text Label 9150 1650 2    50   ~ 0
M2
Wire Wire Line
	9150 1550 8400 1550
Text Label 9150 1550 2    50   ~ 0
GND
Text Label 7150 2950 0    50   ~ 0
CPU_A5
Text Label 7150 2850 0    50   ~ 0
CPU_A4
Wire Wire Line
	7900 2850 7150 2850
Wire Wire Line
	7900 3050 7150 3050
Wire Wire Line
	7900 2950 7150 2950
Wire Wire Line
	7900 3150 7150 3150
Text Label 7150 3050 0    50   ~ 0
CPU_A6
Text Label 7150 3150 0    50   ~ 0
CPU_A7
Wire Wire Line
	7900 2450 7150 2450
Wire Wire Line
	7900 2550 7150 2550
Text Label 7150 2450 0    50   ~ 0
CPU_A0
Text Label 7150 2550 0    50   ~ 0
CPU_A1
Wire Wire Line
	7900 2350 7150 2350
Text Label 7150 2350 0    50   ~ 0
~PRG_OE
Wire Wire Line
	8400 2350 9150 2350
Text Label 9150 2350 2    50   ~ 0
~PRG_WE
Wire Wire Line
	9150 2250 8400 2250
Text Label 9150 2250 2    50   ~ 0
GND
Wire Wire Line
	9150 3250 8400 3250
Text Label 9150 3250 2    50   ~ 0
GND
Wire Wire Line
	9150 3350 8400 3350
Text Label 9150 3350 2    50   ~ 0
GND
Wire Wire Line
	7150 3250 7900 3250
Text Label 7150 3250 0    50   ~ 0
GND
Wire Wire Line
	7900 3350 7150 3350
Text Label 7150 3350 0    50   ~ 0
~IRQ
Wire Wire Line
	8400 1750 9150 1750
Text Label 9150 1750 2    50   ~ 0
FDC_RST
Wire Wire Line
	7150 1750 7900 1750
Text Label 7150 1750 0    50   ~ 0
~FDCSEL
$Comp
L Oscillator:CXO_DIP8 X1
U 1 1 76948232
P 4850 4650
F 0 "X1" H 5194 4696 50  0000 L CNN
F 1 "24MHz" H 5194 4605 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 5300 4300 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 4750 4650 50  0001 C CNN
	1    4850 4650
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP14 X2
U 1 1 76948BBB
P 8000 4650
F 0 "X2" H 8344 4696 50  0001 L CNN
F 1 "CXO_DIP14" H 8344 4605 50  0001 L CNN
F 2 "Oscillator:Oscillator_DIP-14" H 8450 4300 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 7900 4650 50  0001 C CNN
	1    8000 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5700 8000 4950
Text Label 8000 5700 1    50   ~ 0
GND
Wire Wire Line
	4850 5700 4850 4950
Text Label 4850 5700 1    50   ~ 0
GND
Wire Wire Line
	4850 4350 4850 3600
Text Label 4850 3600 3    50   ~ 0
+5V
Wire Wire Line
	8000 4350 8000 3600
Text Label 8000 3600 3    50   ~ 0
+5V
Wire Wire Line
	5900 4650 5150 4650
Text Label 5900 4650 2    50   ~ 0
CLK24
Wire Wire Line
	9050 4650 8300 4650
Text Label 9050 4650 2    50   ~ 0
CLK24
$Comp
L Device:CP1 C?
U 1 1 76CC0D72
P 2950 5400
AR Path="/76CC0D72" Ref="C?"  Part="1" 
AR Path="/75E32237/76CC0D72" Ref="C1"  Part="1" 
F 0 "C1" H 3065 5446 50  0000 L CNN
F 1 "0.1uF" H 3065 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2950 5400 50  0001 C CNN
F 3 "~" H 2950 5400 50  0001 C CNN
	1    2950 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5250 2950 4950
Wire Wire Line
	2950 5850 2950 5550
Wire Wire Line
	2200 4950 2950 4950
Text Label 2200 4950 0    50   ~ 0
+5V
Text Label 2200 5850 0    50   ~ 0
GND
Wire Wire Line
	2200 5850 2950 5850
$EndSCHEMATC
