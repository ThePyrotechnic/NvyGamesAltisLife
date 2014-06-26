/*

	f [ BOOL holster]

*/

private["_holster","_primary","_launcher","_handgun","_magazines","_primitems","_secitems","_handgunitems"];

_holster = _this select 0;

if(_holster && life_n_holstered) exitWith {systemChat "Holster: Status match!";}; //status match

if(_holster) then
{
	systemChat "You pack away your weapons.";

	//Call holster save fnc
	[] call life_fnc_holsterSaveGear;
	
	//Clear everything
	RemoveAllWeapons player;
	{player removeMagazine _x;} foreach (magazines player);
	//removeUniform player;
	//removeVest player;
	//removeBackpack player;
	//removeGoggles player;
	//removeHeadGear player;
	{
		player unassignItem _x;
		player removeItem _x;
	} foreach (assignedItems player);
	
	//Set final vars
	life_n_holstered = true;
	
<<<<<<< HEAD
		A_mags = [];
		B_mags = [];
		_magazinesAmmoFull = magazinesAmmoFull _unit;
		
		for "_i" from 0 to ((count _magazinesAmmoFull)-1) do
		{
			_type = (_magazinesAmmoFull select _i) select 3;
			if(_type == 1) then 
			{
				A_mags = A_mags + [(_magazinesAmmoFull select _i) select 0];
			};	
			if(_type == 2) then 
			{
				B_mags = B_mags + [(_magazinesAmmoFull select _i) select 0];
			};				
		};
		
		B_mags = B_mags + [primaryWeaponMagazine _unit];
		A_mags = A_mags + [handgunMagazine _unit];
		A_count = _unit ammo A_weapon;
		B_count = _unit ammo B_weapon;
		
		_unit removeWeapon A_weapon;
		_unit removeWeapon B_weapon;
		
		sleep 0.5;
		life_n_holstered = true;
=======
	hintSilent "Your Items are not going away! Shift + H to use to get them out again!";
>>>>>>> parent of 3fc0030... Fixed fishing (#61), sync on death (#50) and holstering revamped (#47). See files for misc.
}
else
{
	if(isNil("life_n_holster_data")) exitWith {};
	if( count life_n_holster_data < 1) exitWith {}; 
	
	systemChat "You pack up your weapons again.";
	life_n_holstered = false;
	
	[] call life_fnc_holsterLoadGear;
};