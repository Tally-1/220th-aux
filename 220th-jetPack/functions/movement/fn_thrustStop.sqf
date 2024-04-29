params[
	["_man", nil, [objNull]],
	["_dir", nil,      [""]]
];
private _display = findDisplay 46;
private _thrustDirs = _display getVariable "RJET_activeThrusts";

_thrustDirs deleteAt (_thrustDirs find _dir);
_display setVariable ["RJET_activeThrusts", _thrustDirs];

true;