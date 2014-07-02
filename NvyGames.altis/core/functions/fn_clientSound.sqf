private["_sound"];
_sound = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _sound) exitWith {};
playSound [_sound,false];