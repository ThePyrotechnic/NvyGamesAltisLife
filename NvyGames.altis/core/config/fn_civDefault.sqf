/*
	File: fn_copDefault.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Default civ configuration.
*/
//Strip the player down
systemChat "Loading civilian default gear.";

RemoveAllWeapons player;
removeAllContainers player;
removeAllAssignedItems player;

player addUniform "U_C_Poloshirt_blue";
player additem "ItemCompass"; 
player assignItem "ItemCompass";
player additem "ItemMap"; 
player assignItem "ItemMap";
player additem "ItemRadio"; 
player assignItem "ItemRadio";
player additem "ItemWatch"; 
player assignItem "ItemWatch";

hintC "default gear opened";

[] call life_fnc_civSaveGear; //save gear into file