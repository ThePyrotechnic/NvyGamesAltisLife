/*

	f [ BOOL holster]

*/

private["_holster","_primary","_launcher","_handgun","_magazines","_primitems","_secitems","_handgunitems"];

_holster = _this select 0;

if(_holster && life_n_holstered) exitWith {systemChat "Holster: Status match!";}; //status match

if(_holster) then
{
	systemChat "You holster your weapons. (Shift+H to unholster)";

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
	[] spawn
	{
		while {life_n_holstered} do
		{
			hint "Reminder: You have holstered weapons."
			sleep 180;
		};
	};
}
else
{
	if(isNil("life_n_holster_data")) exitWith {};
	if( count life_n_holster_data < 1) exitWith {};
	life_n_holstered = false;

	[] call life_fnc_holsterLoadGear;
};