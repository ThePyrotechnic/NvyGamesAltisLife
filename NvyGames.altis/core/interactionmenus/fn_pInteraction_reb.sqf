/*

	Shows pInteraction Menu
	for all civ players

*/

private["_display","_curTarget","_bUnrestrain","_bArrest","_bTicket","_bEscort","_bPutInCar","_bSearch","_bShowLicenses","_bTorture","_dist"];
if(!dialog) then 
{
    createDialog "pInteraction_Reb";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target

if(!isPlayer _curTarget) exitWith {hint "The target is not a player."; closeDialog 0; };
_dist = player distance _curTarget;


_display = findDisplay 37400;

_bUnrestrain = _display displayCtrl 2401;
//_bArrest = _display displayCtrl 2402;
//_bTicket = _display displayCtrl 2403;
_bEscort = _display displayCtrl 2404;
_bPutInCar = _display displayCtrl 2405;
_bTorture = _display displayCtrl 2406;
//_bShowLicenses = _display displayCtrl 2407;
_bConfiscateWeapons = _display displayCtrl 2407;

life_pInact_curTarget = _curTarget;
if(_dist > 4) exitWith {hint "You must be within 3 meters to interact with this player!"};

///////////////////////////////////////////////////////
/////////////Set actions

//Set Unrestrain Button

_bUnrestrain ctrlSetTooltip localize "STR_pInAct_Unrestrain";
_bUnrestrain buttonSetAction "closeDialog 0; [life_pInact_curTarget] call life_fnc_unrestrain; closeDialog 0;";
/*
 * In der aktuellen Einstellung kann jeder spieler einen anderen entfesseln
 */

//Set Check Licenses Button
//_bShowLicenses ctrlSetTooltip localize "STR_pInAct_checkLicenses";
//_bShowLicenses buttonSetAction "[[player],""life_fnc_licenseCheck"",life_pInact_curTarget,FALSE] spawn life_fnc_MP";

//Set _bTorture Button
_bTorture ctrlSetTooltip "Torture";
_bTorture buttonSetAction "[life_pInact_curTarget] spawn life_fnc_TorturePlayer; closeDialog 0;";

_bConfiscateWeapons ctrlSetToolTip localize "STR_pInAct_Confiscate";
_bConfiscateWeapons buttonSetAction "closeDialog 0; [life_pInact_curTarget] call life_fnc_unrestrain; closeDialog 0;";
//Set Escort Button
if((_curTarget getVariable["Escorting",false])) then 
{
	_bEscort ctrlSetText "STOP";
	_bEscort ctrlSetTooltip localize "STR_pInAct_StopEscort";
	_bEscort buttonSetAction "closeDialog 0; [life_pInact_curTarget] call life_fnc_stopEscorting; [life_pInact_curTarget] call life_fnc_copInteractionMenu;";
} 
else 
{
	_bEscort ctrlSetTooltip localize "STR_pInAct_Escort";
	_bEscort buttonSetAction "closeDialog 0; [life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";
};


//Set Ticket Button
//_bTicket ctrlSetTooltip localize "STR_pInAct_TicketBtn";
//_bTicket buttonSetAction "[life_pInact_curTarget] call life_fnc_ticketAction;";

//_bArrest ctrlSetTooltip localize "STR_pInAct_Arrest";
//_bArrest buttonSetAction "[life_pInact_curTarget] call life_fnc_arrestAction;";

_bPutInCar ctrlSetTooltip localize "STR_pInAct_PutInCar";
_bPutInCar buttonSetAction "closeDialog 0; [life_pInact_curTarget] call life_fnc_putInCar;";
if ((!(_curTarget getVariable ["life_n_holstered",true])) && currentWeapon _curTarget == "") then
{
	_bConfiscateWeapons ctrlEnable false;
};

