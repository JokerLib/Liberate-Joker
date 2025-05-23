// *** BADDIES ***
GRLIB_side_enemy = EAST;
GRLIB_east_modder = "pSiKO";

// All class MUST be defined !

opfor_crew = "DSF_TAL_Crewman";
opfor_sentry = "DSF_TAL_Rifleman_Lite";
opfor_rifleman = "DSF_TAL_Rifleman";
opfor_grenadier = "DSF_TAL_Grenadier";
opfor_squad_leader = "DSF_TAL_SquadLeader";
opfor_team_leader = "DSF_TAL_TeamLeader";
opfor_marksman = "DSF_TAL_Marksman";
opfor_machinegunner = "DSF_TAL_AutomaticRifleman";
opfor_heavygunner = "DSF_TAL_MachineGunner";
opfor_medic = "DSF_TAL_Medic";
opfor_rpg = "DSF_TAL_RPG7Soldier";
opfor_at = "DSF_HAMAS_ATSoldier";
opfor_aa = "DSF_TAL_AASoldier";
opfor_officer = "O_officer_F";
opfor_sharpshooter = "DSF_TAL_Marksman";
opfor_sniper = "DSF_TAL_Marksman";
opfor_spotter = "DSF_TAL_Marksman";
opfor_engineer = "DSF_TAL_Engineer";
opfor_paratrooper = "DSF_TAL_Rifleman_SPAR";
opfor_mrap_hmg = "DSF_TAL_technical";
opfor_mrap_gmg = "DSF_TAL_technical_AT";
opfor_transport_helo = "RHS_Mi8mt_vvs";
opfor_transport_truck = "rhs_zil131_open_msv";
opfor_fuel_truck = "RHS_Ural_Fuel_MSV_01";
opfor_ammo_truck = "rhs_gaz66_ammo_msv";
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";
opfor_flag = "Flag_CSAT_F";
opfor_house = "Land_Cargo_House_V3_F";
opfor_patrol = "Land_Cargo_Patrol_V3_F";
opfor_hq = "Land_Cargo_HQ_V3_F";

militia_squad = [
	"DSF_TAL_SquadLeader",
	"DSF_TAL_Grenadier",
	"DSF_TAL_Marksman",
	"DSF_TAL_Marksman",
	"DSF_TAL_Medic",
	"DSF_TAL_Engineer",
	"DSF_TAL_AutomaticRifleman",
	"DSF_TAL_Grenadier",
	"DSF_TAL_Rifleman",
	"DSF_TAL_Rifleman",
	"DSF_TAL_RPG7Soldier",
	"DSF_TAL_RPG7Soldier",
	"DSF_TAL_Rifleman_Lite",
	"DSF_TAL_Marksman",
	"DSF_TAL_TeamLeader",
	"DSF_TAL_AASoldier",
	"DSF_HAMAS_ATSoldier"
];

militia_loadout_overide = [
    "O_Soldier_AA_F",
    "O_Soldier_AT_F"
];

militia_vehicles = [
	"O_G_Offroad_01_armed_F",
	"O_G_Offroad_01_armed_F",
	"O_G_Offroad_01_AT_F",
	"I_C_Offroad_02_LMG_F",
	"O_LSV_02_armed_F",
	"O_LSV_02_AT_F"
];

opfor_boats = [
	"O_Boat_Armed_01_hmg_F"
];

opfor_vehicles = [
	"O_MRAP_02_hmg_F",
	"O_MRAP_02_hmg_F",
	"O_MRAP_02_gmg_F",
	"O_APC_Tracked_02_cannon_F",
	"O_APC_Wheeled_02_rcws_v2_F",
	"O_APC_Tracked_02_cannon_F",
	"O_APC_Wheeled_02_rcws_v2_F",
	"O_MBT_02_cannon_F",
	"O_MBT_02_cannon_F",
	"O_APC_Tracked_02_AA_F",
	"O_MBT_04_cannon_F",
	"O_MBT_04_command_F"
];

opfor_vehicles_low_intensity = [
	"O_APC_Tracked_02_cannon_F",
	"O_APC_Wheeled_02_rcws_v2_F",
	"O_MRAP_02_hmg_F",
	"O_MRAP_02_hmg_F",
	"O_MRAP_02_gmg_F",
	"O_LSV_02_armed_F",
	"O_LSV_02_AT_F"
];

opfor_battlegroup_vehicles = [
	"O_MRAP_02_hmg_F",
	"O_MRAP_02_gmg_F",
	"O_MRAP_02_hmg_F",
	"O_APC_Tracked_02_cannon_F",
	"O_APC_Wheeled_02_rcws_v2_F",
	"O_Truck_03_covered_F",
	"O_MBT_02_cannon_F",
	"O_MBT_02_cannon_F",	
	"O_APC_Tracked_02_AA_F",
	"O_Heli_Attack_02_dynamicLoadout_F",
	"O_T_VTOL_02_infantry_F",
	"O_MBT_04_cannon_F",
	"O_MBT_04_command_F"
];

opfor_battlegroup_vehicles_low_intensity = [
	"O_APC_Tracked_02_cannon_F",
	"O_APC_Wheeled_02_rcws_v2_F",
	"O_MBT_02_cannon_F",
	"O_MRAP_02_hmg_F",
	"O_MRAP_02_hmg_F",
	"O_MRAP_02_gmg_F",
	"O_Truck_02_covered_F",
	"O_Heli_Light_02_dynamicLoadout_F",
	"O_Heli_Transport_04_covered_F",
	"O_LSV_02_armed_F",
	"O_LSV_02_AT_F"
];

opfor_troup_transports_truck = [
	opfor_transport_truck,
	"O_Truck_03_covered_F",
	"O_Truck_02_covered_F"
];

opfor_troup_transports_heli = [
	opfor_transport_helo,
	"O_Heli_Light_02_unarmed_F",
	"O_Heli_Light_02_dynamicLoadout_F",
	"O_Heli_Attack_02_dynamicLoadout_F",
	"O_Heli_Transport_04_covered_F",
	"O_T_VTOL_02_infantry_F"
];

opfor_air = [
	"O_Heli_Light_02_dynamicLoadout_F",
	"O_Heli_Attack_02_dynamicLoadout_black_F",
	"O_Heli_Attack_02_dynamicLoadout_F",
	"O_T_VTOL_02_vehicle_F",
	"O_Plane_CAS_02_F",
	"O_Plane_Fighter_02_F"
];

opfor_statics = [
	"O_HMG_01_high_F",
	"O_GMG_01_high_F",
	"O_HMG_01_high_F",
	"O_GMG_01_high_F",	
	"O_static_AA_F",
	"O_static_AT_F",
	"O_Mortar_01_F"
];

opfor_recyclable = [
	["O_HMG_01_high_F",0,round (20 / GRLIB_recycling_percentage),0],
	["O_GMG_01_high_F",0,round (40 / GRLIB_recycling_percentage),0],
	["O_static_AA_F",0,round (80 / GRLIB_recycling_percentage),0],
	["O_static_AT_F",0,round (80 / GRLIB_recycling_percentage),0],
	["O_Mortar_01_F",0,round (300 / GRLIB_recycling_percentage),0],
	["O_LSV_02_armed_F",1,round (35 / GRLIB_recycling_percentage),2],
	["O_LSV_02_AT_F",1,round (45 / GRLIB_recycling_percentage),2],
	["O_G_Offroad_01_armed_F",1,round (30 / GRLIB_recycling_percentage),2],
	["O_G_Offroad_01_AT_F",1,round (40 / GRLIB_recycling_percentage),2],
	["I_C_Offroad_02_LMG_F",1,round (30 / GRLIB_recycling_percentage),2],
	["O_Truck_02_covered_F",5,round (20 / GRLIB_recycling_percentage),5],
	["O_Truck_02_transport_F",5,round (20 / GRLIB_recycling_percentage),5],
	["O_Truck_03_covered_F",5,round (50 / GRLIB_recycling_percentage),5],
	["O_Truck_03_transport_F",5,round (50 / GRLIB_recycling_percentage),5],
	["O_MRAP_02_hmg_F",5,round (150 / GRLIB_recycling_percentage),3],
	["O_MRAP_02_gmg_F",5,round (150 / GRLIB_recycling_percentage),3],
	["O_Boat_Armed_01_hmg_F",2,round (200 / GRLIB_recycling_percentage),2],
	["O_APC_Wheeled_02_rcws_v2_F",10,round (450 / GRLIB_recycling_percentage),10],
	["O_APC_Tracked_02_cannon_F",10,round (1200 / GRLIB_recycling_percentage),10],
	["O_APC_Tracked_02_AA_F",10,round (1300 / GRLIB_recycling_percentage),10],
	["O_MBT_02_cannon_F",15,round (1400 / GRLIB_recycling_percentage),15],
	["O_MBT_04_cannon_F",15,round (2000 / GRLIB_recycling_percentage),15],
	["O_MBT_04_command_F",15,round (2300 / GRLIB_recycling_percentage),15],
	["O_Heli_Attack_02_dynamicLoadout_black_F",10,round (1700 / GRLIB_recycling_percentage),20],
	["O_Heli_Attack_02_dynamicLoadout_F",10,round (1700 / GRLIB_recycling_percentage),20],
	["O_Heli_Light_02_unarmed_F",10,round (1100 / GRLIB_recycling_percentage),20],	
	["O_Heli_Light_02_dynamicLoadout_F",10,round (1600 / GRLIB_recycling_percentage),20],
	["O_Heli_Transport_04_covered_F",10,round (1400 / GRLIB_recycling_percentage),20],
	["O_Plane_CAS_02_F",20,round (2000 / GRLIB_recycling_percentage),30],
	["O_Plane_Fighter_02_F",20,round (2000 / GRLIB_recycling_percentage),30],
	["O_Plane_Fighter_02_Stealth_F",20,round (2000 / GRLIB_recycling_percentage),30],
	["O_T_VTOL_02_vehicle_F",20,round (2500 / GRLIB_recycling_percentage),20],
	["O_T_VTOL_02_infantry_F",20,round (2500 / GRLIB_recycling_percentage),20]
];
