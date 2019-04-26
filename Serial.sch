EESchema Schematic File Version 4
LIBS:GEVCU-6-2c-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 16
Title "ATSAM3X8EA Arduino Due CompatibleBoard"
Date "2015-06-27"
Rev "1"
Comp "(c) Daniel Pelikan"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4600 4100 4100 4100
Wire Wire Line
	4600 4000 4100 4000
Wire Wire Line
	6550 4200 6550 3900
Wire Wire Line
	5850 4200 5850 3900
Connection ~ 6550 4700
Wire Wire Line
	6550 4600 6550 4700
Connection ~ 5850 4700
Wire Wire Line
	5850 4600 5850 4700
Wire Wire Line
	6400 4700 6550 4700
Wire Wire Line
	5550 4700 5850 4700
Wire Wire Line
	6550 3050 6550 2750
Wire Wire Line
	5850 3050 5850 2750
Connection ~ 6550 3550
Wire Wire Line
	6550 3450 6550 3550
Connection ~ 5850 3550
Wire Wire Line
	5850 3450 5850 3550
Wire Wire Line
	6400 3550 6550 3550
Wire Wire Line
	5550 3550 5850 3550
Wire Wire Line
	7800 3900 7400 3900
Wire Wire Line
	8700 4000 8100 4000
Wire Wire Line
	8700 3900 8100 3900
Wire Wire Line
	8700 3800 8100 3800
Wire Wire Line
	8700 3700 8100 3700
Text Label 4150 4100 0    60   ~ 0
TX
Text Label 4150 4000 0    60   ~ 0
RX
Text Label 6650 4700 0    60   ~ 0
TX_5V
Text Label 5600 4700 0    60   ~ 0
TX
Text Label 6650 3550 0    60   ~ 0
RX_5V
Text Label 5600 3550 0    60   ~ 0
RX
Text Notes 5550 4800 0    60   ~ 0
LV
Text Label 6550 4050 0    60   ~ 0
+5V
Text Label 5850 4050 0    60   ~ 0
+3.3V
Text Notes 5550 3650 0    60   ~ 0
LV
Text Label 6550 2900 0    60   ~ 0
+5V
Text Label 5850 2900 0    60   ~ 0
+3.3V
Text Label 7600 3900 0    60   ~ 0
+5V
Text Label 8200 4000 0    60   ~ 0
GND
Text Label 8200 3900 0    60   ~ 0
VCC_SERIAL
Text Label 8200 3800 0    60   ~ 0
RX_5V
Text Label 8200 3700 0    60   ~ 0
TX_5V
Text HLabel 4100 4000 0    60   Input ~ 0
RX
Text HLabel 4100 4100 0    60   Output ~ 0
TX
Text HLabel 3550 1700 0    60   Input ~ 0
+3.3V
Text HLabel 3550 1850 0    60   Input ~ 0
+5V
Wire Wire Line
	3550 1700 4000 1700
Wire Wire Line
	3550 1850 4000 1850
Text Label 3675 1700 0    60   ~ 0
+3.3V
Text Label 3750 1850 0    60   ~ 0
+5V
Wire Wire Line
	6550 4700 6900 4700
Wire Wire Line
	5850 4700 6000 4700
Wire Wire Line
	6550 3550 6900 3550
Wire Wire Line
	5850 3550 6000 3550
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5E483C26
P 4800 4000
AR Path="/5E482C6B/5E483C26" Ref="J?"  Part="1" 
AR Path="/5E5F7E8F/5E483C26" Ref="J?"  Part="1" 
AR Path="/5E602BF3/5E483C26" Ref="J?"  Part="1" 
F 0 "J?" H 4750 4100 50  0000 L CNN
F 1 "3.3V Serial" V 4900 3750 50  0000 L CNN
F 2 "" H 4800 4000 50  0001 C CNN
F 3 "~" H 4800 4000 50  0001 C CNN
	1    4800 4000
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:R-US_R0805 R?
U 1 1 5E4968E9
P 5850 4400
AR Path="/5E4968E9" Ref="R?"  Part="1" 
AR Path="/5C685F52/5E4968E9" Ref="R?"  Part="1" 
AR Path="/5EC02B29/5CD7A06E/5E4968E9" Ref="R?"  Part="1" 
AR Path="/5EC02B29/5CF058F9/5E4968E9" Ref="R?"  Part="1" 
AR Path="/5E482C6B/5E4968E9" Ref="R?"  Part="1" 
AR Path="/5E5F7E8F/5E4968E9" Ref="R?"  Part="1" 
AR Path="/5E602BF3/5E4968E9" Ref="R?"  Part="1" 
F 0 "R?" H 5700 4459 59  0000 L BNN
F 1 "10k" H 5700 4270 59  0000 L BNN
F 2 "GEVCU-6-2c:R0805" H 5850 4400 60  0001 C CNN
F 3 "" H 5850 4400 60  0001 C CNN
	1    5850 4400
	0    -1   -1   0   
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:R-US_R0805 R?
U 1 1 5E4968EF
P 5850 3250
AR Path="/5E4968EF" Ref="R?"  Part="1" 
AR Path="/5C685F52/5E4968EF" Ref="R?"  Part="1" 
AR Path="/5EC02B29/5CD7A06E/5E4968EF" Ref="R?"  Part="1" 
AR Path="/5EC02B29/5CF058F9/5E4968EF" Ref="R?"  Part="1" 
AR Path="/5E482C6B/5E4968EF" Ref="R?"  Part="1" 
AR Path="/5E5F7E8F/5E4968EF" Ref="R?"  Part="1" 
AR Path="/5E602BF3/5E4968EF" Ref="R?"  Part="1" 
F 0 "R?" H 5700 3309 59  0000 L BNN
F 1 "10k" H 5700 3120 59  0000 L BNN
F 2 "GEVCU-6-2c:R0805" H 5850 3250 60  0001 C CNN
F 3 "" H 5850 3250 60  0001 C CNN
	1    5850 3250
	0    -1   -1   0   
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:R-US_R0805 R?
U 1 1 5E49AA5B
P 6550 3250
AR Path="/5E49AA5B" Ref="R?"  Part="1" 
AR Path="/5C685F52/5E49AA5B" Ref="R?"  Part="1" 
AR Path="/5EC02B29/5CD7A06E/5E49AA5B" Ref="R?"  Part="1" 
AR Path="/5EC02B29/5CF058F9/5E49AA5B" Ref="R?"  Part="1" 
AR Path="/5E482C6B/5E49AA5B" Ref="R?"  Part="1" 
AR Path="/5E5F7E8F/5E49AA5B" Ref="R?"  Part="1" 
AR Path="/5E602BF3/5E49AA5B" Ref="R?"  Part="1" 
F 0 "R?" H 6400 3309 59  0000 L BNN
F 1 "10k" H 6400 3120 59  0000 L BNN
F 2 "GEVCU-6-2c:R0805" H 6550 3250 60  0001 C CNN
F 3 "" H 6550 3250 60  0001 C CNN
	1    6550 3250
	0    -1   -1   0   
$EndComp
Connection ~ 5850 4200
$Comp
L GEVCU-6-2c-eagle-import:R-US_R0805 R?
U 1 1 5E49F170
P 6550 4400
AR Path="/5E49F170" Ref="R?"  Part="1" 
AR Path="/5C685F52/5E49F170" Ref="R?"  Part="1" 
AR Path="/5EC02B29/5CD7A06E/5E49F170" Ref="R?"  Part="1" 
AR Path="/5EC02B29/5CF058F9/5E49F170" Ref="R?"  Part="1" 
AR Path="/5E482C6B/5E49F170" Ref="R?"  Part="1" 
AR Path="/5E5F7E8F/5E49F170" Ref="R?"  Part="1" 
AR Path="/5E602BF3/5E49F170" Ref="R?"  Part="1" 
F 0 "R?" H 6400 4459 59  0000 L BNN
F 1 "10k" H 6400 4270 59  0000 L BNN
F 2 "GEVCU-6-2c:R0805" H 6550 4400 60  0001 C CNN
F 3 "" H 6550 4400 60  0001 C CNN
	1    6550 4400
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5E4A2FC6
P 8900 3800
AR Path="/5E482C6B/5E4A2FC6" Ref="J?"  Part="1" 
AR Path="/5E5F7E8F/5E4A2FC6" Ref="J?"  Part="1" 
AR Path="/5E602BF3/5E4A2FC6" Ref="J?"  Part="1" 
F 0 "J?" H 8850 4000 50  0000 L CNN
F 1 "5V_Serial" V 9000 3550 50  0000 L CNN
F 2 "" H 8900 3800 50  0001 C CNN
F 3 "~" H 8900 3800 50  0001 C CNN
	1    8900 3800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS138 Q1
U 1 1 5E4A5232
P 6200 3450
AR Path="/5E482C6B/5E4A5232" Ref="Q1"  Part="1" 
AR Path="/5E5F7E8F/5E4A5232" Ref="Q?"  Part="1" 
AR Path="/5E602BF3/5E4A5232" Ref="Q?"  Part="1" 
F 0 "Q1" V 6451 3450 50  0000 C CNN
F 1 "BSS138" V 6542 3450 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6400 3375 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 6200 3450 50  0001 L CNN
	1    6200 3450
	0    1    1    0   
$EndComp
Connection ~ 5850 3050
Wire Wire Line
	6200 3250 6200 3050
Wire Wire Line
	5850 3050 6200 3050
$Comp
L Transistor_FET:BSS138 Q2
U 1 1 5E4A9AB8
P 6200 4600
AR Path="/5E482C6B/5E4A9AB8" Ref="Q2"  Part="1" 
AR Path="/5E5F7E8F/5E4A9AB8" Ref="Q?"  Part="1" 
AR Path="/5E602BF3/5E4A9AB8" Ref="Q?"  Part="1" 
F 0 "Q2" V 6451 4600 50  0000 C CNN
F 1 "BSS138" V 6542 4600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6400 4525 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 6200 4600 50  0001 L CNN
	1    6200 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 4200 6200 4400
Wire Wire Line
	5850 4200 6200 4200
$Comp
L Diode:PMEG6010CEH D2
U 1 1 5E4AF58D
P 7950 3900
AR Path="/5E482C6B/5E4AF58D" Ref="D2"  Part="1" 
AR Path="/5E5F7E8F/5E4AF58D" Ref="D?"  Part="1" 
AR Path="/5E602BF3/5E4AF58D" Ref="D?"  Part="1" 
F 0 "D2" H 7950 4000 50  0000 C CNN
F 1 "PMEG2010AEH" H 7750 3750 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 7950 3725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PMEG6010CEH_PMEG6010CEJ.pdf" H 7950 3900 50  0001 C CNN
	1    7950 3900
	1    0    0    -1  
$EndComp
Text Notes 5950 2300 0    60   ~ 0
5V to 3.3V\nlevel shifting
$EndSCHEMATC
