* SPICE NETLIST
***************************************

.SUBCKT nmoscap PLUS MINUS
.ENDS
***************************************
.SUBCKT test_cap Vsd Vg
** N=4 EP=2 IP=0 FDC=1
X0 Vg Vsd nmoscap lr=4e-07 wr=1e-06 $X=800 $Y=690 $D=0
.ENDS
***************************************
