BEGIN L#RVSTA

//START

CHAIN IF ~Global("L#RVStart","GLOBAL",0)~ THEN L#RVSTA START.00
@0
==L#RVSTA @1
==L#RVSTA @2
DO ~SetGlobal("L#RVStart","GLOBAL",1) StartCutScene("L#RVCS01")~ EXIT
