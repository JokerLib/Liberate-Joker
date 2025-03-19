params ["_vehicle", ["_delete", true], ["_force", false], ["_anim", false]];

if (isNull _vehicle) exitWith {};
if (_vehicle isKindOf "ParachuteBase") exitWith {};
if (_vehicle isKindOf "WeaponHolderSimulated") exitWith { deleteVehicle _vehicle };

private _towed = false;
private _owned = false;
private _maned = false;
private _fobed = false;
private _blued = false;
private _fob_pos = [_vehicle] call F_getNearestFob;

if (!_force) then {
	_towed = !(isNull (_vehicle getVariable ["R3F_LOG_est_transporte_par", objNull]));
	_owned = !([_vehicle] call is_abandoned || [_vehicle] call is_public);
	_maned = ({side group _x == GRLIB_side_friendly} count (crew _vehicle) > 0);
	_fobed = (_vehicle distance2D _fob_pos < GRLIB_capture_size);
	_blued = ([_vehicle, GRLIB_capture_size, GRLIB_side_friendly] call F_getUnitsCount > 0);
};
if (_towed || _owned || _maned || _fobed || _blued) exitWith { false };

diag_log format [ "Cleanup vehicle %1 at %2", typeOf _vehicle, time ];

// unTow
[_vehicle] call untow_vehicle;

//Delete A3 Cargo
[_vehicle] call F_clearCargo;

// Delete R3F Cargo
{ deleteVehicle _x } forEach (_vehicle getVariable ["R3F_LOG_objets_charges", []]);
_vehicle setVariable ["R3F_LOG_objets_charges", [], true];

// Delete GRLIB Cargo
{ deleteVehicle _x } foreach (_vehicle getVariable ["GRLIB_ammo_truck_load", []]);
_vehicle setVariable ["GRLIB_ammo_truck_load", [], true];

// Delete Vehicle and Crew
if (_delete) then {
	{ deleteVehicle _x } forEach (crew _vehicle);
	deleteVehicle _vehicle;
};

true;

addMissionEventHandler ["EntityCreated", {
    params ["_entity"];

    // Überprüft, ob das erstellte Objekt eine Kiste ist
    if (_entity isKindOf "Box_NATO_Ammo_F") then {
        // Ruft die Funktion zum Leeren des Inventars auf
        [_entity] call _clearBoxInventory;
    };
}];