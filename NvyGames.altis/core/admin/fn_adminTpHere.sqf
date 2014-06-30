private["_unit"];
_unit = lbData[1500,lbCurSel (1500)];
[[player, _unit], "life_fnc_adminTpHereServer", false] spawn "life_fnc_MP";
hint "Teleported Player To You";
