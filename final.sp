
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
.include 'OPamps/LF411C.lib'

*DC Sources
Vplus 8 0 DC 18V
Vminus 7 0 DC 0V

*OP amps
Xopamp1 3 4 8 7 6 LF411C

*R values
R1 1 2 10k
R2 3 0 100k
R3 4 0 1k
R4 4 5 10k
R5 6 5 0

*C values
C1 2 3 0.1u

*analysis
.OP

.OPTION NOMOD POST

.END
