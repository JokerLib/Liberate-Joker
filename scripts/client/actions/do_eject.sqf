params ["_target", "_caller", "_actionId", "_arguments"];

private _vehicle = objectParent _target;
if (isNull _vehicle) exitWith {};
if !([_target] call GRLIB_check_EjectCrew) exitWith {};

gamelogic globalChat format ["Fast Eject all crew from %1.", [_vehicle] call F_getLRXName];
{
	if (local _x) then {
		[_x, false] spawn F_ejectUnit;
	} else {
		[_x, false] remoteExec ["F_ejectUnit", 2];
	};
	sleep 0.2;
} forEach (crew _vehicle);
