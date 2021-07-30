* SPICE NETLIST
***************************************

.SUBCKT rupolym PLUS MINUS
.ENDS
***************************************
.SUBCKT test_resistor agnd avdd
** N=4 EP=2 IP=0 FDC=1
X0 agnd avdd rupolym l=1e-05 w=2e-06 $X=5180 $Y=3600 $D=0
.ENDS
***************************************
