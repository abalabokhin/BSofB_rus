BEGIN L#RVBNS

CHAIN IF ~OR(2) Global("L#RVBones","GLOBAL",0) Global("L#RVBones","GLOBAL",1)~ THEN L#RVBNS BONES.00
@0
END
IF~~THEN REPLY @1 EXTERN L#RVBNS BONES.01
IF~~THEN REPLY @2 EXTERN L#RVBNS BONES.02
IF~~THEN REPLY @3 EXTERN L#RVBNS BONES.04
IF~~THEN REPLY @4 EXIT

CHAIN L#RVBNS BONES.01
@5
END
IF~~THEN REPLY @2 EXTERN L#RVBNS BONES.02
IF~~THEN REPLY @6 EXTERN L#RVBNS BONES.03
IF~~THEN REPLY @3 EXTERN L#RVBNS BONES.04
IF~~THEN REPLY @4 EXIT

CHAIN L#RVBNS BONES.02
@7
==L#RVBNS @8
END
IF~~THEN REPLY @1 EXTERN L#RVBNS BONES.01
IF~~THEN REPLY @6 EXTERN L#RVBNS BONES.03
IF~~THEN REPLY @3 EXTERN L#RVBNS BONES.04
IF~~THEN REPLY @4 EXIT

CHAIN L#RVBNS BONES.03
@9
END
IF~~THEN REPLY @1 EXTERN L#RVBNS BONES.01
IF~~THEN REPLY @2 EXTERN L#RVBNS BONES.02
IF~~THEN REPLY @6 EXTERN L#RVBNS BONES.03
IF~~THEN REPLY @3 EXTERN L#RVBNS BONES.04
IF~~THEN REPLY @4 EXIT

CHAIN L#RVBNS BONES.04
@10
==L#RVBNS @11
DO ~SetGlobal("L#RVBones","GLOBAL",1)~ EXIT

