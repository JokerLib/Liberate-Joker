diag_log "--- Zeus Module: Addon fix begin ---";

if (!isServer) exitWith {
    diag_log "--- Zeus Module: NOT RUN ON SERVER-SIDE / SKIP ---";
};

private _zeusModules = entities "ModuleCurator_F";
private _patches = ("true" configClasses (configFile >> "CfgPatches")) apply { configName _x };

{
    _x addCuratorAddons _patches;
} forEach _zeusModules;

diag_log "--- Zeus Module: Addon fix end ---";