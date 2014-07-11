/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
private["_spawnPos","_getFaction"];

civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_House_Big_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_03_V1_F"],250];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_House_Big_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_03_V1_F"],250];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_House_Big_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_03_V1_F"],250];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_House_Big_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_03_V1_F"],250];

waitUntil {!(isNull (findDisplay 46))};

if(life_is_arrested) then
{
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
}
	else
{
	if(!([life_position,[]] call BIS_fnc_areEqual)) exitWith {player setPos life_position;};
	//[] call life_fnc_spawnMenu;
	//HOUSE RESPAWN
	[[player], "HOUSE_fnc_requestSpawnMenu", false, false] spawn life_fnc_MP;
	
	hint "Question database ...";
	
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
	
	hint "spawn player!";
};
player addRating 9999999;
_getFaction = switch (life_faction) do {case ("rebel"): {"rebel"}; case ("indy"): {"indy"}; default {"civilian"};};
player setVariable["faction",_getFaction,TRUE];

[] call life_fnc_zoneCreator;
[] execVM "intro.sqf";