BEGIN L#RVSTON

//DIALOGUE

CHAIN IF ~Global("L#RVStatueTalk","GLOBAL",0)~ THEN L#RVSTON 00.00
@0
==L#RVSTON @1
END
IF~~THEN REPLY @2 EXTERN L#RVSTON 00.01
IF~~THEN REPLY @3 EXTERN L#RVSTON 00.01
IF~~THEN REPLY @4 EXTERN L#RVSTON 00.02

CHAIN L#RVSTON 00.01
@5
==L#RVSTON @6
==L#RVSTON @7
==L#RVSTON @8
==L#RVSTON @9
END
IF~~THEN REPLY @10 DO ~GiveItemCreate("potn42",Player1,2,0,0) GiveItemCreate("gberry",Player1,5,0,0)~ EXTERN L#RVSTON 00.03
IF~~THEN REPLY @11 EXTERN L#RVSTON 00.02

CHAIN L#RVSTON 00.03
@12
==L#RVSTON @13
==L#RVSTON @14
DO ~AddExperienceParty(6000) SetGlobal("L#RVStatueTalk","GLOBAL",1) EscapeArea()~ EXIT

CHAIN L#RVSTON 00.02
@15
DO ~AddExperienceParty(6000) SetGlobal("L#RVStatueTalk","GLOBAL",1) EscapeArea()~ EXIT

