/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side", "_home_spawn_data", "_spawns"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;
_home_spawn_data = missionNamespace getVariable "spawn_home_list";

_spawns = [];

{
	hint format ["House gefunden: %1", _x select 0];

	_spawns = _spawns + [ [_x select 0, "House", "icons\map_house.paa" ] ];
}
foreach (_home_spawn_data select 0) select 0;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	//INJECT HOME SPAWN HERE
	//CHECK IF HOME SPAWN EXISTS
	//INSERT MARKER

	case west:
	{
		_spawns = _spawns + [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_6","Neochori HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_8","Pyrsos HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_5","Checkpoint 1","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_9","Checkpoint 2","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{
		if((["adac"] call life_fnc_permLevel) > 0) then
		{
			_spawns = _spawns + [
			["civ_adac_spawn","ADAC-Hauptquartier","icons\wrench.paa"]
			];
		};
		if(life_faction == "civilian") then
		{
			_spawns = _spawns + [
				["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
// Factions
		if(life_faction == "rebel") then
		{
			_spawns = _spawns + [
				["rebel_spawn_1","The HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"] //test spawn should take you to the ghost hotel.
			];
		};	
		if(life_faction == "indy") then
		{
			_spawns = _spawns + [
				["indy_spawn_1","The HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"] //test spawn should take you to the ghost hotel.
			];
		};
	};
	
	
};

_spawns = _spawns + [ ["all_schiessplatz", "Deathmatch", "icons\schiessplatz.paa" ] ];


_spawns;