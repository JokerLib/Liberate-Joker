if (!isServer && hasInterface) exitWith {};
params [ "_pos"];

if (isNil "_pos") exitWith {};

private _player = ([_pos, 3] call F_getNearbyPlayers) select 0;
if !(isNil "_player") then {
	[_player, 30] call F_addPlayerAmmo;
	["Deactivating the mine +30 Ammo!"] remoteExec ["hintSilent", owner _player];
};
