BEGIN L#RVKING

//NORMAL

CHAIN IF ~Global("L#RVKingIsDead","GLOBAL",0)~ THEN L#RVKING KING-N-00
@0
END
IF~~THEN REPLY @1 EXTERN L#RVKING KING-N-01
IF~~THEN REPLY @2 DO ~TakePartyItem("L#RVPOI") DestroyItem("L#RVPOI")~ EXTERN L#RVKING KING-N-02
IF~~THEN REPLY @3 EXIT

CHAIN L#RVKING KING-N-01
@4
END
IF~~THEN REPLY @2 DO ~TakePartyItem("L#RVPOI") DestroyItem("L#RVPOI")~ EXTERN L#RVKING KING-N-02
IF~~THEN REPLY @3 EXIT

CHAIN L#RVKING KING-N-02
@5
DO ~AddExperienceParty(10000) SetGlobal("L#RVKingIsDead","GLOBAL",1) CreateVisualEffectObject("Kingishere",Player1) TriggerActivation("Kingishere",FALSE) DestroySelf()~ EXIT