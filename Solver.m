% Solver Script
tic;
%% Section 1: Define number of model variants
ParamNo = 2;
%% Section 2: Assignment of parameters as global
global KmsR1 KmpR1 PLA2Kcat KeqR1 KmsR2 KmpR2 COX2Kcat KeqR2 KmsR3 KmpR3 PGFSKcat KeqR3 KmsR4 KmpR4 TXASKcat KeqR4 KmsR5 KmpR5 PGISKcat KeqR5 KfR6 KrR6 KfR7 KrR7 KfR8 KrR8 KfR9 KrR9 KmsR10 KmpR10 PGESKcat KeqR10 KmsR11 KmpR11 LOX5Kcat KeqR11 KmsR12 KmpR12 PHGPxKcatR12 KeqR12 KmsR13 KmpR13 LOX5FLAPKcat KeqR13 KmsR14 KmpR14 HEDH5Kcat KeqR14 KmsR15 KmpR15 LTA4HKcat KeqR15 KmsR16 KmpR16 LTC4SKcat KeqR16 KmsR17 KmpR17 LOX15Kcat KeqR17 KmsR19 KmpR19 LOX12Kcat KeqR19 KmsR21 KmpR21 PGDSKcat KeqR21 KmsR65 KmpR65 COX1Kcat KeqR65 KmsR66 KmpR66 PGDH15Kcat KeqR66 KmsR69 KmpR69 PTGR2Kcat KeqR69 ABCKcat KfR44 KfR45 KfR46 KfR47 KfR48 KfR49 KfR50 KfR51 KfR52 KfR53 KfR54 KfR55 KfR56 KfR57 KfR58 KfR59 KfR60 KfR61 KfR62 KfR63 KfR64 KfR68 KfR71 KmsR100 KmpR100 LATKcat KeqR100 ABCKmR22 ABCKmR23 ABCKmR24 ABCKmR25 ABCKmR26 ABCKmR27 ABCKmR28 ABCKmR29 ABCKmR30 ABCKmR31 ABCKmR32 ABCKmR33 ABCKmR34 ABCKmR35 ABCKmR36 ABCKmR37 ABCKmR38 ABCKmR39 ABCKmR40 ABCKmR41 ABCKmR42 ABCKmR67 ABCKmR70 c c2 c3 c4 PGTKcat PGTKmR101 PGTKmR102 PGTKmR103 PGTKmR104 PGTKmR105 PGTKmR106 PGTKmR107 PGTKmR108 PGTKmR109 PGTKmR110 PGTKmR111 KmsR18 KmpR18 PHGPxKcatR18 KeqR18 KmsR20 KmpR20 PHGPxKcatR20 KeqR20 PGDH15 ABC COX1 HEDH5 LOX12 LOX15 LOX5 LTA4H LTC4S PGDS PGES PGFS PGIS PGT PHGPX PLA2 PTGR2 TXAS
%% Section 3: Description of the parameter distributions 
% KmsR1 
KmsR1_mu =-2.414 ;
KmsR1_sigma= 0.73487;
% KmpR1
KmpR1_mu =-2.414;
KmpR1_sigma =0.73487;
% PLA2Kcat
PLA2Kcat_mu =8.6294;
PLA2Kcat_sigma=0.76932;
% KeqR1
KeqR1_mu=22.83;
KeqR1_sigma =0.89;
% KmsR2
KmsR2_mu=-4.7218;
KmsR2_sigma=0.77682;
% KmpR2
KmpR2_mu=-4.7218;
KmpR2_sigma=0.77682;
% COX2Kcat
COX2Kcat_mu=8.6976;
COX2Kcat_sigma=1.1445;
% KeqR2
KeqR2_mu=66.70;
KeqR2_sigma=0.89;
% KmsR3
KmsR3_mu=-2.8238;
KmsR3_sigma=1.1815;
% KmpR3
KmpR3_mu=-2.8238;
KmpR3_sigma=1.1815;
% PGFSKcat
PGFSKcat_mu=3.4597;
PGFSKcat_sigma=0.8715;
% KeqR3
KeqR3_mu=12.01;
KeqR3_sigma=0.89;
% KmsR4
KmsR4_mu=-3.9721;
KmsR4_sigma=0.78374;
% KmpR4
KmpR4_mu=-3.9721;
KmpR4_sigma=0.78374;
% TXASKcat
TXASKcat_mu=8.0056;
TXASKcat_sigma=0.76923;
% KeqR4
KeqR4_mu=0.73;
KeqR4_sigma=0.89;
% KmsR5
KmsR5_mu=-4.22;
KmsR5_sigma= 0.42;
% KmpR5
KmpR5_mu=-4.22;
KmpR5_sigma= 0.42;
% PGISKcat
PGISKcat_mu=5.5206;
PGISKcat_sigma=0.7783;
% KeqR5
KeqR5_mu=0.73;
KeqR5_sigma=0.89;
% KfR6
KfR6_mu=5.598;
KfR6_sigma=1.2535;
% KrR6
KrR6_mu=5.598;
KrR6_sigma=1.27;
% KfR7
KfR7_mu=5.598;
KfR7_sigma=1.2535;
% KrR7
KrR7_mu= 5.598;
KrR7_sigma=1.27;
% KfR8
KfR8_mu=1.573;
KfR8_sigma=0.9131;
% KrR8
KrR8_mu=1.573;
KrR8_sigma=0.93;
% KfR9
KfR9_mu=1.573;
KfR9_sigma=0.9131;
% KrR9
KrR9_mu=1.573;
KrR9_sigma=0.93;
% KmsR10
KmsR10_mu=-1.1569;
KmsR10_sigma=0.69253;
% KmpR10
KmpR10_mu=-1.1569;
KmpR10_sigma=0.69253;
% PGESKcat
PGESKcat_mu=8.7371;
PGESKcat_sigma=0.87137;
% KeqR10
KeqR10_mu=12.01;
KeqR10_sigma=0.89;
% KmsR11
KmsR11_mu=-3.6362;
KmsR11_sigma=0.85032;
% KmpR11
KmpR11_mu=-3.6362;
KmpR11_sigma=0.85032;
% LOX5Kcat
LOX5Kcat_mu=7.8959;
LOX5Kcat_sigma=0.76891;
% KeqR11
KeqR11_mu=119.05;
KeqR11_sigma=0.89;
% KmsR12
KmsR12_mu=2.5397;
KmsR12_sigma=1.9193;
% KmpR12
KmpR12_mu=2.5397;
KmpR12_sigma=1.9193;
% PHGPxKcatR12
PHGPxKcatR12_mu=11.348;
PHGPxKcatR12_sigma=1.1171;
% KeqR12
KeqR12_mu=46.32;
KeqR12_sigma=0.89;
% KmsR13
KmsR13_mu=-3.6362;
KmsR13_sigma=0.85032;
% KmpR13
KmpR13_mu=-3.6362;
KmpR13_sigma=0.85032;
% LOX5FLAPKcat
LOX5FLAPKcat_mu=7.8959;
LOX5FLAPKcat_sigma=0.76891;
% KeqR13
KeqR13_mu=146.13;
KeqR13_sigma=0.89;
% KmsR14
KmsR14_mu=-6.3091;
KmsR14_sigma=1.027;
% KmpR14
KmpR14_mu=-6.3091;
KmpR14_sigma=1.027;
% HEDH5Kcat
HEDH5Kcat_mu=10.92;
HEDH5Kcat_sigma=1.2544;
% KeqR14
KeqR14_mu=-1.3917;
KeqR14_sigma=0.89;
% KmsR15
KmsR15_mu=-5.51;
KmsR15_sigma=0.6994;
% KmpR15
KmpR15_mu=-5.51;
KmpR15_sigma=0.72;
% LTA4HKcat
LTA4HKcat_mu=3.8938;
LTA4HKcat_sigma=0.7364;
% KeqR15
KeqR15_mu=6.93;
KeqR15_sigma=0.89;
% KmsR16
KmsR16_mu=-2.83;
KmsR16_sigma=0.79;
% KmpR16
KmpR16_mu=-2.83;
KmpR16_sigma=0.79;
% LTC4SKcat
LTC4SKcat_mu=7.4011;
LTC4SKcat_sigma=0.3294;
% KeqR16
KeqR16_mu=-15.99;
KeqR16_sigma=0.89;
% KmsR17
KmsR17_mu=-4.42;
KmsR17_sigma=0.41;
% KmpR17
KmpR17_mu=-4.42;
KmpR17_sigma=0.41;
% LOX15Kcat
LOX15Kcat_mu=4.6;
LOX15Kcat_sigma=0.65;
% KeqR17
KeqR17_mu=119.05;
KeqR17_sigma=0.89;
% KmsR19
KmsR19_mu=-4.48;
KmsR19_sigma=0.63;
% KmpR19
KmpR19_mu=-4.48;
KmpR19_sigma=0.63;
% LOX12Kcat
LOX12Kcat_mu=6.2203;
LOX12Kcat_sigma=0.1796;
% KeqR19
KeqR19_mu=119.05;
KeqR19_sigma=0.89;
% % KmsR21 previous PGDS Km
% KmsR21_mu=-5.0503;
% KmsR21_sigma=0.68523;
%
% % KmpR21 previous PGDS Km
% KmpR21_mu=-5.0503;
% KmpR21_sigma=0.68523;
% KmsR21
KmsR21_mu=-3.97;
KmsR21_sigma=0.58;
% KmpR21
KmpR21_mu=-3.97;
KmpR21_sigma=0.58;
% PGDSKcat
PGDSKcat_mu=5.1;
PGDSKcat_sigma=0.2;
% KeqR21
KeqR21_mu=12.01;
KeqR21_sigma=0.89;
% KmsR65
KmsR65_mu=-4.59;
KmsR65_sigma=0.45;
% KmpR65
KmpR65_mu=-4.59;
KmpR65_sigma=0.45;
% COX1Kcat
COX1Kcat_mu=9.0856;
COX1Kcat_sigma=0.0408;
% KeqR65
KeqR65_mu=66.7;
KeqR65_sigma=0.89;
% KmsR66
KmsR66_mu=-4.4125;
KmsR66_sigma=0.68004;
% KmpR66
KmpR66_mu=-4.4125;
KmpR66_sigma=0.68004;
% PGDH15Kcat
PGDH15Kcat_mu=7.1911;
PGDH15Kcat_sigma=0.70075;
% KeqR66
KeqR66_mu=1.5825;
KeqR66_sigma=0.8911;
% KmsR69
KmsR69_mu=-3.9721;
KmsR69_sigma=0.6709;
% KmpR69
KmpR69_mu=-3.9721;
KmpR69_sigma=0.6709;
% PTGR2Kcat
PTGR2Kcat_mu=3.2194;
PTGR2Kcat_sigma=0.88713;
% KeqR69
KeqR69_mu=-5.2902;
KeqR69_sigma=0.8911;
% ABCKcat
ABCKcat_mu=0.92;
ABCKcat_sigma=0.8;
% KfR44
KfR44_mu=-6.1137;
KfR44_sigma=0.89;
% KfR45
KfR45_mu=-2.5583;
KfR45_sigma=0.89;
% KfR46
KfR46_mu=1.526;
KfR46_sigma=0.89;
% KfR47
KfR47_mu=-0.6713;
KfR47_sigma=0.89;
% KfR48
KfR48_mu=0.784;
KfR48_sigma=0.89;
% KfR49
KfR49_mu=-6.1137;
KfR49_sigma=0.89;
% KfR50
KfR50_mu=-6.1137;
KfR50_sigma=0.89;
% KfR51
KfR51_mu=-6.1137;
KfR51_sigma=0.89;
% KfR52
KfR52_mu=0.0219;
KfR52_sigma=0.89;
% KfR53- check
KfR53_mu=-1.1792;
KfR53_sigma=0.89;
% KfR54
KfR54_mu=-1.9548;
KfR54_sigma=0.89;
% KfR55
KfR55_mu=-2.6172;
KfR55_sigma=0.89;
% KfR56
KfR56_mu=1.1827;
KfR56_sigma=0.89;
% KfR57
KfR57_mu=1.1827;
KfR57_sigma=0.89;
% KfR58
KfR58_mu=3.4233;
KfR58_sigma=0.89;
% KfR59
KfR59_mu=1.1205;
KfR59_sigma=0.89;
% KfR60
KfR60_mu=-2.6172;
KfR60_sigma=0.89;
% KfR61
KfR61_mu=1.1205;
KfR61_sigma=0.89;
% KfR62
KfR62_mu=-4.7274;
KfR62_sigma=0.89;
% KfR63
KfR63_mu=1.1205;
KfR63_sigma=0.89;
% KfR64
KfR64_mu=-5.0151;
KfR64_sigma=0.89;
% KfR68
KfR68_mu=-4.1678;
KfR68_sigma=0.89;
% KfR71
KfR71_mu=-4.1678;
KfR71_sigma=0.89;
% KmsR100
KmsR100_mu=1.30;
KmsR100_sigma=1.30;
% KmpR100
KmpR100_mu=1.30;
KmpR100_sigma=1.30;
% LATKcat
LATKcat_mu=3.31;
LATKcat_sigma=0.94;
% KeqR100
KeqR100_mu=24.4512;
KeqR100_sigma=0.89;
% ABCKmR22
ABCKmR22_mu=-2.6011;
ABCKmR22_sigma=1.1244;
% ABCKmR23
ABCKmR23_mu=-2.6011;
ABCKmR23_sigma=1.1244;
% ABCKmR24
ABCKmR24_mu=-2.6011;
ABCKmR24_sigma=1.1244;
% ABCKmR25
ABCKmR25_mu=-2.6011;
ABCKmR25_sigma=1.1244;
% ABCKmR26
ABCKmR26_mu=-2.6011;
ABCKmR26_sigma=1.1244;
% ABCKmR27
ABCKmR27_mu=-2.6011;
ABCKmR27_sigma=1.1244;
% ABCKmR28
ABCKmR28_mu=-2.6011;
ABCKmR28_sigma=1.1244;
% ABCKmR29
ABCKmR29_mu=-2.6011;
ABCKmR29_sigma=1.1244;
% ABCKmR30
ABCKmR30_mu=-2.6011;
ABCKmR30_sigma=1.1244;
% ABCKmR31
ABCKmR31_mu=-2.6011;
ABCKmR31_sigma=1.1244;
% ABCKmR32
ABCKmR32_mu=-2.6011;
ABCKmR32_sigma=1.1244;
% ABCKmR33
ABCKmR33_mu=-2.6011;
ABCKmR33_sigma=1.1244;
% ABCKmR34
ABCKmR34_mu=4.0130;
ABCKmR34_sigma=0.89;
% ABCKmR35
ABCKmR35_mu=-2.6011;
ABCKmR35_sigma=1.1244;
% ABCKmR36
ABCKmR36_mu=-2.6011;
ABCKmR36_sigma=1.1244;
% ABCKmR37
ABCKmR37_mu=-2.6011;
ABCKmR37_sigma=1.1244;
% ABCKmR38
ABCKmR38_mu=-2.6011;
ABCKmR38_sigma=1.1244;
% ABCKmR39
ABCKmR39_mu=-2.6011;
ABCKmR39_sigma=1.1244;
% ABCKmR40
ABCKmR40_mu=-2.6011;
ABCKmR40_sigma=1.1244;
% ABCKmR41
ABCKmR41_mu=-2.6011;
ABCKmR41_sigma=1.1244;
% ABCKmR42
ABCKmR42_mu=4.0130;
ABCKmR42_sigma=0.89;
% ABCKmR67
ABCKmR67_mu=-2.6011;
ABCKmR67_sigma=1.1244;
% ABCKmR70
ABCKmR70_mu=-2.6011;
ABCKmR70_sigma=1.1244;
% PGTKcat
PGTKcat_mu=0.92;
PGTKcat_sigma=0.8;
% PGTKmR101
PGTKmR101_mu=-4.67;
PGTKmR101_sigma=1.45;
% PGTKmR102
PGTKmR102_mu=-4.67;
PGTKmR102_sigma=1.45;
% PGTKmR103
PGTKmR103_mu=-4.67;
PGTKmR103_sigma=1.45;
% PGTKmR104
PGTKmR104_mu=-4.67;
PGTKmR104_sigma=1.45;
% PGTKmR105
PGTKmR105_mu=-4.67;
PGTKmR105_sigma=1.45;
% PGTKmR106
PGTKmR106_mu=-4.67;
PGTKmR106_sigma=1.45;
% PGTKmR107
PGTKmR107_mu=-4.67;
PGTKmR107_sigma=1.45;
% PGTKmR108
PGTKmR108_mu=-4.67;
PGTKmR108_sigma=1.45;
% PGTKmR109
PGTKmR109_mu=-4.67;
PGTKmR109_sigma=1.45;
% PGTKmR110
PGTKmR110_mu=-4.67;
PGTKmR110_sigma=1.45;
% PGTKmR111
PGTKmR111_mu=-4.67;
PGTKmR111_sigma=1.45;
% KmsR18
KmsR18_mu=2.54;
KmsR18_sigma=1.92;
% KmpR18
KmpR18_mu=2.54;
KmpR18_sigma=1.92;
% PHGPxKcatR18
PHGPxKcatR18_mu=11.2;
PHGPxKcatR18_sigma=1.05;
% KeqR18
KeqR18_mu=46.32;
KeqR18_sigma=0.89;
% KmsR20
KmsR20_mu=2.54;
KmsR20_sigma=1.92;
% KmpR20
KmpR20_mu=2.54;
KmpR20_sigma=1.92;
% PHGPxKcatR20
PHGPxKcatR20_mu=11.2;
PHGPxKcatR20_sigma=1.05;
% KeqR20
KeqR20_mu=46.32;
KeqR20_sigma=0.89;
% PGDH15
PGDH15_mu=-9.2304;
PGDH15_sigma=6.77E-01;
% ABC
ABC_mu=0.498;
ABC_sigma=3.32E-01;
% COX1 Original
COX1_mu=-6.4411;
COX1_sigma=8.92E-01;
% COX1 Inhibitor
% COX1_mu=-8.7442;
% COX1_sigma=8.92E-01;
% % COX1 Inhibitor v2 1e-28
% COX1_mu= -64.4634;
% COX1_sigma=0.0949;
% %
%
% HEDH5
HEDH5_mu=-5.3937;
HEDH5_sigma=5.88E-01;
% LOX12
LOX12_mu=-11.1002;
LOX12_sigma=1.19E+00;
% LOX15
LOX15_mu=-9.8003;
LOX15_sigma=9.46E-01;
% LOX5 Original 
LOX5_mu=-8.0196;
LOX5_sigma=4.21E-01;
% % LOX5 Inhibitor
% LOX5_mu=-10.3227;
% LOX5_sigma=4.21E-01;
% LTA4H
LTA4H_mu=-5.8727;
LTA4H_sigma=1.99E-01;
% LTC4S
LTC4S_mu=-8.5995;
LTC4S_sigma=3.36E-01;
% PGDS
PGDS_mu=-7.7018;
PGDS_sigma=4.30E-01;
% % PGES- Generic
% PGES_mu=-6.458;
% PGES_sigma=9.67E-01;
% PGES- HaCaT
PGES_mu=-6.9944;
PGES_sigma= 0.0949;
% % PGES 46BR.1N
% PGES_mu=-7.762559512;
% PGES_sigma=0.66975987;
% PGFS
PGFS_mu=-7.5675;
PGFS_sigma=6.02E-01;
% PGIS
PGIS_mu=-6.4411;
PGIS_sigma=8.92E-01;
% PGT
PGT_mu=-8.202;
PGT_sigma=1.02E+00;
% PHGPX
PHGPX_mu=-6.2899;
PHGPX_sigma=2.96E-01;
% PLA2
PLA2_mu=-7.712;
PLA2_sigma=1.27E+00;
% PTGR2
PTGR2_mu=-6.6178;
PTGR2_sigma=1.09E+00;
% TXAS
TXAS_mu=-6.4427;
TXAS_sigma=1.16E+00;
%% Section 4: Generate distributions/multivariate distributions for each parameter/parameter sets
% Reaction 1
[KeqR1, KmsR1, KmpR1, PLA2Kcat] = Multikcat5f(KeqR1_mu, KeqR1_sigma,KmsR1_mu, KmsR1_sigma, KmpR1_mu, KmpR1_sigma, PLA2Kcat_mu, PLA2Kcat_sigma,ParamNo, 4.57E-05);
% Reaction 2
[KeqR2, KmsR2, KmpR2, COX2Kcat] = Multikcat5f(KeqR2_mu, KeqR2_sigma,KmsR2_mu, KmsR2_sigma, KmpR2_mu, KmpR2_sigma, COX2Kcat_mu, COX2Kcat_sigma,ParamNo, 2.27E-05);
% REACTION 3
[KeqR3, KmsR3, KmpR3, PGFSKcat] = Multikcat5f(KeqR3_mu, KeqR3_sigma,KmsR3_mu, KmsR3_sigma, KmpR3_mu, KmpR3_sigma, PGFSKcat_mu, PGFSKcat_sigma,ParamNo, 4.02E-04);
% REACTION 4
[KeqR4, KmsR4, KmpR4, TXASKcat] = Multikcat5f(KeqR4_mu, KeqR4_sigma,KmsR4_mu, KmsR4_sigma, KmpR4_mu, KmpR4_sigma, TXASKcat_mu, TXASKcat_sigma,ParamNo, 4.35E-04);
% REACTION 5
[KeqR5, KmsR5, KmpR5, PGISKcat] = Multikcat5f(KeqR5_mu, KeqR5_sigma,KmsR5_mu, KmsR5_sigma, KmpR5_mu, KmpR5_sigma, PGISKcat_mu, PGISKcat_sigma,ParamNo, 7.36E-04);
% REACTION 6
[KdR6, KfR6, KrR6] = Multivariate3f(-10.8133, 2.1222, KfR6_mu, KfR6_sigma,KrR6_mu, KrR6_sigma, ParamNo );
% REACTION 7
[KdR7, KfR7, KrR7] = Multivariate3f(-10.8133, 2.1222, KfR7_mu, KfR7_sigma,KrR7_mu, KrR7_sigma, ParamNo );
% REACTION 8
[KdR8, KfR8, KrR8] = Multivariate3f(-7.6136, 0.3073, KfR8_mu, KfR8_sigma,KrR8_mu, KrR8_sigma, ParamNo );
% REACTION 9
[KdR9, KfR9, KrR9] = Multivariate3f(-7.6136, 0.3073, KfR9_mu, KfR9_sigma,KrR9_mu, KrR9_sigma, ParamNo );
% REACTION 10
[KeqR10, KmsR10, KmpR10, PGESKcat] = Multikcat5f( KeqR10_mu, KeqR10_sigma,KmsR10_mu, KmsR10_sigma, KmpR10_mu, KmpR10_sigma, PGESKcat_mu,PGESKcat_sigma, ParamNo, 4.17E-04);
% REACTION 11
[KeqR11, KmsR11, KmpR11, LOX5Kcat] = Multikcat5f(KeqR11_mu, KeqR11_sigma,KmsR11_mu, KmsR11_sigma, KmpR11_mu, KmpR11_sigma, LOX5Kcat_mu,LOX5Kcat_sigma, ParamNo, 2.76E-04);
% REACTION 12,18 AND 20
[KeqR12, KmsR12, KmpR12, PHGPxKcatR12] = Multikcat5f(KeqR12_mu,KeqR12_sigma, KmsR12_mu, KmsR12_sigma, KmpR12_mu, KmpR12_sigma,PHGPxKcatR12_mu, PHGPxKcatR12_sigma, ParamNo, 1.70E-03);
[KeqR18, KmsR18, KmpR18, PHGPxKcatR18] = Multikcat5f(KeqR18_mu,KeqR18_sigma, KmsR18_mu, KmsR18_sigma, KmpR18_mu, KmpR18_sigma,PHGPxKcatR18_mu, PHGPxKcatR18_sigma, ParamNo, 1.70E-03);
[KeqR20, KmsR20, KmpR20, PHGPxKcatR20] = Multikcat5f(KeqR20_mu,KeqR20_sigma, KmsR20_mu, KmsR20_sigma, KmpR20_mu, KmpR20_sigma,PHGPxKcatR20_mu, PHGPxKcatR20_sigma, ParamNo, 1.70E-03);
% REACTION 13
[KeqR13, KmsR13, KmpR13, LOX5FLAPKcat] = Multikcat5f(KeqR13_mu,KeqR13_sigma, KmsR13_mu, KmsR13_sigma, KmpR13_mu, KmpR13_sigma,LOX5FLAPKcat_mu, LOX5FLAPKcat_sigma, ParamNo, 2.76E-04);
% REACTION 14
[KeqR14, KmsR14, KmpR14, HEDH5Kcat] = Multikcat5f(KeqR14_mu, KeqR14_sigma,KmsR14_mu, KmsR14_sigma, KmpR14_mu, KmpR14_sigma, HEDH5Kcat_mu,HEDH5Kcat_sigma, ParamNo, 2.71E-03);
% REACTION 15
[KeqR15, KmsR15, KmpR15, LTA4HKcat] = Multikcat5f(KeqR15_mu, KeqR15_sigma,KmsR15_mu, KmsR15_sigma, KmpR15_mu, KmpR15_sigma, LTA4HKcat_mu,LTA4HKcat_sigma, ParamNo, 2.71E-03);
% R16 (LTC4S)
[KeqR16, KmsR16, KmpR16, LTC4SKcat] = Multikcat5f(KeqR16_mu, KeqR16_sigma,KmsR16_mu, KmsR16_sigma, KmpR16_mu, KmpR16_sigma, LTC4SKcat_mu,LTC4SKcat_sigma, ParamNo, 1.65E-04);
% R17 (LOX15)
[KeqR17, KmsR17, KmpR17, LOX15Kcat] = Multikcat5f(KeqR17_mu, KeqR17_sigma,KmsR17_mu, KmsR17_sigma , KmpR17_mu, KmpR17_sigma, LOX15Kcat_mu,LOX15Kcat_sigma, ParamNo, 2.26E-05);
% R19 (LOX12)
[KeqR19, KmsR19, KmpR19, LOX12Kcat] = Multikcat5f(KeqR19_mu, KeqR19_sigma,KmsR19_mu, KmsR19_sigma, KmpR19_mu, KmpR19_sigma, LOX12Kcat_mu,LOX12Kcat_sigma, ParamNo, 5.20E-06);
% R21 (PGDS)
[KeqR21, KmsR21, KmpR21, PGDSKcat] = Multikcat5f(KeqR21_mu, KeqR21_sigma,KmsR21_mu, KmsR21_sigma, KmpR21_mu, KmpR21_sigma, PGDSKcat_mu,PGDSKcat_sigma, ParamNo, 3.76E-04);
% R65
[KeqR65, KmsR65, KmpR65, COX1Kcat] = Multikcat5f(KeqR65_mu, KeqR65_sigma,KmsR65_mu, KmsR65_sigma, KmpR65_mu, KmpR65_sigma, COX1Kcat_mu,COX1Kcat_sigma, ParamNo, 7.19E-04);
% R66 (PGDH15)
[KeqR66, KmsR66, KmpR66, PGDH15Kcat] = Multikcat5f(KeqR66_mu,KeqR66_sigma, KmsR66_mu, KmsR66_sigma, KmpR66_mu, KmpR66_sigma,PGDH15Kcat_mu, PGDH15Kcat_sigma, ParamNo, 5.22E-05);
% R69 (PTGR2)
[KeqR69, KmsR69, KmpR69, PTGR2Kcat] = Multikcat5f(KeqR69_mu, KeqR69_sigma,KmsR69_mu, KmsR69_sigma, KmpR69_mu, KmpR69_sigma, PTGR2Kcat_mu,PTGR2Kcat_sigma, ParamNo, 6.72E-04);
% REACTION 100
[KeqR100, KmsR100, KmpR100, LATKcat] = Multikcat5f(KeqR100_mu,KeqR100_sigma, KmsR100_mu, KmsR100_sigma, KmpR100_mu, KmpR100_sigma,LATKcat_mu, LATKcat_sigma, ParamNo, 8.81E-05);
% INTRACELLULAR EICOSANOID EXPORT(ABC)
% R22-42, 67, 70
% ABCKmR22 PGF2A
% Mode: 0.021 CIF:23.6964
pd81=makedist('Lognormal', ABCKmR22_mu, ABCKmR22_sigma);
ABCKmR22=random(pd81,ParamNo,1);
% ABCKmR23 TXB2
% Mode: 0.021 CIF:23.6964
pd106=makedist('Lognormal', ABCKmR23_mu, ABCKmR23_sigma);
ABCKmR23=random(pd106,ParamNo,1);
% ABCKmR24 K6PGF1A
% Mode: 0.021 CIF:23.6964
pd107=makedist('Lognormal', ABCKmR24_mu, ABCKmR24_sigma);
ABCKmR24=random(pd107,ParamNo,1);
% ABCKmR25 PGE2
% Mode: 0.021 CIF:23.6964
pd108=makedist('Lognormal', ABCKmR25_mu, ABCKmR25_sigma);
ABCKmR25 =random(pd108,ParamNo,1);
% ABCKmR26 D15PGJ2
% Mode: 0.021 CIF:23.6964
pd109=makedist('Lognormal', ABCKmR26_mu, ABCKmR26_sigma);
ABCKmR26=random(pd109,ParamNo,1);
% ABCKmR27 OETE5
% Mode: 0.021 CIF:23.6964
pd110=makedist('Lognormal', ABCKmR27_mu, ABCKmR27_sigma);
ABCKmR27=random(pd110,ParamNo,1);
% ABCKmR28 HETE15
% Mode: 0.021 CIF:23.6964
pd111=makedist('Lognormal', ABCKmR28_mu, ABCKmR28_sigma);
ABCKmR28=random(pd111,ParamNo,1);
% ABCKmR29 LTB4
% Mode: 0.021 CIF:23.6964
pd112=makedist('Lognormal', ABCKmR29_mu, ABCKmR29_sigma);
ABCKmR29=random(pd112,ParamNo,1);
% ABCKmR30 LTC4
% Mode: 0.021 CIF:23.6964
pd113=makedist('Lognormal', ABCKmR30_mu, ABCKmR30_sigma);
ABCKmR30=random(pd113,ParamNo,1);
% ABCKmR31 HETE12
% Mode: 0.021 CIF:23.6964
pd114=makedist('Lognormal', ABCKmR31_mu, ABCKmR31_sigma);
ABCKmR31=random(pd114,ParamNo,1);
% ABCKmR32 TXA2
% Mode: 0.021 CIF:23.6964
pd115=makedist('Lognormal', ABCKmR32_mu, ABCKmR32_sigma);
ABCKmR32=random(pd115,ParamNo,1);
% ABCKmR33 PGI2
% Mode: 0.021 CIF:23.6964
pd116=makedist('Lognormal', ABCKmR33_mu, ABCKmR33_sigma);
ABCKmR33=random(pd116,ParamNo,1);
% ABCKmR34 PGH2
% Mode: 25, CI: 10
pd117=makedist('Lognormal', ABCKmR34_mu, ABCKmR34_sigma);
ABCKmR34=random(pd117,ParamNo,1);
% ABCKmR35 PGD2
% Mode: 0.021 CIF:23.6964
pd118=makedist('Lognormal', ABCKmR35_mu, ABCKmR35_sigma);
ABCKmR35=random(pd118,ParamNo,1);
% ABCKmR36 PGJ2
% Mode: 0.021 CIF:23.6964
pd119=makedist('Lognormal', ABCKmR36_mu, ABCKmR36_sigma);
ABCKmR36=random(pd119,ParamNo,1);
% ABCKmR37 12HPETE
% Mode: 0.021 CIF:23.6964
pd120=makedist('Lognormal', ABCKmR37_mu, ABCKmR37_sigma);
ABCKmR37=random(pd120,ParamNo,1);
% ABCKmR38 15HPETE
% Mode: 0.021 CIF:23.6964
pd121=makedist('Lognormal', ABCKmR38_mu, ABCKmR38_sigma);
ABCKmR38=random(pd121,ParamNo,1);
% ABCKmR39 5HPETE
% Mode: 0.021 CIF:23.6964
pd122=makedist('Lognormal', ABCKmR39_mu, ABCKmR39_sigma);
ABCKmR39=random(pd122,ParamNo,1);
% ABCKmR40 HETE5
% Mode: 0.021 CIF:23.6964
pd123=makedist('Lognormal', ABCKmR40_mu, ABCKmR40_sigma);
ABCKmR40=random(pd123,ParamNo,1);
% ABCKmR41 LTA4
% Mode: 0.021 CIF:23.6964
pd124=makedist('Lognormal', ABCKmR41_mu, ABCKmR41_sigma);
ABCKmR41=random(pd124,ParamNo,1);
% ABCKmR42 AA
% Mode: 25, CI: 10
pd125=makedist('Lognormal', ABCKmR42_mu, ABCKmR42_sigma);
ABCKmR42=random(pd125,ParamNo,1);
% ABCKmR67 KPGE215
% Mode: 0.021 CIF:23.6964
pd126=makedist('Lognormal', ABCKmR67_mu, ABCKmR67_sigma);
ABCKmR67=random(pd126,ParamNo,1);
% ABCKmR70 DHKPGE215
% Mode: 0.021 CIF:23.6964
pd127=makedist('Lognormal', ABCKmR70_mu, ABCKmR70_sigma);
ABCKmR70=random(pd127,ParamNo,1);
% ABCKcat
% Mode: 1.33 CI:7.30
pd82=makedist('Lognormal', ABCKcat_mu, ABCKcat_sigma); %
ABCKcat=random(pd82,ParamNo,1);

% DECAY PARAMETERS
% KfR44
% Mode: 0.001, CI: 10
pd83=makedist('Lognormal', KfR44_mu, KfR44_sigma);
KfR44=random(pd83,ParamNo,1);
% KfR45
% Mode:0.035 , CI: 10
pd84=makedist('Lognormal', KfR45_mu, KfR45_sigma);
KfR45=random(pd84,ParamNo,1);
% KfR46
% Mode: 2.079, CI: 10 
pd85=makedist('Lognormal', KfR46_mu, KfR46_sigma);
KfR46=random(pd85,ParamNo,1);
% KfR47
% Mode:0.231 , CI: 10
pd86=makedist('Lognormal', KfR47_mu, KfR47_sigma);
KfR47=random(pd86,ParamNo,1);
% KfR48
% Mode:0.99 , CI: 10
pd87=makedist('Lognormal', KfR48_mu, KfR48_sigma);
KfR48=random(pd87,ParamNo,1);
% KfR49
% Mode: 0.001, CI: 10
pd88=makedist('Lognormal', KfR49_mu, KfR49_sigma);
KfR49=random(pd88,ParamNo,1);
% KfR50
% Mode: 0.001, CI: 10
pd89=makedist('Lognormal', KfR50_mu, KfR50_sigma);
KfR50=random(pd89,ParamNo,1);
% KfR51
% Mode: 0.001, CI: 10
pd90=makedist('Lognormal', KfR51_mu, KfR51_sigma);
KfR51=random(pd90,ParamNo,1);
% KfR52
% Mode: 0.462, CI: 10
pd91=makedist('Lognormal', KfR52_mu, KfR52_sigma);
KfR52=random(pd91,ParamNo,1);
% KfR53
% Mode:0.139, CI: 10
pd92=makedist('Lognormal', KfR53_mu, KfR53_sigma);
KfR53=random(pd92,ParamNo,1);
% KfR54
% Mode: 0.064, CI: 10
pd93=makedist('Lognormal', KfR54_mu, KfR54_sigma);
KfR54=random(pd93,ParamNo,1);
% KfR55
% Mode: 0.033, CI: 10
pd94=makedist('Lognormal', KfR55_mu, KfR55_sigma);
KfR55=random(pd94,ParamNo,1);
% KfR56
% Mode: 1.475, CI: 10
pd95=makedist('Lognormal', KfR56_mu, KfR56_sigma);
KfR56=random(pd95,ParamNo,1);
% KfR57
% Mode:1.475 , CI: 10
pd96=makedist('Lognormal', KfR57_mu, KfR57_sigma);
KfR57=random(pd96,ParamNo,1);
% KfR58
% Mode: 13.863, CI: 10
pd97=makedist('Lognormal', KfR58_mu, KfR58_sigma);
KfR58=random(pd97,ParamNo,1);
% KfR59
% Mode:1.386 , CI: 10
pd98=makedist('Lognormal', KfR59_mu, KfR59_sigma);
KfR59=random(pd98,ParamNo,1);
% KfR60
% Mode: 0.033, CI: 10
pd99=makedist('Lognormal', KfR60_mu, KfR60_sigma);
KfR60=random(pd99,ParamNo,1);
% KfR61
% Mode: 1.386, CI: 10
pd100=makedist('Lognormal', KfR61_mu, KfR61_sigma);
KfR61=random(pd100,ParamNo,1);
% KfR62
% Mode: 0.004, CI: 10
pd101=makedist('Lognormal', KfR62_mu, KfR62_sigma);
KfR62=random(pd101,ParamNo,1);
% KfR63
% Mode: 1.386, CI: 10
pd102=makedist('Lognormal', KfR63_mu, KfR63_sigma);
KfR63=random(pd102,ParamNo,1);
% KfR64
% Mode:0.003 , CI: 10
pd103=makedist('Lognormal', KfR64_mu, KfR64_sigma);
KfR64=random(pd103,ParamNo,1);
% KfR68
% Mode: 0.007, CI: 10
pd104=makedist('Lognormal', KfR68_mu, KfR68_sigma);
KfR68=random(pd104,ParamNo,1);
% KfR71
% Mode: 0.007, CI: 10
pd105=makedist('Lognormal', KfR71_mu, KfR71_sigma);
KfR71=random(pd105,ParamNo,1);
% PGT Transporter Paramters
%PGTKcat
% Mode: 1.33 CIF:7.30
pd106=makedist('Lognormal', PGTKcat_mu, PGTKcat_sigma);
PGTKcat=random(pd106,ParamNo,1);
%PGTKmR101 PGF2a
%Mode: 4.79E-04 CIF:96.9951
pd107=makedist('Lognormal', PGTKmR101_mu, PGTKmR101_sigma);
PGTKmR101=random(pd107,ParamNo,1);
%PGTKmR102 PGE2
%Mode: 4.15E-04 CIF:90.3325
pd108=makedist('Lognormal', PGTKmR102_mu, PGTKmR102_sigma);
PGTKmR102=random(pd108,ParamNo,1);
%PGTKmR103 PGI2
%Mode: 1.10E-03 CIF: 94.21
pd109=makedist('Lognormal', PGTKmR103_mu, PGTKmR103_sigma);
PGTKmR103=random(pd109,ParamNo,1);
%PGTKmR104 PGD2
%Mode: 1.10E-03 CIF: 94.21
pd110=makedist('Lognormal', PGTKmR104_mu, PGTKmR104_sigma);
PGTKmR104=random(pd110,ParamNo,1);
%PGTKmR105 PGJ2
%Mode: 1.10E-03 CIF: 94.21
pd111=makedist('Lognormal', PGTKmR105_mu, PGTKmR105_sigma);
PGTKmR105=random(pd111,ParamNo,1);
%PGTKmR106 TXB2
%Mode:4.95E-04 CIF:79.5062
pd112=makedist('Lognormal', PGTKmR106_mu, PGTKmR106_sigma);
PGTKmR106=random(pd112,ParamNo,1);
%PGTKmR107 DHKPGE215
%Mode:0.0045 CIF:107.2898
pd113=makedist('Lognormal', PGTKmR107_mu, PGTKmR107_sigma);
PGTKmR107=random(pd113,ParamNo,1);
%PGTKmR108 KPGE215
%Mode:0.0045 CIF:107.2898
pd114=makedist('Lognormal', PGTKmR108_mu, PGTKmR108_sigma);
PGTKmR108=random(pd114,ParamNo,1);
%PGTKmR109 K6PGF1a
%Mode:0.0013 CIF:95.5996
pd115=makedist('Lognormal', PGTKmR109_mu, PGTKmR109_sigma);
PGTKmR109=random(pd115,ParamNo,1);
%PGTKmR110 TXA2
%Mode: 1.10E-03 CIF: 94.21
pd116=makedist('Lognormal', PGTKmR110_mu, PGTKmR110_sigma);
PGTKmR110=random(pd116,ParamNo,1);
%PGTKmR111 D15PGJ2
%Mode: 1.10E-03 CIF: 94.21
pd117=makedist('Lognormal', PGTKmR111_mu, PGTKmR111_sigma);
PGTKmR111=random(pd117,ParamNo,1);
% Enzyme concentrations
%15-PGDH
%Mode: 6.20E-05 CIF: 2.30E+00
pd118=makedist('Lognormal', PGDH15_mu, PGDH15_sigma);
PGDH15=random(pd118,ParamNo,1);
%ABC
%Mode: 1.45E+00 CIF:1.42E+00
pd119=makedist('Lognormal', ABC_mu, ABC_sigma);
ABC=random(pd119,ParamNo,1);
%COX1
%Mode: 7.19E-04 CIF: 3.48E+00
pd120=makedist('Lognormal', COX1_mu, COX1_sigma); %Normal concentration
% pd120=makedist('Lognormal',-8.7442,8.92E-01); %NSAID treated cell with
10% of COX
COX1=random(pd120,ParamNo,1);
%HEDH5
%Mode: 2.71E-03 CIF:2.00E+00
pd122=makedist('Lognormal', HEDH5_mu, HEDH5_sigma);
HEDH5=random(pd122,ParamNo,1);
%LOX12
%Mode: 3.70E-06 CIF:7.22E+00
pd123=makedist('Lognormal', LOX12_mu, LOX12_sigma);
LOX12=random(pd123,ParamNo,1);
%LOX15
%Mode: 2.26E-05 CIF:3.93E+00
pd124=makedist('Lognormal', LOX15_mu, LOX15_sigma);
LOX15=random(pd124,ParamNo,1);
%LOX5
%Mode: 2.76E-04 CIF:1.58E+00
pd125=makedist('Lognormal', LOX5_mu, LOX5_sigma);
LOX5=random(pd125,ParamNo,1);
%LTA4H
%Mode: 2.71E-03 CIF:1.22E+00
pd126=makedist('Lognormal', LTA4H_mu, LTA4H_sigma);
LTA4H=random(pd126,ParamNo,1);
%LTC4S
%Mode:1.65E-04 CIF:1.43E+00
pd127=makedist('Lognormal', LTC4S_mu, LTC4S_sigma);
LTC4S=random(pd127,ParamNo,1);
%PGDS
%Mode:3.76E-04 CIF:1.62E+00
pd128=makedist('Lognormal', PGDS_mu, PGDS_sigma);
PGDS=random(pd128,ParamNo,1);
%PGES
%Mode:6.16E-04 CIF:4.12E+00
pd129=makedist('Lognormal', PGES_mu, PGES_sigma);
PGES=random(pd129,ParamNo,1);
%PGFS
%Mode:3.60E-04 CIF:2.04E+00
pd130=makedist('Lognormal', PGFS_mu, PGFS_sigma);
PGFS=random(pd130,ParamNo,1);
%PGIS
%Mode:7.19E-04 CIF:3.48E+00
pd131=makedist('Lognormal', PGIS_mu, PGIS_sigma);
PGIS=random(pd131,ParamNo,1);
%PGT
%Mode:9.63E-05 CIF:4.70E+00
pd132=makedist('Lognormal', PGT_mu, PGT_sigma);
PGT=random(pd132,ParamNo,1);
%PHGPX
%Mode:1.70E-03 CIF:1.36E+00
pd133=makedist('Lognormal', PHGPX_mu, PHGPX_sigma);
PHGPX=random(pd133,ParamNo,1);
%PLA2
%Mode:8.83E-05 CIF:9.33E+00
pd134=makedist('Lognormal', PLA2_mu, PLA2_sigma);
PLA2=random(pd134,ParamNo,1);
%PTGR2
%Mode:4.10E-04 CIF:5.53E+00
pd135=makedist('Lognormal', PTGR2_mu, PTGR2_sigma);
PTGR2=random(pd135,ParamNo,1);
%TXAS
%Mode:4.17E-04 CIF:6.67E+00
pd136=makedist('Lognormal', TXAS_mu, TXAS_sigma);
TXAS=random(pd136,ParamNo,1);

%% Section 5: Sampling of log-normal distribution and simulation details
ParamSets=[KmsR1 KmpR1 PLA2Kcat KeqR1 KmsR2 KmpR2 COX2Kcat KeqR2 KmsR3 KmpR3 PGFSKcat KeqR3 KmsR4 KmpR4 TXASKcat KeqR4 KmsR5 KmpR5 PGISKcat KeqR5 KfR6 KrR6 KfR7 KrR7 KfR8 KrR8 KfR9 KrR9 KmsR10 KmpR10 PGESKcat KeqR10 KmsR11 KmpR11 LOX5Kcat KeqR11 KmsR12 KmpR12 PHGPxKcatR12 KeqR12 KmsR13 KmpR13 LOX5FLAPKcat KeqR13 KmsR14 KmpR14 HEDH5Kcat KeqR14 KmsR15 KmpR15 LTA4HKcat KeqR15 KmsR16 KmpR16 LTC4SKcat KeqR16 KmsR17 KmpR17 LOX15Kcat KeqR17 KmsR19 KmpR19 LOX12Kcat KeqR19 KmsR21 KmpR21 PGDSKcat KeqR21 KmsR65 KmpR65 COX1Kcat KeqR65 KmsR66 KmpR66 PGDH15Kcat KeqR66 KmsR69 KmpR69 PTGR2Kcat KeqR69 ABCKcat KfR44 KfR45 KfR46 KfR47 KfR48 KfR49 KfR50 KfR51 KfR52 KfR53 KfR54 KfR55 KfR56 KfR57 KfR58 KfR59 KfR60 KfR61 KfR62 KfR63 KfR64 KfR68 KfR71 KmsR100 KmpR100 LATKcat KeqR100 ABCKmR22 ABCKmR23 ABCKmR24 ABCKmR25 ABCKmR26 ABCKmR27 ABCKmR28 ABCKmR29 ABCKmR30 ABCKmR31 ABCKmR32 ABCKmR33 ABCKmR34 ABCKmR35 ABCKmR36 ABCKmR37 ABCKmR38 ABCKmR39 ABCKmR40 ABCKmR41 ABCKmR42 ABCKmR67 ABCKmR70 PGTKcat PGTKmR101 PGTKmR102 PGTKmR103 PGTKmR104 PGTKmR105 PGTKmR106 PGTKmR107 PGTKmR108 PGTKmR109 PGTKmR110 PGTKmR111 KmsR18 KmpR18 PHGPxKcatR18 KeqR18 KmsR20 KmpR20 PHGPxKcatR20 KeqR20 PGDH15 ABC COX1 HEDH5 LOX12 LOX15 LOX5 LTA4H LTC4S PGDS PGES PGFS PGIS PGT PHGPX PLA2 PTGR2 TXAS];
options = odeset('RelTol',1e-15,'AbsTol',1e-14,'NormControl','on');
iter = ParamNo;
countFailed = 0;
countNormal = 0;
countAbnormal = 0;
j=0;
z=0;
m=0;
for i=1:iter
CF1=0;CF2=0;CF3=0;
CN1=0;CN2=0;CN3=0;
CA1=0;CA2=0;CA3=0;
 KmsR1 = ParamSets(i,1);
 KmpR1 = ParamSets(i,2);
 PLA2Kcat = ParamSets(i,3);
 KeqR1 = ParamSets(i,4);
 KmsR2 = ParamSets(i,5);
 KmpR2 = ParamSets(i,6);
 COX2Kcat = ParamSets(i,7);
 KeqR2 = ParamSets(i,8);
 KmsR3 = ParamSets(i,9);
 KmpR3 = ParamSets(i,10);
 PGFSKcat = ParamSets(i,11);
 KeqR3 = ParamSets(i,12);
 KmsR4 = ParamSets(i,13);
 KmpR4 = ParamSets(i,14);
TXASKcat = ParamSets(i,15);
 KeqR4 = ParamSets(i,16);
 KmsR5 = ParamSets(i,17);
 KmpR5 = ParamSets(i,18);
 PGISKcat = ParamSets(i,19);
 KeqR5 = ParamSets(i,20);
 KfR6 = ParamSets(i,21);
 KrR6 = ParamSets(i,22);
 KfR7 = ParamSets(i,23);
 KrR7 = ParamSets(i,24);
 KfR8 = ParamSets(i,25);
 KrR8 = ParamSets(i,26);
 KfR9 = ParamSets(i,27);
 KrR9 = ParamSets(i,28);
 KmsR10 = ParamSets(i,29);
 KmpR10 = ParamSets(i,30);
 PGESKcat = ParamSets(i,31);
 KeqR10 = ParamSets(i,32);
 KmsR11 = ParamSets(i,33);
 KmpR11 = ParamSets(i,34);
 LOX5Kcat = ParamSets(i,35);
 KeqR11 = ParamSets(i,36);
 KmsR12 = ParamSets(i,37);
 KmpR12 = ParamSets(i,38);
 PHGPxKcatR12 = ParamSets(i,39);
 KeqR12 = ParamSets(i,40);
 KmsR13 = ParamSets(i,41);
 KmpR13 = ParamSets(i,42);
 LOX5FLAPKcat = ParamSets(i,43);
 KeqR13 = ParamSets(i,44);
 KmsR14 = ParamSets(i,45);
 KmpR14 = ParamSets(i,46);
 HEDH5Kcat = ParamSets(i,47);
 KeqR14 = ParamSets(i,48);
 KmsR15 = ParamSets(i,49);
 KmpR15 = ParamSets(i,50);
 LTA4HKcat = ParamSets(i,51);
 KeqR15 = ParamSets(i,52);
 KmsR16 = ParamSets(i,53);
 KmpR16 = ParamSets(i,54);
 LTC4SKcat = ParamSets(i,55);
 KeqR16 = ParamSets(i,56);
 KmsR17 = ParamSets(i,57);
 KmpR17 = ParamSets(i,58);
 LOX15Kcat = ParamSets(i,59);
 KeqR17 = ParamSets(i,60);
 KmsR19 = ParamSets(i,61);
 KmpR19 = ParamSets(i,62);
 LOX12Kcat = ParamSets(i,63);
 KeqR19 = ParamSets(i,64);
 KmsR21 = ParamSets(i,65);
 KmpR21 = ParamSets(i,66);
 PGDSKcat = ParamSets(i,67);
 KeqR21 = ParamSets(i,68);
 KmsR65 = ParamSets(i,69);
 KmpR65 = ParamSets(i,70);
 COX1Kcat = ParamSets(i,71);
 KeqR65 = ParamSets(i,72);
 KmsR66 = ParamSets(i,73);
 KmpR66 = ParamSets(i,74);
 PGDH15Kcat = ParamSets(i,75);
 KeqR66 = ParamSets(i,76);
 KmsR69 = ParamSets(i,77);
 KmpR69 = ParamSets(i,78);
 PTGR2Kcat = ParamSets(i,79);
 KeqR69 = ParamSets(i,80);
 KfR55 = ParamSets(i,93);
 KfR56 = ParamSets(i,94);
 KfR57 = ParamSets(i,95);
 KfR58 = ParamSets(i,96);
 KfR59 = ParamSets(i,97);
 KfR60 = ParamSets(i,98);
 KfR61 = ParamSets(i,99);
 KfR62 = ParamSets(i,100);
 KfR63 = ParamSets(i,101);
 KfR64 = ParamSets(i,102);
 KfR68 = ParamSets(i,103);
 KfR71 = ParamSets(i,104);
 KmsR100 = ParamSets(i,105);
 KmpR100 = ParamSets(i,106);
 LATKcat = ParamSets(i,107);
 KeqR100 = ParamSets(i,108);
 ABCKmR22 = ParamSets(i,109);
 ABCKmR23 = ParamSets(i,110);
 ABCKmR24 = ParamSets(i,111);
 ABCKmR25 = ParamSets(i,112);
 ABCKmR26 = ParamSets(i,113);
 ABCKmR27 = ParamSets(i,114);
 ABCKmR28 = ParamSets(i,115);
 ABCKmR29 = ParamSets(i,116);
 ABCKmR30 = ParamSets(i,117);
 ABCKmR31 = ParamSets(i,118);
 ABCKmR32 = ParamSets(i,119);
 ABCKmR33 = ParamSets(i,120);
 ABCKmR34 = ParamSets(i,121);
 ABCKmR35 = ParamSets(i,122);
 ABCKmR36 = ParamSets(i,123);
 ABCKmR37 = ParamSets(i,124);
 ABCKmR38 = ParamSets(i,125);
 ABCKmR39 = ParamSets(i,126);
 ABCKmR40 = ParamSets(i,127);
 ABCKmR41 = ParamSets(i,128);
 ABCKmR42 = ParamSets(i,129);
 ABCKmR67 = ParamSets(i,130);
 ABCKmR70 = ParamSets(i,131);
 ABCKcat = ParamSets(i,81);
 KfR44 = ParamSets(i,82);
 KfR45 = ParamSets(i,83);
 KfR46 = ParamSets(i,84);
 KfR47 = ParamSets(i,85);
 KfR48 = ParamSets(i,86);
 KfR49 = ParamSets(i,87);
 KfR50 = ParamSets(i,88);
 KfR51 = ParamSets(i,89);
 KfR52 = ParamSets(i,90);
 KfR53 = ParamSets(i,91);
 KfR54 = ParamSets(i,92);
 KfR55 = ParamSets(i,93);
 KfR56 = ParamSets(i,94);
 KfR57 = ParamSets(i,95);
 KfR58 = ParamSets(i,96);
 KfR59 = ParamSets(i,97);
 KfR60 = ParamSets(i,98);
 KfR61 = ParamSets(i,99);
 KfR62 = ParamSets(i,100);
 KfR63 = ParamSets(i,101);
 KfR64 = ParamSets(i,102);
 KfR68 = ParamSets(i,103);
 KfR71 = ParamSets(i,104);
 KmsR100 = ParamSets(i,105);
 KmpR100 = ParamSets(i,106);
 LATKcat = ParamSets(i,107);
 KeqR100 = ParamSets(i,108);
 ABCKmR22 = ParamSets(i,109);
 ABCKmR23 = ParamSets(i,110);
 ABCKmR24 = ParamSets(i,111);
 ABCKmR25 = ParamSets(i,112);
 ABCKmR26 = ParamSets(i,113);
 ABCKmR27 = ParamSets(i,114);
 ABCKmR28 = ParamSets(i,115);
 ABCKmR29 = ParamSets(i,116);
 ABCKmR30 = ParamSets(i,117);
 ABCKmR31 = ParamSets(i,118);
 ABCKmR32 = ParamSets(i,119);
 ABCKmR33 = ParamSets(i,120);
 ABCKmR34 = ParamSets(i,121);
 ABCKmR35 = ParamSets(i,122);
 ABCKmR36 = ParamSets(i,123);
 ABCKmR37 = ParamSets(i,124);
 ABCKmR38 = ParamSets(i,125);
 ABCKmR39 = ParamSets(i,126);
 ABCKmR40 = ParamSets(i,127);
 ABCKmR41 = ParamSets(i,128);
 ABCKmR42 = ParamSets(i,129);
 ABCKmR67 = ParamSets(i,130);
 ABCKmR70 = ParamSets(i,131);
 PGTKcat = ParamSets(i,132);
 PGTKmR101 = ParamSets(i,133);
 PGTKmR102 = ParamSets(i,134);
 PGTKmR103 = ParamSets(i,135);
 PGTKmR104 = ParamSets(i,136);
 PGTKmR105 = ParamSets(i,137);
 PGTKmR106 = ParamSets(i,138);
 PGTKmR107 = ParamSets(i,139);
 PGTKmR108 = ParamSets(i,140);
 PGTKmR109 = ParamSets(i,141);
 PGTKmR110 = ParamSets(i,142);
 PGTKmR111 = ParamSets(i,143);
 KmsR18 = ParamSets(i,144);
 KmpR18 = ParamSets(i,145);
 PHGPxKcatR18 = ParamSets(i,146);
 KeqR18 = ParamSets(i,147);
 KmsR20 = ParamSets(i,148);
 KmpR20 = ParamSets(i,149);
 PHGPxKcatR20 = ParamSets(i,150);
 KeqR20 = ParamSets(i,151);
 PGDH15 = ParamSets(i,152);
 ABC = ParamSets(i,153);
 COX1 = ParamSets(i,154);
 HEDH5 = ParamSets(i,155);
 LOX12 = ParamSets(i,156);
 LOX15 = ParamSets(i,157);
 LOX5 = ParamSets(i,158);
 LTA4H = ParamSets(i,159);
 LTC4S = ParamSets(i,160);
 PGDS = ParamSets(i,161);
 PGES = ParamSets(i,162);
 PGFS = ParamSets(i,163);
 PGIS = ParamSets(i,164);
 PGT = ParamSets(i,165);
 PHGPX = ParamSets(i,166);
 PLA2 = ParamSets(i,167);
 PTGR2 = ParamSets(i,168);
 TXAS = ParamSets(i,169);
 %% Section 6: Initial metabolite concentrations, event triggers and classification of simulations as normal/abnormal/failed
time=60; %Activation time
tspan=0:0.5:time; %Length of simulation and step size
y0=ones(49,1)*1E-28; %Initial metabolite concentration
c=0; % Maximum concentration of AA(mM)
c2=0; %Decay switch for AA
c3= 0; % Maximum concentration of COX-2 (mM): 2.27E-2 mM
c4=0; % Decay switch for COX-2
[t,y] = ode15s(@Model,tspan,y0);
 if (max(t)<time)
 display(i);
 countFailed = countFailed + 1;
 CF1 = CF1 +1;
 else if (min(y(:,26))<= 0) %Classifies the simulation as abnormal if the concentration of PGE2 goes equal or below zero.
 countAbnormal = countAbnormal + 1;
 CA1 = CA1 +1;
 else
 countNormal = countNormal + 1;
 CN1 = CN1 +1;
 end
 end
test{1,1} = [i];
test{1,2} = t;
test{1,3} = y;
Endvalues=y(length(t),:);
y2=Endvalues;
y2=y2';
time2=240; %Second activation time
tspan2=time:0.5:time2;
c=5.77E-04; % Maximum concentration of AA(mM)
% In silico experiment values for c: H + A23187: 5.77E-04, H + ATP:2.40E-04, H + UVR: 5.11E-04, H + Indomethacin + A23187: 4.65E-04, F +UVR:1.22E-04, F + A23187:1.54E-04, F+ATP:9.36E-06, F + Indo:6.00E-05
c2=0; %Decay switch for AA
c3= 0; % Maximum concentration of COX-2 (mM): 2.27E-2 mM
c4=0; % Decay switch for COX-2
[t,y] = ode15s(@Model,tspan2,y2,options);
if (max(t)<time2)
 display(i);
 countFailed = countFailed + 1;
 CF2 = CF2 +1;
 else if (min(y(:,26))<= 0)
 countAbnormal = countAbnormal + 1;
 CA2 = CA2 +1;
 else
 countNormal = countNormal + 1;
 CN2 = CN2 +1;
 end
end
test{2,1} = [i];
test{2,2} = t;
test{2,3} = y;

Endvalues2=y(length(t),:);
y3=[Endvalues2];
y3=y3';
time3=420; % Final time point of the simulation
tspan3=time2:0.5:time3;
c=5.77E-04; % Maximum concentration of AA(mM)
% In silico experiment values for c: H + A23187: 5.77E-04, H + ATP:2.40E-04, H + UVR: 5.11E-04, H + Indomethacin + A23187: 4.65E-04, F + UVR:1.22E-04, F + A23187:1.54E-04, F+ATP:9.36E-06, F + Indo:6.00E-05 
c2=0; %Decay switch for AA
c3= 0; % Maximum concentration of COX-2 (mM): 2.27E-2 mM
c4=0; % Decay switch for COX-2
 [t,y] = ode15s(@Model,tspan3,y3,options);
 if (max(t)<time3)
 display(i);
 countFailed = countFailed + 1;
 CF3 = CF3 +1;
 else if (min(y(:,26))<= 0)
 countAbnormal = countAbnormal + 1;
 else
 countNormal = countNormal + 1;
 CN3 = CN3 +1;
 end
end
test{3,1} = [i];
test{3,2} = t;
test{3,3} = y;
if CN1 == 1 && CN2 == 1 && CN3 ==1 %1
 normal{i,1}=test{1,1};
 normal{i,2}=[test{1,2}; test{2,2}; test{3,2}];
 normal{i,3}=[test{1,3}; test{2,3}; test{3,3}];
elseif CN1 == 1 && CN2 == 1 && CA3 ==1 || CN1 == 1 && CA2 == 1 && CA3 ==1|| CN1 == 1 && CA2 == 1 && CN3 ==1 || CA1 == 1 && CA2 == 1 && CA3 ==1 ||CA1 == 1 && CA2 == 1 && CN3 ==1 || CA1 == 1 && CN2 == 1 && CN3 ==1 || CA1== 1 && CN2 == 1 && CA3 ==1
 abnormal{i,1}=test{1,1};
 abnormal{i,2}=[test{1,2}; test{2,2}; test{3,2}];
 abnormal{i,3}=[test{1,3}; test{2,3}; test{3,3}];
elseif CN1 == 1 && CN2 == 1 && CF3 ==1 || CN1 == 1 && CA2 == 1 && CF3 ==1||CN1 == 1 && CF2 == 1 && CA3 ==1 || CN1 == 1 && CF2 == 1 && CF3 ==1 ||CN1== 1 && CF2 == 1 && CN3 ==1 || CA1 == 1 && CA2 == 1 && CF3 ==1 ||CA1 == 1&& CN2 == 1 && CF3 ==1 || CA1 == 1 && CF2 == 1 && CN3 ==1 ||CA1 == 1 &&CF2 == 1 && CF3 ==1 || CA1 == 1 && CF2 == 1 && CA3 ==1 ||CF1 == 1 && CF2== 1 && CF3 ==1 ||CF1 == 1 && CF2 == 1 && CN3 ==1 ||CF1 == 1 && CF2 == 1&& CA3 ==1 ||CF1 == 1 && CN2 == 1 && CN3 ==1 ||CF1 == 1 && CN2 == 1 && CA3 ==1 ||CF1 == 1 && CN2 == 1 && CF3 ==1 ||CF1 == 1 && CA2 == 1 && CN3 ==1||CF1 == 1 && CA2 == 1 && CA3 ==1 ||CF1 == 1 && CA2 == 1 && CF3 ==1
 failed{i,1}=test{1,1};
 failed{i,2}=[test{1,2}; test{2,2}; test{3,2}];
 failed{i,3}=[test{1,3}; test{2,3}; test{3,3}];
end
FinalcountFailed = countFailed/3;
FinalcountNormal = countNormal/3;
FinalcountAbnormal = countAbnormal/3;
end
toc;