/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
if((side player == west) && (side _unit == west)) exitWith {}; //WEST-WEST nono
if((side player == civilian) && !(life_faction in ["rebel","indy"])) exitWith {}; //not a rebel or indy => nono
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!

_unit say3D "handcuffs";

_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
[[0,format["%1 was tied up by %2.", name _unit, name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;