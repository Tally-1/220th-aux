params [
	["_man",nil,[objNull]]
];
private _jetPack      = unitBackpack _man;
private _engineState  = _jetPack getVariable "RJET_engineState";
if(isTouchingGround _man)
exitWith{_engineState call ["idleSmoke"]};

[_man] call RJET_fnc_liftSmoke;

if("brake" in (_engineState get "thrustDirs"))
then{[_man] call RJET_fnc_brakingSmoke};

true;