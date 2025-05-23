// LRX FOB Officer - init

waituntil { sleep 1; !isNil "GRLIB_marker_init" };

[] spawn {
	while {true} do {
		{
			if (_x getVariable ["GRLIB_FOB_Group", false] && isNil {_x getVariable "GRLIB_FOB_Action"}) then {
				(agent _x) addAction ["<t color='#8FFF00'>" + localize "STR_SELL_CARGO" + "</t> <img size='1' image='res\ui_veh.paa'/>", "addons\SELL\do_sell.sqf","",-900,true,true,"","", 5];
				(agent _x) addAction ["<t color='#8FFF00'>" + localize "STR_BUILD_DEFENSE_SEC" + "</t> <img size='1' image='\a3\Ui_F_Curator\Data\Displays\RscDisplayCurator\modeGroups_ca.paa'/>", "addons\FOB\do_build_sector_def.sqf","",-970,false,true,"","GRLIB_player_score >= GRLIB_perm_log", 5];
				(agent _x) addAction ["<t color='#8FFF00'>" + localize "STR_SECONDARY_OBJECTIVES" + "</t> <img size='1' image='\A3\ui_f\data\map\markers\military\warning_CA.paa'/>","scripts\client\ui\secondary_ui.sqf","",-971,false,true,"","call GRLIB_checkSecObj"];
				(agent _x) addAction ["<t color='#8FFF00'>" + localize "STR_SAVE_PLAYER" + "</t> <img size='1' image='\a3\Ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_saveas_ca.paa'/>",{[player,PAR_Grp_ID,false,true] remoteExec ["save_context", 2]},"",-972,false,true,"","GRLIB_player_is_menuok",5];
				_x setVariable ["GRLIB_FOB_Action", 1];
			};
		} forEach agents;
		sleep 10;
	};
};
waitUntil {!(isNull (findDisplay 46))};
systemChat "-------- LRX FOB Initialized --------";