// Initialize ACE

R3F_LOG_CFG_can_tow = [];
R3F_LOG_CFG_can_be_towed = [];
R3F_LOG_CFG_can_lift = [];
R3F_LOG_CFG_can_be_lifted = [];
R3F_LOG_CFG_can_transport_cargo = [];
R3F_LOG_CFG_can_be_transported_cargo = [];
R3F_LOG_CFG_can_be_moved_by_player = [];

[] call compileFinal preprocessFileLineNumbers "R3F_LOG\addons_config\Liberation.sqf";
private _path = format ["mod_template\%1\classnames_r3f.sqf", GRLIB_mod_west];
[_path] call F_getTemplateFile;
private _path = format ["mod_template\%1\classnames_r3f.sqf", GRLIB_mod_east];
[_path] call F_getTemplateFile;

// return cargo space or cargo size
ACE_getSize = {
    params ["_object", "_list"];
    private _ret = 0;
    {
        if (_object isKindOf _x) then { _ret = (_list select 1) select _forEachIndex };
    } foreach (_list select 0);
    _ret;
};

// Vehicles & Objects cargo space
GRLIB_ACE_cargoSpace = [R3F_LOG_CFG_can_transport_cargo, 2] call F_invertArray;

// Objects that can be transported with its size
GRLIB_ACE_cargoSize = [R3F_LOG_CFG_can_be_transported_cargo, 2] call F_invertArray;

// Objects that can be moved + buildings
GRLIB_ACE_movable = [] + boats_names + R3F_LOG_CFG_can_be_moved_by_player + all_buildings_classnames;

// Blacklisted object/vehicles
GRLIB_ACE_blacklist = [
    FOB_sign
];

// R3F functions
[] call compile preprocessFileLineNumbers "R3F_LOG\fonctions_generales\lib_geometrie_3D.sqf";
R3F_LOG_FNCT_objet_deplacer = compile preprocessFileLineNumbers "R3F_LOG\objet_deplacable\deplacer.sqf";

// Force Arsenal Filter Strict mode 3
//if (GRLIB_filter_arsenal == 2) then {GRLIB_filter_arsenal = 3};

// Add missing objects
support_vehicles append [
    ["ACE_Wheel",0,0,1,0],
    ["ACE_Track",0,0,1,0]
];

// ACE Items price
LOADOUT_fixed_price append [
    // Medical stuff (in lower case)
];

LOADOUT_free_items append [
    // Medical free stuff (in lower case)
    "ace_fielddressing",
    "ace_elasticbandage",
    "ace_packingbandage",
    "ace_quikclot",
    "ace_bodybag",
    "ace_bodybagobject",
    "ace_tourniquet"
];

diag_log "--- ACE Support Initialized ---";