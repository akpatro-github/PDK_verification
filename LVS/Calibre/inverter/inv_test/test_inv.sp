* SPICE NETLIST
***************************************

.SUBCKT test_inv GND VDD Vout Vin
** N=14 EP=4 IP=0 FDC=2
M0 Vout Vin GND GND nch_18_mac L=1.5e-07 W=3.2e-07 $X=910 $Y=1050 $D=1
M1 Vout Vin VDD VDD pch_18_mac L=1.5e-07 W=3.2e-07 $X=910 $Y=2850 $D=0
.ENDS
***************************************
