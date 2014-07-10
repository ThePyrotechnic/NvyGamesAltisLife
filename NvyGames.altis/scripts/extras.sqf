//Bank import and modification by: 5150 Joker
//Original bank design: SpookyGnu
//For NvyGames
//Copyright 2014

//Front right bunker
_pos = [15427.900391,15836.745117,6.00369];
_object = createVehicle ["Land_BagBunker_Small_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 178;
_object setPosATL _pos;
_object allowDamage false;

//Front left bunker
_pos = [15438.930664,15837.0419922,6.16646];
_object = createVehicle ["Land_BagBunker_Small_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 178;
_object setPosATL _pos;
_object allowDamage false;

//Stop barrier
_pos = [15432.859375,15839.438477,5.40805];
_object = createVehicle ["Land_BarGate_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 177;
_object setPosATL _pos;
_object allowDamage false;

//warning signs
_pos = [15442.766602,15841.640625,4.17071];
_object = createVehicle ["Land_Sign_WarningMilitaryArea_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosASL _pos;
[_object, 0, -0] call BIS_fnc_setPitchBank;
_object allowDamage false;

_pos = [15423.179688,15841.56543,4.29451];
_object = createVehicle ["Land_Sign_WarningMilitaryArea_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 178;
_object setPosASL _pos;
[_object, 0, -0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//land barriers on piers
_pos = [15450.283203,15692.630859,4.34139];
_object = createVehicle ["Land_HBarrier_3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 353;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15442.738281,15814.436523,4.27842];
_object = createVehicle ["Land_HBarrier_3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 355;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15446.415039,15785.34082,4.3616];
_object = createVehicle ["Land_HBarrier_3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 354;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15436.357422,15766.829102,4.19912];
_object = createVehicle ["Land_HBarrier_3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 354;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15459,15720.15332,4.35966];
_object = createVehicle ["Land_HBarrier_3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 355;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15466.160156,15661.706055,4.35363];
_object = createVehicle ["Land_HBarrier_3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 355;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15458.446289,15626.65332,4.35604];
_object = createVehicle ["Land_HBarrier_3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 352;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15475.0332031,15588.489258,4.31093];
_object = createVehicle ["Land_HBarrier_3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 354;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15467.611328,15551.732422,4.35656];
_object = createVehicle ["Land_HBarrier_3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//land bags
_pos = [15472.120117,15507.352539,49.6551];
_object = createVehicle ["Land_BagFence_Long_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosATL _pos;
_object allowDamage false;

_pos = [15485.376953,15509.69043,11.998];
_object = createVehicle ["Land_BagFence_Long_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 352;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//round bags
_pos = [15479.916992,15480.424805,11.9487];
_object = createVehicle ["Land_BagFence_Round_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 351;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;
//Designed by 5150 Joker
//NvyGames 2014 www.nvygames.com

_pos = [15487.0556641,15469.339844,12.0461];
_object = createVehicle ["Land_BagFence_Round_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 10;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

_pos = [15493.174805,15445.251953,16.4702];
_object = createVehicle ["Land_BagFence_Round_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 4.99999;
_object setPosASL _pos;
[_object, 0, -4.17233e-007] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15483.146484,15438.650391,16.5113];
_object = createVehicle ["Land_BagFence_Round_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 3;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

_pos = [15492.986328,15426.900391,21.0541];
_object = createVehicle ["Land_BagFence_Round_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15491.677734,15410.605469,21.0655];
_object = createVehicle ["Land_BagFence_Round_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//blue cargo box
_pos = [15507.491211,15470.991211,8.01232];
_object = createVehicle ["Land_Cargo20_blue_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 62;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//Wrecked cargo jet
_pos = [15479.880859,15202.0273438,0.319504];
_object = createVehicle ["Land_Wreck_Plane_Transport_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 179;
_object setPosASL _pos;
[_object, 0, -38] call BIS_fnc_setPitchBank;
_object allowDamage false;

//Navilight near cargo jet


//Wrecked catwalk on top of cargo jet
_pos = [15486.52832,15206.796875,-2.90274];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 79.9999;
_object setPosASL _pos;
[_object, -20, -8.40424e-006] call BIS_fnc_setPitchBank;
_object allowDamage false;

_pos = [15468.508789,15209.972656,-5.11819];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 300;
_object setPosASL _pos;
[_object, 0, -10] call BIS_fnc_setPitchBank;
_object allowDamage false;

//Wrecked tower
_pos = [15497.875,15348.652344,-10.2461];
_object = createVehicle ["Land_spp_Tower_dam_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 261;
_object setPosASL _pos;
[_object, -5.08889e-014, 9.85794e-021] call BIS_fnc_setPitchBank;
_object allowDamage false;

//Wrecked helicopter on tower
_pos = [15499.564453,15346.598633,22.7069];
_object = createVehicle ["Land_Wreck_Heli_Attack_02_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 166;
_object setPosASL _pos;
[_object, -20, -41.8769] call BIS_fnc_setPitchBank;
_object allowDamage false;

//Wrecked Humvee near pier
_pos = [15488.371094,15499.636719,12.0396];
_object = createVehicle ["Land_Wreck_HMMWV_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 303;
_object setPosASL _pos;
[_object, -1, -0.0149219] call BIS_fnc_setPitchBank;
_object allowDamage false;

//Dome ramp extension
_pos = [15414.897461,15402.769531,-2.12287];
_object = createVehicle ["Land_RampConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80.9998;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

_pos = [15414.0957031,15407.704102,-2.14287];
_object = createVehicle ["Land_RampConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80.9999;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

_pos = [15325.27832,15393.991211,-1.95367];
_object = createVehicle ["Land_RampConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 262.99;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

_pos = [15325.910156,15389.0332031,-1.964];
_object = createVehicle ["Land_RampConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 262.7;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//Stop killing people
_pos = [15433.325195,15842.0341797,4.38144];
_object = createVehicle ["Land_Graffiti_03_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 265;
_object setPosASL _pos;
[_object, -90, -90] call BIS_fnc_setPitchBank;
_object allowDamage false;