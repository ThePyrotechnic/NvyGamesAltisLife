/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint "You must select an item first!";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			//player say3D "drink";
			[player,"drink"] call life_fnc_globalSound;
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			
			//player say3D "drink";
			[player,"drink"] call life_fnc_globalSound;
			
			[] spawn
			{
				life_redgull_effect = time;
				titleText["You can now run farther for 3 minutes!","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint "You've already have a Spike Strip in active use."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn fnc_drug_use;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint "You can not fill from inside the vehicle!"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach","frogleg"]):
	{
		[_item] call life_fnc_eatFood;
	};
	
	case "fishing":
	{
		[] spawn fnc_fishing;
	};
	
	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	case (_item == "marijuana"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			//[] spawn fnc_drugweed_use;
			[] spawn life_fnc_useMarijuana;
		};
	};
	
	case (_item == "cocainep"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{			
			[] spawn useCocaine;
		};
	};
	
	case (_item == "cannabis"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{			
			[] spawn useWeed;
		};
	};
	
	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{			
			[] spawn useHeroin;
		};
	};
	
	case (_item == "vrepairkit"): //##49
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{			
			[] spawn life_fnc_useVRepairkit;
		};
	};
	
	case (_item == "vfirstaidkit"): //##53
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{			
			[] spawn life_fnc_useVFirstaidkit;
		};
	};
	
	case ( [_item] call life_fnc_vitem_isVItem):
	{
		[_item] spawn life_fnc_vitem_unpack;
	};
	
	case (_item in ["uitem_furniture_01", "uitem_furniture_02", "uitem_furniture_03", "uitem_furniture_04", "uitem_furniture_05"]):
	{
		[_item] spawn life_fnc_houseUseFurniture;
	};
	
	case (_item == "uitem_bomb"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{		
			closeDialog 0;
			[] spawn life_fnc_playerUseBomb;
		};
	};
	case (_item == "uitem_troll_money"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			_pos = getpos player;
			_pos = [_pos select 0, _pos select 1, 0];
			_obj = "Land_Money_F" createVehicle _pos;
			_obj setPos _pos;
		};
	};
	default
	{
		hint "You cannot use this item.";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;