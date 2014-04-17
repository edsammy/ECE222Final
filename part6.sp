
*jeremy warner 
*ece 222, sp. 14 
*differential AMP opt

*include library files
.include '../sedra_lib.lib'

*model connections
mref 1 1 0 0 NMOS0P5 w=7.7u l=0.6u
m1 2 1 0 0 NMOS0P5 w=77u l=0.6u
m2 3 6 2 0 NMOS0P5 w=14.5u l=0.6u
m3 4 7 2 0 NMOS0P5 w=14.5u l=0.6u 
m4 3 3 5 5 PMOS0P5 w=161u l=0.6u 
m5 4 3 5 5 PMOS0P5 w=161u l=0.6u 

*v/R/C values
vdd 5 0 dc 3.3V
v00 6 0 dc 1.983 ac 1
v01 7 0 dc 1.983 ac 0
rd 5 1 23.5k
c1 0 4 .2p


*using op for desired params
.op
.options post nomod
.ac dec 5 1 10g sweep w1 100u 2u .5u
.print ft = PAR('lx7(m2)/(lx18(m2)*2*3.14)')

.END

