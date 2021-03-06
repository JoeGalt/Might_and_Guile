BEGIN ~D5_CORSA~

IF ~Global("D5_FEAT","GLOBAL",1)~ THEN BEGIN d5_corsa
SAY @20009 // ~Choose a feat:~
 IF ~GlobalLT("D5_HLTHY","LOCALS",1)~ THEN REPLY @20305 GOTO d5_corsa_17
 IF ~GlobalLT("D5_TOUGH","LOCALS",1)~ THEN REPLY @20307 GOTO d5_corsa_18
 IF ~GlobalLT("D5_IFORT","LOCALS",1)~ THEN REPLY @20309 GOTO d5_corsa_61
 IF ~GlobalLT("D5_MSAVE","LOCALS",1)~ THEN REPLY @20213 GOTO d5_corsa_46
 IF ~GlobalLT("D5_PSAVE","LOCALS",1)~ THEN REPLY @20215 GOTO d5_corsa_47
 IF ~GlobalLT("D5_DTRMN","LOCALS",1)~ THEN REPLY @20219 GOTO d5_corsa_49
 IF ~GlobalLT("D5_SLIP","LOCALS",1)~ THEN REPLY @20217 GOTO d5_corsa_48
 IF ~GlobalLT("D5_EVADE","LOCALS",1)~ THEN REPLY @20223 GOTO d5_corsa_43
 IF ~GlobalLT("D5_ATACK","LOCALS",3)~ THEN REPLY @20231 GOTO d5_corsa_51
 IF ~GlobalLT("D5_CRIT","LOCALS",1)~ THEN REPLY @20243 GOTO d5_corsa_56
 IF ~Global("D5_CRIT","LOCALS",1)~ THEN REPLY @20245 GOTO d5_corsa_57
 IF ~GlobalLT("D5_DIRTY","LOCALS",1)~ THEN REPLY @20259 GOTO d5_corsa_75
 IF ~GlobalLT("D5_DSRPT","LOCALS",1)~ THEN REPLY @20257 GOTO d5_corsa_74
 IF ~GlobalLT("D5_STRID","LOCALS",1)~ THEN REPLY @2210 GOTO d5_corsa_16
 IF ~GlobalLT("D5_DODGE","LOCALS",3)~ THEN REPLY @20201 GOTO d5_corsa_41
 IF ~GlobalLT("D5_SNARE","LOCALS",1) CheckStatGT(myself,6,LEVEL)~ THEN REPLY @20203 GOTO d5_corsa_44
 IF ~GlobalLT("D5_GASTH","LOCALS",1)~ THEN REPLY @20271 GOTO d5_corsa_81
 IF ~GlobalLT("D5_FLAMW","LOCALS",1)~ THEN REPLY @20151 GOTO d5_corsa_36
 IF ~GlobalLT("D5_LUCKY","LOCALS",1)~ THEN REPLY @20303 GOTO d5_corsa_15
END

IF ~~ THEN BEGIN d5_corsa_17 // extra hp
 SAY @20306
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_HLTHY","LOCALS",1)~ DO ~ApplySpellRES("D5_RFA7",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_18 // DR
 SAY @20308
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_TOUGH","LOCALS",1)~ DO ~ApplySpellRES("D5_RFA8",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_61 // poison/disease evasion
 SAY @20310
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_IFORT","LOCALS",1)~ DO ~ApplySpellRES("D5_RFF1",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_46 // spells/wands saves
 SAY @20214
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_MSAVE","LOCALS",1)~ DO ~ApplySpellRES("D5_RFD6",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_47 // death/polymorph saves
 SAY @20216
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_PSAVE","LOCALS",1)~ DO ~ApplySpellRES("D5_RFD7",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_49 // unflagging determination
 SAY @20220
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_DTRMN","LOCALS",1)~ DO ~ApplySpellRES("D5_RFD9",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_48 // slippery mind
 SAY @20218
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_SLIP","LOCALS",1)~ DO ~ApplySpellRES("D5_RFD8",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_43 // spell evasion
 SAY @20224
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_EVADE","LOCALS",1)~ DO ~ApplySpellRES("D5_RFD3",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa
END 
IF ~~ THEN BEGIN d5_corsa_51 // melee thac0 bonus
 SAY @20232
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_ATACK","LOCALS",1)~ DO ~ApplySpellRES("D5_RFE1",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_56 // +5% crit
 SAY @20244
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_CRIT","LOCALS",1)~ DO ~ApplySpellRES("D5_RFE6",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_57 // +10% crit
 SAY @20246
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_CRIT","LOCALS",1)~ DO ~ApplySpellRES("D5_RFE7",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_75 // fighting dirty
 SAY @20260
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_DIRTY","LOCALS",1)~ DO ~ApplySpellRES("D5_RFG5",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_74 // disrupt
 SAY @20258
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_DSRPT","LOCALS",1)~ DO ~ApplySpellRES("D5_RFG4",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_16 // quickstride
 SAY @20110
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_STRID","LOCALS",1)~ DO ~ApplySpellRES("D5_RFA6",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_41 // AC bonus
 SAY @20202
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_DODGE","LOCALS",1)~ DO ~ApplySpellRES("D5_RFD1",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_44 // missile snaring
 SAY @20204
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_SNARE","LOCALS",1)~ DO ~ApplySpellRES("D5_RFD4",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_81 // grease/smoke
 SAY @20272
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_GASTH","LOCALS",1)~ DO ~ApplySpellRES("D5_RFH1",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_36 // flaming weapon
 SAY @20152
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_FLAMW","LOCALS",1)~ DO ~ApplySpellRES("D5_RFC6",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
IF ~~ THEN BEGIN d5_corsa_15 // luck bonus
 SAY @20304
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_LUCKY","LOCALS",1)~ DO ~ApplySpellRES("D5_RFA5",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_corsa 
END 
