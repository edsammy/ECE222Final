
*jeremy warner & eddie samuels 
*ece 22 final project
*headphone amplifier w/ params:
*	output load impedance = 32-300ohm
*	output power = 100mW/chan (battery) 200mW/chan (ac)
*	output impedance = <5ohm
*	input amplitude = 0.3V
*	input impedance = >10kohm
*	3db BW = 20Hz - 15kHz
*	THDN = <0.1% w/ 10omW on nominal load @1kHz
*	power consumption = <30mA (battery), <50mA (ac)

*  	 node
*input -  1
*output - 5

*include library files
.include '../sedra_lib.lib'
*.include 'OPamps/LF411C.lib'
.include 'OPamps/BUF634.LIB'
.include 'OPamps/OPA2134.LIB'

*DC Sources
Vplus 8 0 DC 9V
Vminus 0 7 DC 9V

Vsweep 1 0 AC 1V

*OP amps
*Xopamp1 3 4 8 7 6 LF411C
Xopamp1 3 4 8 7 6 OPA2134
*Xbuffer 6 9 8 7 9 BUF634

*R values
R1 1 2 10k
R2 3 0 75k
R3 4 0 1k
R4 4 5 10k
R5 6 5 1

*C values
C1 2 3 .1u
C2 3 0 0.0009u

*analysis
.OP
.AC DEC 10 1 500k
.PRINT gain = PAR('Vdb(5)-Vdb(1)')

.OPTION NOMOD POST
.END
