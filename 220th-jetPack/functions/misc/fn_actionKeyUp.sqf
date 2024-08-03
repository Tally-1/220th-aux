params[
	["_action",nil,[""]] // ["up","forward","right","left","brake", "autohover"]
];
private _man = call RJET_fnc_getCurrentMan;

if(RJET_currentPilot != _man)exitWith{
	[RJET_currentPilot] spawn RJET_fnc_switchOff;
	[_man] spawn RJET_fnc_switchOff;
	true;
};

private _engineOn        = _man getVariable ["RJET_engineOn",false];
private _flying          = !isTouchingGround _man;
private _jetPack         = unitBackpack _man;
private _engineState     = _jetPack getVariable "RJET_engineState";
private _toggleAutoHover = _action isEqualTo "autohover";
if!(_engineOn) exitWith{false};
if(_toggleAutoHover)
exitWith{_engineState call ["autoHoverSwitch"]};

[_man,_action]call RJET_fnc_thrustStop;

true;