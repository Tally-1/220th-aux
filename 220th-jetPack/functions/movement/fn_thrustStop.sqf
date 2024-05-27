params[
	["_man", nil, [objNull]],
	["_dir", nil,      [""]]
];
private _jetPack = unitBackpack _man;
private _engineState = _jetPack getVariable "RJET_engineState";
if(isNil "_engineState")exitWith{};
private _thrustDirs = (_engineState get "thrustDirs");

_thrustDirs deleteAt (_thrustDirs find _dir);
_engineState set ["thrustDirs", _thrustDirs];

true;