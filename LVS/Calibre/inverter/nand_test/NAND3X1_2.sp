* SPICE NETLIST
***************************************

.SUBCKT M1_OD_CDNS_626853555942
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT NAND3X1_2 VDD out GND A B C
** N=18 EP=6 IP=2 FDC=6
M0 7 A out GND nch_18_mac L=1.5e-08 W=6e-08 $X=1460 $Y=1200 $D=1
M1 8 B 7 GND nch_18_mac L=1.5e-08 W=6e-08 $X=1790 $Y=1200 $D=1
M2 GND C 8 GND nch_18_mac L=1.5e-08 W=6e-08 $X=2120 $Y=1200 $D=1
M3 VDD A out VDD pch_18_mac L=1.5e-08 W=6e-08 $X=1460 $Y=2550 $D=0
M4 out B VDD VDD pch_18_mac L=1.5e-08 W=6e-08 $X=1790 $Y=2550 $D=0
M5 VDD C out VDD pch_18_mac L=1.5e-08 W=6e-08 $X=2120 $Y=2550 $D=0
.ENDS
***************************************
