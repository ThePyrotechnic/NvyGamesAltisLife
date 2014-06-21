/*

	Zentrale Konfiguration für alle Fahrzeuge

*/


//Schema: FAHRZEUG, CONDITIONS (civ,cop,reb,adac,donator) - leer lassen für alle - arbeitet mit ODER, FARB-NAME, FARB-DATEN, ---FARBEIMER---
life_vehicle_colors_new = 
[
	//C_Offroad_01_F
	//////////////////////////////////////////////////////
	["C_Offroad_01_F",["civ","reb"]		, "Red", ["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"], 1], 
	["C_Offroad_01_F",["civ","reb"]		, "Yellow",["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa"], 1],
	["C_Offroad_01_F",["civ","reb"]		, "White",["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"], 1],
	["C_Offroad_01_F",["civ","reb"]		, "Blue",["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"], 1],
	["C_Offroad_01_F",["civ","reb"]		, "Purple",["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"], 1],
	["C_Offroad_01_F",["civ","reb"]		, "Blue&White",["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"], 1],
	["C_Offroad_01_F",["cop"]	, "Police",["vehskins\Polizei_offroad_test.paa"], 2],
	["C_Offroad_01_F",["civ","reb"]		, "Taxi",["#(argb,8,8,3)color(0.6,0.3,0.01,1)"], 1],
	["C_Offroad_01_F",["donator"], "Unicorn",["vehskins\ziv_offroad.paa"], 3],
	["C_Offroad_01_F",["donator"], "Gay",["vehskins\ziv_offroad_Gay.paa"], 3],
	["C_Offroad_01_F",["donator"], "Masked",["vehskins\ziv_offroad_Getarnt.paa"], 3],
	["C_Offroad_01_F",["adac"], "AAA",["vehskins\adac_offroad.paa"], 3],

	
	//C_Hatchback_01_F
	//////////////////////////////////////////////////////
	["C_Hatchback_01_F",[]		, "Beige",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"], 3],
	["C_Hatchback_01_F",[]		, "Green",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"], 3],
	["C_Hatchback_01_F",[]		, "Blue",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"], 3],
	["C_Hatchback_01_F",[]		, "Purple",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"], 3],
	["C_Hatchback_01_F",[]		, "Yellow",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"], 3],
	["C_Hatchback_01_F",[]		, "White",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"], 3],
	["C_Hatchback_01_F",[]		, "German",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"], 3],
	["C_Hatchback_01_F",[]		,"Fire",["vehskins\Fire_hatchback.paa"], 3],
	
	//C_Hatchback_01_sport_F
	//////////////////////////////////////////////////////
	["C_Hatchback_01_sport_F",[]		, "Beige",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"], 5],
	["C_Hatchback_01_sport_F",[]		, "Green",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"], 5],
	["C_Hatchback_01_sport_F",[]		, "Blue",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"], 5],
	["C_Hatchback_01_sport_F",[]		, "Purple",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"], 5],
	["C_Hatchback_01_sport_F",[]		, "Yellow",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"], 5],
	["C_Hatchback_01_sport_F",[]		, "White",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"], 5],
	["C_Hatchback_01_sport_F",[]		, "Gray",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"], 5],
	["C_Hatchback_01_sport_F",["cop"]	, "Police",["vehskins\police_hatchback.paa"], 6],
	["C_Hatchback_01_sport_F",[]	    , "Sport_ken",["vehskins\hatchback_sport_ken_block.paa"], 6],
	
	//C_SUV_01_F
	//////////////////////////////////////////////////////
	["C_SUV_01_F",[]		,"Purple",["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"], 5],
	["C_SUV_01_F",[]		,"Silver",["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"], 5],
	["C_SUV_01_F",[]		,"Orange",["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"], 5],
	["C_SUV_01_F",["cop"]	,"Police",["vehskins\police_suv.paa"], 6],
	["C_SUV_01_F",[]	,"Carbon",["vehskins\carbon_full_suv_v1.paa"], 10],
	["C_SUV_01_F",["cop"]	,"Police",["vehskins\Blut_police_suv.paa"], 7],
	["C_SUV_01_F",[]	,"Carbonv2",["vehskins\carbon_suv_V3.paa"], 10],
	["C_SUV_01_F",["donator"]	,"Bayern",["vehskins\Bayern1.paa"], 10],
	//C_Van_01_box_F
	//////////////////////////////////////////////////////
	["C_Van_01_box_F",[]		,"White",["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"], 1],
	["C_Van_01_box_F",[]		,"Red",["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"], 1],
	
	//C_Van_01_transport_F
	//////////////////////////////////////////////////////
	["C_Van_01_transport_F",[]		,"White",["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"], 1],
	["C_Van_01_transport_F",[]		,"Red",["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"], 1],
	["C_Van_01_transport_F",[]		,"Green",["\a3\soft_f_gamma\Van_01\Data\Van_gruen.paa"], 1],
	
	//C_Van_01_fuel_F
	//////////////////////////////////////////////////////
	//HINWEIS: WAR NICHT IN ORIGINALER DATEI
	["C_Van_01_fuel_F",[]		,"White",["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"], 1],
	["C_Van_01_fuel_F",[]		,"Red",["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"], 1],
	
	//B_Quadbike_01_F
	//////////////////////////////////////////////////////
	["B_Quadbike_01_F",[]			,"Brown",["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa"], 1],
	["B_Quadbike_01_F",["reb"]		,"Digital",["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa"], 1],
	["B_Quadbike_01_F",[]			,"Black",["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"], 1],
	["B_Quadbike_01_F",[]			,"Blue",["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa"], 1],
	["B_Quadbike_01_F",[]			,"Red",["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa"], 1],
	["B_Quadbike_01_F",[]			,"White",["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa"], 1],
	["B_Quadbike_01_F",[]			,"Digi Green",["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa"], 1],
	["B_Quadbike_01_F",[]			,"Hunter Camo",["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"], 1],
	["B_Quadbike_01_F",["reb"]		,"Rebel Camo",["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"], 1],
	
	//B_Heli_Light_01_F
	//////////////////////////////////////////////////////
	["B_Heli_Light_01_F",[]			,"Green&Brown",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa"], 14],
	["B_Heli_Light_01_F",[]			,"Blue",["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"], 14],
	["B_Heli_Light_01_F",[]			,"Red",["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"], 14],
	["B_Heli_Light_01_F",[]			,"Digi Green",["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"], 14],
	["B_Heli_Light_01_F",[]			,"Blue line",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"], 14],
	["B_Heli_Light_01_F",[]			,"Elliptical",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"], 14],
	["B_Heli_Light_01_F",[]			,"Furious",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"], 14],
	["B_Heli_Light_01_F",[]			,"Jeans Blue",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"], 14],
	["B_Heli_Light_01_F",[]			,"Red Line",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"], 14],
	["B_Heli_Light_01_F",[]			,"Sun Set",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"], 14],
	["B_Heli_Light_01_F",[]			,"Vrana",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"], 14],
	["B_Heli_Light_01_F",[]			,"Wave",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"], 14],
	["B_Heli_Light_01_F",["reb"]	,"Rebel Digi",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"], 16],
	["B_Heli_Light_01_F",["cop"]	,"Police",["vehskins\police_hummingbird.paa"], 14],
	["B_Heli_Light_01_F",["donator"],"Full Tank",["vehskins\ziv_hummingbird_Voll_Getarnt.paa"], 15],
	["B_Heli_Light_01_F",["adac"]	,"AAA",["vehskins\adac_Hummingbird.paa"], 14],
	
	//O_Heli_Light_02_unarmed_F
	//////////////////////////////////////////////////////
	["O_Heli_Light_02_unarmed_F",[]					,"Blue&White",["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa"], 14],
	["O_Heli_Light_02_unarmed_F",["donator"]		,"Digi Green",["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"], 14],
	["O_Heli_Light_02_unarmed_F",["reb"]			,"Rebel",["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa"], 14],
	
	//O_Heli_Light_02_F
	//////////////////////////////////////////////////////
	["O_Heli_Light_02_F",["donator"]		,"Digi Green",["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"], 14],
	["O_Heli_Light_02_F",["donator"]		,"Rebel",["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa"], 14],
	
	//B_MRAP_01_F (Hunter)
	//////////////////////////////////////////////////////
	["B_MRAP_01_F",["cop"]					,"Task Force",["vehskins\sek_hunter_01.paa","vehskins\sek_hunter_02.paa"], 16],
	["B_MRAP_01_F",["cop"]					,"Police",["vehskins\police_hunter.paa"], 16],
	["B_MRAP_01_F",["cop"]					,"Patrol",["vehskins\police_hunter_blau_weis.paa"], 16],
	
	//B_MRAP_01_hmg_F (Bewaffneter Hunter) - Hat die selben Texturen wie der Hunter
	//////////////////////////////////////////////////////
	["B_MRAP_01_hmg_F",["cop"]					,"Task Force",["vehskins\sek_hunter_01.paa","vehskins\sek_hunter_02.paa"], 16],
	["B_MRAP_01_hmg_F",["cop"]					,"Police",["vehskins\police_hunter.paa"], 16],
	["B_MRAP_01_hmg_F",["cop"]					,"Patrol",["vehskins\police_hunter_blau_weis_Bugfixed.paa"], 16],
	
	//I_Truck_02_covered_F
	//////////////////////////////////////////////////////
	["I_Truck_02_covered_F",[]		,"Orange",["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"], 8],
	["I_Truck_02_covered_F",["cop"]	,"Black",["#(argb,8,8,3)color(0.05,0.05,0.05,1)"], 10],
	
	//B_Truck_01_transport_F (Hemett)
	//////////////////////////////////////////////////////
	["B_Truck_01_transport_F",[]		,"Standard",[], 8],
	//["B_Truck_01_transport_F",[]		,"Standard",["\A3\Soft_F_Beta\Truck_01\data\truck_01_ext_01.paa","\a3\soft_f_beta\Truck_01\data\truck_01_ext_02.paa"], 8],
	["B_Truck_01_transport_F",["adac"]		,"ADAC",["vehskins\adac_hemett_01.paa","vehskins\adac_hemett_02.paa"], 9],
	
	//I_Truck_02_transport_F
	//////////////////////////////////////////////////////
	["I_Truck_02_transport_F",[]		,"Orange",["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"], 8],
	["I_Truck_02_transport_F",["cop"]	,"Black",["#(argb,8,8,3)color(0.05,0.05,0.05,1)"], 10],
	
	//I_Heli_light_03_F
	//////////////////////////////////////////////////////
	["I_Heli_light_03_F",["cop"]					,"Police",["vehskins\police_hellcat.paa"], 16],
	
	//I_Heli_light_03_unarmed_F
	//////////////////////////////////////////////////////
	["I_Heli_light_03_unarmed_F",["cop"]			,"Police",["vehskins\police_hellcat.paa"], 16],
	
	//I_Heli_Transport_02_F
	//////////////////////////////////////////////////////
	["I_Heli_Transport_02_F",[]			,"Ion",["\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_ion_co.paa",
												"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_ion_co.paa",
												"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_ion_co.paa"], 16],
	["I_Heli_Transport_02_F",[]			,"Dahoman",["\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_dahoman_co.paa",
													"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_dahoman_co.paa"], 16]
													
	//B_MRAP_01_gmg_F
	//////////////////////////////////////////////////////
	//ACHTUNG: Keine Quelle vorhanden!
	//["B_MRAP_01_gmg_F",["cop"]			,"Polizei",["vehskins\police_hellcat.paa"]],
    //["B_MRAP_01_gmg_F",["cop"]			,"SEK",["vehskins\sek_hunter_01.paa"]],	
];

