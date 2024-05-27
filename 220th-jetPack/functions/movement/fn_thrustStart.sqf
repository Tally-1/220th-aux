params[
	["_man", nil, [objNull]],
	["_dir", nil,      [""]]
];
private _jetPack = unitBackpack _man;
private _engineState = _jetPack getVariable "RJET_engineState";
if(isNil "_engineState")exitWith{systemChat str "no engineState";};
private _thrustDirs = (_engineState get "thrustDirs");

_thrustDirs pushBackUnique _dir;


true;