/*
*
*	Take selected item in ##3502 and take it to PLAYERINV
*
*/

//SCHEMA: IF handleInv == TRUE THEN houseInv
//=> handleInv returns true if successful

private ["_selectedindex", "_count", "_item_count", "_item", "_took_success","_done", "__lb_item", "__lb_index", "__lb_dstcount", "__lb_current_count"];

_selectedindex = lbCurSel 3502;
_count = ctrlText 3505;

if( _selectedindex == -1) exitWith
{
	hint "Nothing selected.";
};
if(! ([_count] call fnc_isnumber)) exitWith
{
	hint "You have to enter a number.";
};
if( _selectedindex == -1) exitWith
{
	hint "None Selected.";
};
if(life_house_current_inv_running) exitWith
{
	hint "Inventory just updated.";
};


_item = lbData [3502, _selectedindex]; //item name
_item_count = lbValue [3502, _selectedindex]; //how many items are existing in PINV?

_count = parseNumber _count;
_count = round _count;
if( _count < 0) exitWith { hint "Invalid number."; };
if(_count > _item_count) exitWith {hint "Excessive number entered.";};


//Take item from HOUSE and put it into PINV IF NOT MONEY
_took_success = false; //because of shit script language
if(_item == "money") then
{
	//just add money to player cash
	life_cash = life_cash + _count;
	_took_success = true; //OK, update HOUSEINV
}
else
{
	if(([true, _item, _count] call life_fnc_handleInv) ) then
	{
		_took_success = true; //OK
	}
	else
	{
		hint "Could not put item into the inventory!";
	};
};

////////Update list
if(_took_success) then
{
	_done = false; //false = not updated => something is VERY wrong!!!
		
	{
		if((_x select 0) == _item) then
		{
			life_house_current_inv set [_forEachIndex, [_item, (_x select 1) - _count]];
			_done = true;
		};
	}
	foreach life_house_current_inv;
	
	if(!_done) then
	{
		hint "Data error! Please report to an admin!";
		life_house_current_inv = []; //empty it for security reasons
		sleep 3;
		hint "Inventory emptied for safety reasons!";
	};
};



//Final refresh
[] spawn life_fnc_houseInventory_refresh;