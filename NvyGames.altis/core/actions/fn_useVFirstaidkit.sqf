/*


	Unpack a repairkit
	Gives back kit if no MAININV place

*/

hint "You open the First-Aid Kit ...";
sleep 2;

if(player canAdd "FirstAidKit") then
{
	//Add item
	["FirstAidKit",true,false,true,false] call life_fnc_handleItem;

	//Hotfix in for cop gear
	if(playerSide == west) then
	{
		[] call life_fnc_saveGear;
	};
	
	hint "Successfully unpacked.";
}
else
{

	[true,"vfirstaidkit",1] call life_fnc_handleInv;
	
	hint "First-Aid Kit could not be unpacked.";
	sleep 3;
	hint "The item has been returned.";
};