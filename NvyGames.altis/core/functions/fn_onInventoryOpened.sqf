private["_unit", "_container", "_player"];
_unit = _this select 0;
_container = _this select 1;
_player = cursorTarget;

if(backpackContainer _player != _container) exitWith {};

if(backpackContainer _unit == _container) exitWith {};

[nil,_player,"loc",{hint "Someone is in your backpack!";}] call RE;

