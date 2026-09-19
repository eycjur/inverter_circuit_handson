v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 60 -20 60 -10 {lab=Q}
N 60 -10 60 -0 {lab=Q}
N 60 0 60 10 {lab=Q}
N 60 10 60 20 {lab=Q}
N 60 20 60 30 {lab=Q}
N 10 -50 20 -50 {lab=A}
N 0 -50 10 -50 {lab=A}
N -10 -50 0 -50 {lab=A}
N -10 -50 -10 -40 {lab=A}
N -10 20 -10 30 {lab=A}
N -10 30 -10 40 {lab=A}
N -10 40 -10 50 {lab=A}
N -10 50 -10 60 {lab=A}
N 10 60 20 60 {lab=A}
N 60 10 120 10 {lab=Q}
N -10 -40 -10 20 {lab=A}
N -60 10 -30 10 {lab=A}
N -30 10 -20 10 {lab=A}
N -20 10 -10 10 {lab=A}
N -10 60 10 60 {lab=A}
N 60 -120 60 -80 {lab=VDD}
N 60 90 60 140 {lab=VSS}
N 60 -50 80 -50 {lab=VDD}
N 80 -90 80 -50 {lab=VDD}
N 60 -90 80 -90 {lab=VDD}
N 60 60 80 60 {lab=VSS}
N 80 60 80 110 {lab=VSS}
N 60 110 80 110 {lab=VSS}
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
C {devices/ipin.sym} -60 10 0 0 {name=p1 lab=A}
C {devices/opin.sym} 120 10 0 0 {name=p2 lab=Q}
C {devices/iopin.sym} 60 -120 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 60 140 0 0 {name=p4 lab=VSS}
