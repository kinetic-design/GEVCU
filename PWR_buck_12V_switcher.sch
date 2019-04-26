EESchema Schematic File Version 4
LIBS:GEVCU-6-2c-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 16
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 550  1300 0    60   ~ 12
Brief overview\n-- Q1002, R1003, D1002 perform an active transient protection.  It will suppress voltages up to 200V down to 19V.\n-- Q1001, R1001, D1001 perform a reverse polarity protection.  If the input signal is the wrong polarity, the gate will not conduct which will prevent current from flowing.\n-- D1003 is a second transient suppressor, it would catch faster transients allowig a brief amount of time for Q1002 to perform its duty.\n-- L1003 is a choke, it simply prevents switching noise from going up the power wire where it can get into other circuits.\n-- C1001 is a bulk cap, it simply sotores energy locally such that the requlator can draw large currents in short periods of time.\n-- U1001 and the components to the right, are a buck style switching regulator, that will pull the 5V line up to 5V.  It will not upll it down from 5 V if there is an external voltage.\nThe U1001 circuit has been designed for 3A output and up to 20V input, but typically 14.4V or 12.4V input.  L1001 wants to be about 68uH to 100uH with less than 0.3 ohms resistance.
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5CBE8610
P 3600 6250
F 0 "J?" H 3750 6150 50  0000 C CNN
F 1 "Conn_01x01_Male" H 3708 6340 50  0001 C CNN
F 2 "" H 3600 6250 50  0001 C CNN
F 3 "~" H 3600 6250 50  0001 C CNN
	1    3600 6250
	-1   0    0    1   
$EndComp
$Comp
L dk_Fuses:3413_0328_22 F?
U 1 1 5CBE8E9E
P 4150 5400
F 0 "F?" H 4050 5550 60  0000 C CNN
F 1 "2A" H 4200 5550 60  0000 C CNN
F 2 "digikey-footprints:1206" H 4350 5600 60  0001 L CNN
F 3 "https://us.schurter.com/pdf/english/typ_UST_1206.pdf" H 4350 5700 60  0001 L CNN
F 4 "486-1686-1-ND" H 4350 5800 60  0001 L CNN "Digi-Key_PN"
F 5 "3413.0328.22" H 4350 5900 60  0001 L CNN "MPN"
F 6 "Circuit Protection" H 4350 6000 60  0001 L CNN "Category"
F 7 "Fuses" H 4350 6100 60  0001 L CNN "Family"
F 8 "https://us.schurter.com/pdf/english/typ_UST_1206.pdf" H 4350 6200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/schurter-inc/3413.0328.22/486-1686-1-ND/2870095" H 4350 6300 60  0001 L CNN "DK_Detail_Page"
F 10 "FUSE BOARD MOUNT 10A 32VAC 63VDC" H 4350 6400 60  0001 L CNN "Description"
F 11 "Schurter Inc." H 4350 6500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4350 6600 60  0001 L CNN "Status"
	1    4150 5400
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:100KOHM-0603-1_10W-1% R?
U 1 1 5CBE9A0B
P 4250 6650
F 0 "R?" H 4250 6844 45  0000 C CNN
F 1 "100K" H 4250 6760 45  0000 C CNN
F 2 "0603" H 4250 6800 20  0001 C CNN
F 3 "" H 4250 6650 60  0001 C CNN
F 4 "RES-07828" H 4250 6771 60  0001 C CNN "Field4"
	1    4250 6650
	1    0    0    -1  
$EndComp
Text HLabel 3200 6250 0    60   Input ~ 0
Vin
Text HLabel 3200 7000 0    60   Input ~ 0
GND
$Comp
L Transistor_FET:C2M0025120D Q?
U 1 1 5CBEC9E6
P 4650 6350
F 0 "Q?" V 4993 6350 50  0000 C CNN
F 1 "C2M0025120D" V 4902 6350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-247-3_Vertical" H 4650 6350 50  0001 C CIN
F 3 "https://www.wolfspeed.com/media/downloads/161/C2M0025120D.pdf" H 4650 6350 50  0001 L CNN
	1    4650 6350
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5CC9546F
P 3750 6250
F 0 "J?" H 3850 6350 50  0000 C CNN
F 1 "Conn_01x01_Male" H 3858 6340 50  0001 C CNN
F 2 "" H 3750 6250 50  0001 C CNN
F 3 "~" H 3750 6250 50  0001 C CNN
	1    3750 6250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:LM2596S-5 U?
U 1 1 5CC95F44
P 8200 6350
F 0 "U?" H 8200 6717 50  0000 C CNN
F 1 "LM2596S-5" H 8200 6626 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 8250 6100 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 8200 6350 50  0001 C CNN
	1    8200 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6250 3400 6250
Wire Wire Line
	4450 6650 4500 6650
Wire Wire Line
	4050 6650 4000 6650
Wire Wire Line
	3950 6250 4000 6250
Wire Wire Line
	4000 6250 4000 6650
Connection ~ 4000 6250
$Comp
L Device:D_Schottky_Small D?
U 1 1 5CC9B8CF
P 4500 6800
F 0 "D?" V 4454 6868 50  0000 L CNN
F 1 "D_Schottky_Small" V 4545 6868 50  0000 L CNN
F 2 "" V 4500 6800 50  0001 C CNN
F 3 "~" V 4500 6800 50  0001 C CNN
	1    4500 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 6700 4500 6650
Connection ~ 4500 6650
Wire Wire Line
	3200 7000 4500 7000
Wire Wire Line
	4500 7000 4500 6900
Wire Wire Line
	4000 6250 4450 6250
Wire Wire Line
	4650 6650 4650 6550
Wire Wire Line
	4500 6650 4650 6650
Wire Wire Line
	10800 3100 11000 3100
Wire Wire Line
	11000 3100 11000 2900
Text Label 10800 3100 0    10   ~ 0
+5V
Wire Wire Line
	2600 3250 2600 3350
Wire Wire Line
	2600 3350 2600 3450
Wire Wire Line
	3000 3350 2600 3350
Wire Wire Line
	3000 3250 3000 3350
Wire Wire Line
	5400 3350 5300 3350
Wire Wire Line
	6000 3850 5300 3850
Wire Wire Line
	5300 3850 5300 3350
Connection ~ 2600 3350
Connection ~ 3000 3350
Connection ~ 5300 3350
Text Label 2600 3250 0    10   ~ 0
GND
Wire Wire Line
	10400 3400 10400 3500
Text Label 10400 3400 0    10   ~ 0
GND
Wire Wire Line
	7900 2750 7900 2950
Wire Wire Line
	7900 2950 7300 2950
Wire Wire Line
	7000 2950 7300 2950
Connection ~ 7300 2950
Text Label 7900 2750 0    10   ~ 0
+3V3
Text Label 850  2950 0    70   ~ 0
VIN(+12V)
Wire Wire Line
	1900 2950 2600 2950
Wire Wire Line
	2600 2950 2600 3050
Wire Wire Line
	2600 2950 3000 2950
Wire Wire Line
	3000 2950 3000 3050
Wire Wire Line
	3300 2950 3000 2950
Connection ~ 2600 2950
Connection ~ 3000 2950
Wire Wire Line
	10000 3100 9800 3100
Wire Wire Line
	9800 3100 9800 2900
Text Label 10000 3100 0    10   ~ 0
+12V
Wire Wire Line
	3700 2950 4000 2950
Wire Wire Line
	4000 2550 4000 2950
Connection ~ 4000 2950
Text Label 3700 2950 0    10   ~ 0
+12V
Wire Wire Line
	7900 3250 7300 3250
Wire Wire Line
	7000 3250 7100 3250
Wire Wire Line
	7100 3250 7300 3250
Wire Wire Line
	6300 3850 7100 3850
Wire Wire Line
	7100 3850 7100 3250
Connection ~ 7300 3250
Connection ~ 7100 3250
Text Label 7900 3250 0    10   ~ 0
IGND
$Comp
L GEVCU-6-2c-eagle-import:CPOL-USE2.5-6 C?
U 1 1 5E515678
P 4200 3100
AR Path="/5E515678" Ref="C?"  Part="1" 
AR Path="/5C59BFE6/5E515678" Ref="C?"  Part="1" 
AR Path="/5C2F3FAA/5E515678" Ref="C?"  Part="1" 
AR Path="/5CBE631B/5E515678" Ref="C?"  Part="1" 
F 0 "C?" H 4240 3125 59  0000 L BNN
F 1 "100u" H 4240 2935 59  0000 L BNN
F 2 "GEVCU-6-2c:E2,5-6" H 4200 3100 60  0001 C CNN
F 3 "chrome-extension://oemmndcbldboiebfnladdacbdfmadadm/https://datasheet.octopart.com/EEUFM1E101-Panasonic-datasheet-13266715.pdf" H 4200 3100 60  0001 C CNN
	1    4200 3100
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:C-USC0805 C?
U 1 1 5E51567E
P 4600 3100
AR Path="/5E51567E" Ref="C?"  Part="1" 
AR Path="/5C59BFE6/5E51567E" Ref="C?"  Part="1" 
AR Path="/5C2F3FAA/5E51567E" Ref="C?"  Part="1" 
AR Path="/5CBE631B/5E51567E" Ref="C?"  Part="1" 
F 0 "C?" H 4640 3125 59  0000 L BNN
F 1 "1u" H 4640 2935 59  0000 L BNN
F 2 "GEVCU-6-2c:C0805" H 4600 3100 60  0001 C CNN
F 3 "" H 4600 3100 60  0001 C CNN
	1    4600 3100
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:C-USC0805 C?
U 1 1 5E515684
P 5000 3100
AR Path="/5E515684" Ref="C?"  Part="1" 
AR Path="/5C59BFE6/5E515684" Ref="C?"  Part="1" 
AR Path="/5C2F3FAA/5E515684" Ref="C?"  Part="1" 
AR Path="/5CBE631B/5E515684" Ref="C?"  Part="1" 
F 0 "C?" H 5040 3125 59  0000 L BNN
F 1 "0.1u" H 5040 2935 59  0000 L BNN
F 2 "GEVCU-6-2c:C0805" H 5000 3100 60  0001 C CNN
F 3 "" H 5000 3100 60  0001 C CNN
	1    5000 3100
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:C-USC0805 C?
U 1 1 5E51568A
P 7300 3050
AR Path="/5E51568A" Ref="C?"  Part="1" 
AR Path="/5C59BFE6/5E51568A" Ref="C?"  Part="1" 
AR Path="/5C2F3FAA/5E51568A" Ref="C?"  Part="1" 
AR Path="/5CBE631B/5E51568A" Ref="C?"  Part="1" 
F 0 "C?" H 7340 3075 59  0000 L BNN
F 1 "2u" H 7340 2885 59  0000 L BNN
F 2 "GEVCU-6-2c:C0805" H 7300 3050 60  0001 C CNN
F 3 "" H 7300 3050 60  0001 C CNN
	1    7300 3050
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:+3V3 #+3V?
U 1 1 5E515690
P 7900 2650
AR Path="/5E515690" Ref="#+3V?"  Part="1" 
AR Path="/5C59BFE6/5E515690" Ref="#+3V?"  Part="1" 
AR Path="/5C2F3FAA/5E515690" Ref="#+3V?"  Part="1" 
AR Path="/5CBE631B/5E515690" Ref="#+3V?"  Part="1" 
F 0 "#+3V?" H 7900 2650 60  0001 C CNN
F 1 "+3V3" V 7800 2450 59  0000 L BNN
F 2 "" H 7900 2650 60  0001 C CNN
F 3 "" H 7900 2650 60  0001 C CNN
	1    7900 2650
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:GND #GND?
U 1 1 5E515696
P 7900 3550
AR Path="/5E515696" Ref="#GND?"  Part="1" 
AR Path="/5C59BFE6/5E515696" Ref="#GND?"  Part="1" 
AR Path="/5C2F3FAA/5E515696" Ref="#GND?"  Part="1" 
AR Path="/5CBE631B/5E515696" Ref="#GND?"  Part="1" 
F 0 "#GND?" H 7900 3550 60  0001 C CNN
F 1 "IGND" H 7825 3425 59  0000 L BNN
F 2 "" H 7900 3550 60  0001 C CNN
F 3 "" H 7900 3550 60  0001 C CNN
	1    7900 3550
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:C-USC1812 C?
U 1 1 5E51569C
P 6100 3850
AR Path="/5E51569C" Ref="C?"  Part="1" 
AR Path="/5C59BFE6/5E51569C" Ref="C?"  Part="1" 
AR Path="/5C2F3FAA/5E51569C" Ref="C?"  Part="1" 
AR Path="/5CBE631B/5E51569C" Ref="C?"  Part="1" 
F 0 "C?" H 6140 3875 59  0000 L BNN
F 1 "0.01u" H 6140 3685 59  0000 L BNN
F 2 "GEVCU-6-2c:C1812" H 6100 3850 60  0001 C CNN
F 3 "" H 6100 3850 60  0001 C CNN
	1    6100 3850
	0    -1   -1   0   
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:GND #0V?
U 1 1 5E5156A2
P 2600 3550
AR Path="/5E5156A2" Ref="#0V?"  Part="1" 
AR Path="/5C59BFE6/5E5156A2" Ref="#0V?"  Part="1" 
AR Path="/5C2F3FAA/5E5156A2" Ref="#0V?"  Part="1" 
AR Path="/5CBE631B/5E5156A2" Ref="#0V?"  Part="1" 
F 0 "#0V?" H 2600 3550 60  0001 C CNN
F 1 "GND" H 2525 3425 59  0000 L BNN
F 2 "" H 2600 3550 60  0001 C CNN
F 3 "" H 2600 3550 60  0001 C CNN
	1    2600 3550
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:GND #0V?
U 1 1 5E5156A8
P 10400 3600
AR Path="/5E5156A8" Ref="#0V?"  Part="1" 
AR Path="/5C59BFE6/5E5156A8" Ref="#0V?"  Part="1" 
AR Path="/5C2F3FAA/5E5156A8" Ref="#0V?"  Part="1" 
AR Path="/5CBE631B/5E5156A8" Ref="#0V?"  Part="1" 
F 0 "#0V?" H 10400 3600 60  0001 C CNN
F 1 "GND" H 10325 3475 59  0000 L BNN
F 2 "" H 10400 3600 60  0001 C CNN
F 3 "" H 10400 3600 60  0001 C CNN
	1    10400 3600
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:+3V3 #+12V?
U 1 1 5E5156AE
P 4000 2450
AR Path="/5E5156AE" Ref="#+12V?"  Part="1" 
AR Path="/5C59BFE6/5E5156AE" Ref="#+12V?"  Part="1" 
AR Path="/5C2F3FAA/5E5156AE" Ref="#+12V?"  Part="1" 
AR Path="/5CBE631B/5E5156AE" Ref="#+12V?"  Part="1" 
F 0 "#+12V?" H 4000 2450 60  0001 C CNN
F 1 "+12V" V 3900 2250 59  0000 L BNN
F 2 "" H 4000 2450 60  0001 C CNN
F 3 "" H 4000 2450 60  0001 C CNN
	1    4000 2450
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:PTC1812 PTC?
U 1 1 5E5156B4
P 3500 2950
AR Path="/5E5156B4" Ref="PTC?"  Part="1" 
AR Path="/5C59BFE6/5E5156B4" Ref="PTC?"  Part="1" 
AR Path="/5C2F3FAA/5E5156B4" Ref="PTC?"  Part="1" 
AR Path="/5CBE631B/5E5156B4" Ref="PTC?"  Part="1" 
F 0 "PTC?" H 3400 3100 42  0000 L BNN
F 1 "2.5A" H 3450 2800 42  0000 L BNN
F 2 "GEVCU-6-2c:PTC1812" H 3500 2950 60  0001 C CNN
F 3 "chrome-extension://oemmndcbldboiebfnladdacbdfmadadm/https://datasheet.octopart.com/1812L150/12DR-Littelfuse-datasheet-8764218.pdf" H 3500 2950 60  0001 C CNN
	1    3500 2950
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:ZENER-DIODESMB ZEN?
U 1 1 5E5156BA
P 2600 3150
AR Path="/5E5156BA" Ref="ZEN?"  Part="1" 
AR Path="/5C59BFE6/5E5156BA" Ref="ZEN?"  Part="1" 
AR Path="/5C2F3FAA/5E5156BA" Ref="ZEN?"  Part="1" 
AR Path="/5CBE631B/5E5156BA" Ref="ZEN?"  Part="1" 
F 0 "ZEN?" H 2530 3225 59  0000 L BNN
F 1 "1SMB5929BT3G" H 2300 3000 59  0000 L BNN
F 2 "GEVCU-6-2c:SMB" H 2600 3150 60  0001 C CNN
F 3 "chrome-extension://oemmndcbldboiebfnladdacbdfmadadm/https://www.mouser.com/datasheet/2/308/1SMB5913BT3-D-1292981.pdf" H 2600 3150 60  0001 C CNN
	1    2600 3150
	0    -1   -1   0   
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:DIODE-SMB D?
U 1 1 5E5156C0
P 1800 2950
AR Path="/5E5156C0" Ref="D?"  Part="1" 
AR Path="/5C59BFE6/5E5156C0" Ref="D?"  Part="1" 
AR Path="/5C2F3FAA/5E5156C0" Ref="D?"  Part="1" 
AR Path="/5CBE631B/5E5156C0" Ref="D?"  Part="1" 
F 0 "D?" H 1900 2969 59  0000 L BNN
F 1 "B360B-13-F" H 1500 2800 59  0000 L BNN
F 2 "GEVCU-6-2c:SMB" H 1800 2950 60  0001 C CNN
F 3 "chrome-extension://oemmndcbldboiebfnladdacbdfmadadm/https://www.mouser.com/datasheet/2/115/ds13005-1382411.pdf" H 1800 2950 60  0001 C CNN
	1    1800 2950
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:SUPPRESSOR-SMBJ TVS?
U 1 1 5E5156C6
P 3000 3150
AR Path="/5E5156C6" Ref="TVS?"  Part="1" 
AR Path="/5C59BFE6/5E5156C6" Ref="TVS?"  Part="1" 
AR Path="/5C2F3FAA/5E5156C6" Ref="TVS?"  Part="1" 
AR Path="/5CBE631B/5E5156C6" Ref="TVS?"  Part="1" 
F 0 "TVS?" H 3050 3150 59  0000 L BNN
F 1 "SMBJ15A-TR" H 3050 3050 59  0000 L BNN
F 2 "GEVCU-6-2c:SMBJ" H 3000 3150 60  0001 C CNN
F 3 "chrome-extension://oemmndcbldboiebfnladdacbdfmadadm/https://www.mouser.com/datasheet/2/389/smbj-955195.pdf" H 3000 3150 60  0001 C CNN
	1    3000 3150
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:+3V3 #+12V?
U 1 1 5E5156CC
P 9800 2800
AR Path="/5E5156CC" Ref="#+12V?"  Part="1" 
AR Path="/5C59BFE6/5E5156CC" Ref="#+12V?"  Part="1" 
AR Path="/5C2F3FAA/5E5156CC" Ref="#+12V?"  Part="1" 
AR Path="/5CBE631B/5E5156CC" Ref="#+12V?"  Part="1" 
F 0 "#+12V?" H 9800 2800 60  0001 C CNN
F 1 "+12V" V 9700 2600 59  0000 L BNN
F 2 "" H 9800 2800 60  0001 C CNN
F 3 "" H 9800 2800 60  0001 C CNN
	1    9800 2800
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:+3V3 #+5V?
U 1 1 5E5156D2
P 11000 2800
AR Path="/5E5156D2" Ref="#+5V?"  Part="1" 
AR Path="/5C59BFE6/5E5156D2" Ref="#+5V?"  Part="1" 
AR Path="/5C2F3FAA/5E5156D2" Ref="#+5V?"  Part="1" 
AR Path="/5CBE631B/5E5156D2" Ref="#+5V?"  Part="1" 
F 0 "#+5V?" H 11000 2800 60  0001 C CNN
F 1 "+5V" V 10900 2600 59  0000 L BNN
F 2 "" H 11000 2800 60  0001 C CNN
F 3 "" H 11000 2800 60  0001 C CNN
	1    11000 2800
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:TRACO U?
U 1 1 5E5156D8
P 6000 3150
AR Path="/5E5156D8" Ref="U?"  Part="1" 
AR Path="/5C59BFE6/5E5156D8" Ref="U?"  Part="1" 
AR Path="/5C2F3FAA/5E5156D8" Ref="U?"  Part="1" 
AR Path="/5CBE631B/5E5156D8" Ref="U?"  Part="1" 
F 0 "U?" H 6000 3150 60  0001 C CNN
F 1 "TRACO" H 6000 3150 60  0001 C CNN
F 2 "GEVCU-6-2c:TRACO" H 6000 3150 60  0001 C CNN
F 3 "chrome-extension://oemmndcbldboiebfnladdacbdfmadadm/https://datasheet.octopart.com/TEL-5-1210-Tracopower-datasheet-71422850.pdf" H 6000 3150 60  0001 C CNN
	1    6000 3150
	1    0    0    -1  
$EndComp
$Comp
L GEVCU-6-2c-eagle-import:TSR-1 U?
U 1 1 5E5156DE
P 10400 3100
AR Path="/5E5156DE" Ref="U?"  Part="1" 
AR Path="/5C59BFE6/5E5156DE" Ref="U?"  Part="1" 
AR Path="/5C2F3FAA/5E5156DE" Ref="U?"  Part="1" 
AR Path="/5CBE631B/5E5156DE" Ref="U?"  Part="1" 
F 0 "U?" H 10400 3100 60  0001 C CNN
F 1 "TSR-1" H 10400 3100 60  0001 C CNN
F 2 "GEVCU-6-2c:TSR-1" H 10400 3100 60  0001 C CNN
F 3 "chrome-extension://oemmndcbldboiebfnladdacbdfmadadm/https://datasheet.octopart.com/TSR-1-2450-Tracopower-datasheet-21223995.pdf" H 10400 3100 60  0001 C CNN
	1    10400 3100
	1    0    0    -1  
$EndComp
Text Notes 3500 1050 0    215  ~ 0
POWER SUPPLY
Wire Wire Line
	3000 3350 4200 3350
Wire Wire Line
	4000 2950 4200 2950
Wire Wire Line
	5400 2850 5300 2850
Wire Wire Line
	5300 2850 5300 2950
Connection ~ 5300 2950
Wire Wire Line
	5300 2950 5400 2950
Wire Wire Line
	5400 3250 5300 3250
Wire Wire Line
	5300 3250 5300 3350
Wire Wire Line
	4200 3000 4200 2950
Connection ~ 4200 2950
Wire Wire Line
	4200 2950 4600 2950
Wire Wire Line
	4200 3300 4200 3350
Connection ~ 4200 3350
Wire Wire Line
	4200 3350 4600 3350
Wire Wire Line
	4600 3300 4600 3350
Connection ~ 4600 3350
Wire Wire Line
	4600 3350 5000 3350
Wire Wire Line
	4600 3000 4600 2950
Connection ~ 4600 2950
Wire Wire Line
	4600 2950 5000 2950
Wire Wire Line
	5000 3000 5000 2950
Connection ~ 5000 2950
Wire Wire Line
	5000 2950 5300 2950
Wire Wire Line
	5000 3300 5000 3350
Connection ~ 5000 3350
Wire Wire Line
	5000 3350 5300 3350
Wire Wire Line
	500  2950 1700 2950
Wire Wire Line
	7900 3450 7900 3250
$EndSCHEMATC
