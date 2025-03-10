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
	["B_Quadbike_01_F",1,1,5,0],
	["BWA3_Eagle_Tropen",1,1,26,0],
	["BWA3_Eagle_Fleck",1,1,26,0],
	["Redd_Tank_LKW_leicht_gl_Wolf_Tropentarn_FueFu",1,1,18,0],
	["B_LSV_01_unarmed_F",1,1,17,0],
	["rhsusf_mrzr4_d",1,1,16,0],
	["rhsusf_M1232_usarmy_wd",1,1,39,0],
	["rhsusf_M1220_usarmy_wd",1,1,39,0],
	["B_MRAP_01_F",1,1,30,0],
	["rhsusf_m1240a1_usarmy_wd",1,1,30,0],
	["rhsusf_m998_w_s_2dr_halftop",1,1,30,0],
	["rhsusf_m1152_usmc_wd",1,1,33,0],
	["rhsusf_m998_w_s_4dr_halftop",1,1,30,0],
	["rhsusf_m998_w_s_4dr_fulltop",1,1,30,0],
	["rhsusf_m1151_usmc_wd",1,1,26,0],
	["I_MRAP_03_F",1,1,34,0],
	["rhs_tigr_m_vmf",1,1,30,0],
	["rhs_uaz_vmf",1,1,14,0],
	["rhsusf_m1151_m2_v2_usarmy_d",0,300,40,0],
	["rhsusf_m1151_m240_v2_usarmy_d",0,300,40,0],
	["rhs_gaz66_zu23_vdv",0,300,40,0]
];

heavy_vehicles = [
	["O_APC_Tracked_02_cannon_F",1,915,64,1],
	["I_APC_tracked_03_cannon_F",1,845,67,1],
	["O_APC_Wheeled_02_rcws_v2_F",1,745,69,1],
	["I_APC_Wheeled_03_cannon_F",1,915,63,1],
	["B_APC_Wheeled_01_cannon_F",1,915,69,1],
	["Redd_Tank_Fuchs_1A4_Jg_Milan_Tropentarn",1,470,62,1],
	["Redd_Tank_Fuchs_1A4_Jg_Milan_Flecktarn",1,470,62,1],
	["rnt_sppz_2a2_luchs_flecktarn",1,1015,58,1],
	["rnt_sppz_2a2_luchs_tropentarn",1,1015,58,1],
	["Redd_Marder_1A5_Tropentarn",1,1055,62,1],
	["Redd_Marder_1A5_Flecktarn",1,1055,62,1],
	["BWA3_Puma_Fleck",1,1210,64,1],
	["BWA3_Puma_Tropen",1,1210,64,1],
	["RHS_M6_wd",1,1275,62,1],
	["rhsusf_m113_usarmy_MK19",1,660,61,1],
	["rhsusf_m113_usarmy_M240",1,515,61,1],
	["rhsusf_m113_usarmy",1,700,61,1],
	["rhsusf_stryker_m1127_m2_wd",1,900,60,1],
	["rhsusf_stryker_m1134_wd",1,900,69,1],
	["rhs_btr60_msv",1,500,60,1],
	["rhs_btr70_msv",1,550,60,1],
	["rhs_btr80_msv",1,600,61,1],
	["rhs_btr80a_msv",1,650,61,1],
	["rhs_bmd4ma_vdv",1,700,50,1],
	["rhs_bmp2d_vdv",1,700,55,1],
	["I_MBT_03_cannon_F",0,1200,40,0],
	["rhsusf_m1a2sep1tuskiiwd_usarmy",0,1200,40,0]
];

air_vehicles = [
	["RHS_Mi8mt_vdv",0,300,60,0],
	["I_Heli_Transport_02_F",0,0,60,0],
	["B_Heli_Transport_01_F",0,300,60,0],
	["RHS_UH60M_d",0,300,60,0],
	["I_Plane_Fighter_03_dynamicLoadout_F",0,1000,100,0],
	["I_Plane_Fighter_04_F",0,1000,120,0],
	["rhs_mig29sm_vvs",0,1000,120,0]
];

blufor_air = [
	"B_Heli_Attack_01_F",
	"B_Plane_CAS_01_dynamicLoadout_F",
	"B_Plane_Fighter_01_F",
	"B_Heli_Attack_01_F"
];

static_vehicles = [
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
	["B_G_Offroad_01_repair_F",5,150,5,GRLIB_perm_inf],
	["B_G_Van_01_fuel_F",5,130,40,GRLIB_perm_inf],
	["B_APC_Tracked_01_CRV_F",15,2000,50,GRLIB_perm_max]
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
