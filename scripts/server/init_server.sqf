diag_log "--- Server Init start ---";

// EventHandler
addMissionEventHandler ['HandleDisconnect', {
	params ["_unit", "_id", "_uid", "_name"];
	if (_name select [0,3] in ["HC1", "HC2"]) exitWith {};
	[_unit, _uid, true] call save_context;
	[_unit, _uid] call cleanup_player;
	false;
}];

addMissionEventHandler ["PlayerDisconnected", {
	params ["_id", "_uid", "_name", "_jip", "_owner", "_idstr"];
	if (_name select [0,14] == "headlessclient") exitWith {};
	private _player_left = count (AllPlayers - (entities "HeadlessClient_F"));
	if (_player_left == 0 && time > 300) then {
		diag_log "--- LRX Mission End!";
		[true] call save_game_mp;
		if (!GRLIB_server_persistent) then {
			{ deleteMarker _x } forEach allMapMarkers;
			{ deleteVehicle _x } forEach allUnits;
			{ deleteVehicle _x } forEach vehicles;
			endMission "END";
			forceEnd;
		};
	};
}];

addMissionEventHandler ["OnUserAdminStateChanged", {
	params ["_networkId", "_loggedIn", "_votedIn"];
	if (!_loggedIn) then {
		{unassignCurator _x} forEach allCurators;
	};
}];

// AI Skill
// skillMin, skillAimMin, skillMax, skillAimMax
[
 true,
 [
  [GRLIB_side_friendly, 0.52, 0.36, 0.81, 0.64 ],
  [GRLIB_side_enemy,    0.52, 0.36, 0.81, 0.64 ]
 ]
] call BIS_fnc_EXP_camp_dynamicAISkill;

// Terrain Quality
// Low = 50 (NoGrass), Normal = 25, High = 12.5, Very High = 6.25, Ultra = 3.125
if (isDedicated) then {
	setTerrainGrid 25;
	setViewDistance 1600;
};

// Relationship
civilian setFriend [GRLIB_side_friendly, 1];
civilian setFriend [GRLIB_side_enemy, 1];

GRLIB_side_friendly setFriend [civilian, 1];
GRLIB_side_enemy setFriend [civilian, 1];

GRLIB_side_enemy setFriend [GRLIB_side_friendly, 0];
GRLIB_side_friendly setFriend [GRLIB_side_enemy, 0];

// Init owner on map vehicles
{
	if (_x iskindof "LandVehicle" || _x iskindof "Air" || _x iskindof "Ship") then {
		_x removeAllMPEventHandlers "MPKilled";
		_x addMPEventHandler ["MPKilled", {_this spawn kill_manager}];
		if (isNil {_x getVariable "GRLIB_vehicle_owner"} ) then {
			_x setVariable ["GRLIB_vehicle_owner", "public", true];
		};
	};
} foreach vehicles;

// Init owner on user placed objects
{
	if (getObjectType _x >= 8 && !(_x iskindof "CAManBase")) then {
		if (isNil {_x getVariable "GRLIB_vehicle_owner"} ) then {
			_x setVariable ["GRLIB_vehicle_owner", "server", true];
		};
	};
} forEach (allMissionObjects "");

// Init Chimera unit look
[] call compileFinal preprocessFileLineNumbers "scripts\server\game\chimera_units_overide.sqf";

// Cleanup
cleanup_player = compileFinal preprocessFileLineNumbers "scripts\server\game\cleanup_player.sqf";

// Load Objects
attach_object_direct = compileFinal preprocessFileLineNumbers "scripts\server\game\attach_object_direct.sqf";
load_object_direct = compileFinal preprocessFileLineNumbers "scripts\server\game\load_object_direct.sqf";
save_object_direct = compileFinal preprocessFileLineNumbers "scripts\server\game\save_object_direct.sqf";
init_object_direct = compileFinal preprocessFileLineNumbers "scripts\server\game\init_object_direct.sqf";

// AI
add_civ_waypoints = compileFinal preprocessFileLineNumbers "scripts\server\ai\add_civ_waypoints.sqf";
add_convoy_waypoints = compileFinal preprocessFileLineNumbers "scripts\server\ai\add_convoy_waypoints.sqf";
defence_ai = compileFinal preprocessFileLineNumbers "scripts\server\ai\defence_ai.sqf";
battlegroup_ai = compileFinal preprocessFileLineNumbers "scripts\server\ai\battlegroup_ai.sqf";
building_defence_ai = compileFinal preprocessFileLineNumbers "scripts\server\ai\building_defence_ai.sqf";
convoy_ai = compileFinal preprocessFileLineNumbers "scripts\server\ai\convoy_ai.sqf";
escape_ai = compileFinal preprocessFileLineNumbers "scripts\server\ai\escape_ai.sqf";
civilian_ai = compileFinal preprocessFileLineNumbers "scripts\server\ai\civilian_ai.sqf";
civilian_ai_veh = compileFinal preprocessFileLineNumbers "scripts\server\ai\civilian_ai_veh.sqf";
prisoner_ai = compileFinal preprocessFileLineNumbers "scripts\server\ai\prisoner_ai.sqf";
prisoner_ai_loop = compileFinal preprocessFileLineNumbers "scripts\server\ai\prisoner_ai_loop.sqf";
prisoner_captured = compileFinal preprocessFileLineNumbers "scripts\server\ai\prisoner_captured.sqf";
bomber_ai = compileFinal preprocessFileLineNumbers "scripts\server\ai\bomber_ai.sqf";
patrol_ai = compileFinal preprocessFileLineNumbers "scripts\server\ai\patrol_ai.sqf";
troup_transport = compileFinal preprocessFileLineNumbers "scripts\server\ai\troup_transport.sqf";

// Battlegroup
spawn_air = compileFinal preprocessFileLineNumbers "scripts\server\battlegroup\spawn_air.sqf";
spawn_halo_vehicle = compileFinal preprocessFileLineNumbers "scripts\server\battlegroup\spawn_halo_vehicle.sqf";
spawn_battlegroup = compileFinal preprocessFileLineNumbers "scripts\server\battlegroup\spawn_battlegroup.sqf";
spawn_battlegroup_direct = compileFinal preprocessFileLineNumbers "scripts\server\battlegroup\spawn_battlegroup_direct.sqf";
send_paratroopers = compileFinal preprocessFileLineNumbers "scripts\server\patrols\send_paratroopers.sqf";
manage_one_enemy_patrol = compileFinal preprocessFileLineNumbers "scripts\server\patrols\manage_one_enemy_patrol.sqf";

// Game
[] call compileFinal preprocessFileLineNumbers "scripts\server\game\save_game_mp_init.sqf";
load_game_mp = compileFinal preprocessFileLineNumbers "scripts\server\game\load_game_mp.sqf";
save_game_mp = compileFinal preprocessFileLineNumbers "scripts\server\game\save_game_mp.sqf";
load_context = compileFinal preprocessFileLineNumbers "scripts\server\game\load_context.sqf";
save_context = compileFinal preprocessFileLineNumbers "scripts\server\game\save_context.sqf";
keep_context = compileFinal preprocessFileLineNumbers "scripts\server\game\keep_context.sqf";
blufor_victory = compileFinal preprocessFileLineNumbers "scripts\server\game\blufor_victory.sqf";

// Bases
fob_init = compileFinal preprocessFileLineNumbers "scripts\server\base\fob_init.sqf";
fob_init_data = compileFinal preprocessFileLineNumbers "scripts\server\base\fob_init_data.sqf";
fob_init_officer = compileFinal preprocessFileLineNumbers "scripts\server\base\fob_init_officer.sqf";

// Secondary objectives
fob_hunting = compileFinal preprocessFileLineNumbers "scripts\server\secondary\fob_hunting.sqf";
convoy_hijack = compileFinal preprocessFileLineNumbers "scripts\server\secondary\convoy_hijack.sqf";
search_and_rescue = compileFinal preprocessFileLineNumbers "scripts\server\secondary\search_and_rescue.sqf";
final_situaton = compileFinal preprocessFileLineNumbers "scripts\server\secondary\final_situaton.sqf";

// Sector
attack_in_progress_fob = compileFinal preprocessFileLineNumbers "scripts\server\sector\attack_in_progress_fob.sqf";
attack_in_progress_sector = compileFinal preprocessFileLineNumbers "scripts\server\sector\attack_in_progress_sector.sqf";
destroy_fob = compileFinal preprocessFileLineNumbers "scripts\server\sector\destroy_fob.sqf";
ied_manager = compileFinal preprocessFileLineNumbers "scripts\server\sector\ied_manager.sqf";
ied_trap_manager = compileFinal preprocessFileLineNumbers "scripts\server\sector\ied_trap_manager.sqf";
spawn_static = compileFinal preprocessFileLineNumbers "scripts\server\sector\spawn_static.sqf";
manage_ammoboxes = compileFinal preprocessFileLineNumbers "scripts\server\sector\manage_ammoboxes.sqf";
manage_intels = compileFinal preprocessFileLineNumbers "scripts\server\sector\manage_intels.sqf";
manage_one_sector = compileFinal preprocessFileLineNumbers "scripts\server\sector\manage_one_sector.sqf";
spawn_defenders = compileFinal preprocessFileLineNumbers "scripts\server\sector\spawn_defenders.sqf";

// Ressources
count_box = compileFinal preprocessFileLineNumbers "scripts\server\resources\count_box.sqf";

// Various
boxSetup = compileFinal preprocessFileLineNumbers "scripts\server\a3w\scripts\F_boxSetup.sqf";
createlandmines = compileFinal preprocessFileLineNumbers "scripts\server\a3w\scripts\F_createLandMines.sqf";
showlandmines = compileFinal preprocessFileLineNumbers "scripts\server\a3w\scripts\F_showLandMines.sqf";
clearlandmines = compileFinal preprocessFileLineNumbers "scripts\server\a3w\scripts\F_clearLandMines.sqf";
createCustomGroup = compileFinal preprocessFileLineNumbers "scripts\server\a3w\scripts\F_createCustomGroup.sqf";

// Warehouse
warehouse_update = compileFinal preprocessFileLineNumbers "scripts\server\game\warehouse_update.sqf";

if (!([] call F_getValid)) exitWith {};

[] call load_game_mp;
if (abort_loading) exitWith {
	GRLIB_init_server = false;
	publicVariable "GRLIB_init_server";
	publicVariable "abort_loading";
	publicVariable "abort_loading_msg";
};

[] execVM "scripts\server\game\synchronise_vars.sqf";
[] execVM "scripts\server\game\apply_default_permissions.sqf";
[] execVM "scripts\server\game\apply_saved_scores.sqf";
[] execVM "scripts\server\ar\fn_advancedRappellingInit.sqf";
[] execVM "scripts\server\base\fobbox_manager.sqf";
[] execVM "scripts\server\base\huron_manager.sqf";
[] execVM "scripts\server\game\spawn_radio_towers.sqf";
[] execVM "scripts\server\game\hall_of_fame.sqf";
[] execVM "scripts\server\battlegroup\counter_battlegroup.sqf";
[] execVM "scripts\server\battlegroup\random_battlegroups.sqf";
[] execVM "scripts\server\battlegroup\readiness_decrease.sqf";
[] execVM "scripts\server\resources\manage_resources.sqf";
[] execVM "scripts\server\patrols\civilian_patrols.sqf";
[] execVM "scripts\server\patrols\enemy_patrols.sqf";
[] execVM "scripts\server\sector\manage_sectors.sqf";
[] execVM "scripts\server\sector\lose_sectors.sqf";
[] execVM "scripts\server\game\manage_score.sqf";
[] execVM "scripts\server\game\manage_time.sqf";
[] execVM "scripts\server\game\manage_weather.sqf";
[] execVM "scripts\server\game\init_marker.sqf";
[] execVM "scripts\server\base\fob_markers.sqf";
[] execVM "scripts\server\secondary\autostart.sqf";
[] execVM "scripts\server\game\zeus_synchro.sqf";
[] execVM "scripts\server\game\clean.sqf";
[] execVM "scripts\server\game\periodic_save.sqf";
[] execVM "scripts\server\a3w\init_missions.sqf";
[] execVM "scripts\server\offloading\show_fps.sqf";
[] execVM "scripts\server\wildlife\manage_wildlife.sqf";
[] execVM "scripts\server\sector\static_manager.sqf";

// Offloading
[] execVM "scripts\server\offloading\offload_calculation.sqf";
[] execVM "scripts\server\offloading\offload_manager.sqf";

global_locked_group = [];
publicVariable "global_locked_group";
["Initialize"]call BIS_fnc_dynamicGroups;
sleep 1;
GRLIB_init_server = true;
publicVariable "GRLIB_init_server";
diag_log "--- Server Init stop ---";
