params[
	["_action",nil,[""]] // ["up","forward","right","left","brake", "autohover"]
];
private _man             = call RJET_fnc_getCurrentMan;
private _engineOn        = _man getVariable ["RJET_engineOn",false];
private _flying          = !isTouchingGround _man;
private _toggleAutoHover = _action isEqualTo "autohover";

if!(_engineOn)                exitWith{false};
if(RJET_currentPilot != _man) exitWith{
	[RJET_currentPilot] spawn RJET_fnc_switchOff;
	[_man] spawn RJET_fnc_switchOff;
	true;
};

if(_action isEqualTo "up")
exitWith{[_man,"up"]call RJET_fnc_thrustStart;true};

if(!_flying)                      exitWith{false};
if(_action isEqualTo "autohover") exitWith{true};

[_man, _action] call RJET_fnc_thrustStart; 

_flying;