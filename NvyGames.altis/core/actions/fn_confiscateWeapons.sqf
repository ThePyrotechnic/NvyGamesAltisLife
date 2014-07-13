//---------------------------------------
//03/14/14
//Michael Manis (___Pyro___)
//Removes a restrained civilian's weapons
//---------------------------------------
private ["_unit","_primary","_pistol"];
_unit = _this select 0;
if (isNull cursorTarget) exitWith {hint "null cursorTarget";};
if (side _unit == west) exitWith {hint "cop unit";};
if(player == _unit) exitWith {hint "yourself?";};
if(!isPlayer _unit) exitWith {hint "not a player";};
if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Cannot search that person.";};
if (life_n_holstered) then
{
	_primary = A_weapon;
	_pistol = B_weapon;
	_launcher = secondaryWeapon player;
	
	_weapons set [count _weapons,_primary];
	_weapons set [count _weapons,_pistol];
	
	life_n_holstered = false; //hack to remove holstered weapons, basically confuses the holster script into overriding its variables
	_primary = getText(configFile >> "CfgWeapons" >> _primary >> "displayName");
	_pistol = getText(configFile >> "CfgWeapons" >> _pistol >> "displayName");
	
	if (_launcher != "") then
	{
		player removeWeaponGlobal _launcher; 
		_weapons set [count _weapons,_launcher];
		_launcher = getText(configFile >> "CfgWeapons" >> _launcher >> "displayName");
	};
}
	else
{
	_primary = primaryWeapon player;
	_pistol = handgunWeapon player;
	_launcher = secondaryWeapon player;

	if (_primary != "") then
	{
		player removeWeaponGlobal _primary; _weapons set [count _weapons,_primary];
		_primary = getText(configFile >> "CfgWeapons" >> _primary >> "displayName");
	};
	if (_pistol != "") then
	{
		player removeWeaponGlobal _pistol; _weapons set [count _weapons,_pistol];
		_pistol = getText(configFile >> "CfgWeapons" >> _pistol >> "displayName");
	};
	if (_launcher != "") then
	{
		player removeWeaponGlobal _launcher; _weapons set [count _weapons,_launcher];
		_launcher = getText(configFile >> "CfgWeapons" >> _launcher >> "displayName");};
	};
};

[[format ["Successfuly removed<br/>%1<br/>%2<br/>%3",_primary,_pistol,_launcher]],"BIS_fnc_guiMessage",_cop,false] spawn BIS_fnc_MP;