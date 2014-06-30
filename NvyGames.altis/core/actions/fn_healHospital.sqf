/*
	File: fn_healHospital.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Doesn't matter, will be revised later.
*/
if(life_cash < 50) exitWith {hint "You need $50!"};
titleText["Doctor Brian will treat you ...","PLAIN"];
sleep 2;
titleText["Just a few more seconds and you should be back on your feet ...","PLAIN"];
sleep 5;
titleText["Okay, I'm nearly finished now!","PLAIN"];
sleep 2;
if(player distance (_this select 0) > 5) exitWith {titleText["You have to stay close to the doctor.","PLAIN"]};
titleText["You are now healed!","PLAIN"];
player setdamage 0;
life_cash = life_cash - 50;