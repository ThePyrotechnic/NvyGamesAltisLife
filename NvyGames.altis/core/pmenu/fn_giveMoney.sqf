/*
	File: fn_giveMoney.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives the selected amount of money to the selected player.
*/
private["_unit","_amount"];
_amount = ctrlText 2018;
ctrlShow[2001,false];
if((lbCurSel 2022) == -1) exitWith {hint "No one was selected!";ctrlShow[2001,true];};
_unit = lbData [2022,lbCurSel 2022];
_unit = call compile format["%1",_unit];
if(isNil "_unit") exitWith {ctrlShow[2001,true];};
if(_unit == player) exitWith {ctrlShow[2001,true];};
if(isNull _unit) exitWith {ctrlShow[2001,true];};

//A series of checks *ugh*
if(!life_use_atm) exitWith {hint "You've just robbed a bank! You can not give money now.";ctrlShow[2001,true];};
if(!([_amount] call fnc_isnumber)) exitWith {hint "Invalid number";ctrlShow[2001,true];};
if(parseNumber(_amount) <= 0) exitWith {hint "Invalid number";ctrlShow[2001,true];};
if(parseNumber(_amount) > life_cash) exitWith {hint "You do not have that much money!";ctrlShow[2001,true];};
if(isNull _unit) exitWith {ctrlShow[2001,true];};
if(isNil "_unit") exitWith {ctrlShow[2001,true]; hint "The selected player is not in range";};
hint format["You gave $%1 to %2.",[(parseNumber(_amount))] call life_fnc_numberText,name _unit];
life_cash = life_cash - (parseNumber(_amount));
[1,false] call life_fnc_sessionHandle;
[[_unit,_amount,player],"life_fnc_receiveMoney",_unit,false] spawn life_fnc_MP;
[] call life_fnc_p_updateMenu;

ctrlShow[2001,true];