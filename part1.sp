
*jeremy warner 
*ece 222, sp. 14 
*current mirrors 
*finding q point

*include library files
.include '../sedra_lib.lib'

*model and source connections
vo1 2 0 dc
vdd 4 0 dc 3.3V
mref 1 1 0 0 NMOS0P5 w=7.7u l=0.6u
m1 2 1 0 0 NMOS0P5 w=77u l=0.6u
m2 2 1 0 0 NMOS0P5 w=385u l=0.6u

*R values
rd 4 1 23.5k

*using sweep for desired params
.DC vo1 0.1 3.2 .05
.OPTIONS nomod post
.PROBE dc Ro1=par('v(2)/i(m1)')
.PROBE dc Ro2=par('v(2)/i(m2)')
.PRINT i(m1)
.end

.END
