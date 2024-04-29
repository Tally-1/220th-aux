private _man        = player;
private _altitude   = (getPos _man)#2;
private _velocity   = velocityModelSpace _man;
private _speed      = _velocity#1;
private _drift      = _velocity#0;
private _lift       = _velocity#2;
private _driftSpeed = [0, _drift] call RJET_fnc_numDiff;
private _thrustDirs = _display getVariable "RJET_activeThrusts";
private _forward    = "forward" in _thrustDirs;
private _brake      = "brake"   in _thrustDirs;

if(_forward &&{_brake})                       exitWith{false;};
if(_altitude < 1)                             exitWith{false;};
if(_altitude > RJET_maxAltitude &&{_forward}) exitWith{false;};

if(_forward
&&{_speed > RJET_maxSpeed})
exitWith{false;};

if(_brake
&&{_speed <= 0
&&{_driftSpeed < 1
&&{_lift > -3}}})
exitWith{false;};


private _newSpeed     = _speed + RJET_speedIncrease;
private _driftingLeft = _drift<0;
private _newDrift     = _drift - RJET_speedDecrease;
private _newLift      = _lift  + RJET_speedDecrease;

if(_driftingLeft)             then {_newDrift = _drift + RJET_speedDecrease;};
if(_brake)                    then {
	_newSpeed = _speed - RJET_speedDecrease;
	_drift    = _newDrift;
	if(_lift < -3)
	then{_lift = _newLift;};
};

if(_newSpeed < 0)             then {_newSpeed = 0;};
if(_newSpeed > RJET_maxSpeed) then {_newSpeed = RJET_maxSpeed;};

private _newVelocity   = [_drift, _newSpeed, _lift];

if(_brake)
then{[_man] call RJET_fnc_brakingSmoke; [_man] call RJET_fnc_brakeSound;}
else{[_man] call RJET_fnc_liftSmoke;};

_man setVelocityModelSpace _newVelocity;

true;