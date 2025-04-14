// *** FRIENDLIES ***
GRLIB_side_friendly = WEST;
GRLIB_west_modder = "pSiKO";

// Default classname: scripts\shared\default_classnames.sqf
// Advanced definition: scripts\shared\classnames.sqf

//huron_typename = "B_Heli_Transport_03_unarmed_F";  // // to use value from lobby/server.cfg
FOB_typename = "Land_Cargo_HQ_V1_F";
FOB_box_typename = "B_Slingload_01_Cargo_F";
FOB_truck_typename = "B_Truck_01_box_F";
Respawn_truck_typename = "B_Truck_01_medical_F";
ammo_truck_typename = "B_Truck_01_ammo_F";
fuel_truck_typename = "B_Truck_01_fuel_F";
repair_truck_typename = "B_Truck_01_Repair_F";
repair_sling_typename = "B_Slingload_01_Repair_F";
fuel_sling_typename = "B_Slingload_01_Fuel_F";
ammo_sling_typename = "B_Slingload_01_Ammo_F";
medic_sling_typename = "B_Slingload_01_Medevac_F";
pilot_classname = "B_Helipilot_F";
crewman_classname = "B_crew_F";
uavs_terminal_typename = "B_UavTerminal";
blufor_flag = "Flag_NATO_F";

// [CLASSNAME, MANPOWER, AMMO, FUEL, RANK]
infantry_units_west = [
	["B_medic_F",1,0,0,0],
	["B_engineer_F",1,0,0,0]
];

units_loadout_overide = [
	"B_medic_F"
];

light_vehicles = [
	["B_MRAP_01_F", 0, 0, 59, 0],
	["B_MRAP_01_gmg_F", 0, 35, 59, 0],
	["B_MRAP_01_hmg_F", 0, 33, 59, 0],
	["B_LSV_01_unarmed_F", 0, 0, 11, 0],
	["B_LSV_01_AT_F", 0, 34, 11, 0],
	["B_LSV_01_armed_F", 0, 21, 11, 0],
	["B_Quadbike_01_F", 0, 0, 7, 0],
	["BWA3_Dingo2_FLW100_MG3_Fleck", 0, 28, 35, 0],
	["BWA3_Dingo2_FLW200_GMW_Fleck", 0, 21, 35, 0],
	["BWA3_Dingo2_FLW200_M2_Fleck", 0, 24, 35, 0],
	["BWA3_Eagle_Fleck", 0, 0, 59, 0],
	["BWA3_Eagle_FLW100_Fleck", 0, 118, 59, 0],
	["Redd_Tank_LKW_leicht_gl_Wolf_Tropentarn_FueFu", 0, 0, 9, 0],
	["Redd_Tank_LKW_leicht_gl_Wolf_Tropentarn_San", 0, 0, 9, 0],
	["Redd_Tank_LKW_leicht_gl_Wolf_Tropentarn_Moerser", 0, 0, 7, 0],
	["rhsusf_m1025_d_m2", 0, 17, 34, 0],
	["rhsusf_m1025_d_Mk19", 0, 21, 34, 0],
	["rhsusf_m1025_d", 0, 0, 34, 0],
	["rhsusf_m1043_d_m2", 0, 17, 34, 0],
	["rhsusf_m1043_d_mk19", 0, 21, 34, 0],
	["rhsusf_m1043_d", 0, 0, 34, 0],
	["rhsusf_m1045_d", 0, 31, 34, 0],
	["rhsusf_m998_d_2dr_fulltop", 0, 0, 11, 0],
	["rhsusf_m998_d_2dr_halftop", 0, 11, 0, 0],
	["rhsusf_m998_d_2dr", 0, 0, 11, 0],
	["rhsusf_m998_d_4dr_fulltop", 0, 0, 9, 0],
	["rhsusf_m998_d_4dr_halftop", 0, 0, 10, 0],
	["rhsusf_m998_d_4dr", 0, 0, 10, 0],
	["rhsusf_m1151_usarmy_d", 0, 0, 59, 0],
	["rhsusf_m1151_m2crows_usarmy_d", 0, 67, 59, 0],
	["rhsusf_m1151_mk19crows_usarmy_d", 0, 39, 59, 0],
	["rhsusf_m1151_m2_v1_usarmy_d", 0, 21, 59, 0],
	["rhsusf_m1151_m240_v1_usarmy_d", 0, 44, 59, 0],
	["rhsusf_m1151_mk19_v1_usarmy_d", 0, 40, 59, 0],
	["rhsusf_m1151_m2_v2_usarmy_d", 0, 21, 59, 0],
	["rhsusf_m1151_m240_v2_usarmy_d", 0, 44, 59, 0],
	["rhsusf_m1151_mk19_v2_usarmy_d", 0, 40, 59, 0],
	["rhsusf_m1152_usarmy_d", 0, 0, 57, 0],
	["rhsusf_m1152_sicps_usarmy_d", 0, 0, 58, 0],
	["rhsusf_m1165_usarmy_d", 0, 0, 59, 0],
	["rhsusf_m966_d", 0, 31, 34, 0],
	["rhsusf_m1165a1_gmv_m134d_m240_socom_d", 0, 368, 88, 0],
	["rhsusf_m1165a1_gmv_m2_m240_socom_d", 0, 65, 88, 0],
	["rhsusf_m1165a1_gmv_mk19_m240_socom_d", 0, 84, 88, 0],
	["rhsusf_mrzr4_d", 0, 10, 0, 0],
	["O_MRAP_02_F", 0, 59, 0, 0],
	["O_MRAP_02_gmg_F", 0, 59, 35, 0],
	["O_MRAP_02_hmg_F", 0, 59, 35, 0],
	["O_LSV_02_unarmed_F", 0, 11, 0, 0],
	["O_LSV_02_armed_F", 0, 11, 59, 0],
	["O_LSV_02_AT_F", 0, 11, 34, 0],
	["RHS_BM21_MSV_01", 0, 35, 400, 0],
	["rhs_tigr_sts_msv", 0, 60, 53, 0],
	["rhs_tigr_m_msv", 0, 62, 0, 0],
	["RHS_UAZ_MSV_01", 0, 36, 0, 0],
	["I_MRAP_03_F", 0, 59, 12, 0],
	["I_MRAP_03_gmg_F", 0, 35, 59, 0],
	["I_MRAP_03_hmg_F", 0, 33, 59, 0],
	["B_Boat_Transport_01_F", 0, 0, 34, 0],
	["B_Lifeboat", 0, 0, 34, 0],
	["B_Boat_Armed_01_minigun_F", 0, 203, 89, 0],
	["B_SDV_01_F", 0, 15, 58, 0],
	["rhsusf_mkvsoc", 0, 300, 104, 0],
	["B_UGV_01_F", 0, 0, 32, 0],
	["B_UGV_01_rcws_F", 0, 200, 32, 0]

];

heavy_vehicles = [
	["O_APC_Wheeled_02_rcws_v2_F", 0, 503, 113, 0],
	["B_APC_Tracked_01_rcws_F", 0, 503, 113, 0],
	["Redd_Tank_Fuchs_1A4_Pi_Tropentarn", 0, 434, 86, 0],
	["Redd_Tank_Fuchs_1A4_Jg_Tropentarn", 0, 434, 88, 0],
	["Redd_Tank_Fuchs_1A4_Jg_Milan_Tropentarn", 0, 472, 88, 0],
	["Redd_Tank_Fuchs_1A4_San_Tropentarn", 0, 400, 87, 0],
	["rhsusf_stryker_m1126_m2_d", 0, 505, 89, 0],
	["rhsusf_stryker_m1126_mk19_d", 0, 513, 89, 0],
	["rhsusf_stryker_m1127_m2_d", 0, 472, 86, 0],
	["rhsusf_m113d_usarmy_supply", 0, 453, 64, 0],
	["rhsusf_m113d_usarmy", 0, 453, 64, 0],
	["rhsusf_m113d_usarmy_M240", 0, 472, 61, 0],
	["rhsusf_m113d_usarmy_medical", 0, 400, 59, 0],
	["rhsusf_m113d_usarmy_MK19", 0, 440, 64, 0],
	["rhsusf_m113d_usarmy_unarmed", 0, 400, 64, 0],
	["rhsusf_M1117_D", 0, 527, 84, 0],
	["rhsusf_M1220_usarmy_d", 0, 400, 90, 0],
	["rhsusf_M1220_M153_M2_usarmy_d", 0, 510, 90, 0],
	["rhsusf_M1220_M153_MK19_usarmy_d", 0, 464, 90, 0],
	["rhsusf_M1220_M2_usarmy_d", 0, 453, 91, 0],
	["rhsusf_M1220_MK19_usarmy_d", 0, 465, 91, 0],
	["rhsusf_M1230_M2_usarmy_d", 0, 453, 166, 0],
	["rhsusf_M1230_MK19_usarmy_d", 0, 465, 166, 0],
	["rhsusf_M1230a1_usarmy_d", 0, 400, 163, 0],
	["rhsusf_M1232_usarmy_d", 0, 400, 88, 0],
	["rhsusf_M1232_M2_usarmy_d", 0, 453, 89, 0],
	["rhsusf_M1232_MK19_usarmy_d", 0, 465, 89, 0],
	["rhsusf_M1237_M2_usarmy_d", 0, 453, 165, 0],
	["rhsusf_M1237_MK19_usarmy_d", 0, 465, 164, 0],
	["rhsusf_m1240a1_usarmy_d", 0, 400, 84, 0],
	["rhsusf_m1240a1_m2_usarmy_d", 0, 434, 88, 0],
	["rhsusf_m1240a1_mk19_usarmy_d", 0, 465, 8, 0],
	["rhsusf_m1240a1_m2_uik_usarmy_d", 0, 434, 159, 0],
	["rhsusf_m1240a1_m240_uik_usarmy_d", 0, 472, 159, 0],
	["rhsusf_m1240a1_mk19_uik_usarmy_d", 0, 465, 159, 0],
	["rhsusf_m1240a1_m2crows_usarmy_d", 0, 510, 84, 0],
	["rhsusf_m1240a1_mk19crows_usarmy_d", 0, 476, 84, 0],
	["O_APC_Wheeled_02_rcws_v2_F", 0, 503, 113, 0],
	["rhs_btr80_msv", 0, 482, 95, 0],
	["rhs_btr80a_msv", 0, 800, 95, 0],
	["I_APC_Wheeled_03_cannon_F", 0, 634, 115, 0],
	["I_LT_01_AT_F", 0, 520, 57, 0],
	["I_LT_01_cannon_F", 0, 534, 57, 0],
	["I_LT_01_scout_F", 0, 432, 57, 0],
	["I_APC_tracked_03_cannon_F", 0, 721, 89, 0],
	["O_APC_Tracked_02_cannon_F", 0, 773, 113, 0],
	["I_APC_Wheeled_03_cannon_F", 0, 773, 114, 0],
	["B_APC_Wheeled_01_cannon_F", 0, 700, 114, 0],
	["BWA3_Puma_Fleck", 0, 986, 112, 0],
	["Redd_Marder_1A5_Tropentarn", 0, 1125, 112, 0],
	["RHS_M2A2", 0, 992, 112, 0],
	["RHS_M2A2_BUSKI", 0, 992, 162, 0],
	["RHS_M2A3", 0, 992, 112, 0],
	["RHS_M2A3_BUSKI", 0, 992, 162, 0],
	["RHS_M2A3_BUSKIII", 0, 992, 162, 0],
	["O_APC_Tracked_02_cannon_F", 0, 773, 112, 0],
	["rhs_bmp1_msv", 0, 951, 120, 0],
	["rhs_bmp1d_msv", 0, 951, 145, 0],
	["rhs_bmp1p_msv", 0, 947, 120, 0],
	["rhs_bmp2_msv", 0, 1041, 145, 0],
	["rhs_bmp2d_msv", 0, 1041, 195, 0],
	["rhs_bmp3_late_msv", 0, 1395, 139, 0],
	["rhs_bmp3mera_msv", 0, 1400, 139, 0],
	["rhs_Ob_681_2", 0, 1006, 120, 0],
	["rhs_t15_tv", 0, 1108, 162, 0],
	["rhs_bmd1", 0, 1004, 115, 0],
	["rhs_bmd1p", 0, 1004, 115, 0],
	["rhs_bmd1r", 0, 738, 115, 0],
	["rhs_bmd2", 0, 810, 115, 0],
	["rhs_bmd2k", 0, 810, 115, 0],
	["rhs_bmd2m", 0, 839, 115, 0],
	["rhs_bmd4_vdv", 0, 1128, 111, 0],
	["rhs_bmd4m_vdv", 0, 1128, 111, 0],
	["rhs_bmd4ma_vdv", 0, 1128, 136, 0],
	["I_APC_tracked_03_cannon_F", 0, 721, 113, 0],
	["B_AFV_Wheeled_01_cannon_F", 0, 770, 108, 0],
	["B_AFV_Wheeled_01_up_cannon_F", 0, 800, 158, 0],
	["Redd_Tank_Wiesel_1A2_TOW_Tropentarn", 0, 500, 58, 0],
	["Redd_Tank_Wiesel_1A4_MK20_Tropentarn", 0, 596, 57, 0],
	["rnt_sppz_2a2_luchs_tropentarn", 0, 588, 134, 0],
	["rhsusf_stryker_m1134_d", 0, 607, 83, 0],
	["rhsusf_m1151_m2_lras3_v1_usarmy_d", 0, 503, 59, 0],
	["B_APC_Tracked_01_CRV_F", 0, 200, 108, 0],
	["rhsusf_m1132_m2_np_d", 0, 400, 84, 0],
	["rhsusf_stryker_m1132_m2_d", 0, 400, 89, 0],
	["B_APC_Tracked_01_AA_F", 0, 443, 108, 0],
	["Redd_Tank_Gepard_1A2_Tropentarn", 0, 411, 83, 0],
	["RHS_M6", 0, 567, 112, 0],
	["O_APC_Tracked_02_AA_F", 0, 443, 108, 0],
	["rhs_gaz66_zu23_vdv", 0, 300, 35, 0],
	["RHS_Ural_Zu23_VDV_01", 0, 300, 35, 0],
	["rhs_zsu234_aa", 0, 600, 83, 0],
	["I_LT_01_AA_F", 0, 342, 34, 0]
];

air_vehicles = [
	["RHS_Mi8mt_vdv",0,300,60,0],
	["RHS_Mi8AMT_vdv",0,0,60,0],
	["RHS_Mi8T_vdv",0,0,60,0],
	["B_Heli_Transport_01_F",0,300,60,0],
	["rhs_ka60_grey",0,0,60,0],
	["RHS_UH60M_d",0,300,60,0],
	["RHS_AH64D_wd",0,1000,60,0],
	["RHS_AH1Z",0,1000,60,0],
	["rhs_mi28n_vvs",0,1000,60,0],
	["RHS_Ka52_vvs",0,1000,60,0],
	["RHS_Mi24V_vvs",0,1000,75,0],
	["RHS_TU95MS_vvs_old",0,600,70,0],
	["FA_EMB312_AT27M35_Nato",0,800,80,0],
	["I_Plane_Fighter_03_dynamicLoadout_F",0,1000,100,0],
	["I_Plane_Fighter_04_F",0,1000,120,0],
	["rhs_mig29sm_vvs",0,1000,120,0],
	["FIR_F23A",0,1100,130,0]
];

blufor_air = [
	"B_Heli_Attack_01_F",
	"B_Plane_CAS_01_dynamicLoadout_F",
	"B_Plane_Fighter_01_F",
	"B_Heli_Attack_01_F"
];

static_vehicles = [
	["B_MBT_01_mlrs_F", 0, 1400, 83, 0],
	["rhsusf_M142_usarmy_D", 0, 700, 83, 0],
	["rhs_9k79_K", 0, 862, 33, 0],
	["rhs_9k79", 0, 862, 33, 0],
	["I_Truck_02_MRL_F", 0, 1265, 60, 0],
	["B_MBT_01_arty_F", 0, 1400, 83, 0],
	["BWA3_Panzerhaubitze2000_Fleck", 0, 1203, 84, 0],
	["rhsusf_m109d_usarmy", 0, 976, 58, 0],
	["O_MBT_02_arty_F", 0, 1400, 108, 0],
	["rhs_2s1_tv", 0, 1253, 83, 0],
	["rhs_2s3_tv", 0, 700, 83, 0],
	["B_SAM_System_01_F",0,0,0,0],
	["B_SAM_System_02_F",0,0,0,0],
	["B_AAA_System_01_F",0,0,0,0],
	["rnt_mantis_base",0,0,0,0],
	["rnt_mantis_radar",0,0,0,0],
	["B_Radar_System_01_F",0,0,0,0],
	["B_SAM_System_03_F",0,0,0,0],
	["B_SAM_System_01_F",0,0,0,0]

];

// *** Static Weapon with AI ***
static_vehicles_AI = [
	"B_SAM_System_01_F",
	"B_SAM_System_02_F",
	"B_AAA_System_01_F",
	"rnt_mantis_base",
	"rnt_mantis_radar",
	"B_Radar_System_01_F",
	"B_SAM_System_03_F",
	"B_SAM_System_01_F"
];

support_vehicles_west = [
	["B_Truck_01_flatbed_F",0,0,80,0],
	["rhsusf_M1078A1P2_B_M2_WD_flatbed_fmtv_usarmy",0,300,80,0],
	["B_G_Van_02_vehicle_F",0,0,40,0],
	["B_APC_Tracked_01_CRV_F",0,300,40,0],
	["RHS_Ural_Flat_VV_01",0,0,50,0],
	["rhs_zil131_flatbed_cover_vv",0,0,50,0],
	["rhs_kraz255b1_flatbed_vv",0,0,50,0],
	["RHS_Ural_Open_VV_01",0,0,50,0],
	["rhs_kamaz5350_vv",0,0,40,0],
	["rhs_kamaz5350_flatbed_vv",0,0,40,0]
];

//buildings_west_overide = true;
buildings_west = [
	["Land_Cargo_Tower_V1_F",0,0,0,GRLIB_perm_tank],
	["Land_Cargo_House_V1_F",0,0,0,GRLIB_perm_inf],
	["Land_Cargo_Patrol_V1_F",0,0,0,GRLIB_perm_log]
];

// Boats
boats_west = [
	"B_Boat_Transport_01_F",
	"B_Boat_Armed_01_minigun_F"
];

blufor_squad_inf_light = [
	"B_Soldier_SL_F",
	"B_medic_F",
	"B_Soldier_GL_F",
	"B_soldier_AR_F",
	"B_Soldier_lite_F",
	"B_Soldier_lite_F"
];
blufor_squad_inf = [
	"B_Soldier_SL_F",
	"B_medic_F",
	"B_soldier_M_F",
	"B_Soldier_AR_F",
	"B_HeavyGunner_F",
	"B_Soldier_F"
];
blufor_squad_at = [
	"B_Soldier_SL_F",
	"B_medic_F",
	"B_soldier_AT_F",
	"B_soldier_AT_F",
	"B_soldier_LAT_F",
	"B_Soldier_F"
];

blufor_squad_aa = [
	"B_Soldier_SL_F",
	"B_medic_F",
	"B_soldier_AA_F",
	"B_soldier_AA_F",
	"B_soldier_AA_F",
	"B_Soldier_F"
];
blufor_squad_mix = [
	"B_Soldier_SL_F",
	"B_medic_F",
	"B_soldier_AA_F",
	"B_soldier_LAT_F",
	"B_soldier_AA_F",
	"B_soldier_AT_F",
	"B_Soldier_F"
];

squads = [
	[blufor_squad_inf_light,10,300,0,GRLIB_perm_max],
	[blufor_squad_inf,20,400,0,GRLIB_perm_max],
	[blufor_squad_at,25,600,0,GRLIB_perm_max],
	[blufor_squad_aa,25,600,0,GRLIB_perm_max],
	[blufor_squad_mix,25,600,0,GRLIB_perm_max]
];

// Everything the AI troups should be able to resupply from
ai_resupply_sources_west = [
  "B_APC_Tracked_01_CRV_F"
];

// Everything the AI troups should be able to healing from
ai_healing_sources_west = [
	"B_APC_Tracked_01_CRV_F"
];

vehicle_rearm_sources_west = [
	"B_APC_Tracked_01_CRV_F"
];

vehicle_big_units_west = [
];

GRLIB_vehicle_whitelist_west = [
];

GRLIB_vehicle_blacklist_west = [
];
