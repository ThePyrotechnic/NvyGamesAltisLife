/*
	File: fn_searchVehAction.sqf
*/
private["_vehicle","_data"];
_vehicle = cursorTarget;
if((_vehicle isKindOf "Car") || !(_vehicle isKindOf "Air") || !(_vehicle isKindOf "Ship")) then
{
	_owners = _vehicle getVariable ["vehicle_info_owners", []];	
	
	if((count _owners) == 0) exitWith
	{
	    hint "The vehicle has no owner.";
	};
	
	life_action_in_use = true;
	hint "Search Vehicle ...";
	sleep 3;
	life_action_in_use = false;
	if(player distance _vehicle > 10 || !alive player || !alive _vehicle) exitWith {hint "Could not search the vehicle!";};
	//_inventory = [(_vehicle getVariable "vehicle_info_inv")] call fnc_veh_inv;
	//if(isNil {_inventory}) then {_inventory = "Nothing in storage."};
	_owners = [_owners] call life_fnc_vehicleOwners;
	
	if(_owners == "any<br/>") then
	{
		_owners = "No owner: Seize it!<br/>";
	};
	hint parseText format["<t color='#FF0000'><t size='2'>Info</t></t><br/><t color='#FFD700'><t size='1.5'>owner</t></t><br/> %1",_owners];
};