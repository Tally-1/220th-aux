params[
	["_man",nil,[objNull]]
];
private _jetPack      = unitBackpack _man;
private _engine  = _jetPack getVariable "RJET_engineState";
if(isNil "_engine")exitWith{};

private _thrustDirs = _engine get "thrustDirs";
private _shake      = (_engine call ["loadCoef"])>=1 
					&&{_engine get "autoHoverOn" isEqualTo false};

if(_shake)
then{addCamShake [10, 0.1, 100]};

[_man] call RJET_fnc_engineSoundLocal;

if(_thrustDirs isEqualTo [])
exitWith{_engine call ["idleSmoke"]};

true;