//Jail by: 5150 Joker
//Copyright 2014 NvyGames

//Sink
_pos = [8601.608398,18472.371094,-0.00518799];
_object = createVehicle ["Land_Sink_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 241;
_object setPosATL _pos;
_object allowDamage false;
_object addAction ["Drink from fountain", {life_thirst = 100;}];


//Shitter's Clogged
_pos = [8569.786133,18482.296875,0.0292206];
_object = createVehicle ["Land_FieldToilet_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 305;
_object setPosATL _pos;
_object allowDamage false;

//Sleeping bags
_pos = [8586.611328,18460.861328,0.0306549];
_object = createVehicle ["Land_Sleeping_bag_blue_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 340;
_object setPosATL _pos;


_pos = [8587.956055,18461.419922,0.0619049];
_object = createVehicle ["Land_Sleeping_bag_blue_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 340;
_object setPosATL _pos;


//Human remains
_pos = [8594.219727,18449.185547,171.026];
_object = createVehicle ["Land_HumanSkeleton_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;


//Guard towers
_pos = [8625.963867,18432.490234,-0.370087];
_object = createVehicle ["Land_Cargo_Patrol_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 130;
_object setPosATL _pos;


_pos = [8595.522461,18417.837891,-0.370285];
_object = createVehicle ["Land_Cargo_Patrol_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 175;
_object setPosATL _pos;


_pos = [8560.133789,18493.197266,-0.0535126];
_object = createVehicle ["Land_Cargo_Patrol_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 317;
_object setPosATL _pos;


_pos = [8587.435547,18504.046875,-0.460175];
_object = createVehicle ["Land_Cargo_Patrol_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 343;
_object setPosATL _pos;

//Obstacles
_pos = [8573.226563,18477.292969,0.0397949];
_object = createVehicle ["Land_Obstacle_Crawl_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 332;
_object setPosATL _pos;


_pos = [8575.708008,18472.890625,0];
_object = createVehicle ["Land_Obstacle_Crawl_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330;
_object setPosATL _pos;


_pos = [8578.186523,18468.679688,0.00012207];
_object = createVehicle ["Land_Obstacle_Crawl_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330;
_object setPosATL _pos;

//Run around obstacles
_pos = [8607.540039,18449.755859,0.17662];
_object = createVehicle ["Land_Obstacle_RunAround_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 333;
_object setPosATL _pos;


_pos = [8603.143555,18453.931641,0.136017];
_object = createVehicle ["Land_Obstacle_RunAround_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 331;
_object setPosATL _pos;

//Bridge
_pos = [8594.931641,18469.349609,0.0388184];
_object = createVehicle ["Land_Obstacle_Bridge_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 331;
_object setPosATL _pos;

//Wrecked heli
_pos = [8587.722656,18450.685547,0.00366211];
_object = createVehicle ["Land_Wreck_Heli_Attack_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 301;
_object setPosATL _pos;

//Wrecked humvee
_pos = [8590.109375,18486.736328,-0.001297];
_object = createVehicle ["Land_ScrapHeap_2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;

//Food table
_pos = [8594.28418,18433.433594,-0.0455322];
_object = createVehicle ["Land_TablePlastic_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 240;
_object setPosATL _pos;
_object addAction ["Eat prison food", {life_hunger = 100;}];

//Food on table
_pos = [8594.472656,18433.814453,171.588];
_object = createVehicle ["Land_BakedBeans_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
 _object addAction ["Eat prison food", {life_hunger = 100;}];
 
 
_pos = [8593.936523,18433.544922,171.583];
_object = createVehicle ["Land_BakedBeans_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
[_object, 0, 0] call BIS_fnc_setPitchBank;
 _object addAction ["Eat prison food", {life_hunger = 100;}];

//Shade
_pos = [8594.3125,18433.447266,0.0035553];
_object = createVehicle ["Land_Sunshade_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosATL _pos;

//Chairs
_pos = [8593.261719,18432.955078,0.00241089];
_object = createVehicle ["Land_CampingChair_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 240;
_object setPosATL _pos;


_pos = [8595.166016,18434.00585938,0.00335693];
_object = createVehicle ["Land_CampingChair_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60;
_object setPosATL _pos;
