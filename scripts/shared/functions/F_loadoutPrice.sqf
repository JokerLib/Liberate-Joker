params [ "_unit" ];
if (isNil "_unit") exitWith {0};
if (GRLIB_free_loadout) exitWith {0};
if (isNil "GRLIB_Ammobox_keep") then { GRLIB_Ammobox_keep = [] };
if (isNil "GRLIB_disabled_arsenal") then { GRLIB_disabled_arsenal = [] };

// item name MUST be lowercase
private _fixed_price = LOADOUT_fixed_price + [
	//["launch_o_vorona_brown_f" , 200]
];

private _expensive_items = LOADOUT_expensive_items + [
	"medikit",
	"toolkit",
	"srifle_dmr_02",
	"srifle_dmr_04",
    	"srifle_dmr_05",
	"srifle_gm6",
	"srifle_lrr",
	"mmg_",
	"lmg_",
	"launch_o_vorona",
	"launch_b_titan",
	"launch_o_titan",
	"launch_i_titan",
	"titan_aa",
	"titan_at",
	"titan_ap",
	"vorona_he",
	"vorona_heat"
];

private _free_items = LOADOUT_free_items + [
	"rnd_",  
	"firstaidkit",  
	"smokeshell",  
	"grenade",  
	"charge_remote_mag",  
	"laserbatteries",  
	"chemlight",  
	"itemmap",  
	"itemgps",  
	"itemradio",  
	"itemcompass",  
	"itemwatch",  
	"kat_IV_16",  
	"kat_aatKit",  
	"ACE_adenosine",  
	"kat_amiodarone",  
	"kat_atropine",  
	"ACE_fieldDressing",  
	"ACE_elasticBandage",  
	"ACE_packingBandage",  
	"ACE_quikclot",  
	"kat_basicDiagnostic",  
	"kat_BPCuff",  
	"ACE_bloodIV",  
	"kat_bloodIV_O",  
	"kat_bloodIV_O_N",  
	"kat_bloodIV_A",  
	"kat_bloodIV_A_N",  
	"kat_bloodIV_AB",  
	"kat_bloodIV_AB_N",  
	"kat_bloodIV_B",  
	"kat_bloodIV_B_N",  
	"ACE_bloodIV_250",  
	"kat_bloodIV_O_250",  
	"kat_bloodIV_O_N_250",  
	"kat_bloodIV_A_250",  
	"kat_bloodIV_A_N_250",  
	"kat_bloodIV_AB_250",  
	"kat_bloodIV_AB_N_250",  
	"kat_bloodIV_B_250",  
	"kat_bloodIV_B_N_250",  
	"ACE_bloodIV_500",  
	"kat_bloodIV_O_500",  
	"kat_bloodIV_O_N_500",  
	"kat_bloodIV_A_500",  
	"kat_bloodIV_A_N_500",  
	"kat_bloodIV_AB_500",  
	"kat_bloodIV_AB_N_500",  
	"kat_bloodIV_B_500",  
	"kat_bloodIV_B_N_500",  
	"KAT_Empty_bloodIV_250",  
	"KAT_Empty_bloodIV_500",  
	"kat_BVM",  
	"kat_chestSeal",  
	"kat_EACA",  
	"ACE_epinephrine",  
	"kat_etomidate",  
	"kat_IO_FAST",  
	"kat_fentanyl",  
	"kat_flumazenil",  
	"kat_guedel",  
	"kat_epinephrineIV",  
	"kat_ketamine",  
	"kat_clamp",  
	"kat_plate",  
	"ACE_salineIV",  
	"ACE_salineIV_250",  
	"ACE_salineIV_500",  
	"kat_larynx",  
	"kat_oxygenTank_150_Empty",  
	"kat_oxygenTank_300_Empty",  
	"ACE_bodyBag_blue",  
	"ACE_bodyBag",  
	"ACE_bodyBag_white",  
	"kat_lidocaine",  
	"kat_lorazepam",  
	"kat_suction",  
	"ACE_morphine",  
	"ACE_suture",  
	"kat_nalbuphine",  
	"kat_nasal",  
	"kat_ncdKit",  
	"kat_nitroglycerin",  
	"kat_norepinephrine",  
	"ACE_surgicalKit",  
	"ACE_personalAidKit",  
	"kat_phenylephrine",  
	"kat_phenylephrineAuto",  
	"ACE_plasmaIV",  
	"ACE_plasmaIV_250",  
	"ACE_plasmaIV_500",  
	"kat_retractor",  
	"kat_reboa",  
	"ACE_splint",  
	"kat_scalpel",  
	"kat_stethoscope",  
	"kat_pocketBVM",  
	"ACE_tourniquet",  
	"kat_Caffeine",  
	"kat_Penthrox",  
	"kat_personal_oxygen",  
	"kat_Pervitin",  
	"kat_Painkiller",  
	"ACE_painkillers",  
	"kat_oxygenTank_150",  
	"kat_oxygenTank_300",  
	"kat_Carbonate"  
];

// functions
private _fn_isfixed = {
	params ["_item"];
	private _ret = -1;
	{
		if (tolower (_item) find (_x select 0) >= 0) exitWith {_ret = _x select 1};
	} forEach _fixed_price;
	_ret;
};

private _fn_isfree = {
	params ["_item"];
	private _ret = false;
	{
		if (tolower (_item) find _x >= 0) exitWith {_ret = true};
	} forEach _free_items;
	_ret;
};

private _fn_isexpensive = {
	params ["_item"];
	private _ret = false;
	{
		if (tolower (_item) find _x >= 0) exitWith {_ret = true};
	} forEach _expensive_items;
	_ret;
};

private _fn_getprice = {
	params ["_item"];
	private _ret = 0;

	if (isNil "_item") exitWith {0};
	private _price = [_item] call _fn_isfixed;
	if (_price < 0) then {
		_isfree = [_item] call _fn_isfree;
		if (!_isfree) then {
			_isexpensive = [_item] call _fn_isexpensive;
			if (_isexpensive) then {_ret = 14} else {_ret = 3};
			if (_item isKindOf ["Pistol", configFile >> "CfgWeapons"]) then {
				if (_isexpensive) then {_ret = 12} else {_ret = 6};
			};
			if (_item isKindOf ["Rifle", configFile >> "CfgWeapons"]) then {
				if (_isexpensive) then {_ret = 28} else {_ret = 15};
			};
			if (_item isKindOf ["Launcher", configFile >> "CfgWeapons"]) then {
				if (_isexpensive) then {_ret = 55} else {_ret = 32};
			};
		};
	} else { _ret = _price };	
	//diag_log format ["DBG: %1 %2", _item, _ret];
	_ret;
};

private _val = 0;

if (typeName _unit == "STRING") then {
	_val = [_unit] call _fn_getprice;
};

if (typeName _unit == "OBJECT") then {
	if (_unit isKindOf "CAManBase") then {
		if (count(handgunWeapon _unit) > 0 ) then {
			_val = _val + ([handgunWeapon _unit] call _fn_getprice);
		};

		if (count(primaryWeapon _unit) > 0 ) then {
			_val = _val + ([primaryWeapon _unit] call _fn_getprice);

			// Weapon items (scope,pointer,..)
			_weap_items = (weaponsItems _unit select {(_x select 0) == (primaryWeapon _unit)}) select 0;
			_weap_items deleteAt 0;
			_weap_items deleteAt 3;
			_val = _val + (3 * count (_weap_items select {count _x > 1}));
		};

		if (count(secondaryWeapon _unit) > 0 ) then {
			_val = _val + ([secondaryWeapon _unit] call _fn_getprice);
		};

		{
			_val = _val + ([_x] call _fn_getprice);
		} forEach (backpackItems _unit + vestItems _unit + uniformItems _unit) + (secondaryWeaponMagazine _unit) select 0;

		{
			if (_x != "") then {_val = _val + 5};
		} forEach [headgear _unit, hmd _unit, binocular _unit, vest _unit, uniform _unit, backpack _unit];

		// Player items (map,compass,..)
		_val = _val + (2 * count(assignedItems _unit));
	};

	if (_unit iskindof "LandVehicle" || typeOf _unit in [Arsenal_typename] + GRLIB_Ammobox_keep + GRLIB_disabled_arsenal) then {
		private _count= 0;
		{
			if (typeName (_x select 1) == "ARRAY") then {
				{
					_count = (_x select 1);
					{ 
						//diag_log [_x, _count select _foreachIndex];
						_val = _val + (([_x] call _fn_getprice) * (_count select _foreachIndex));
					} forEach (_x select 0);
				} forEach (_x select 1);
			} else {
				_count = 1;
				if (typeName (_x select 1) == "SCALAR") then { _count = (_x select 1) };
				_val = _val + (([(_x select 0)] call _fn_getprice) * _count);
			};
		} forEach ([_unit, true] call F_getCargo);
	};
};

_val;