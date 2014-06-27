/*
	File: fn_impoundAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Impounds the vehicle
*/
private["_vehicle","_type","_time","_price","_vehicleData","_upp","_ui","_progress","_pgText","_cP","_vehownerid","_costful_impound","_seize"];
_vehicle = cursorTarget;
_seize = false;
if (typeOf _vehicle in ['O_MRAP_02_F', 'B_G_Offroad_01_armed_F']) then {_seize = true};
//ADD ##16
_vehicleData = _vehicle getVariable["vehicle_info_owners",[]];
if(count _vehicleData == 0) exitWith {deleteVehicle _vehicle}; //Bad vehicle.

if(player distance cursorTarget > 10) exitWith {};
// ##16 ^v swapped
if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith {};


////////////Costful impound (police impound)
_vehownerid = (_vehicleData select 0) select 0;
_costful_impound = false;

//if((getPlayerUID player) == _vehownerid) then {_costful_impound = true;}; //if owner => it costs sth

///Check if player is online and is west => costs sth //INCLUDES OWNER
{
	if(alive _x && /*_x != player &&*/ (getPlayerUID _x) == _vehownerid) exitWith
	{
		if(side _x == west) then {_costful_impound = true; };
	};
} 
foreach playableUnits;

if(_costful_impound) then
{
	hint "You are impounding a vehicle that belongs to you or a fellow police officer. This costs $ 500!";
	
	sleep 1.5;
	
	if(life_atmcash - 500 < 0) exitWith
	{
		hint "You do not have enough money in your bank account!";
	};
};


if((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship")) then
{
	//DEL ##16
	//_vehicleData = _vehicle getVariable["vehicle_info_owners",[]];
	//if(count _vehicleData == 0) exitWith {deleteVehicle _vehicle}; //Bad vehicle.
	_vehicleName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
	
	if(!_costful_impound) then
	{
		if (_seize) then
		{
			[[0,format["%1, your %2 is being seized by the police.",(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
			_upp = "Seizing Vehicle";
		}
		else
		{
			[[0,format["%1, your %2 is being impounded by the police.",(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
			_upp = "Impounding Vehicle";
		};
	};
	
	life_action_in_use = true;
	
	
	//Setup our progress bar.
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;
	while{true} do
	{
		sleep 0.09;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vehicle > 10) exitWith {};
		if(!alive player) exitWith {};
	};
	5 cutText ["","PLAIN"];
	
	if(player distance _vehicle > 10) exitWith {hint "Impounding stopped."; life_action_in_use = false;};
	if(!alive player) exitWith {life_action_in_use = false;};
	//_time = _vehicle getVariable "time";
	//if(isNil {_time}) exitWith {deleteVehicle _vehicle; hint "This vehicle was hacked in"};
	//if((time - _time)  < 120) exitWith {hint "This is a freshly spawned vehicle, you have no right impounding it."};
	if((count crew _vehicle) == 0) then
	{
		if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith {life_action_in_use = false;};
		_type = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
		switch (true) do
		{
			case (_vehicle isKindOf "Car"): {_price = life_impound_car;};
			case (_vehicle isKindOf "Ship"): {_price = life_impound_boat;};
			case (_vehicle isKindOf "Air"): {_price = life_impound_air;};
		};
		
		if (_seize) then
		{
			deleteVehicle _vehicle;
		}
		else
		{
			life_impound_inuse = true;
			[[_vehicle,true,player],"TON_fnc_vehicleStore",false,false] spawn life_fnc_MP;
			waitUntil {!life_impound_inuse};		
		};
		
		if(_costful_impound) then
		{
			life_atmcash = life_atmcash - 500;
			
			if(life_atmcash < 0) then { life_atmcash = 0; };
		}
		else
		{
			hint format["You have impounded a %1.\n\nYou recieve $%2!",_type,_price];
			[[0,format["%1 the vehicle %2 confiscated (vehicle: %3)",name player,(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
			
			life_atmcash = life_atmcash + _price;
		};
	}
		else
	{
		hint "Impounding stopped.";
	};
};
life_action_in_use = false;