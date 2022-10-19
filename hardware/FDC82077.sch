EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x34_Counter_Clockwise U?
U 1 1 64997A80
P 2550 2650
AR Path="/75E32237/64997A80" Ref="U?"  Part="1" 
AR Path="/649831AA/64997A80" Ref="U4"  Part="1" 
F 0 "U4" H 2600 4467 50  0000 C CNN
F 1 "Intel 82077" H 2600 4376 50  0000 C CNN
F 2 "Package_LCC:PLCC-68" H 2550 2650 50  0001 C CNN
F 3 "~" H 2550 2650 50  0001 C CNN
	1    2550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2050 2350 2050
Wire Wire Line
	1600 2250 2350 2250
Wire Wire Line
	1600 2350 2350 2350
Text Label 1600 2350 0    50   ~ 0
CPU_D2
Text Label 1600 2250 0    50   ~ 0
CPU_D1
Text Label 1600 2050 0    50   ~ 0
CPU_D0
Wire Wire Line
	1600 2450 2350 2450
Wire Wire Line
	1600 2650 2350 2650
Wire Wire Line
	1600 2850 2350 2850
Wire Wire Line
	1600 2950 2350 2950
Wire Wire Line
	1600 3150 2350 3150
Text Label 1600 3150 0    50   ~ 0
CPU_D7
Text Label 1600 2950 0    50   ~ 0
CPU_D6
Text Label 1600 2850 0    50   ~ 0
CPU_D5
Text Label 1600 2650 0    50   ~ 0
CPU_D4
Text Label 1600 2450 0    50   ~ 0
CPU_D3
Wire Wire Line
	2350 2750 1600 2750
Text Label 1600 2750 0    50   ~ 0
+5V
Wire Wire Line
	1600 1850 2350 1850
Text Label 1600 1850 0    50   ~ 0
GND
Wire Wire Line
	2850 3250 3600 3250
Text Label 3600 3250 2    50   ~ 0
+5V
Wire Wire Line
	1450 3250 700  3250
Text Label 700  3250 0    50   ~ 0
~IRQ
Wire Wire Line
	2350 3450 1600 3450
Wire Wire Line
	2350 1150 1600 1150
Text Label 1600 1150 0    50   ~ 0
FLP_~TRK0
Wire Wire Line
	2350 3550 1600 3550
Text Label 1600 3550 0    50   ~ 0
FLP_~INDEX
Wire Wire Line
	2350 1050 1600 1050
Text Label 1600 1050 0    50   ~ 0
FLP_~WRTPRT
Wire Wire Line
	2850 3850 3600 3850
Text Label 3600 3850 2    50   ~ 0
+5V
Wire Wire Line
	1600 2550 2350 2550
Text Label 1600 2550 0    50   ~ 0
GND
Text Label 1600 3450 0    50   ~ 0
FDC_TC
Wire Wire Line
	6000 2750 6750 2750
Text Label 6750 2750 2    50   ~ 0
FLP_~TRK0
Wire Wire Line
	6000 1850 6750 1850
Text Label 6750 1850 2    50   ~ 0
FLP_~INDEX
Wire Wire Line
	6000 2850 6750 2850
Text Label 6750 2850 2    50   ~ 0
FLP_~WRTPRT
Wire Wire Line
	2350 4050 1600 4050
Text Label 1600 4050 0    50   ~ 0
FLP_~DSKCHG
Wire Wire Line
	2850 3750 3600 3750
Text Label 3600 3750 2    50   ~ 0
FLP_~RDATA
Wire Wire Line
	2850 2950 3600 2950
Text Label 3600 2950 2    50   ~ 0
FLP_DENSEL
Wire Wire Line
	2850 2550 3600 2550
Text Label 3600 2550 2    50   ~ 0
FLP_~WDATA
Wire Wire Line
	2850 2650 3600 2650
Text Label 3600 2650 2    50   ~ 0
FLP_~WGATE
Wire Wire Line
	2850 2750 3600 2750
Text Label 3600 2750 2    50   ~ 0
FLP_~HDSEL
Wire Wire Line
	2850 1850 3600 1850
Text Label 3600 1850 2    50   ~ 0
+5V
Wire Wire Line
	3600 2850 2850 2850
Text Label 3600 2850 2    50   ~ 0
GND
Wire Wire Line
	6000 1550 6750 1550
Text Label 6750 1550 2    50   ~ 0
FLP_DENSEL
Wire Wire Line
	6000 2550 6750 2550
Text Label 6750 2550 2    50   ~ 0
FLP_~WDATA
Text Label 6750 2650 2    50   ~ 0
FLP_~WGATE
Wire Wire Line
	6000 3050 6750 3050
Text Label 6750 3050 2    50   ~ 0
FLP_~HDSEL
Wire Wire Line
	2850 2350 3600 2350
Text Label 3600 2350 2    50   ~ 0
FLP_~STEP
Wire Wire Line
	2850 2250 3600 2250
Text Label 3600 2250 2    50   ~ 0
FLP_~DIR
Wire Wire Line
	2850 1750 3600 1750
Text Label 3600 1750 2    50   ~ 0
FLP_~MTR1
Wire Wire Line
	2850 1650 3600 1650
Text Label 3600 1650 2    50   ~ 0
FLP_~DS1
Wire Wire Line
	2850 2150 3600 2150
Text Label 3600 2150 2    50   ~ 0
FLP_~MTR0
Wire Wire Line
	2850 2050 3600 2050
Text Label 3600 2050 2    50   ~ 0
FLP_~DS0
Wire Wire Line
	2350 4150 1600 4150
Text Label 1600 4150 0    50   ~ 0
FDC_RST
Wire Wire Line
	3600 3350 2850 3350
Text Label 3600 3350 2    50   ~ 0
GND
Wire Wire Line
	2350 1950 1600 1950
Text Label 1600 1950 0    50   ~ 0
CPU_A2
Wire Wire Line
	2350 1650 1600 1650
Wire Wire Line
	2350 1750 1600 1750
Text Label 1600 1650 0    50   ~ 0
CPU_A0
Text Label 1600 1750 0    50   ~ 0
CPU_A1
Wire Wire Line
	1600 1550 2350 1550
Text Label 1600 1550 0    50   ~ 0
~FDCSEL
Wire Wire Line
	2350 1350 1600 1350
Text Label 1600 1350 0    50   ~ 0
~PRG_OE
Wire Wire Line
	2350 1450 1600 1450
Text Label 1600 1450 0    50   ~ 0
~PRG_WE
Wire Wire Line
	2850 1050 3600 1050
Text Label 3600 1050 2    50   ~ 0
+5V
Wire Wire Line
	1600 4250 2350 4250
Text Label 1600 4250 0    50   ~ 0
CLK24
Wire Wire Line
	6000 2350 6750 2350
Text Label 6750 2350 2    50   ~ 0
FLP_~DIR
Wire Wire Line
	6000 2250 6750 2250
Text Label 6750 2250 2    50   ~ 0
FLP_~MTR1
Wire Wire Line
	6000 2050 6750 2050
Text Label 6750 2050 2    50   ~ 0
FLP_~DS1
Wire Wire Line
	6000 1950 6750 1950
Text Label 6750 1950 2    50   ~ 0
FLP_~MTR0
Text Label 6750 2150 2    50   ~ 0
FLP_~DS0
Wire Wire Line
	6000 2450 6750 2450
Text Label 6750 2450 2    50   ~ 0
FLP_~STEP
NoConn ~ 6000 1650
NoConn ~ 6000 1750
Wire Wire Line
	6000 3150 6750 3150
Text Label 6750 3150 2    50   ~ 0
FLP_~DSKCHG
Wire Wire Line
	6000 2950 6750 2950
Text Label 6750 2950 2    50   ~ 0
FLP_~RDATA
Wire Wire Line
	6000 2650 6750 2650
Wire Wire Line
	6000 2150 6750 2150
$Comp
L Connector_Generic:Conn_02x17_Odd_Even J?
U 1 1 64997B04
P 5700 2350
AR Path="/75E32237/64997B04" Ref="J?"  Part="1" 
AR Path="/649831AA/64997B04" Ref="J4"  Part="1" 
F 0 "J4" H 5750 3367 50  0000 C CNN
F 1 "FLOPPY" H 5750 3276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x17_P2.54mm_Vertical" H 5700 2350 50  0001 C CNN
F 3 "~" H 5700 2350 50  0001 C CNN
	1    5700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1550 5500 1550
Text Label 4750 1550 0    50   ~ 0
GND
Wire Wire Line
	4750 1650 5500 1650
Text Label 4750 1650 0    50   ~ 0
GND
Wire Wire Line
	4750 1750 5500 1750
Text Label 4750 1750 0    50   ~ 0
GND
Wire Wire Line
	4750 1850 5500 1850
Text Label 4750 1850 0    50   ~ 0
GND
Wire Wire Line
	4750 1950 5500 1950
Text Label 4750 1950 0    50   ~ 0
GND
Wire Wire Line
	4750 2050 5500 2050
Text Label 4750 2050 0    50   ~ 0
GND
Wire Wire Line
	4750 2150 5500 2150
Text Label 4750 2150 0    50   ~ 0
GND
Wire Wire Line
	4750 2250 5500 2250
Text Label 4750 2250 0    50   ~ 0
GND
Wire Wire Line
	4750 2350 5500 2350
Text Label 4750 2350 0    50   ~ 0
GND
Wire Wire Line
	4750 2450 5500 2450
Text Label 4750 2450 0    50   ~ 0
GND
Wire Wire Line
	4750 2550 5500 2550
Text Label 4750 2550 0    50   ~ 0
GND
Wire Wire Line
	4750 2650 5500 2650
Text Label 4750 2650 0    50   ~ 0
GND
Wire Wire Line
	4750 2750 5500 2750
Text Label 4750 2750 0    50   ~ 0
GND
Wire Wire Line
	4750 2850 5500 2850
Text Label 4750 2850 0    50   ~ 0
GND
Wire Wire Line
	4750 2950 5500 2950
Text Label 4750 2950 0    50   ~ 0
GND
Wire Wire Line
	4750 3050 5500 3050
Text Label 4750 3050 0    50   ~ 0
GND
Wire Wire Line
	4750 3150 5500 3150
Text Label 4750 3150 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 64997B2C
P 8250 2450
AR Path="/64997B2C" Ref="J?"  Part="1" 
AR Path="/75E32237/64997B2C" Ref="J?"  Part="1" 
AR Path="/649831AA/64997B2C" Ref="J5"  Part="1" 
F 0 "J5" H 8300 3567 50  0000 C CNN
F 1 "HOST" H 8300 3476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 8250 2450 50  0001 C CNN
F 3 "~" H 8250 2450 50  0001 C CNN
	1    8250 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2750 7300 2750
Wire Wire Line
	8050 2850 7300 2850
Text Label 7300 2750 0    50   ~ 0
CPU_A2
Text Label 7300 2850 0    50   ~ 0
CPU_A3
Wire Wire Line
	9300 2550 8550 2550
Wire Wire Line
	9300 2650 8550 2650
Wire Wire Line
	9300 2750 8550 2750
Wire Wire Line
	9300 2850 8550 2850
Wire Wire Line
	9300 2950 8550 2950
Wire Wire Line
	9300 3050 8550 3050
Wire Wire Line
	9300 3150 8550 3150
Wire Wire Line
	9300 3250 8550 3250
Text Label 9300 3250 2    50   ~ 0
CPU_D7
Text Label 9300 3150 2    50   ~ 0
CPU_D6
Text Label 9300 3050 2    50   ~ 0
CPU_D5
Text Label 9300 2950 2    50   ~ 0
CPU_D4
Text Label 9300 2850 2    50   ~ 0
CPU_D3
Text Label 9300 2750 2    50   ~ 0
CPU_D2
Text Label 9300 2650 2    50   ~ 0
CPU_D1
Text Label 9300 2550 2    50   ~ 0
CPU_D0
Wire Wire Line
	8050 1550 7300 1550
Text Label 7300 1550 0    50   ~ 0
+5V
Wire Wire Line
	9300 1550 8550 1550
Text Label 9300 1550 2    50   ~ 0
+5V
Wire Wire Line
	7300 2150 8050 2150
Text Label 7300 2150 0    50   ~ 0
GND
Wire Wire Line
	8050 1650 7300 1650
Text Label 7300 1650 0    50   ~ 0
GND
Wire Wire Line
	7300 1950 8050 1950
Text Label 7300 1950 0    50   ~ 0
~IOSEL0
Wire Wire Line
	9300 2050 8550 2050
Text Label 9300 2050 2    50   ~ 0
~IOSEL1
Wire Wire Line
	7300 2350 8050 2350
Text Label 7300 2350 0    50   ~ 0
~IOSEL2
Wire Wire Line
	9300 2150 8550 2150
Text Label 9300 2150 2    50   ~ 0
~IOSEL3
Wire Wire Line
	9300 1950 8550 1950
Text Label 9300 1950 2    50   ~ 0
~DEVSEL0
Wire Wire Line
	7300 2050 8050 2050
Text Label 7300 2050 0    50   ~ 0
~DEVSEL1
Wire Wire Line
	9300 2250 8550 2250
Text Label 9300 2250 2    50   ~ 0
~DEVSEL2
Wire Wire Line
	7300 2250 8050 2250
Text Label 7300 2250 0    50   ~ 0
~DEVSEL3
Wire Wire Line
	9300 1750 8550 1750
Wire Wire Line
	7300 1750 8050 1750
Text Label 7300 1750 0    50   ~ 0
SYSCLK
Text Label 9300 1750 2    50   ~ 0
M2
Wire Wire Line
	9300 1650 8550 1650
Text Label 9300 1650 2    50   ~ 0
GND
Text Label 7300 3050 0    50   ~ 0
CPU_A5
Text Label 7300 2950 0    50   ~ 0
CPU_A4
Wire Wire Line
	8050 2950 7300 2950
Wire Wire Line
	8050 3150 7300 3150
Wire Wire Line
	8050 3050 7300 3050
Wire Wire Line
	8050 3250 7300 3250
Text Label 7300 3150 0    50   ~ 0
CPU_A6
Text Label 7300 3250 0    50   ~ 0
CPU_A7
Wire Wire Line
	8050 2550 7300 2550
Wire Wire Line
	8050 2650 7300 2650
Text Label 7300 2550 0    50   ~ 0
CPU_A0
Text Label 7300 2650 0    50   ~ 0
CPU_A1
Wire Wire Line
	8050 2450 7300 2450
Text Label 7300 2450 0    50   ~ 0
~PRG_OE
Wire Wire Line
	8550 2450 9300 2450
Text Label 9300 2450 2    50   ~ 0
~PRG_WE
Wire Wire Line
	9300 2350 8550 2350
Text Label 9300 2350 2    50   ~ 0
GND
Wire Wire Line
	9300 3350 8550 3350
Text Label 9300 3350 2    50   ~ 0
GND
Wire Wire Line
	9300 3450 8550 3450
Text Label 9300 3450 2    50   ~ 0
GND
Wire Wire Line
	7300 3350 8050 3350
Text Label 7300 3350 0    50   ~ 0
GND
Wire Wire Line
	8050 3450 7300 3450
Text Label 7300 3450 0    50   ~ 0
~IRQ
Wire Wire Line
	8550 1850 9300 1850
Text Label 9300 1850 2    50   ~ 0
FDC_RST
Wire Wire Line
	7300 1850 8050 1850
Text Label 7300 1850 0    50   ~ 0
~FDCSEL
$Comp
L Oscillator:CXO_DIP8 X?
U 1 1 64997B82
P 9850 4950
AR Path="/75E32237/64997B82" Ref="X?"  Part="1" 
AR Path="/649831AA/64997B82" Ref="X4"  Part="1" 
F 0 "X4" H 10194 4996 50  0000 L CNN
F 1 "24MHz" H 10194 4905 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 10300 4600 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 9750 4950 50  0001 C CNN
	1    9850 4950
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP14 X?
U 1 1 64997B88
P 8150 4750
AR Path="/75E32237/64997B88" Ref="X?"  Part="1" 
AR Path="/649831AA/64997B88" Ref="X3"  Part="1" 
F 0 "X3" H 8494 4796 50  0001 L CNN
F 1 "CXO_DIP14" H 8494 4705 50  0001 L CNN
F 2 "Oscillator:Oscillator_DIP-14" H 8600 4400 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 8050 4750 50  0001 C CNN
	1    8150 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5800 8150 5050
Text Label 8150 5800 1    50   ~ 0
GND
Wire Wire Line
	9850 6000 9850 5250
Text Label 9850 6000 1    50   ~ 0
GND
Wire Wire Line
	9850 4650 9850 3900
Text Label 9850 3900 3    50   ~ 0
+5V
Wire Wire Line
	8150 4450 8150 3700
Text Label 8150 3700 3    50   ~ 0
+5V
Wire Wire Line
	10900 4950 10150 4950
Text Label 10900 4950 2    50   ~ 0
CLK24
Wire Wire Line
	9200 4750 8450 4750
Text Label 9200 4750 2    50   ~ 0
CLK24
$Comp
L Device:CP1 C?
U 1 1 64997B9A
P 3100 5500
AR Path="/64997B9A" Ref="C?"  Part="1" 
AR Path="/75E32237/64997B9A" Ref="C?"  Part="1" 
AR Path="/649831AA/64997B9A" Ref="C11"  Part="1" 
F 0 "C11" H 3215 5546 50  0000 L CNN
F 1 "0.1uF" H 3215 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3100 5500 50  0001 C CNN
F 3 "~" H 3100 5500 50  0001 C CNN
	1    3100 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5350 3100 5050
Wire Wire Line
	3100 5950 3100 5650
Wire Wire Line
	2350 5050 3100 5050
Text Label 2350 5050 0    50   ~ 0
+5V
Text Label 2350 5950 0    50   ~ 0
GND
Wire Wire Line
	2350 5950 3100 5950
Wire Wire Line
	1600 3050 2350 3050
Text Label 1600 3050 0    50   ~ 0
GND
Wire Wire Line
	3600 4250 2850 4250
Text Label 3600 4250 2    50   ~ 0
GND
Wire Wire Line
	3600 2450 2850 2450
Text Label 3600 2450 2    50   ~ 0
GND
Wire Wire Line
	3600 1950 2850 1950
Text Label 3600 1950 2    50   ~ 0
GND
Wire Wire Line
	1600 2150 2350 2150
Text Label 1600 2150 0    50   ~ 0
GND
NoConn ~ 2350 4350
Wire Wire Line
	2350 1250 1600 1250
Text Label 1600 1250 0    50   ~ 0
+5V
NoConn ~ 2350 3350
Wire Wire Line
	3600 4350 2850 4350
Text Label 3600 4350 2    50   ~ 0
GND
NoConn ~ 2850 1550
NoConn ~ 2850 1250
NoConn ~ 2850 1450
NoConn ~ 2850 1150
Wire Wire Line
	1600 3650 2350 3650
Text Label 1600 3650 0    50   ~ 0
GND
Wire Wire Line
	2850 3050 3600 3050
Text Label 3600 3050 2    50   ~ 0
+5V
NoConn ~ 2350 3750
NoConn ~ 2350 3850
Wire Wire Line
	2850 3950 3600 3950
Text Label 3600 3950 2    50   ~ 0
+5V
Wire Wire Line
	1600 3950 2350 3950
Text Label 1600 3950 0    50   ~ 0
GND
Wire Wire Line
	3600 1350 2850 1350
Text Label 3600 1350 2    50   ~ 0
GND
NoConn ~ 2850 3650
NoConn ~ 2850 3550
NoConn ~ 2850 3450
NoConn ~ 2850 3150
$Comp
L Device:CP1 C?
U 1 1 64B9682C
P 4150 5500
AR Path="/64B9682C" Ref="C?"  Part="1" 
AR Path="/75E32237/64B9682C" Ref="C?"  Part="1" 
AR Path="/649831AA/64B9682C" Ref="C12"  Part="1" 
F 0 "C12" H 4265 5546 50  0000 L CNN
F 1 "4.7pF" H 4265 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4150 5500 50  0001 C CNN
F 3 "~" H 4150 5500 50  0001 C CNN
	1    4150 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4050 2850 4050
Text Label 3600 4050 2    50   ~ 0
HFIL
Wire Wire Line
	3600 4150 2850 4150
Text Label 3600 4150 2    50   ~ 0
LFIL
Wire Wire Line
	4150 4600 4150 5350
Text Label 4150 4600 3    50   ~ 0
HFIL
Wire Wire Line
	4150 6400 4150 5650
Text Label 4150 6400 1    50   ~ 0
LFIL
$Comp
L Device:R_Network05 RN1
U 1 1 64BCA0CB
P 5750 4800
F 0 "RN1" H 6038 4846 50  0000 L CNN
F 1 "1Kx5" H 6038 4755 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP6" V 6125 4800 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 5750 4800 50  0001 C CNN
	1    5750 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5000 5550 5750
Text Label 5550 5750 1    50   ~ 0
FLP_~DSKCHG
Wire Wire Line
	5850 5000 5850 5750
Text Label 5850 5750 1    50   ~ 0
FLP_~TRK0
Wire Wire Line
	5750 5000 5750 5750
Text Label 5750 5750 1    50   ~ 0
FLP_~WRTPRT
Wire Wire Line
	5650 5000 5650 5750
Text Label 5650 5750 1    50   ~ 0
FLP_~RDATA
Wire Wire Line
	5950 5000 5950 5750
Text Label 5950 5750 1    50   ~ 0
FLP_~INDEX
Wire Wire Line
	5550 4600 5550 3850
Text Label 5550 3850 3    50   ~ 0
+5V
$Comp
L Device:CP1 C?
U 1 1 64C9AA9B
P 3600 5500
AR Path="/64C9AA9B" Ref="C?"  Part="1" 
AR Path="/75E32237/64C9AA9B" Ref="C?"  Part="1" 
AR Path="/649831AA/64C9AA9B" Ref="C13"  Part="1" 
F 0 "C13" H 3715 5546 50  0000 L CNN
F 1 "0.1uF" H 3715 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3600 5500 50  0001 C CNN
F 3 "~" H 3600 5500 50  0001 C CNN
	1    3600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5650 3600 5950
Wire Wire Line
	3600 5950 3100 5950
Connection ~ 3100 5950
Wire Wire Line
	3600 5350 3600 5050
Wire Wire Line
	3600 5050 3100 5050
Connection ~ 3100 5050
$EndSCHEMATC
