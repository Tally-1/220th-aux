

private _timer = time +10;
waitUntil {
	((!isNull (findDisplay 46)) &&
	{isTouchingGround player})
	||
	time > _timer
};

isNil{ 
call RJET_fnc_setClientVars;
call RJET_fnc_frameLoop;
[[],{call RJET_fnc_setNearJP_Pilots}] call RJET_fnc_addClient_5_SecondTask;
[[],{call RJET_fnc_playNearJPEffects}] call RJET_fnc_addClientFrameTask;


if(true)exitWith{};
// Key EH, to be replaced with addon options
(findDisplay 46) displayAddEventHandler 
["KeyUp",
{
params [
	["_displayOrControl", nil, [displayNull]],
	["_key",              nil,           [0]],
	["_shift",            nil,        [true]],
	["_ctrl",             nil,        [true]],
	["_alt",              nil,        [true]]
];

if(!_ctrl)               exitWith{false;};
if(_key isNotEqualTo 36) exitWith{false;};
call RJET_fnc_switch;
}];

};