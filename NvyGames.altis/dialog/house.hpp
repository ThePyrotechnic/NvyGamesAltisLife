class house_houseDialog
{
	idd = 38400;
	movingEnabled = false;
	enableSimulation = true;
	
	class controlsBackground
	{
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			text = "<t align='center' size='1.2'>House</t>"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 36 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.7};
		};
		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 36 * GUI_GRID_W;
			h = 21 * GUI_GRID_H;
		};
		class IGUIBack_2202: IGUIBack
		{
			idc = 2202;
			x = 2.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 17 * GUI_GRID_W;
			h = 13 * GUI_GRID_H;
		};
		class IGUIBack_2203: IGUIBack
		{
			idc = 2203;
			x = 2.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 17 * GUI_GRID_W;
			h = 6.5 * GUI_GRID_H;
		};
		class house_value: RscStructuredText
		{
			idc = 1102;
			text = "<t size='2' align='center'>Worth: $xxxxxxxx</t>"; //--- ToDo: Localize;
			x = 3 * GUI_GRID_W + GUI_GRID_X;
			y = 16.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 4 * GUI_GRID_H;
			colorBackground[] = {1,1,1,0};
		};
		class RscStructuredText_1101: RscStructuredText
		{
			idc = 1101;
			text = "<t size='1.1'>Welcome to the Altis Housing Agency!<br/></br>Don't live another minute in the gutter! Buy yourself this beautiful house in a great location!<br/><br/><br/><br/>You will receive the following benefits:<br/> <t color='#00dd00'><br/>* Respawn at your home!<br/>* Store items in your home!<br/>* Store and pull out vehicles from your home<br/>* Sleep to heal yourself</t></t> "; //--- ToDo: Localize;
			x = 20.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 17 * GUI_GRID_W;
			h = 20 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
	};
	
	class controls
	{
		class bClose: RscButtonMenu
		{
			idc = 2400;
			text = "Close"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 23 * GUI_GRID_H + GUI_GRID_Y;
			w = 36 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			onButtonClick="closeDialog 0;";
		};
		class bBuyHouse: RscButtonMenu
		{
			idc = 2401;
			text = "Buy"; //--- ToDo: Localize;
			x = 3 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class bSellHouse: RscButtonMenu
		{
			idc = 2402;
			text = "Sell"; //--- ToDo: Localize;
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class bVehiclePark: RscButtonMenu
		{
			idc = 2403;
			text = "Park vehicle"; //--- ToDo: Localize;
			x = 3 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			tooltip = "Park vehicle in the vicinity."; //--- ToDo: Localize;
		};
		class bVehicleOpenGarage: RscButtonMenu
		{
			idc = 2404;
			text = "Pull car from Garage"; //--- ToDo: Localize;
			x = 3 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			tooltip = "Open Garage and pull out vehicle."; //--- ToDo: Localize;
		};
		class bKeyDialog: RscButtonMenu
		{
			idc = 2405;
			text = "Give Key"; //--- ToDo: Localize;
			x = 3 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			tooltip = "Give another player your house keys."; //--- ToDo: Localize;
		};
		class bVehicleHeliOpenGarage: RscButtonMenu
		{
			idc = 2406;
			text = "Pull out Helicopter"; //--- ToDo: Localize;
			x = 3 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			tooltip = "Open heli garage."; //--- ToDo: Localize;
		};
	};
};
