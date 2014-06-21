/*
	File: fn_virt_buy.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buy a virtual item from the store.
*/
private["_type","_price","_amount","_diff","_name","_marketprice","_isillegal","_illegalmoney"];
if((lbCurSel 2401) == -1) exitWith {hint "Du musst ein Item auswählen das du buy möchtest."};
_type = lbData[2401,(lbCurSel 2401)];
_price = lbValue[2401,(lbCurSel 2401)];
_amount = ctrlText 2404;

///Can buy illegal stuff only with illegal money
_isillegal = (_type in life_illegal_item_buyedByIllegalMoney);
_illegalmoney = missionNamespace getVariable "life_inv_illegalmoney";

////////////##73

_marketprice = [_type] call life_fnc_marketGetBuyPrice;

if(_marketprice != -1) then
{
	_price = _marketprice;
};

/*if(_marketprice != -1) exitWith
{
	hint "Du kannst das nicht buy!";
};*/

///////////


if(!([_amount] call fnc_isnumber)) exitWith {hint "You've given no current number.";};
_diff = [_type,parseNumber(_amount),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
_amount = parseNumber(_amount);
if(_diff <= 0) exitWith {hint "You do not have enough space for this number!"};
_amount = _diff;

if(_isillegal) then
{
	if((_price * _amount) > _illegalmoney) exitWith {hint "You do not have enough illegal money!"};

	_name = [([_type,0] call life_fnc_varHandle)] call life_fnc_varToStr;

	if(([true,_type,_amount] call life_fnc_handleInv)) then
	{
		hint format["Du kaufst %1 %2 für $%3 (Illegal)",_amount,_name,[(_price * _amount)] call life_fnc_numberText];
		//life_cash = life_cash - (_price * _amount);
		
		[false, "illegalmoney", _price * _amount] call life_fnc_handleInv; //Remove illegal money
	
		if(_marketprice != -1) then 
		{ 
			//##94
			[_type, _amount] spawn
			{
				sleep 120;
				[_this select 0,_this select 1] call life_fnc_marketBuy;
			};
		};
		[] call life_fnc_virt_update;
	};

}
else
{
	if((_price * _amount) > life_cash) exitWith {hint "You do not have so much money!"};

	_name = [([_type,0] call life_fnc_varHandle)] call life_fnc_varToStr;

	if(([true,_type,_amount] call life_fnc_handleInv)) then
	{
		hint format["You buy %1 %2 for $%3",_amount,_name,[(_price * _amount)] call life_fnc_numberText];
		life_cash = life_cash - (_price * _amount);
	
		if(_marketprice != -1) then 
		{ 
			//##94
			[_type, _amount] spawn
			{
				sleep 120;
				[_this select 0,_this select 1] call life_fnc_marketBuy;
			};			
		};
		[] call life_fnc_virt_update;
	};
};
