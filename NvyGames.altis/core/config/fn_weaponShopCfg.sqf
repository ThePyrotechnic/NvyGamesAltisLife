#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	//////////////////////Gas shop
	case "gas":
	{
		["Tankstelle",
			[
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["Itemwatch",nil,100],
				["ItemCompass",nil,50],
				["ItemMap",nil,50],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	////////////////////// Medikit-Shop
	case "medical":
	{
		["Medical Equipment",
			[				
				["FirstAidKit",nil,150]/*,
				["Medikit",nil,2000]*/
			]
		];
	};
//this is cop shop rank one.
	case "cop_basic": //Private Equipment
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			default
			{
				["Altis Cop Shop",
					[
						["arifle_sdar_F","SDAR",10000], //sdar
						["30Rnd_556x45_Stanag_Tracer_Red","SDAR Rubber Bullets 556x45",180], //sdar rubber bullets
						["hgun_P07_snds_F","taser pistol",5000], //taser
						["16Rnd_9x21_Mag","Taser Magazin 9x21",50], //taser mags					
						["Binocular",nil,150], //binocular
						["Rangefinder",nil,500], //rangerfinder
						["ItemMap",nil,50], //map
						["ItemGPS",nil,200], //gps
						["ToolKit",nil,250], //toolkit
						["MineDetector",nil,1000], //minedector
						["acc_pointer_IR",nil,750], //ir pointer
						["NVGoggles",nil,2000] //nightvision goggles
					]
				];
			};
		};
	};
//this is cop shop rank two.
	case "cop_patrol": //Private First Class Equipment
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop."};
			case (__GETC__(life_coplevel) < 1): {"You are not the required rank."};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["SMG_02_F",nil,7500], //sting
						["muzzle_snds_L",nil,2500], //9mm suppressor
						["30Rnd_9x21_Mag",nil,250], //30rd 9mm mag					
						["optic_Holosight_smg",nil,1500], //smg holo
						["arifle_sdar_F","SDAR",10000], //sdar
						["30Rnd_556x45_Stanag_Tracer_Red","SDAR Rubber Bullets 556x45",180], //sdar rubber bullets
						["hgun_P07_snds_F","taser pistol",5000], //taser
						["16Rnd_9x21_Mag","Taser Magazin 9x21",50], //taser mags					
						["Binocular",nil,150], //binocular
						["Rangefinder",nil,500], //rangerfinder
						["ItemMap",nil,50], //map
						["ItemGPS",nil,200], //gps
						["ToolKit",nil,250], //toolkit
						["MineDetector",nil,1000], //minedector
						["acc_pointer_IR",nil,750], //ir pointer
						["NVGoggles",nil,2000] //nightvision goggles
						//["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500], 5.56 tracers
						//["30Rnd_45ACP_Mag_SMG_01_tracer_green",".45 Gummigeschoss",250], 45 acp tracers
					]
				];
			};
		};
	};
//this is cop shop rank three.
	case "cop_sergeant": //Specialist Equipment
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not the required rank."};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["arifle_MXC_F",nil,20000], //mxc
						["30Rnd_65x39_caseless_mag",nil,20000], //6.5 mm mags
						["SMG_02_F",nil,7500], //sting
						["muzzle_snds_L",nil,2500], //9mm suppressor
						["30Rnd_9x21_Mag",nil,250], //30rd 9mm mag					
						["optic_Holosight_smg",nil,1500], //smg holo
						["arifle_sdar_F","SDAR",10000], //sdar
						["30Rnd_556x45_Stanag_Tracer_Red","SDAR Rubber Bullets 556x45",180], //sdar rubber bullets
						["hgun_P07_snds_F","taser pistol",5000], //taser
						["16Rnd_9x21_Mag","Taser Magazin 9x21",50], //taser mags					
						["Binocular",nil,150], //binocular
						["Rangefinder",nil,500], //rangerfinder
						["ItemMap",nil,50], //map
						["ItemGPS",nil,200], //gps
						["ToolKit",nil,250], //toolkit
						["MineDetector",nil,1000], //minedector
						["acc_pointer_IR",nil,750], //ir pointer
						["NVGoggles",nil,2000], //nightvision goggles
						["optic_Holosight",nil,1500],
						["optic_Hamr",nil,2000],
						["optic_MRCO",nil,3000]				
					]
				];
			};
		};
	};
	//NEW CLOCK SHIT MAY FUCK UP EVERYTHING *************************************************************************************************************************************
	case "cop_corporal": //Corporal  Equipment
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not the required rank."};
			default
			{
				["Corporal Equipment",
					[
						["arifle_MX_F",nil,30000], //mx
						["arifle_MXC_F",nil,20000], //mxc
						["30Rnd_65x39_caseless_mag",nil,20000], //6.5 mm mags
						["SMG_02_F",nil,7500], //sting
						["muzzle_snds_L",nil,2500], //9mm suppressor
						["30Rnd_9x21_Mag",nil,250], //30rd 9mm mag					
						["optic_Holosight_smg",nil,1500], //smg holo
						["arifle_sdar_F","SDAR",10000], //sdar
						["30Rnd_556x45_Stanag_Tracer_Red","SDAR Rubber Bullets 556x45",180], //sdar rubber bullets
						["hgun_P07_snds_F","taser pistol",5000], //taser
						["16Rnd_9x21_Mag","Taser Magazin 9x21",50], //taser mags					
						["Binocular",nil,150], //binocular
						["Rangefinder",nil,500], //rangerfinder
						["ItemMap",nil,50], //map
						["ItemGPS",nil,200], //gps
						["ToolKit",nil,250], //toolkit
						["MineDetector",nil,1000], //minedector
						["acc_pointer_IR",nil,750], //ir pointer
						["NVGoggles",nil,2000] //nightvision goggles
						["optic_Holosight",nil,1500],
						["optic_Hamr",nil,2000],
						["optic_MRCO",nil,3000]					
					]
				];
			};
		};
	};
	
	
	//##98
	case "cop_sniper":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (!license_cop_sniper): {"Du bist kein Sniper!"};
			default
			{
				["Altis Sniper Shop",
					[
						["srifle_LRR_F",nil,80000],
						["7Rnd_408_Mag",nil,2000],
						["optic_Arco",nil,4000],
						["optic_SOS",nil,5000],
						["optic_NVS",nil,6000]					
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Cop!"};
			case (!license_civ_rebel): {"You do not have a rebel licence"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["hgun_Pistol_heavy_02_F",nil,5000],
						["optic_Yorris",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,250],
						["hgun_PDW2000_F",nil,10000],
						["30Rnd_9x21_Mag",nil,500],
						["SMG_01_F",nil,10000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						["SMG_02_F",nil,10000],
						["30Rnd_9x21_Mag",nil,500],
						["arifle_SDAR_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,1000],
						["20Rnd_556x45_UW_mag",nil,1000],
						["arifle_Katiba_C_F",nil,70000],
						["arifle_Katiba_F",nil,80000],
						["30Rnd_65x39_caseless_green",nil,1000],
						["arifle_Mk20C_F",nil,70000],
						["arifle_Mk20C_plain_F",nil,70000],
						["arifle_Mk20_F",nil,80000],
						["arifle_Mk20_plain_F",nil,80000],
						["30Rnd_556x45_Stanag",nil,1000],
						["srifle_DMR_01_F",nil,100000],
						["10Rnd_762x51_Mag",nil,1000],
						["srifle_EBR_F",nil,120000],
						["20Rnd_762x51_Mag",nil,1000],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight",nil,3000],
						["optic_Holosight_smg",nil,3000],
						["optic_Hamr",nil,5000],
						["optic_MRCO",nil,6000],
						["optic_Arco",nil,8000],
						["optic_DMS",nil,10000],
						["MiniGrenade",nil,20000],
						["HandGrenade",nil,25000],
						["SatchelCharge_Remote_Mag",nil,1500000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Cop!"};
			case (!license_civ_gun): {"You do not have a firearms license"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Pistol_heavy_02_F",nil,28000],
						["optic_Yorris",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,250],
						["hgun_P07_F",nil,20000],
						["16Rnd_9x21_Mag",nil,250],
						["30Rnd_9x21_Mag",nil,500],
						["hgun_Rook40_F",nil,10000],
						["16Rnd_9x21_Mag",nil,250],
						["30Rnd_9x21_Mag",nil,500],
						["hgun_ACPC2_F",nil,10000],
						["9Rnd_45ACP_Mag",nil,250],
						["hgun_PDW2000_F",nil,40000],
						["30Rnd_9x21_Mag",nil,1000],
						["SMG_01_F",nil,40000],
						["30Rnd_45ACP_Mag_SMG_01",nil,1000],
						["SMG_02_F",nil,40000],
						["30Rnd_9x21_Mag",nil,1000],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,5000]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"Du bist kein Donator!"};
			case (__GETC__(life_donator) >= 1):
			{
				["Black Lagoon Donator Shop",
					[
						["hgun_Pistol_heavy_02_F",nil,4000],
						["optic_Yorris",nil,5000],
						["6Rnd_45ACP_Cylinder",nil,100],
						["hgun_PDW2000_F",nil,8000],
						["30Rnd_9x21_Mag",nil,250],
						["SMG_01_F",nil,8000],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["SMG_02_F",nil,8000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_SDAR_F",nil,40000],
						["30Rnd_556x45_Stanag",nil,500],
						["20Rnd_556x45_UW_mag",nil,500],
						["arifle_Katiba_C_F",nil,60000],
						["arifle_Katiba_F",nil,70000],
						["30Rnd_65x39_caseless_green",nil,500],
						["arifle_Mk20C_F",nil,60000],
						["arifle_Mk20C_plain_F",nil,60000],
						["arifle_Mk20_F",nil,70000],
						["arifle_Mk20_plain_F",nil,70000],
						["30Rnd_556x45_Stanag",nil,500],
						["srifle_DMR_01_F",nil,90000],
						["10Rnd_762x51_Mag",nil,500],
						["srifle_EBR_F",nil,100000],
						["20Rnd_762x51_Mag",nil,500],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["optic_Aco",nil,2000],
						["optic_ACO_grn",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_ACO_grn_smg",nil,2000],
						["optic_Holosight",nil,2500],
						["optic_Holosight_smg",nil,2500],
						["optic_Hamr",nil,3000],
						["optic_MRCO",nil,4000],
						["optic_Arco",nil,5000],
						["optic_DMS",nil,9000],
						["MiniGrenade",nil,15000],
						["HandGrenade",nil,20000],
						["SatchelCharge_Remote_Mag",nil,1400000]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,200],
				["Rangefinder",nil,5000],
				["ItemGPS",nil,250],
				["ToolKit",nil,500],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2500],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	
	case "event":
	{
		if( [] call life_fnc_playerInEvent ) then
		{
			["*** Event ***",
					[						
						["hgun_P07_snds_F","taser pistol",1],
						["16Rnd_9x21_Mag","Taser Magazin 9x21",1]
						/*["hgun_P07_F",nil,2500],
						["16Rnd_9x21_Mag",nil,50],
						["Binocular",nil,150],
						["Rangefinder",nil,500],
						["ItemMap",nil,50],
						["ItemGPS",nil,200],
						["ToolKit",nil,250],						
						["NVGoggles",nil,2000],
						["B_UAV_01_F",nil,100000],
						["B_UAV_01_backpack_F",nil,50000]*/
					]
				];
		}
		else
		{
			hint "Du bist kein Teilnehmer des Events!";
			[];
		};
	};
};
