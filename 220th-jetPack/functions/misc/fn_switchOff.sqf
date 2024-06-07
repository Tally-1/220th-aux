params[
	["_man",     nil, [objNull]],
	["_restart", false, [false]]
];

private _display      = findDisplay 46;
private _timer        = time +1;
private _time         = time;

_man setVariable ["RJET_engineOn", false, true];
[_man] call RJET_fnc_removeKeyHandler;
[_man] call RJET_fnc_removeFlightVars;
[_man] call RJET_fnc_removeAnimationHandler;
[_man] remoteExecCall ["RJET_fnc_removeBulletExplodeEh", 0];

if(_restart)
then{[_man] call RJET_fnc_switchOn;};


true;