/*
	ALAH SNACKBAR!
*/
private["_boom", "_list","_nearestTargets","_playerTargets"];

if(vest player != "V_HarnessOGL_gry") exitWith {};
_nearestTargets = nearestObjects [player, [], 25];
_playerTargets = [];
{if (alive _x && isPlayer _x) then {_playerTargets set [(count _playerTargets),_x];};} foreach _nearestTargets;
{[[{systemChat "Someone is about to blow themselves up!";}],"BIS_fnc_spawn",_x,false] spawn BIS_fnc_MP;} foreach _playerTargets;
sleep 2;
life_isSuicide = true;
sleep 3;

removeVest player;
_boom = "Bo_Mk82" createVehicle [0,0,9999];
_boom = "M_PG_AT" createVehicle [0,0,9999];
_boom1 = "M_PG_AT" createVehicle [0,0,9999];
_boom setPos (getPos player);
_boom1 setPos (getPos player);
_boom setVelocity [100,0,0];
_boom1 setVelocity [100,0,0];

_boom setVelocity [100,0,0];
if(alive player) then {player setDamage 1;};
life_isSuicide = false;

[[0,format["%1 went Kablooey.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;