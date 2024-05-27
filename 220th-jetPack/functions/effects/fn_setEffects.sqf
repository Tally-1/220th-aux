params[
	["_man",nil,[objNull]]
];
private _jetPack      = unitBackpack _man;
private _engineState  = _jetPack getVariable "RJET_engineState";
if(isNil "_engineState")exitWith{};

private _thrustDirs = _engineState get "thrustDirs";

[_man] call RJET_fnc_engineSound;

if(_thrustDirs isEqualTo [])
exitWith{_engineState call ["idleSmoke"]};

true;