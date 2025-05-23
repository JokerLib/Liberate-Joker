params [
	"_spawn_pos",                    // position to spawn
	["_classname", []],             // array of classname to create
	["_side", GRLIB_side_enemy],    // side of units group
	["_type", "infantry"]           // type of unit
];

if (count _classname == 0) exitWith { diag_log ["--- LRX Error: no unit to create.", _this]; grpNull };

private _grp = createGroup [_side, true];
if (isNull _grp) exitWith { diag_log "--- LRX Error: cannot create group."; grpNull };
_grp setCombatMode "WHITE";
_grp setBehaviourStrong "AWARE";

if ((_spawn_pos select 2) < 0) then { _spawn_pos set [2, 0.5] };
diag_log format ["Spawn (%1) %2 Units (%3-%4) Pos %5", count _classname, _type, _side, _grp, _spawn_pos];

private ["_unit", "_pos", "_backpack"];
{
	_pos = _spawn_pos getPos [2 + (floor random 25), random 360];
	_unit = _grp createUnit [_x, _pos, [], 10, "NONE"];
	if (!isNil "_unit") then {
		[_unit] joinSilent _grp;
		_unit addMPEventHandler ["MPKilled", {_this spawn kill_manager}];
		if (_type == "divers") then {
			_pos set [2, -6];
			_unit setPosASL _pos;
		} else {
			_unit setPosATL _pos;
		};
		// diag_log format ["DBG: Create unit %1 at position %2", _unit, _pos];
		[_unit] spawn F_fixModUnit;
		if (_type in ["militia", "building"]) then { [_unit] call loadout_militia };
		if (_type == "bandits") then { 
			[_unit] call loadout_militia;
			_unit addMPEventHandler ["MPKilled", {
				params ["_unit", "_killer", "_instigator", "_useEffects"];
				if (side group _killer != GRLIB_side_friendly || !(isNull objectParent _killer)) exitWith {};
				if (floor random 3 == 0) then { money_typename createVehicle getPos _unit };
			}];			
		};
		if (_type == "guards" && _forEachIndex % 4 == 0) then {
			removeBackpack _unit;
			_unit addBackpack "B_AssaultPack_blk";
			_unit addWeapon "launch_MRAWS_green_F";
		};

		[_unit] spawn reammo_ai;

		if (_type == "para") then {
			_backpack = backpack _unit;
			if (_backpack != "" && !(_backpack isKindOf "B_Parachute")) then {
				_unit setVariable ["GRLIB_para_backpack", _backpack];
				_unit setVariable ["GRLIB_para_backpack_contents", (backpackItems _unit)];
				removeBackpack _unit;
				sleep 0.1;
			};
			_unit addBackpack "B_Parachute";
		};

		if (_type == "defender") then {
			_unit setVariable ["GRLIB_mission_AI", true, true]
		};

		if !(_type in ["divers", "para", "building"]) then {
			sleep 0.1;
			[_unit] call F_fixPosUnit;
			_unit switchMove "AmovPercMwlkSnonWnonDf";
			_unit playMoveNow "AmovPercMwlkSnonWnonDf";
		};
	} else {
		diag_log format ["--- LRX Error: Cannot create unit %1 at position %2", _x, _pos];
	};
	sleep 0.2;
} foreach _classname;

_grp;
