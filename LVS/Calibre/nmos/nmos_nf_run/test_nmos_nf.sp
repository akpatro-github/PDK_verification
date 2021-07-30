* SPICE NETLIST
***************************************

.SUBCKT M2_M1_CDNS_627622349310
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT test_nmos_nf GND Vp VDD
** N=7 EP=3 IP=6 FDC=5
M0 Vp VDD GND GND nch_18_mac L=1.5e-08 W=3.2e-08 AD=2.88e-16 AS=4.96e-16 nf=1 $X=1100 $Y=705 $D=0
M1 GND VDD Vp GND nch_18_mac L=1.5e-08 W=3.2e-08 AD=2.88e-16 AS=5.76e-16 nf=1 $X=1430 $Y=705 $D=0
M2 Vp VDD GND GND nch_18_mac L=1.5e-08 W=3.2e-08 AD=2.88e-16 AS=5.76e-16 nf=1 $X=1760 $Y=705 $D=0
M3 GND VDD Vp GND nch_18_mac L=1.5e-08 W=3.2e-08 AD=2.88e-16 AS=5.76e-16 nf=1 $X=2090 $Y=705 $D=0
M4 Vp VDD GND GND nch_18_mac L=1.5e-08 W=3.2e-08 AD=4.96e-16 AS=5.76e-16 nf=1 $X=2420 $Y=705 $D=0
.ENDS
***************************************
