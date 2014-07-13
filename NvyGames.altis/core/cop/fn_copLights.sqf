/*
	File: fn_copLights.sqf
	Author: mindstorm, modified by Adanteh
	
	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/
Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_leftRed","_lightleft2","_lightright2","_numLights"];
_vehicle = _this select 0;
_numLights = 2;
if ((typeOf _vehicle) == "B_MRAP_01_F") then { _numLights = 4; };
	
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lights")) exitWith {};
_lightRed = [20, 0.1, 0.1];
_lightBlue = [0.1, 0.1, 20];

_lightleft = "#lightpoint" createVehicle getpos _vehicle;   
if (_numLights == 4) then { _lightright2 = "#lightpoint" createVehicle getpos _vehicle; };
sleep 0.2;
_lightleft setLightColor _lightRed; 
_lightleft setLightDayLight true;
_lightleft setLightBrightness 0.2;  
_lightleft setLightAmbient [0.1,0.1,1]; 

if (_numLights == 4) then
{
	_lightright2 setLightColor _lightRed; 
	_lightright2 setLightDayLight true;
	_lightright2 setLightBrightness 0.2;  
	_lightright2 setLightAmbient [0.1,0.1,1];
};

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F": { _lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]]; };
	case "C_SUV_01_F": { _lightleft lightAttachObject [_vehicle, [-0.55, 0.6, -0.1]]; };
	case "B_MRAP_01_F": { _lightleft lightAttachObject [_vehicle, [-0.5, 1.6, -0.8]]; _lightright2 lightAttachObject [_vehicle, [0.6, -1.3, 0.5]]; };
};

_lightleft setLightAttenuation [0.181, 0, 1000, 130]; 
_lightleft setLightIntensity 10;
_lightleft setLightFlareSize 0.38;
_lightleft setLightFlareMaxDistance 150;
_lightleft setLightUseFlare true;

if (_numLights == 4) then
{
	_lightright2 setLightAttenuation [0.181, 0, 1000, 130]; 
	_lightright2 setLightIntensity 10;
	_lightright2 setLightFlareSize 0.38;
	_lightright2 setLightFlareMaxDistance 150;
	_lightright2 setLightUseFlare true;
};

_lightright = "#lightpoint" createVehicle getpos _vehicle;   
if (_numLights == 4) then { _lightleft2 = "#lightpoint" createVehicle getpos _vehicle; };

sleep 0.2;
_lightright setLightColor _lightBlue; 
_lightright setLightDayLight true;
_lightright setLightBrightness 0.2;  
_lightright setLightAmbient [0.1,0.1,1]; 

if (_numLights == 4) then
{
	_lightleft2 setLightColor _lightBlue; 
	_lightleft2 setLightDayLight true;
	_lightleft2 setLightBrightness 0.2;  
	_lightleft2 setLightAmbient [0.1,0.1,1];
};

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F": { _lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]]; };
	case "C_SUV_01_F": { _lightright lightAttachObject [_vehicle, [0.55, 0.6, -0.1]]; };
	case "B_MRAP_01_F": { _lightright lightAttachObject [_vehicle, [0.5, 1.6, -0.8]]; _lightleft2 lightAttachObject [_vehicle, [-0.6, -1.3, 0.5]]; };
};

_lightright setLightAttenuation [0.181, 0, 1000, 130]; 
_lightright setLightIntensity 10;
_lightright setLightFlareSize 0.38;
_lightright setLightFlareMaxDistance 150;
_lightright setLightUseFlare true;

if (_numLights == 4) then
{
	_lightleft2 setLightAttenuation [0.181, 0, 1000, 130]; 
	_lightleft2 setLightIntensity 10;
	_lightleft2 setLightFlareSize 0.38;
	_lightleft2 setLightFlareMaxDistance 150;
	_lightleft2 setLightUseFlare true;
};

_leftRed = true;  
while{ (alive _vehicle)} do  
{  
	if(!(_vehicle getVariable "lights")) exitWith {};
	if(_leftRed) then  
	{  
		_leftRed = false;  
		_lightright setLightBrightness 0.0;  
		if (_numLights == 4) then { _lightleft2 setLightBrightness 0.0; };
		sleep 0.05;
		_lightleft setLightBrightness 6;  
		if (_numLights == 4) then { _lightright2 setLightBrightness 6; };
	}  
		else  
	{  
		_leftRed = true;  
		_lightleft setLightBrightness 0.0;  
		if (_numLights == 4) then { _lightright2 setLightBrightness 0.0; };
		sleep 0.05;
		_lightright setLightBrightness 6;  
		if (_numLights == 4) then { _lightleft2 setLightBrightness 6; };
	};  
	sleep (_this select 1);  
};  
deleteVehicle _lightleft;
deleteVehicle _lightright;
if (_numLights == 4) then {
	deleteVehicle _lightleft2;
	deleteVehicle _lightright2;
};