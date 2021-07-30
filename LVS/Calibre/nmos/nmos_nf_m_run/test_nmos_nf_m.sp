* SPICE NETLIST
***************************************

.SUBCKT M2_M1_CDNS_627315428491
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT test_nmos_nf_m GND Vin VDD
** N=11 EP=3 IP=6 FDC=10
M0 Vin VDD GND GND nch_18_mac L=1.5e-08 W=3.2e-08 nf=1 $X=1060 $Y=-3655 $D=0
M1 Vin VDD GND GND nch_18_mac L=1.5e-08 W=3.2e-08 nf=1 $X=1060 $Y=-1975 $D=0
M2 GND VDD Vin GND nch_18_mac L=1.5e-08 W=3.2e-08 nf=1 $X=1390 $Y=-3655 $D=0
M3 GND VDD Vin GND nch_18_mac L=1.5e-08 W=3.2e-08 nf=1 $X=1390 $Y=-1975 $D=0
M4 Vin VDD GND GND nch_18_mac L=1.5e-08 W=3.2e-08 nf=1 $X=1720 $Y=-3655 $D=0
M5 Vin VDD GND GND nch_18_mac L=1.5e-08 W=3.2e-08 nf=1 $X=1720 $Y=-1975 $D=0
M6 GND VDD Vin GND nch_18_mac L=1.5e-08 W=3.2e-08 nf=1 $X=2050 $Y=-3655 $D=0
M7 GND VDD Vin GND nch_18_mac L=1.5e-08 W=3.2e-08 nf=1 $X=2050 $Y=-1975 $D=0
M8 Vin VDD GND GND nch_18_mac L=1.5e-08 W=3.2e-08 nf=1 $X=2380 $Y=-3655 $D=0
M9 Vin VDD GND GND nch_18_mac L=1.5e-08 W=3.2e-08 nf=1 $X=2380 $Y=-1975 $D=0
.ENDS
***************************************
