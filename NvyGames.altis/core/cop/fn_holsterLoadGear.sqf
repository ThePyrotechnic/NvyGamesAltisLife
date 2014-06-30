/*
	File: fn_loadGear.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for loading cop saved gear loadout.
*/
private["_launcher","_allowedItems","_loadout","_primary","_launcher","_handgun","_magazines","_uniform","_vest","_backpack","_items","_primitems","_secitems","_handgunitems","_uitems","_vitems","_bitems","_handle","_append"];

//_append = [_this,0,false] call BIS_fnc_param; //if append => dont strip down player

_loadout = life_n_holster_data;
/*_allowedItems =
[
	"arifle_sdar_F",
	"hgun_P07_snds_F",
	"hgun_p07_F",
	"arifle_MX_F",
	"SMG_02_ACO_F",
	"optic_Holosight",
	"acc_flashlight",
	"arifle_MXC_F",
	"arifle_MXM_F",
	"optic_Arco",
	"optic_MRCO",
	"muzzle_snds_H",
	"muzzle_snds_L"
];*/
[_primary,_handgun,_magazines,_primitems,_secitems,_handgunitems,_launcher];

if(isNil "_loadout") exitWith {}; //Slot data doesn't exist
if(count _loadout == 0) exitWith {}; //Slot data doesn't exist
_primary = _loadout select 0;
//_launcher = "";
_handgun = _loadout select 1;
_magazines = _loadout select 2;
_primitems = _loadout select 3;
_secitems = _loadout select 4;
_handgunitems = _loadout select 5;
_launcher = [_loadout,6,""] call BIS_fnc_param;
//This is to piss off cops :)
//NO, to piss off programmers!!! -.-
//if(!(_primary in _allowedItems)) then {_primary = ""};
//if(!(_handgun in _allowedItems)) then {_handgun = ""};

//Strip the unit down
/*
if(!_append) then
{
	RemoveAllWeapons player;
	{player removeMagazine _x;} foreach (magazines player);
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeGoggles player;
	removeHeadGear player;
	{
		player unassignItem _x;
		player removeItem _x;
	} foreach (assignedItems player);
};

//Add the gear
if(_uniform != "") then {_handle = [_uniform,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(_vest != "") then {_handle = [_vest,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(_backpack != "") then {_handle = [_backpack,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
*/
{
	_handle = [_x,true,false,false,false] spawn life_fnc_handleItem;
	waitUntil {scriptDone _handle};
} foreach _magazines;

if(_primary != "") then {[_primary,true,false,false,false] spawn life_fnc_handleItem;};
if(_launcher != "") then {[_launcher,true,false,false,false] spawn life_fnc_handleItem;};
if(_handgun != "") then {[_handgun,true,false,false,false] spawn life_fnc_handleItem;};
/*
{_handle = [_x,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};} foreach _items;
{[_x,true,false,false,true] call life_fnc_handleItem;} foreach (_uitems);
{[_x,true,false,false,true] call life_fnc_handleItem;} foreach (_vitems);
{[_x,true,true,false,false] call life_fnc_handleItem;} foreach (_bitems);
*/
{[_x,true,false,true,false] call life_fnc_handleItem;} foreach (_primitems);
{[_x,true,false,true,false] call life_fnc_handleItem;} foreach (_secitems);
{[_x,true,false,true,false] call life_fnc_handleItem;} foreach (_handgunitems);  

if(primaryWeapon player != "") then
{
	player selectWeapon (primaryWeapon player);
};

//systemChat str _primary;

//Update clothing ##86
//[] spawn life_fnc_updateClothing;