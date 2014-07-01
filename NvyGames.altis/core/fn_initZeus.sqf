/*
	File: initZeus.sqf
	
	Description:
	Starts initialization of zeus slot.
	The zeus slot is basically god and is only used for admins to create stuff.
	
*/
player addRating 9999999;

waitUntil {!(isNull (findDisplay 46))};

[] spawn life_fnc_copMarkers;



if(life_adminlevel < 2) exitWith

{

    endMission "Loser";

};