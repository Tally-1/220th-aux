params[
	["_man",nil,[objNull]]
];
private _display = findDisplay 46;
private _thrustDirs = _display getVariable "RJET_activeThrusts";

[_man] call RJET_fnc_engineSound;
if(_thrustDirs isEqualTo [])
exitWith{[_man] call RJET_fnc_idleSmoke};

true;