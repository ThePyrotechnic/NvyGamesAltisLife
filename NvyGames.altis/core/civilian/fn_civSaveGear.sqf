/*
	File: fn_fetchGear.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Fetches the players current gear and returns it in the correct formatted array.

	Using the FeatchGear of cops
	Because tonics balance is crap
*/
private["_primary,_launcher","_handgun","_magazines","_uniform","_vest","_backpack","_items","_primitems","_secitems","_handgunitems","_uitems","_vitems","_bitems","_headgear","_goggles"];

_primitems = [];
_secitems = [];
_handgunitems = [];
_primary = primaryWeapon player;
_launcher = secondaryWeapon player;
_handgun = handGunWeapon player;
_magazines = [];
_uniform = uniform player;
_vest = vest player;
_backpack = backpack player;
_items = assignedItems player;
if(primaryWeapon player != "") then {_primitems = primaryWeaponItems player;};
if(handgunWeapon player != "") then {_handgunItems = handgunItems player;};
_headgear = headgear player;
_goggles = goggles player;
_uitems = [];
_vitems = [];
_bitems = [];
if(_uniform != "") then {{_uitems set[count _uitems,_x];} foreach (uniformItems player);};
if(_vest != "") then {{_vitems set[count _vitems,_x];} foreach (vestItems player);};
if(_backpack != "") then {{_bitems set[count _bitems,_x];} foreach (backPackItems player);};

if(primaryWeapon player != "") then
{
	player selectWeapon (primaryWeapon player);
	if(currentMagazine player != "") then
	{
		_magazines set[count _magazines,currentMagazine player];
	};
};

if(secondaryWeapon player != "") then
{
	player selectWeapon (secondaryWeapon player);
	if(currentMagazine player != "") then
	{
		_magazines set[count _magazines,currentMagazine player];
	};
};

if(handgunWeapon player != "") then
{
	player selectWeapon (handgunWeapon player);
	if(currentMagazine player != "") then
	{
		_magazines set[count _magazines,currentMagazine player];
	};
};
player selectWeapon (primaryWeapon player);

if(isNil "_handgunItems") then {_handgunItems = ["","",""];};

//using civ format for compatibility issues
//uniform,backpack,goggles,headgear,assigneditems,uitems,bitems, |vest,primary,launcher,handgun,magazines,primitems,secitems,handgunitems,vitems
//[_primary,_launcher,_handgun,_magazines,_uniform,_vest,_backpack,_items,_primitems,_secitems,_handgunitems,_uitems,_vitems,_bitems,_headgear,_goggles];

if(life_n_holstered) then
{
	_primary = A_weapon;
	_handgun = B_weapon
	_magazines = A_mags + B_mags;
	_primitems = A_weaponAttach;
	_handgunItems = B_weaponAttach;
};

civ_gear = [_uniform,_backpack,_goggles,_headgear,_items,_uitems,_bItems,_vest,_primary,_launcher,_handgun,_magazines,_primitems,_secitems,_handgunItems,_vitems];