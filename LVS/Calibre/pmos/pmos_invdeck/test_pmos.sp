* SPICE NETLIST
***************************************

.SUBCKT test_pmos VDD Vin
** N=8 EP=2 IP=0 FDC=1
M0 VDD Vin VDD VDD pch_18_mac L=1.5e-08 W=3.2e-08 $X=1100 $Y=1400 $D=0
*.CALIBRE WARNING SHORT Short circuit(s) detected by extraction in this cell. See extraction report for details.
.ENDS
***************************************
