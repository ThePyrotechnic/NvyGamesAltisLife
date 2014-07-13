 waitUntil {!isNull player && player == player};

player createDiarySubject ["nvy games","Nvy Games"];
player createDiarySubject ["serverRules","Server Rules"];
player createDiarySubject ["policeRules","Police Rules"];
player createDiarySubject ["rebelRules","Rebel Rules"];
player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/

//nvygames--------------------------------------------------------------------------------
	player createDiaryRecord ["nvygames",
		[
			"Teamspeak",
				"
				Teamspeak IP:<br/><br/>
				ts3.nvygames.com<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["nvygames",
		[
			"Website/Forums",
				"
				http://www.nvygames.com/<br/>
				"
		]
	];
	
	player createDiaryRecord ["nvygames",
		[
			"Donations",
				"
				Your donations help pay for the teamspeak, server, and website!<br/><br/>
				"
		]
	];
	
//Server Rules-----------------------------------------------------------------------------------------------------------------------------------------------------------------
	player createDiaryRecord["serverRules",
		[
			"Server Rules",
				"
				http://www.nvygames.com/community/threads/server-rules-regulations.27/<br/>
				
				NVYGAMES Server Rules & Regulations​<br/><br/>

All of these rules shall be followed by ALL PLAYERS at ALL TIMES. Breaking these rules may result in disciplinary action ranging from verbal warning to permanent removal from the server. These rules are to be considered a living entity and should be read on a consistent basis.​<br/><br/>


Definition of Key Terms:​<br/>
RDM: Random Killing / Deathmatch against someone else with on roleplay involved<br/>
VDM: Killing someone with any vehicle (running them over or hitting them with the intention to cause harm).<br/>
Safezone: An area generally marked on the map where you can buy or sell items / vehicles close to spawn locations and in major cities and a few select other areas. (Markets, Garages, Clothing Stores, Gun stores, vehicle shops, license shops, etc.<br/>
NLR: New Life Rule. When killed, you are considered to be a new player and can not seek revenge on players.<br/>
Illegal Areas: Cocaine fields, Weed Fields, Cocaine Processing, Weed Processing, Heroin Fields, Heroin Processing, Drug Dealers, Chop Shops, Rebel Territory<br/>
Federal Reserve: An area that can be robbed and is a restricted area. Any person in the area will be subject to questioning, fines, or jail time.<br/><br/>
General Rules & Regulations<br/>
Breaking any of the following rules may result in disciplinary action and possible removal from the server.​<br/>
Don’t be a dick. If an admin has to tell you that you are being a dick, you are most likely being a dick. An admin reserves the right to reprimand anyone who is being a dick.<br/>
All players are expected to set their volume to a level that it is clearly audible. Excuses for low volume will not be tolerated.<br/>
All players shall use their respective garages/shops/ATM/vehicle shops/etc.<br/>
Hitting other players with any vehicle (VDM) will not be tolerated. Vehicles shall not be used as weapons. The only exception to this rule is during a chase where verbal and/or text communication has been made with noncompliant driver. If the fleeing vehicle fails to stop and the pursuing vehicle rams this vehicle which happens to cause death, claims of VDM will be disregarded.<br/>
Killing civilians in a safezone is prohibited.<br/>
Disconnecting in any situation to avoid death or with the intent to exploit the game in any way will not be tolerated.<br/>
Killing a player for no reason (RDM) will not be tolerated. Exceptions to this rule are killzones, declared raids, bank robberies, and illegal areas. Rebels reserve the right to punish those who RDM in their territory (eastern altis).<br/>
Hacking, cheating, or exploiting in anyway will not be tolerated. This will result in severe penalties and possibly your permanent removal from the server.<br/>
Communications (Teamspeak, in game channels) shall not be abused or spammed in any way.<br/>
Vehicles shall not be used to impede the access to any in-game structures.<br/>
This is an english-speaking server. All players are required to communicate using the English language.<br/>
Donator gear is meant only for Donators. If donators are caught giving out gear to non-donators, they may be subject to removal from the donator list without the possibility of a refund.<br/><br/>

New Life Rule​<br/>
New life rule applies to all players.<br/>
New Life Rule applies only in the following situations: Bank robberies, Raids,police sirens activated, verbal and/or text communication has been clearly established.<br/>
If the new life rule applies to you, you may not return to that location until the area has been cleared.<br/><br/>

Terror​<br/>
Raids can only be started when an admin is online<br/>
Players must contact an active admin with the following information: Location, All players involved, when it will begin (must give a minimum of a 10 minute warning).<br/>
Admins will send a series of 3 notifications. 10 minute warning, 5 minute warning, raid has started.<br/>
Players can only follow through with a raid if an admin has sent a notification to all players indicating that the raid has started.<br/>
All players in the town are kill on sight during raids. (This includes all safezones and unarmed players). However, your goal is not to kill unarmed players. Players not wishing to be killed during a raid are strongly encouraged to leave the area.<br/>
Raids can only be ended once one side has won or proper negotiations have been made. An admin will notify all players that a raid has officially ended. If a terror group has successfully taken over a town and police can no longer return due to NLR, terror groups may only hold the town for up to 10 minutes. If terror groups refuse to leave after 10 minutes, faction leaders reserve the right to end the rebellion.<br/><br/>

				"
		]
	];
	
	player createDiaryRecord["serverRules",
		[
			"Safe Zones",
				"
					1. All major towns (kavala, athira)<br/>
					2. Police HQ<br/>
					3. Jail<br/>
					4. All legal places of commerce<br/>
				"
		]
	];
	
		player createDiaryRecord["serverRules",
		[
			"Kill Zones",
				"
					1. Rebel Territory<br/>
					2. Indy Territory<br/>
					3. Areas which promote illegal activity<br/>
					4. The Federal Reserve<br/>
					5. Breaking out someone from jail<br/> 
				"
		]
	];

	
//Police Rules---------------------------------------------------------------------------------------------------------------------------------------------------------------
		player createDiaryRecord ["policeRules",
		[
			"Chain of Command",
				"
				Police Chain of Command:<br/>
				1. Chief of Police<br/>
				2. Captain<br/>
				3. Sergeant<br/>
				4. Corporal<br/>
				5. Specialist<br/>
				6. Private<br/>
				7. Ride Along (non-ranked)<br/><br/>
				"
		]
	];
	
		player createDiaryRecord ["policeRules",
		[
			"Teamspeak",
				"
				All police officers must be on TeamSpeak and connected to the appropriate channel. Failure to do so will result in removal from the police force.<br/>
				Teamspeak IP:<br/><br/>
				ts3.nvygames.com<br/><br/>
				"
		]
	];

		player createDiaryRecord ["policeRules",
		[
			"Police Procedures",
				"
				http://www.nvygames.com/community/threads/server-rules-regulations.27/<br/>
				
				Altis Penal Code (Enforced by Military Police)<br/>
These laws are in place for roleplay purposes which may result in police action being taken upon you. Breaking these rules will never result in a ban. ​<br/>
Killing another player will be considered manslaughter which is illegal (Not RDM)<br/>
Attempting to kill another player shall be considered attempted manslaughter which is illegal<br/>
Kidnapping or holding a person against their will is illegal<br/>
Taking any gear, weapons, money, or vehicles from another player is illegal<br/>
Being in possession of illegal gear/weapons/vehicles is illegal<br/>
Carrying weapons without the proper license is illegal<br/>
Not having proper licensure for items/weapons/vehicles is illegal<br/>
Evading the police or failing to stop when ordered to do so by the police is illegal<br/>
Being in any illegal areas is illegal<br/>
Landing helicopters without permission in major towns is illegal<br/>
Running inside the police base is illegal<br/>
Speeding is illegal<br/>
no more than 50kph in urban areas<br/>
no more than 100kph outside of urban areas<br/>
Public nudity is illegal<br/>
Open-carrying a firearm within major towns is illegal. Weapons must be holstered when in town.<br/>
Discharging a weapon within major cities is illegal.<br/>
Driving off of the main road is illegal<br/>
Driving on the left side of the road is illegal<br/>
Driving without headlights at night is illegal<br/>
Driving/flying without a license is illegal<br/>
Driving recklessly is illegal<br/><br/>

Police Rules<br/>
Failure to abide by these rules may result in a demotion, being removed from the whitelist, or possible removal from the server. ​<br/>
Officers must be on Teamspeak 3(ts3.nvygames.com)<br/>
Officers must must follow the chain of command. This means that lower ranking officers must follow the commands of higher ranking officers (as long as the commands are not breaking server rules).<br/>
Officers may not give gear to other officers or civilians. This includes giving items to lower ranking officers.<br/>
Officers shall not impound any vehicles during an active roleplay scenario until the situation is under control.<br/>
Officers may only use gear/weapons/vehicles that are accessible to them at their respective shops. For example, don't use a high ranking weapon if you are not able to access it from a shop on your own.<br/>
Officers shall not search any player without probable cause unless at a marked checkpoint. Players may be searched if they are on the wanted list or have broken any of the rules stated above.<br/>
Officers must inform players of why they are being restrained, searched, or sent to jail upon the offenders request.<br/>
Officers must follow all rules with the exception to performing police duties (speeding, offroading, etc.)<br/>
Officers shall not use excessive force in any situation. For example, Don't shoot someone who is running around in the police hq. This situation can be resolved by simply talking to someone in its most contained form.<br/>
Officers shall make RP a higher priority than PVP.<br/>
Officers shall value their life. If you are surrounded by multiple rebels that are ordering you to surrender, do not try to go Rambo on the situation. Accept when you have been defeated and RP the situation.<br/>
Officers must exert integrity. This means doing the right thing at all times even if no one is looking.<br/>
<br/>
				"
		]
		
	];
	
//Rebel Rules---------------------------------------------------------------------------------------------------------------------------------------------------------------
		player createDiaryRecord ["rebelRules",
		[
			"Chain of Command",
				"
				Rebel Chain of Command:<br/>
				1. Leader<br/>
				2. Major<br/>
				3. Sergeant Major<br/>
				4. Corporal<br/>
				5. Private<br/>
				6. Ride Along (non-ranked)<br/><br/>
				"
		]
	];
	
		player createDiaryRecord ["rebelRules",
		[
			"Teamspeak",
				"
				All rebels must be on TeamSpeak and connected to the appropriate channel. Failure to do so will result in removal from the police force.<br/>
				Teamspeak IP:<br/><br/>
				ts3.nvygames.com<br/><br/>
				"
		]
	];

		player createDiaryRecord ["rebelRules",
		[
			"Rebel Procedures",
				"
				http://www.nvygames.com/community/threads/rebel-faction-rules-regulations.28/<br/>
				"
		]
		
	];
	

//Controls----------------------------------
	player createDiaryRecord ["controls",
		[
			"Controls",
				"
				Y: Open Player Menu<br/>
				H: Help Menu
				U: Lock and unlock cars<br/>
				F: Cop Siren (if cop)<br/>
				T: Vehicle Trunk<br/>
				Shift + L: Lights<br/>
				Shift + G: Knock Out<br/>
				Ctrl + Shift + H: Surrender<br/>
			    Shift + R: Restrain<br/>
				Shift + H: Holster Weapon<nr/>
				"
		]
	];