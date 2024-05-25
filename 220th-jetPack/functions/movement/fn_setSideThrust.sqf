params [
	["_engineState", nil,[createHashmap]]
];
private _man           = player;
private _velocity      = velocityModelSpace _man;
private _drift         = _velocity#0;
private _altitude      = (getPos _man)#2;
private _driftingLeft  = _drift<0;
private _thrustDirs    = _display getVariable "RJET_activeThrusts";
private _right         = "right" in _thrustDirs;
private _left          = "left"  in _thrustDirs;
private _maxLeftSpeed  = 0-RJET_maxDrift;
private _maxRightSpeed = RJET_maxDrift;

if(_right && {_left})                   exitWith{false;};
if(_left  && {_drift < _maxLeftSpeed})  exitWith{false;};
if(_right && {_drift > _maxRightSpeed}) exitWith{false;};

private _newDrift = _drift+RJET_driftChange;
if(_left)then{_newDrift = _drift-RJET_driftChange;};

_man setVelocityModelSpace [_newDrift, _velocity#1, _velocity#2];
[_man] call RJET_fnc_liftSmoke;
_engineState call ["addLoad", 1];

true;