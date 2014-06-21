//Designed by spookygnu & ported/modified by 5150 Joker
//NvyGames 2014 www.nvygames.com

//North cross bridge near main piers
_pos = [15520.649414,15479.339844,0.224811];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
[_object, -11, 0.00368319] call BIS_fnc_setPitchBank;
_object allowDamage false;

//End north cross bridge


_pos = [15425.359375,15359.480469,17.6787];
_object = createVehicle ["Land_IndPipe2_bigL_R_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350.953;
_object setPosASL _pos;
[_object, 8.53774e-007, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15424.926758,15315.753906,17.7267];
_object = createVehicle ["Land_IndPipe2_bigL_R_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80.9534;
_object setPosASL _pos;
[_object, -2.13443e-007, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15429.541992,15318.733398,17.6932];
_object = createVehicle ["Land_IndPipe2_bigL_L_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80.9534;
_object setPosASL _pos;
[_object, -1.06722e-007, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15429.387695,15285.907227,17.7067];
_object = createVehicle ["Land_IndPipe2_bigL_R_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 170.762;
_object setPosASL _pos;
[_object, -2.66804e-008, 5.60573e-014] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15363.136719,15305.682617,17.6581];
_object = createVehicle ["Land_IndPipe2_bigL_L_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 261.236;
_object setPosASL _pos;
[_object, 2.13443e-007, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

_pos = [15368.314453,15307.637695,17.6787];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260.6;
_object setPosASL _pos;
[_object, 4.26887e-007, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15372.660156,15247.31543,17.9866];
_object = createVehicle ["Land_IndPipe2_bigL_L_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 170.953;
_object setPosASL _pos;
[_object, -8.53774e-007, -0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15461.844727,15200.694336,17.9156];
_object = createVehicle ["Land_IndPipe2_bigL_L_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 261.436;
_object setPosASL _pos;
[_object, -2.13443e-007, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15457.0244141,15202.206055,17.9107];
_object = createVehicle ["Land_IndPipe2_bigL_L_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 81.3184;
_object setPosASL _pos;
[_object, 2.13443e-007, -1.42807e-012] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15498.505859,15290.28125,17.8926];
_object = createVehicle ["Land_IndPipe2_bigL_R_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 171.985;
_object setPosASL _pos;
[_object, 2.13443e-007, -0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//bank catbase 1
_pos = [15451.547852,15250.209961,18.0516];
_object = createVehicle ["Land_IndPipe2_bigL_R_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 351;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//bank catbase 2
_pos = [15453.780273,15283.0927734,17.8691];
_object = createVehicle ["Land_IndPipe2_bigL_R_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 261;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//south light tower catbase


//west light tower catbase
_pos = [15452.212891,15365.353516,17.7523];
_object = createVehicle ["Land_IndPipe2_bigL_R_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 172;
_object setPosASL _pos;
[_object, 0, -0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//west light tower cat bridge large
_pos = [15440.829102,15362.818359,17.7195];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 81.9999;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//west light tower cat bridge small link
_pos = [15431.655273,15361.623047,17.6907];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80.0991;
_object setPosASL _pos;
[_object, 5.08889e-014, 3.07871e-019] call BIS_fnc_setPitchBank;
_object allowDamage false;

//west light tower bridge lights
_pos = [15438.984375,15362.533203,25.9476];
_object = createVehicle ["Land_runway_edgelight", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15431.40625,15361.450195,25.8865];
_object = createVehicle ["Land_runway_edgelight", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15447.898438,15363.791016,25.9588];
_object = createVehicle ["Land_runway_edgelight", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;
//end west light tower bridge lights

//north agola solar main bridge extensions
_pos = [15429.401367,15326.288086,17.6959];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 352.5;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15428.00292969,15335.133789,17.7103];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15425.213867,15352.330078,17.6698];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 351;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15426.519531,15343.848633,17.6453];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 351;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15429.306641,15293.359375,17.7074];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 352;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15426.929688,15308.790039,17.7154];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15428.137695,15301.287109,17.7066];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 351.8;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//west tower extension
_pos = [15381.524414,15309.882813,17.6776];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 261;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

_pos = [15417.0986328,15315.5625,17.7025];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 261.2;
_object setPosASL _pos;
[_object, -4.27512e-007, 2.14369e-012] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15394.873047,15311.921875,17.6935];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260.4;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15408.256836,15314.0869141,17.6981];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15400.0507813,15312.770508,17.7048];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 261.331;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//southwest green tower
_pos = [15383.991211,15248.230469,17.9934];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15401.636719,15251.293945,17.9954];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80.3094;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15414.8125,15253.586914,17.9922];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80.9999;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15421.0800781,15255.391602,17.9955];
_object = createVehicle ["Land_IndPipe2_bigL_R_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 171;
_object setPosASL _pos;
[_object, 0, -0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//South bank bridge extension (check if problematic)
_pos = [15452.350586,15237.882813,18.0632];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 171;
_object setPosASL _pos;
[_object, 0, -0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//South tower extension towards bank
_pos = [15456.78418,15209.916992,17.9161];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 351.5;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15455.472656,15218.303711,17.8979];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 351.099;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15454.241211,15225.488281,17.9719];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350.1;
_object setPosASL _pos;
[_object, 1, 3.20214e-007] call BIS_fnc_setPitchBank;
_object allowDamage false;
//end south tower extension towards bank

//south west green tower extending north
_pos = [15369.584961,15258.636719,17.9781];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350.3;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15363.0273438,15298.65332,17.8701];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350.9;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15364.210938,15291.166992,17.8727];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 351;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15365.611328,15282.329102,17.8904];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 351;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15366.989258,15273.553711,17.897];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 351;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15368.0712891,15266.743164,17.9279];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 351.15;
_object setPosASL _pos;
[_object, -2.13477e-007, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15372.349609,15241.450195,17.9397];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350.1;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//East bank extension
_pos = [15487.302734,15287.630859,17.8945];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80.9998;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15465.65332,15283.970703,17.8556];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 259.9;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15476.485352,15285.74707,17.891];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260.6;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//North extension to LZ 1 south (south light tower)
_pos = [15497.892578,15302.697266,17.9023];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 351.9;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15495.37207,15320.299805,17.9134];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 351.8;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15492.652344,15338.0419922,17.9094];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350.8;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15490.484375,15350.791992,17.9078];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 351;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


//South tower extension to west green tower
_pos = [15445.375977,15199.191406,17.903];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260.9;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15429.530273,15196.47168,17.9067];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 259.87;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15412.357422,15193.40625,17.9182];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 259.9;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15394.669922,15190.275391,17.9208];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;


_pos = [15376.979492,15187.162109,17.9223];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//right angle to southwest green tower
_pos = [15365.514648,15186.209961,17.9197];
_object = createVehicle ["Land_IndPipe2_bigL_L_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 170;
_object setPosASL _pos;
[_object, 0, -0] call BIS_fnc_setPitchBank;
_object allowDamage false;

//connection from above right angle to southwest green tower
_pos = [15362.765625,15195.0957031,17.9234];
_object = createVehicle ["Land_IndPipe2_big_18_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;

//Southwest lighthouse
_pos = [15331.164063,15235.405273,24.5154];
_object = createVehicle ["Land_LightHouse_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
