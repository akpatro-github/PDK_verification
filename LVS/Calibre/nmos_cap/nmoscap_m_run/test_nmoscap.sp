* SPICE NETLIST
***************************************

.SUBCKT nmoscap PLUS MINUS
.ENDS
***************************************
.SUBCKT nmoscap_CDNS_627452679490 1 2
** N=4 EP=2 IP=0 FDC=1
X0 2 1 nmoscap lr=8e-07 wr=2e-06 $X=0 $Y=30 $D=0
.ENDS
***************************************
.SUBCKT test_nmoscap Vg Vsd
** N=2 EP=2 IP=6 FDC=3
X0 Vsd Vg nmoscap_CDNS_627452679490 $T=780 -3730 0 0 $X=500 $Y=-3860
X1 Vsd Vg nmoscap_CDNS_627452679490 $T=3140 -3730 0 0 $X=2860 $Y=-3860
X2 Vsd Vg nmoscap_CDNS_627452679490 $T=5500 -3730 0 0 $X=5220 $Y=-3860
.ENDS
***************************************
