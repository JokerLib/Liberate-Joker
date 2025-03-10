if (isDedicated || (!hasInterface && !isServer)) exitWith {};
params ["_attack_destination"];

private _location_name = [_attack_destination] call F_getLocationName;
private _marker_name = format ["opfor_incoming_marker_%1", _location_name];

if (markerPos _marker_name isEqualTo [0,0,0]) then {
    private _marker = createMarkerLocal [_marker_name, _attack_destination];
    _marker setMarkerTypeLocal "selector_selectedMission";
    _marker setMarkerColorLocal GRLIB_color_enemy_bright;
    ["lib_incoming", [_location_name]] call BIS_fnc_showNotification;

    sleep 180;
    deleteMarkerLocal _marker;
};