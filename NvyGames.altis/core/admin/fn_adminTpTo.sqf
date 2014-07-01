private["_unit"];
_unit = lbData[1500,lbCurSel (1500)];
_unit = call compile format["%1", _unit];
if(isNull _unit) exitWith {};
if(isNil "_unit") exitWith {};
[[player, _unit], "life_fnc_adminTpToServer", false] spawn life_fnc_MP;
hint "Teleported To Player";