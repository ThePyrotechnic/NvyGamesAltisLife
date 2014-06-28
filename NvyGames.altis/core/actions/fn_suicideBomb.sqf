/*
	ALAH SNACKBAR!
*/
private["_boom", "_list"];
if(vest player != "V_HarnessOGL_gry") exitWith {};

sleep 2;
life_isSuicide = true;
sleep 3;

removeVest player;
_boom = "M_PG_AT" createVehicle [0,0,9999];
_boom1 = "M_PG_AT" createVehicle [0,0,9999];
_boom setPos (getPos player);
_boom1 setPos (getPos player);
_boom setVelocity [100,0,0];
_boom1 setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};

life_isSuicide = false;

[[0,format["%1 went Kablooey.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;