/*
	File: welcomecredits.sqf
	Author: HellsGate
	Date: 14/12/2013
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 7; //<-- How long is the text on the screen for ? Recommended: 1 

sleep 4; //Wait in seconds before the credits start after player is in-game

_role1 = "Welcome to";
_role1names = ["Nvy Games Altis Life."];
_role2 = "Developers:";
_role2names = ["Buddytex", "Clock", "Pyro"];
_role3 = "Web Dev + Bank Port:";
_role3names = ["5150 Joker"];
_role4 = "Textures:";
_role4names = ["EmpireOpsJT"];
_role5 = "Cinematography + Audio Specialist";
_role5names = ["Capt Pie"];
_role6 = "TeamSpeak Dev:";
_role6names = ["The Babbs"];
_role7 = "Rebel Faction Leaders:";
_role7names = ["5150 Joker", "EmpireOps"];
_role8 = "Military Police Leaders:";
_role8names = ["Capt Kevin Pie", "The Babbs", "Marine By God"];
_role9 = "Independent Faction Leaders:";
_role9names = ["Clock", "Buddytex"];
_role10 = "Visit Us:";
_role10names = ["www.nvygames.com"];
_role11 = "TeamSpeak Channel:";
_role11names = ["ts3.nvygames.com"];
_role12 = "For Server Rules:";
_role12names = ["Press M To View"];
_role13 = "Original Bank Design by:";
_role13names = ["Spookygnu"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#a6f20b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names],
[_role10,_role10names],
[_role11,_role11names],
[_role12,_role12names],
[_role13,_role13names]
];