% Model script
function dydt = Model(t, y)
%% Units of the model
% time = min
% quantity = mmol
% volume = L
%% Section 1: Parameters (Fixed)
global LAT KfR1 c c2 AADT AAHL ABCdG TEMP R ATP ADP c3 c4 COX2DT COX2HL
KfR1= 0.1;
LAT=0;
AAHL=420; %AA Half life
AADT=420; %AA Doubling Time
ABCdG=-50000; %Gibbs free energy of ABC transporter
TEMP=310; %Kelvin
R=8.314;
ATP=0.00274;
ADP=0.00134;
COX2DT =180;
COX2HL=1;

%% Section 2: Metabolite number
% BAA = y(1)
% AA = y(2)
% PGH2 = y(3)
% PGF2A = y(4)
% TXA2 = y(5)
% PGI2 = y(6)
% TXB2 = y(7)
% 6-Keto-PGF1A = y(8)
% PGJ2 = y(9)
% PGD2 = y(10)
% 15-DEOXY-PGJ2 = y(11)
% PGE2 = y(12)
% 5-HPETE = y(13)
% 5-HETE =y(14)
% LTA4 = y(15)
% 5-OXO-ETE = y(16)
% LTB4 = y(17)
% LTC4 = y(18)
% 15-HPETE = y(19)
% 15-HETE = y(20)
% 12-HPETE = y(21)
% 12-HETE = y(22)
% exPGF2A = y(23)
% exTXB2 = y(24)
% ex6-KETO-PGF1A = y(25)
% exPGE2 = y(26)
% ex15-DEOXY-PGJ2 = y(27)
% ex5-OXO-ETE = y(28)
% ex15-HETE =y(29)
% exLTB4 = y(30)
% exLTC4 = y(31)
% exHETE12 = y(32)
% exTXA2 = y(33)

% exPGI2 = y(34)
% exPGH2 = y(35)
% exPGD2 = y(36)
% exPGJ2 = y(37)
% ex12-HPETE = y(38)
% ex15-HPETE = y(39)
% ex5-HPETE = y(40)
% ex5-HETE = y(41)
% exLTA4 = y(42)
% exAA = y(43)
% 15-KETO-PGE2 = y(44)
% ex15-KETO-PGE2 = y(45)
% 13,14-DIHYDRO-15-KETO-PGE2 = y(46)
% ex13,14-DIHYDRO-15-KETO-PGE2 = y(47)
% COX2 = y(48)
% Mischellanous species = y(49)


%% Section 3: Assignment of parameters as global values
%INTRACELLULAR REACTION Parameters
global KmsR1 KmpR1 PLA2Kcat KeqR1 %R1 Parameters
global KmsR2 KmpR2 COX2Kcat KeqR2 %R2 Parameters
global KmsR3 KmpR3 PGFSKcat KeqR3 %R3 Parameters
global KmsR4 KmpR4 TXASKcat KeqR4 %R4 Parameters
global KmsR5 KmpR5 PGISKcat KeqR5 %R5 Parameters
global KfR6 KrR6 %R6 Parameters
global KfR7 KrR7 %R7 Parameters
global KfR8 KrR8 %R8 Parameters
global KfR9 KrR9 %R9 Parameters
global KmsR10 KmpR10 PGESKcat KeqR10 %R10 Parameters
global KmsR11 KmpR11 LOX5Kcat KeqR11 %R11 Parameters
global KmsR12 KmpR12 PHGPxKcatR12 KeqR12 %R12 Parameters
global KmsR13 KmpR13 LOX5FLAPKcat KeqR13 %R13 Parameters
global KmsR14 KmpR14 HEDH5Kcat KeqR14 %R14 Parameters
global KmsR15 KmpR15 LTA4HKcat KeqR15 %R15 Parameters
global KmsR16 KmpR16 LTC4SKcat KeqR16 %R16 Parameters
global KmsR17 KmpR17 LOX15Kcat KeqR17 %R17 Parameters
global KmsR19 KmpR19 LOX12Kcat KeqR19 %R19 Parameters
global KmsR21 KmpR21 PGDSKcat KeqR21 %R21 Parameters
global KmsR65 KmpR65 COX1Kcat KeqR65 %R65 Parameters
global KmsR66 KmpR66 PGDH15Kcat KeqR66 %R66 Parameters
global KmsR69 KmpR69 PTGR2Kcat KeqR69 %R69 Parameters
global KmsR100 KmpR100 LATKcat KeqR100 %R100 Parameters
% Other reaction parameters
global ABCKcat ABCKmR22 ABCKmR23 ABCKmR24 ABCKmR25 ABCKmR26
ABCKmR27 ABCKmR28 ABCKmR29 ABCKmR30 ABCKmR31 ABCKmR32
ABCKmR33 ABCKmR34 ABCKmR35 ABCKmR36 ABCKmR37 ABCKmR38
ABCKmR39 ABCKmR40 ABCKmR41 ABCKmR42 ABCKmR67 ABCKmR70
PGTKcat PGTKmR101 PGTKmR102 PGTKmR103 PGTKmR104 PGTKmR105
PGTKmR106 PGTKmR107 PGTKmR108 PGTKmR109 PGTKmR110 PGTKmR111
KfR44 KfR45 KfR46 KfR47 KfR48 KfR49 KfR50 KfR51 KfR52 KfR53 KfR54 KfR55
KfR56 KfR57 KfR58 KfR59 KfR60 KfR61 KfR62 KfR63 KfR64 KfR68 KfR71 ABCVmax
ABCKeq PGDH15 ABC COX1 HEDH5 LOX12 LOX15 LOX5 LTA4H LTC4S
PGDS PGES PGFS PGIS PGT PHGPX PLA2 PTGR2 TXAS
%% Section 4: Reaction rate laws
%R1(PLA2) - Turned off
%BAA y(1) <-> AA y(2)
% r1=(PLA2Kcat*PLA2*(y(1)-(y(2)/KeqR1)))/((KmsR1*(1+(y(2)/KmpR1)))+y(1));
r1=(KfR1*y(1));
%R2(COX2)y(48)
%AA y(2) <-> PGH2 y(3)
r2=(COX2Kcat*y(48)*(y(2)-(y(3)/KeqR2)))/((KmsR2*(1+(y(3)/KmpR2)))+y(2));
%R3(PGFS)
% PGH2 y(3) <-> PGF2A y(4)
r3= (PGFSKcat*PGFS*(y(3) -(y(4)/KeqR3)))/((KmsR3*(1+(y(4)/KmpR3)))+y(3));
%R4(TXAS)
% PGH2 y(3)<-> TXA2 y(5)
r4= (TXASKcat*TXAS*(y(3) -(y(5)/KeqR4)))/((KmsR4*(1+(y(5)/KmpR4)))+y(3));
%R5(PGIS)
% PGH2 y(3)<-> PGI2 y(6)
r5= (PGISKcat*PGIS*(y(3) -(y(6)/KeqR5)))/((KmsR5*(1+(y(6)/KmpR5)))+y(3));
% R6
% TXA2 y(5) <-> TXB2 y(7)
r6=(KfR6*y(5))-(KrR6*y(7));
% R7
% PGI2 y(6)<-> 6-Keto-PGF1A y(8)
r7= (KfR7*y(6))-(KrR7*y(8));
% R8
% PGD2 y(10) <-> PGJ2 y(9)
r8= (KfR8*y(10))-(KrR8*y(9));
% R9
% PGJ2 y(9)<-> 15-DEOXY-PGJ2 y(11)
r9= (KfR9*y(9))-(KrR9*y(11));
%R10 (PGES)
% PGH2 y(3)<-> PGE2 y(12)
r10= (PGESKcat*PGES*(y(3)-(y(12)/KeqR10)))/((KmsR10*(1+(y(12)/KmpR10)))+y(3));
% R11 (LOX5)
% AA y(2)<-> 5-HPETE y(13)
r11= (LOX5Kcat*LOX5*(y(2) -(y(13)/KeqR11)))/((KmsR11*(1+(y(13)/KmpR11)))+y(2));
% R12 (PHGPX)
% 5-HPETE y(13)<-> 5-HETE y(14)
r12= (PHGPxKcatR12*PHGPX*(y(13) -(y(14)/KeqR12)))/((KmsR12*(1+(y(14)/KmpR12)))+y(13));
% R13 (LOX5FLAP)
% 5-HPETE y(13) <-> LTA4 y(15)
r13= (LOX5FLAPKcat*LOX5*(y(13)-(y(15)/KeqR13)))/((KmsR13*(1+(y(15)/KmpR13)))+y(13));
% R14 (HEDH5)
% 5-HETE y(14) <-> 5-OXO-ETE y(16)
r14= (HEDH5Kcat*HEDH5*(y(14)-(y(16)/KeqR14)))/((KmsR14*(1+(y(16)/KmpR14)))+y(14));
% R15 (LTA4H)
% LTA4 y(15) <-> LTB4 y(17)
r15= (LTA4HKcat*LTA4H*(y(15) -(y(17)/KeqR15)))/((KmsR15*(1+(y(17)/KmpR15)))+y(15));
% R16 (LTC4S)
% LTA4 y(15)<-> LTC4 y(18)
r16= (LTC4SKcat*LTC4S*(y(15) -(y(18)/KeqR16)))/((KmsR16*(1+(y(18)/KmpR16)))+y(15));
% R17 (LOX15)
% AA y(2)<-> 15-HPETE y(19)
r17= (LOX15Kcat*LOX15*(y(2) -(y(19)/KeqR17)))/((KmsR17*(1+(y(19)/KmpR17)))+y(2));
% R18 (PHGPX)
% 15-HPETE y(19)<-> 15-HETE y(20)
r18= (PHGPxKcatR12*PHGPX*(y(19) -(y(20)/KeqR12)))/((KmsR12*(1+(y(20)/KmpR12)))+y(19));
% R19 (LOX12)
% AA y(2)<-> 12-HPETE y(21)
r19= (LOX12Kcat*LOX12*(y(2) -(y(21)/KeqR19)))/((KmsR19*(1+(y(21)/KmpR19)))+y(2));
% R20 (PHGPX)
% 12-HPETE y(21)<-> 12-HETE y(22)
r20= (PHGPxKcatR12*PHGPX*(y(21) -(y(22)/KeqR12)))/((KmsR12*(1+(y(22)/KmpR12)))+y(21));
% R21 (PGDS)
% PGH2 y(3)<-> PGD2 y(10)
r21= (PGDSKcat*PGDS*(y(3) -(y(10)/KeqR21)))/((KmsR21*(1+(y(10)/KmpR21)))+y(3));
% R22 (ABC)
% PGF2A y(4) <-> exPGF2A y(23)
r22= ABC*ABCKcat*((y(4)/ABCKmR22)*(1-((y(23)/(y(4)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(4)/ABCKmR22)+(y(23)/ABCKmR22)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R23 (ABC)
% TXB2 y(7)<-> exTXB2 y(24)
r23= ABC*ABCKcat*((y(7)/ABCKmR23)*(1-((y(24)/(y(7)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(7)/ABCKmR23)+(y(24)/ABCKmR23)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R24 (ABC)
% 6-KETO-PGF1A y(8)<-> ex6-KETO-PGF1A y(25)
r24= ABC*ABCKcat*((y(8)/ABCKmR24)*(1-((y(25)/(y(8)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(8)/ABCKmR24)+(y(25)/ABCKmR24)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R25 (ABC)
% PGE2 y(12)<-> exPGE2 y(26)
r25= ABC*ABCKcat*((y(12)/ABCKmR25)*(1-((y(26)/(y(12)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(12)/ABCKmR25)+(y(26)/ABCKmR25)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% r25=(ABCVmax*(y(12) -(y(26)/ABCKeq)))/((ABCKmR25*(1+(y(26)/ABCKmR25)))+y(12));
% R26 (ABC)
% 15-DEOXY-PGJ2 y(11)<-> ex15-DEOXY-PGJ2 y(27)
r26= ABC*ABCKcat*((y(11)/ABCKmR26)*(1-((y(27)/(y(11)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(11)/ABCKmR26)+(y(27)/ABCKmR26)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(
y(46)/ABCKmR70)));
% R27 (ABC)
% 5-Oxo-ETE y(16)<-> ex5-OXO-ETE y(28)
r27= ABC*ABCKcat*((y(16)/ABCKmR27)*(1-((y(28)/(y(16)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(16)/ABCKmR27)+(y(28)/ABCKmR27)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R28 (ABC)
% 15-HETE y(20)<-> ex15-HETE y(29)
r28= ABC*ABCKcat*((y(20)/ABCKmR28)*(1-((y(29)/(y(20)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(20)/ABCKmR28)+(y(29)/ABCKmR28)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R29 (ABC)
% LTB4 y(17)<-> exLTB4 y(30)
r29= ABC*ABCKcat*((y(17)/ABCKmR29)*(1-((y(30)/(y(17)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(17)/ABCKmR29)+(y(30)/ABCKmR29)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R30 (ABC)
% LTC4 y(18)<-> exLTC4 y(31)
r30= ABC*ABCKcat*((y(18)/ABCKmR30)*(1-((y(31)/(y(18)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(18)/ABCKmR30)+(y(31)/ABCKmR30)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R31 (ABC)
% 12-HETE y(22)<-> ex12-HETE y(32)
r31= ABC*ABCKcat*((y(22)/ABCKmR31)*(1-((y(32)/(y(22)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(22)/ABCKmR31)+(y(32)/ABCKmR31)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R32 (ABC)
% TXA2 y(5)<-> exTXA2 y(33)
r32= ABC*ABCKcat*((y(5)/ABCKmR32)*(1-((y(33)/(y(5)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(5)/ABCKmR32)+(y(33)/ABCKmR32)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R33 (ABC)
% PGI2 y(6)<-> exPGI2 y(34)
r33= ABC*ABCKcat*((y(6)/ABCKmR33)*(1-((y(34)/(y(6)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(6)/ABCKmR33)+(y(34)/ABCKmR33)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R34 (ABC)
% PGH2 y(3)<-> exPGH2 y(35)
r34= ABC*ABCKcat*((y(3)/ABCKmR34)*(1-((y(35)/(y(3)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(3)/ABCKmR34)+(y(35)/ABCKmR34)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R35 (ABC)
% PGD2 y(10)<-> exPGD2 y(36)
r35= ABC*ABCKcat*((y(10)/ABCKmR35)*(1-((y(36)/(y(10)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(10)/ABCKmR35)+(y(36)/ABCKmR35)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R36 (ABC)
% PGJ2 y(9)<-> exPGJ2 y(37)
r36= ABC*ABCKcat*((y(9)/ABCKmR36)*(1-((y(37)/(y(9)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(9)/ABCKmR36)+(y(37)/ABCKmR36)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R37 (ABC)
% 12-HPETE y(21) <-> ex12-HPETE y(38)
r37= ABC*ABCKcat*((y(21)/ABCKmR37)*(1-((y(38)/(y(21)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(21)/ABCKmR37)+(y(38)/ABCKmR37)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R38 (ABC)
% 15-HPETE y(19) <-> ex15-HPETE y(39)
r38= ABC*ABCKcat*((y(19)/ABCKmR38)*(1-((y(39)/(y(19)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(19)/ABCKmR38)+(y(39)/ABCKmR38)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R39 (ABC)
% 5-HPETE y(13)<-> ex5-HPETE y(40)
r39= ABC*ABCKcat*((y(13)/ABCKmR39)*(1-((y(40)/(y(13)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(13)/ABCKmR39)+(y(40)/ABCKmR39)+(y(2)/ABCKmR42)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R40 (ABC)
% 5-HETE y(14)<-> ex5-HETE y(41)
r40= ABC*ABCKcat*((y(14)/ABCKmR40)*(1-((y(41)/(y(14)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(14)/ABCKmR40)+(y(41)/ABCKmR40)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R41 (ABC)
% LTA4 y(15) <-> exLTA4 y(42)
r41= ABC*ABCKcat*((y(15)/ABCKmR41)*(1-((y(42)/(y(15)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(15)/ABCKmR41)+(y(42)/ABCKmR41)+(y(2)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R42 (ABC)
% AA y(2)<-> exAA y(43)
r42 = ABC*ABCKcat*((y(2)/ABCKmR42)*(1-((y(43)/(y(2)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(2)/ABCKmR42)+(y(43)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% NO R43
% R44
% exPGF2A y(23)-> Mischellanous species
r44 = KfR44*y(23);
% R45
% exTXB2 y(24)-> Mischellanous species
r45= KfR45*y(24);
% R46
% exTXA2 y(33)-> Mischellanous species
r46= KfR46*y(33);
% R47
% ex6-KETO-PGF1A y(25)-> Mischellanous species
r47= KfR47*y(25);
% R48
% exPGI2 y(34)-> Mischellanous species
r48= KfR48*y(34);
% R49
% exPGE2 y(26)-> Mischellanous species
r49= KfR49*y(26);
% R50
% ex15-DEOXY-PGJ2 y(27)-> Mischellanous species
r50= KfR50*y(27);
% R51
% exPGJ2 y(37)-> Mischellanous species
r51= KfR51* y(37);
% R52
% exPGD2 y(36)-> Mischellanous species
r52= KfR52*y(36);
% R53
% exPGH2 y(35)-> Mischellanous species
r53= KfR53*y(35);
% R54
% ex-5-OXO-ETE y(28)-> Mischellanous species
r54= KfR54*y(28);
% R55
% ex5-HETE y(41)-> Mischellanous species
r55= KfR55*y(41);
% R56
% exLTB4 y(30)-> Mischellanous species
r56= KfR56*y(30);
% R57
% exLTC4 y(31)-> Mischellanous species
r57= KfR57*y(31);
% R58
% exLTA4 y(42)-> Mischellanous species
r58= KfR58*y(42);
% R59
% ex5-HPETE y(40)-> Mischellanous species
r59 = KfR59*y(40);
% R60
% ex15-HETE y(29)-> Mischellanous species
r60= KfR60*y(29);
% R61
% ex15-HPETE y(39)-> Mischellanous species
r61= KfR61*y(39);
% R62
% ex12-HETE y(32)-> Mischellanous species
r62= KfR62*y(32);
% R63
% ex12-HPETE y(38)-> Mischellanous species
r63= KfR63*y(38);
% R64
% exAA y(43)-> Mischellanous species
r64= KfR64*y(43);
% R65
% AA y(2)<-> PGH2 y(3) (COX1)
r65=(COX1Kcat*COX1*(y(2)-(y(3)/KeqR65)))/((KmsR65*(1+(y(3)/KmpR65)))+y(2));
% R66 (PGDH15)
% PGE2 y(12)<-> 15-KETO-PGE2 y(44)
r66= (PGDH15Kcat*PGDH15*(y(12) -(y(44)/KeqR66)))/((KmsR66*(1+(y(44)/KmpR66)))+y(12));
% R67 (ABC)
% 15-KETO-PGE2 y(44) <-> ex15-KETO-PGE2 y(45)
r67= ABC*ABCKcat*((y(44)/ABCKmR67)*(1-((y(45)/(y(44)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(44)/ABCKmR67)+(y(45)/ABCKmR67)+(y(21)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)+(y(46)/ABCKmR70)));
% R68
% ex15-KETO-PGE2 y(45)-> Mischellanous species
r68= KfR68*y(45);
% R69 (PTGR2)
% 15-KETO-PGE2 y(44) <-> 13,14-DIHYDRO-15-KETO-PGE2 y(46)
r69= (PTGR2Kcat*PTGR2*(y(44)-(y(46)/KeqR69)))/((KmsR69*(1+(y(46)/KmpR69)))+y(44));
% R70 (ABC)
% 13,14-DIHYDRO-15-KETO-PGE2 y(46) <-> ex13,14-DIHYDRO-15-KETO-PGE2 y(47)
r70= ABC*ABCKcat*((y(46)/ABCKmR70)*(1-((y(47)/(y(46)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(46)/ABCKmR70)+(y(47)/ABCKmR70)+(y(21)/ABCKmR42)+(y(13)/ABCKmR39)+(y(21)/ABCKmR37)+(y(19)/ABCKmR38)+(y(3)/ABCKmR34)+(y(15)/ABCKmR41)+(y(14)/ABCKmR40)+(y(22)/ABCKmR31)+(y(20)/ABCKmR28)+(y(12)/ABCKmR25)+(y(10)/ABCKmR35)+(y(6)/ABCKmR33)+(y(5)/ABCKmR32)+(y(4)/ABCKmR22)+(y(18)/ABCKmR30)+(y(17)/ABCKmR29)+(y(16)/ABCKmR27)+(y(9)/ABCKmR36)+(y(44)/ABCKmR67)+(y(8)/ABCKmR24)+(y(7)/ABCKmR23)+(y(11)/ABCKmR26)));
% R71
% ex13,14-DIHYDRO-15-KETO-PGE2 y(47)-> Mischellanous species
r71= KfR71*y(47);

% INTRACELLULAR DECAY REACTIONS
% R72
% PGF2A y(4-> Mischellanous species
r72 = KfR44*y(4);
% R73
% TXB2 y(7-> Mischellanous species
r73= KfR45*y(7);
% R74
% TXA2 y(5)-> Mischellanous species
r74= KfR46*y(5);
% R75
% 6-KETO-PGF1A y(8)-> Mischellanous species
r75= KfR47*y(8);
% R76
% PGI2 y(6)-> Mischellanous species
r76= KfR48*y(6);
% R77
% PGE2 y(12)-> Mischellanous species
r77= KfR49*y(12);
% R78
% 15-DEOXY-PGJ2 y(11)-> Mischellanous species
r78= KfR50*y(11);
% R79
% PGJ2 y(9)-> Mischellanous species
r79= KfR51* y(9);
% R80
% PGD2 y(10)-> Mischellanous species
r80= KfR52*y(10);
% R81
% PGH2 y(3)-> Mischellanous species
r81= KfR53*y(3);
% R82
% 5-OXO-ETE y(16)-> Mischellanous species
r82= KfR54*y(16);
% R83
% 5-HETE y(14)-> Mischellanous species
r83= KfR55*y(14);
% R84
% LTB4 y(17)-> Mischellanous species
r84= KfR56*y(17);
% R85
% LTC4 y(18)-> Mischellanous species
r85= KfR57*y(18);
% R86
% LTA4 y(15)-> Mischellanous species
r86= KfR58*y(15);
% R87
% 5-HPETE y(13)-> Mischellanous species
r87 = KfR59*y(13);
% R88
% 15-HETE y(20)-> Mischellanous species
r88= KfR60*y(20);
% R89
% 15-HPETE y(19)-> Mischellanous species
r89= KfR61*y(19);
% R90
% 12-HETE y(22)-> Mischellanous species
r90= KfR62*y(22);
% R91
% 12-HPETE y(21)-> Mischellanous species
r91= KfR63*y(21);
% R92
% AA y(2)-> Mischellanous species
r92= KfR64*y(2);
% R93
% 13,14-DIHYDRO-15-KETO-PGE2 y(46)-> Mischellanous species
r93= KfR71*y(46);
% R94
% 15-KETO-PGE2 y(44)-> Mischellanous species
r94= KfR68*y(44);
% AA ACTIVATION
% -> AA
r95= (c/AADT)-((c2*log(2)*y(2))/AAHL);
% R96
% exTXA2 y(33) <-> exTXB2 y(24)
r96=(KfR6*y(33))-(KrR6*y(24));
% R97
% exPGI2 y(34)<-> ex6-Keto-PGF1A y(25)
r97= (KfR7*y(34))-(KrR7*y(25));
% R98
% exPGD2 y(36) <-> exPGJ2 y(37)
r98= (KfR8*y(36))-(KrR8*y(37));
% R99
% exPGJ2 y(37)<-> ex15-DEOXY-PGJ2 y(27)
r99= (KfR9*y(37))-(KrR9*y(27));
%R100 - Turned off
%AA y(2) <-> BAA y(1)
r100=(LATKcat*LAT*(y(2)-(y(1)/KeqR100)))/((KmsR100*(1+(y(1)/KmpR100)))+y(2));
% PGT Transporter
% R101 (PGT)
% PGF2A y(4) <-> exPGF2A y(23)
r101=PGT*PGTKcat*((y(4)/PGTKmR101)*(1-((y(23)/(y(4)*exp((((-/PGTKmR102)+(y(11)/PGTKmR111)+(y(5)/PGTKmR110)+(y(6)/PGTKmR103)+(y(10)/PGTKmR104)+(y(44)/PGTKmR108)+(y(46)/PGTKmR107)));
% R102 (PGT)
% PGE2 y(12)<-> exPGE2 y(26)
r102= PGT*PGTKcat*((y(12)/PGTKmR102)*(1-((y(26)/(y(12)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(4)/PGTKmR102)+(y(23)/PGTKmR102)+(y(4)/PGTKmR101)+(y(7)/PGTKmR106)+(y(8)/PGTKmR109)+(y(11)/PGTKmR111)+(y(5)/PGTKmR110)+(y(6)/PGTKmR103)+(y(10)/PGTKmR104)+(y(9)/PGTKmR105)+(y(44)/PGTKmR108)+(y(46)/PGTKmR107)));
% R103 (PGT)
% PGI2 y(6)<-> exPGI2 y(34)
r103= PGT*PGTKcat*((y(6)/PGTKmR103)*(1-((y(34)/(y(6)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(6)/PGTKmR103)+(y(34)/PGTKmR103)+(y(4)/PGTKmR101)+(y(7)/PGTKmR106)+(y(8)/PGTKmR109)+(y(12)/PGTKmR102)+(y(11)/PGTKmR111)+(y(5)/PGTKmR110)+(y(10)/PGTKmR104)+(y(9)/PGTKmR105)+(y(44)/PGTKmR108)+(y(46)/PGTKmR107)));
% R104 (PGT)
% PGD2 y(10)<-> exPGD2 y(36)
r104= PGT*PGTKcat*((y(10)/PGTKmR104)*(1-((y(36)/(y(10)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(10)/PGTKmR104)+(y(36)/PGTKmR104)+(y(4)/PGTKmR101)+(y(7)/PGTKmR106)+(y(8)/PGTKmR109)+(y(12)/PGTKmR102)+(y(11)/PGTKmR111)+(y(5)/PGTKmR110)+(y(6)/PGTKmR103)+(y(9)/PGTKmR105)+(y(44)/PGTKmR108)+(y(46)/PGTKmR107)));
% R105(PGT)
% PGJ2 y(9)<-> exPGJ2 y(37)
r105= PGT*PGTKcat*((y(9)/PGTKmR105)*(1-((y(37)/(y(9)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(9)/PGTKmR105)+(y(37)/PGTKmR105)+(y(4)/PGTKmR101)+(y(7)/PGTKmR106)+(y(8)/PGTKmR109)+(y(12)/PGTKmR102)+(y(11)/PGTKmR111)+(y(5)/PGTKmR110)+(y(6)/PGTKmR103)+(y(10)/PGTKmR104)+(y(44)/PGTKmR108)+(y(46)/PGTKmR107)));
% R106 (PGT)
% TXB2 y(7)<-> exTXB2 y(24)
r106= PGT*PGTKcat*((y(7)/PGTKmR106)*(1-((y(24)/(y(7)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(7)/PGTKmR106)+(y(24)/PGTKmR106)+(y(4)/PGTKmR101)+(y(8)/PGTKmR109)+(y(12)/PGTKmR102)+(y(11)/PGTKmR111)+(y(5)/PGTKmR110)+(y(6)/PGTKmR103)+(y(10)/PGTKmR104)+(y(9)/PGTKmR105)+(y(44)/PGTKmR108)+(y(46)/PGTKmR107)));
% R107 (PGT)
% 13,14-DIHYDRO-15-KETO-PGE2 y(46) <-> ex13,14-DIHYDRO-15-KETO-PGE2 y(47)
r107= PGT*PGTKcat*((y(46)/PGTKmR107)*(1-((y(47)/(y(46)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(46)/PGTKmR107)+(y(47)/PGTKmR107)+(y(4)/PGTKmR101)+(y(7)/PGTKmR106)+(y(8)/PGTKmR109)+(y(12)/PGTKmR102)+(y(11)/PGTKmR111)+(y(5)/PGTKmR110)+(y(6)/PGTKmR103)+(y(10)/PGTKmR104)+(y(9)/PGTKmR105)+(y(44)/PGTKmR108)));
% R108 (PGT)
% 15-KETO-PGE2 y(44) <-> ex15-KETO-PGE2 y(45)
r108= PGT*PGTKcat*((y(44)/PGTKmR108)*(1-((y(45)/(y(44)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(44)/PGTKmR108)+(y(45)/PGTKmR108)+(y(4)/PGTKmR101)+(y(7)/PGTKmR106)+(y(8)/PGTKmR109)+(y(12)/PGTKmR102)+(y(11)/PGTKmR111)+(y(5)/PGTKmR110)+(y(6)/PGTKmR103)+(y(10)/PGTKmR104)+(y(9)/PGTKmR105)+(y(46)/PGTKmR107)));
% R109 (PGT)
% 6-KETO-PGF1A y(8)<-> ex6-KETO-PGF1A y(25)
r109= PGT*PGTKcat*((y(8)/PGTKmR109)*(1-((y(25)/(y(8)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(8)/PGTKmR109)+(y(25)/PGTKmR109)+(y(4)/PGTKmR101)+(y(7)/PGTKmR106)+(y(12)/PGTKmR102)+(y(11)/PGTKmR111)+(y(5)/PGTKmR110)+(y(6)/PGTKmR103)+(y(10)/PGTKmR104)+(y(9)/PGTKmR105)+(y(44)/PGTKmR108)+(y(46)/PGTKmR107)));
% R110 (PGT)
% TXA2 y(5)<-> exTXA2 y(33)
r110= PGT*PGTKcat*((y(5)/PGTKmR110)*(1-((y(33)/(y(5)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(5)/PGTKmR110)+(y(33)/PGTKmR110)+(y(4)/PGTKmR101)+(y(7)/PGTKmR106)+(y(8)/PGTKmR109)+(y(12)/PGTKmR102)+(y(11)/PGTKmR111)+(y(6)/PGTKmR103)+(y(10)/PGTKmR104)+(y(9)/PGTKmR105)+(y(44)/PGTKmR108)+(y(46)/PGTKmR107)));
% R111 (PGT)
% 15-DEOXY-PGJ2 y(11)<-> ex15-DEOXY-PGJ2 y(27)
r111= PGT*PGTKcat*((y(11)/PGTKmR111)*(1-((y(27)/(y(11)*exp((((-0.5*(ABCdG+(R*TEMP*log(ATP/ADP))))))/(R*TEMP))))))/(1+(y(11)/PGTKmR111)+(y(27)/PGTKmR111)+(y(4)/PGTKmR101)+(y(7)/PGTKmR106)+(y(8)/PGTKmR109)+(y(12)/PGTKmR102)+(y(5)/PGTKmR110)+(y(6)/PGTKmR103)+(y(10)/PGTKmR104)+(y(9)/PGTKmR105)+(y(44)/PGTKmR108)+(y(46)/PGTKmR107)));
% COX2 Induction event
% -> COX2 (y(48)
r112= (c3/COX2DT)-((c4*log(2)*y(48))/COX2HL);

%% Section 5: ODE
%BAA y(1)
%dydt(1)=r100-r1;
%AA y(2)
%dydt(2)=r95+r1-r2-r11-r17-r19-r42-r65-r92-r100;
%PGH2 y(3)
%dydt(3)=r2+r65-r3-r4-r5-r10-r21-r81-r34;
%PGF2A y(4)
%dydt(4)=r3-r22-r72-r101;
%TXA2 y(5)
%dydt(5)=r4-r6-r32-r74-r110;
%PGI2 y(6)
%dydt(6)=r5-r7-r33-r76-r103;
%TXB2 y(7)
%dydt(7)=r6-r106-r73-r23;
%6-KETO-PGF1A y(8)
%dydt(8)=r7-r24-r75-r109;
%PGJ2 y(9)
%dydt(9)=r8-r9-r36-r79-r105;
%PGD2 = y(10)
%dydt(10)=r21-r8-r35-r80-r104;
%15-DEOXY-PGJ2 = y(11)
%dydt(11)=r9-r26-r78-r111;
%PGE2 = y(12)
%dydt(12)=r10-r25-r66-r77-r102;
%5-HPETE
%dydt(13)=r11-r12-r13-r39-r87;
%5-HETE =y(14)
%dydt(14)=r12-r14-r40-r83;
%LTA4 = y(15)
%dydt(15)=r13-r15-r16-r41-r86;
%5-OXO-ETE = y(16)
%dydt(16)=r14-r27-r82;
%LTB4 = y(17)
%dydt(17)=r15-r29-r84;
%LTC4 = y(18)
%dydt(18)=r16-r30-r85;
%15-HPETE = y(19)
%dydt(19)=r17-r18-r38-r89;
%15-HETE = y(20)
%dydt(20)=r18-r28-r88;
%12-HPETE = y(21)
%dydt(21)=r19-r20-r37-r91;
%12-HETE = y(22)
%dydt(22)=r20-r31-r90;
%exPGF2A = y(23)
%dydt(23)=r22+r101-r44;
%exTXB2 = y(24)
%dydt(24)=r23+r106-r45+r96;
%ex6-KETO-PGF1A = y(25)
%dydt(25)=r24+r109-r47+r97;
%exPGE2 = y(26)
%dydt(26)=r25+r102-r49;
%ex15-DEOXY-PGJ2 = y(27)
%dydt(27)=r26+r111-r50+r99;
%ex5-OXO-ETE = y(28)
%dydt(28)=r27-r54;
%ex15-HETE =y(29)
%dydt(29)=r28-r60;
%exLTB4 = y(30)
%dydt(30)=r29-r56;
%exLTC4 = y(31)
%dydt(31)=r30-r57;
%exHETE12 = y(32)
%dydt(32)=r31-r62;
%exTXA2 = y(33)
%dydt(33)=r32+r110-r46-r96;
%exPGI2 = y(34)
%dydt(34)=r33+r103-r48-r97;
%exPGH2 = y(35)
%dydt(35)=-r53;
%exPGD2 = y(36)
%dydt(36)=r35+r104-r52-r98;
%exPGJ2 = y(37)
%dydt(37)=r36+r105-r51+r98-r99;
%ex12-HPETE = y(38)
%dydt(38)=r37-r63;
%ex15-HPETE = y(39)
%dydt(39)=r38-r61;
%ex5-HPETE = y(40)
%dydt(40)=r39-r59;
%ex5-HETE = y(41)
%dydt(41)=r40-r55;
%exLTA4 = y(42)
%dydt(42)=r41-r58;
%exAA = y(43)
%dydt(43)=-r64;
%15-KETO-PGE2 = y(44)
%dydt(44)=r66-r67-r69-r94-r108;
%ex15-KETO-PGE2 = y(45)
%dydt(45)=r67+r108-r68;
%13,14-DIHYDRO-15-KETO-PGE2 = y(46)
%dydt(46)=r69-r70-r93-r107;
%ex13,14-DIHYDRO-15-KETO-PGE2 = y(47)
%dydt(47)=r70+r107-r71;
% COX2 = y(48)
%dydt(48)=r112-r2;
% Mischellanous species = y(49)
%dydt(49)=r44+r45+r46+r47+r48+r49+r50+r51+r52+r53+r54+r55+r56+r57+r58+r59+r60+r61+r62+r63+r64+r68+r71+r72+r73+r74+r75+r76+r77+r78+r79+r80+r81+r82+r83+r84+r85+r86+r87+r88+r89+r90+r91+r92



dydt=[r100-r1;r95+r1-r2-r11-r17-r19-r42-r65-r92-r100;r2+r65-r3-r4-r5-r10-r21-r81-r34;r3-r22-r72-r101;r4-r6-r32-r74-r110;r5-r7-r33-r76-r103;r6-r23-r73-r106;r7-r24-r75-r109;r8-r9-r36-r79-r105;r21-r8-r35-r80-r104;r9-r26-r78-r111;r10-r25-r66-r77;r11-r12-r13-r39-r87;r12-r14-r40-r83;r13-r15-r16-r41-r86;r14-r27-r82;r15-r29-r84;r16-r30-r85;r17-r18-r38-r89;r18-r28-r88;r19-r20-r37-r91;r20-r31-r90;r22+r101-r44;r23+r106-r45+r96;r24+r109-r47+r97;r25+r102-r49;r26+r111-r50+r99;r27-r54;r28-r60;r29-r56;r30-r57;r31-r62;r32+r110-r46-r96;r33+r103-r48-r97;r34-r53;r35+r104-r52-r98;r36+r105-r51+r98-r99;r37-r63;r38-r61;r39-r59;r40-r55;r41-r58;r42-r64;r66-r67-r69-r94-r108;r67+r108-r68;r69-r70-r93-r107;r70+r107-r71;r112-r2;r44+r45+r46+r47+r48+r49+r50+r51+r52+r53+r54+r55+r56+r57+r58+r59+r60+r61+r62+r63+r64+r68+r71+r72+r73+r74+r75+r76+r77+r78+r79+r80+r81+r82+r83+r84+r85+r86+r87+r88+r89+r90+r91+r92];
end
