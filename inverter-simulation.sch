v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 60 -20 60 -10 {lab=vout}
N 60 -10 60 -0 {lab=vout}
N 60 0 60 10 {lab=vout}
N 60 10 60 20 {lab=vout}
N 60 20 60 30 {lab=vout}
N 10 -50 20 -50 {lab=vin}
N 0 -50 10 -50 {lab=vin}
N -10 -50 0 -50 {lab=vin}
N -10 -50 -10 -40 {lab=vin}
N -10 20 -10 30 {lab=vin}
N -10 30 -10 40 {lab=vin}
N -10 40 -10 50 {lab=vin}
N -10 50 -10 60 {lab=vin}
N 10 60 20 60 {lab=vin}
N 60 10 120 10 {lab=vout}
N -10 -40 -10 20 {lab=vin}
N -60 10 -30 10 {lab=vin}
N -30 10 -20 10 {lab=vin}
N -20 10 -10 10 {lab=vin}
N -10 60 10 60 {lab=vin}
N 60 -120 60 -80 {lab=#net1}
N 60 90 60 140 {lab=GND}
N 60 -50 80 -50 {lab=#net1}
N 80 -90 80 -50 {lab=#net1}
N 60 -90 80 -90 {lab=#net1}
N 60 60 80 60 {lab=GND}
N 80 60 80 110 {lab=GND}
N 60 110 80 110 {lab=GND}
N -80 10 -60 10 {lab=vin}
N 120 10 170 10 {lab=vout}
N 60 140 60 180 {lab=GND}
N 60 -200 60 -180 {lab=VDD}
N 140 70 170 10 {lab=vout}
N 140 130 140 180 {lab=GND}
N -280 140 -280 160 {lab=0}
N -280 160 -280 170 {lab=0}
N -220 140 -220 170 {lab=0}
N -280 40 -280 80 {lab=VDD}
N -220 40 -220 80 {lab=vin}
C {TR-1umLIB/MP.sym} 20 -50 0 0 {name=XM1
model=PMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MN.sym} 20 60 0 0 {name=XM2
model=NMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/code.sym} -270 -140 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 220 -100 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
dc vin 0 5.0 0.01
plot vout vin
plot i(vd)
wrdata ~/inverter_tb.txt v(vout)
write inverter_tb.raw
.endrc"}
C {devices/code_shown.sym} 220 150 0 0 {name=measure only_toplevel=false value=".measure dc Vinv when v(vout)=2.5"}
C {devices/vdd.sym} 60 -200 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 60 180 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 140 180 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -80 10 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 170 10 0 0 {name=p2 sig_type=std_logic lab=vout}
C {devices/vsource.sym} -220 110 0 0 {name=Vin value=5.0 savecurrent=false}
C {devices/vsource.sym} -280 110 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/ammeter.sym} 60 -150 0 0 {name=Vd savecurrent=true spice_ignore=0}
C {devices/capa.sym} 140 100 0 0 {name=Cload
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -220 40 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/vdd.sym} -280 40 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -280 170 0 0 {name=l5 lab=0}
C {devices/gnd.sym} -220 170 0 0 {name=l6 lab=0}
