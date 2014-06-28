/*

	if send has been clicked

*/

private["_index", "_message","_type","_msgtype","_dstdata","_dst"];

_type = _this select 0;

_index = lbCurSel 1500;
_message = ctrlText 1400;

if(_index == -1) exitWith {};
if(_message == "") exitWith {};
if(_type == 2 && ((call life_adminlevel) < 1)) exitWith {};

ctrlSetText [1400, ""];


//Load data
_msgtype = lbValue[1500,_index];
_dstdata = lbData[1500,_index];

if(_msgtype == -1) exitWith {};

diag_log lastSender;
if(_type == 1 && !(lastSender == "")) then
{
	diag_log "We're in, cap";
	[[_message,name player,0],"clientMessage",lastSender,false] spawn life_fnc_MP;
}
else
{
	hint "No last sender!";
};
//Send message
switch(_msgtype) do 
{
	case 1: //To all police
	{
		[[_message,name player,1],"clientMessage",true,false] spawn life_fnc_MP;
	};
	case 5: //Police => All
	{
		[[_message,name player,5],"clientMessage",true,false] spawn life_fnc_MP;
	};
	case 2: //To all admins
	{
		[[_message,name player,2],"clientMessage",true,false] spawn life_fnc_MP;
	};
	case 4: //Admins => All
	{
		[[_message,name player,4],"clientMessage",true,false] spawn life_fnc_MP;
	};
	case 6: //To all ADAC
	{
		[[_message,name player,6],"clientMessage",true,false] spawn life_fnc_MP;
	};
	case 0: //To a person
	{
		_dst = call compile format["%1",_dstdata];
		if(isNull _dst) exitWith {};
		if(isNil "_dst") exitWith {};
	
		if(_type == 0) then //Msgtype 0
		{
			[[_message,name player,0,_dst],"clientMessage",_dst,false] spawn life_fnc_MP;
		}
		else //Msgtype 3
		{
			[[_message,name player,3],"clientMessage",_dst,false] spawn life_fnc_MP;
		};
	};
};

hint "Message sent.";