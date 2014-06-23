#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end","_getRank"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

//if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then 
//{
	if((__GETC__(life_coplevel) <= 0) && (__GETC__(life_adminlevel) <= 0)) exitWith 
	{
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
//};
_getRank = switch (__GETC__(life_coplevel)) do {case 1: {1}; case 2: {2}; case 3: {3}; case 4: {4}; case 5: {5}; case 6: {6}; case 7: {7}; case 8: {8}; default {0};};
player setVariable["coplevel",_getRank,TRUE];

//[] call life_fnc_spawnMenu;
//HOUSE RESPAWN
[[player], "HOUSE_fnc_requestSpawnMenu", false, false] spawn life_fnc_MP;

hint "Question database ...";

waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

hint "Players spawn!";