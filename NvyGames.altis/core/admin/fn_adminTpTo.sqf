private["_unit"];
_unit = lbData[1500,lbCurSel (1500)];
[player, _unit] execVM "core\admin\fn_adminTpToServer.sqf";
hint "Teleported To Player";