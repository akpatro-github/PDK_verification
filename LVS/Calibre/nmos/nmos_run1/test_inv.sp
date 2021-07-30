* SPICE NETLIST
***************************************

.SUBCKT test_inv GND Vin
** N=10 EP=2 IP=0 FDC=1
M0 GND Vin GND GND nch_18_mac L=1.5e-09 W=3.2e-07 $X=910 $Y=1050 $D=0
*.CALIBRE WARNING SHORT Short circuit(s) detected by extraction in this cell. See extraction report for details.
.ENDS
***************************************
