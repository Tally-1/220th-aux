params [
	["_engineState", nil,[createHashmap]]
];

private _display    = findDisplay 46;
private _thrustDirs = _engineState get "thrustDirs";
private _man        = objectParent(_engineState get "jetPack");
private _velocity   = velocityModelSpace _man;

if(_thrustDirs isEqualTo [])exitWith{false;};

if("up" in _thrustDirs)then{[_engineState] call RJET_fnc_setLift;};

if("forward" in _thrustDirs
or{"brake"   in _thrustDirs})
then{[_engineState] call RJET_fnc_setSpeed;};

if("right" in _thrustDirs
or{"left"  in _thrustDirs})
then{[_engineState] call RJET_fnc_setSideThrust;};

true;