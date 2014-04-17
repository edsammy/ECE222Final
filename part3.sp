
*jeremy warner 
*ece 222, sp. 14 
*finding r_out with AC sweep

*include library files
.include '../sedra_lib.lib'

*model connections
mref 1 1 0 0 NMOS0P5 w=7.7u l=0.6u
m1 2 1 0 0 NMOS0P5 w=77u l=0.6u
m2 2 1 0 0 NMOS0P5 w=385u l=0.6u

*wire connections
vo1 2 0 1.13V AC 1
vdd 4 0 dc 3.3V
rd 4 1 23.5k

*using AC for desired params
.options post nomod
.AC dec 5 1 1meg 
.PROBE r_out1=par('1/i(m1)')
.PROBE r_out2=par('1/i(m2)')
	
.END
