BEGIN L#RVRAVE

//AFTER WAKE-UP

CHAIN IF ~Global("L#RVRavenEncounter","GLOBAL",1)~ THEN L#RVRAVE RAVE.01.00
@0
END
IF~~THEN REPLY @1 EXTERN L#RVRAVE RAVE.01.01
IF~~THEN REPLY @2 EXTERN L#RVRAVE RAVE.01.02

CHAIN L#RVRAVE RAVE.01.01
@3
EXTERN L#RVRAVE RAVE.01.03

CHAIN L#RVRAVE RAVE.01.02
@4
EXTERN L#RVRAVE RAVE.01.03

CHAIN L#RVRAVE RAVE.01.03
@5
END
IF~~THEN REPLY @6 EXTERN L#RVRAVE RAVE.01.04
IF~~THEN REPLY @7 EXTERN L#RVRAVE RAVE.01.04

CHAIN L#RVRAVE RAVE.01.04
@8
==L#RVRAVE @9
END
IF~~THEN REPLY @10 EXTERN L#RVRAVE RAVE.01.05
IF~~THEN REPLY @11 EXTERN L#RVRAVE RAVE.01.06
IF~~THEN REPLY @12 EXTERN L#RVRAVE RAVE.01.07

CHAIN L#RVRAVE RAVE.01.05
@13
==L#RVRAVE @14
==L#RVRAVE @15
EXTERN L#RVRAVE RAVE.01.08

CHAIN L#RVRAVE RAVE.01.06
@16
EXTERN L#RVRAVE RAVE.01.08

CHAIN L#RVRAVE RAVE.01.07
@17
==L#RVRAVE @18
EXTERN L#RVRAVE RAVE.01.08

CHAIN L#RVRAVE RAVE.01.08
@19
END
IF~~THEN REPLY @20 EXTERN L#RVRAVE RAVE.01.09
IF~~THEN REPLY @21 EXTERN L#RVRAVE RAVE.01.02x

CHAIN L#RVRAVE RAVE.01.09
@22
==L#RVRAVE @23
==L#RVRAVE @24
END
IF~~THEN REPLY @25 DO ~SetGlobal("L#RVRavenEncounter","GLOBAL",2) DestroySelf()~ EXIT
IF~OR(2) CheckStatGT(Player1,13,CHR) CheckStatGT(Player1,14,INT)~THEN REPLY @26 EXTERN L#RVRAVE RAVE.01.10

CHAIN L#RVRAVE RAVE.01.02x
@27
DO ~SetGlobal("L#RVRavenEncounter","GLOBAL",2) DestroySelf()~ EXIT

CHAIN L#RVRAVE RAVE.01.10
@28
==L#RVRAVE @29
==L#RVRAVE @30
DO ~SetGlobal("L#RVRavenEncounter","GLOBAL",3) DestroySelf()~ EXIT