EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
FDC_IRQ
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
	5400 2650 6150 2650
Text Label 6150 2650 2    50   ~ 0
FLP_~TRK0
Wire Wire Line
	5400 1750 6150 1750
Text Label 6150 1750 2    50   ~ 0
FLP_~INDEX
Wire Wire Line
	5400 2750 6150 2750
Text Label 6150 2750 2    50   ~ 0
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
	5400 1450 6150 1450
Text Label 6150 1450 2    50   ~ 0
FLP_DENSEL
Wire Wire Line
	5400 2450 6150 2450
Text Label 6150 2450 2    50   ~ 0
FLP_~WDATA
Text Label 6150 2550 2    50   ~ 0
FLP_~WGATE
Wire Wire Line
	5400 2950 6150 2950
Text Label 6150 2950 2    50   ~ 0
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
	5400 2250 6150 2250
Text Label 6150 2250 2    50   ~ 0
FLP_~DIR
Wire Wire Line
	5400 2150 6150 2150
Text Label 6150 2150 2    50   ~ 0
FLP_~MTR1
Wire Wire Line
	5400 1950 6150 1950
Text Label 6150 1950 2    50   ~ 0
FLP_~DS1
Wire Wire Line
	5400 1850 6150 1850
Text Label 6150 1850 2    50   ~ 0
FLP_~MTR0
Text Label 6150 2050 2    50   ~ 0
FLP_~DS0
Wire Wire Line
	5400 2350 6150 2350
Text Label 6150 2350 2    50   ~ 0
FLP_~STEP
NoConn ~ 5400 1550
NoConn ~ 5400 1650
Wire Wire Line
	5400 3050 6150 3050
Text Label 6150 3050 2    50   ~ 0
FLP_~DSKCHG
Wire Wire Line
	5400 2850 6150 2850
Text Label 6150 2850 2    50   ~ 0
FLP_~RDATA
Wire Wire Line
	5400 2550 6150 2550
Wire Wire Line
	5400 2050 6150 2050
$Comp
L Connector_Generic:Conn_02x17_Odd_Even J2
U 1 1 75E36812
P 5100 2250
F 0 "J2" H 5150 3267 50  0000 C CNN
F 1 "Floppy" H 5150 3176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x17_P2.54mm_Vertical" H 5100 2250 50  0001 C CNN
F 3 "~" H 5100 2250 50  0001 C CNN
	1    5100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1450 4900 1450
Text Label 4150 1450 0    50   ~ 0
GND
Wire Wire Line
	4150 1550 4900 1550
Text Label 4150 1550 0    50   ~ 0
GND
Wire Wire Line
	4150 1650 4900 1650
Text Label 4150 1650 0    50   ~ 0
GND
Wire Wire Line
	4150 1750 4900 1750
Text Label 4150 1750 0    50   ~ 0
GND
Wire Wire Line
	4150 1850 4900 1850
Text Label 4150 1850 0    50   ~ 0
GND
Wire Wire Line
	4150 1950 4900 1950
Text Label 4150 1950 0    50   ~ 0
GND
Wire Wire Line
	4150 2050 4900 2050
Text Label 4150 2050 0    50   ~ 0
GND
Wire Wire Line
	4150 2150 4900 2150
Text Label 4150 2150 0    50   ~ 0
GND
Wire Wire Line
	4150 2250 4900 2250
Text Label 4150 2250 0    50   ~ 0
GND
Wire Wire Line
	4150 2350 4900 2350
Text Label 4150 2350 0    50   ~ 0
GND
Wire Wire Line
	4150 2450 4900 2450
Text Label 4150 2450 0    50   ~ 0
GND
Wire Wire Line
	4150 2550 4900 2550
Text Label 4150 2550 0    50   ~ 0
GND
Wire Wire Line
	4150 2650 4900 2650
Text Label 4150 2650 0    50   ~ 0
GND
Wire Wire Line
	4150 2750 4900 2750
Text Label 4150 2750 0    50   ~ 0
GND
Wire Wire Line
	4150 2850 4900 2850
Text Label 4150 2850 0    50   ~ 0
GND
Wire Wire Line
	4150 2950 4900 2950
Text Label 4150 2950 0    50   ~ 0
GND
Wire Wire Line
	4150 3050 4900 3050
Text Label 4150 3050 0    50   ~ 0
GND
$EndSCHEMATC
