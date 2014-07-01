/*
file: fn_robShops.sqf
Author: MrKraken
Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
Description:
Executes the rob shob action!
Idea developed by PEpwnzya v1.0
*/
private["_robber","_shop","_name","_kassa","_ui","_progress","_pgText","_cP","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_action = [_this,2] call BIS_fnc_param;//Action name
_pos = GetPos _shop;
if(side _robber != civilian) exitWith { hint "You can not rob this station!" };
if (vehicle player != _robber) exitWith { hint "Get out of your vehicle!" };
if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "You cannot rob this gas station without a weapon!" };
if(_shop getVariable ["coolDown",false]) exitWith {hint "You must wait 5 minutes before attempting to rob again!"};
if(_shop getVariable["rip",false]) exitWith {hint "This shop is already being robbed!"};

_shop setVariable ["rip",true,true];
[[_shop,"gas_rob",150],"life_fnc_playSound",true,false] spawn BIS_fnc_MP;
_kassa = 3000 + round(random 12000);
_shop switchMove "AmovPercMstpSsurWnonDnon";
hint "The cashier hit the silent alarm, police have been alerted!"; 
[[1,format["REPORT: A gas station is being robbed!", [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
_marker = createMarker [format["Marker%1",_shop], _pos];
_marker setMarkerColor "ColorRed";
_marker setMarkerText "Robbery in progress!";
_marker setMarkerType "mil_warning";

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Robbery in Progress, stay close (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

while{true} do
{
	sleep 3; //5 mintue robbery
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["Robbery in Progress, stay close (10m) (%1%2)...",round(_cP * 100),"%"];
	if(_cP >= 1) exitWith {};
	if(_robber distance _shop > 10) exitWith {};
	if!(alive _robber) exitWith {};
	if(life_isTazed) exitWith {};
};

if(!(alive _robber)) exitWith 
{
	deletemarker _marker; 
	[_shop] spawn
	{
		private["_shop"];
		_shop = _this select 0;
		_shop setVariable ["coolDown",true,true];
		sleep 300;
		_shop setVariable ["coolDown",false,true];
	};
	_shop setVariable ["rip",false,true];
};
if(_robber distance _shop > 10) exitWith 
{ 
	_shop switchMove ""; 
	hint "You need to stay within 10m to Rob register! - Now the register is locked."; 
	5 cutText ["","PLAIN"]; 
	deletemarker _marker;
	[_shop] spawn
	{
		private["_shop"];
		_shop = _this select 0;
		_shop setVariable ["coolDown",true,true];
		sleep 300;
		_shop setVariable ["coolDown",false,true];
	};
	_shop setVariable ["rip",false,true];
};
if(life_isTazed) exitWith
{
	_shop switchMove ""; 
	hint "You were tazed, and the robbery failed!"; 
	5 cutText ["","PLAIN"]; 
	deletemarker _marker;
	[_shop] spawn
	{
		private["_shop"];
		_shop = _this select 0;
		_shop setVariable ["coolDown",true,true];
		sleep 300;
		_shop setVariable ["coolDown",false,true];
	};
	_shop setVariable ["rip",false,true];
};
5 cutText ["","PLAIN"];

titleText[format["You have stolen $%1, now get away before the cops arrive!",[_kassa] call life_fnc_numberText],"PLAIN"];
life_cash = life_cash + _kassa;
[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
deletemarker _marker;
life_use_atm = false;
sleep (30 + random(180));
life_use_atm = true;
[[1,format["NEWS: A gas station was just robbed for a total of $%1", [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;

[_shop] spawn
{
	private["_shop"];
	_shop = _this select 0;
	_shop setVariable ["coolDown",true,true];
	sleep 300;
	_shop setVariable ["coolDown",false,true];
};
_shop switchMove "";
_shop setVariable ["rip",false,true];