params[
	["_man", nil, [objNull]],
	["_dir", nil,      [""]]
];
private _display = findDisplay 46;
(_display getVariable "RJET_activeThrusts") pushBackUnique _dir;

true;