private _nameSpaces = [missionNamespace,objNull];
params[
	["_nameSpace", nil, _nameSpaces],
	["_varName",   nil,        [""]],
	["_value",     nil             ]
];
_nameSpace setVariable [_varName, _value, true];
[_nameSpace, [_varName, _value, true]] remoteExecCall ["setVariable", 0];

true;