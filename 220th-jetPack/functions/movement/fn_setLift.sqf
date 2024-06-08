params [
	["_engineState", nil,[createHashmap]]
];
private _man          = objectParent(_engineState get "jetPack");
private _maxLift      = _engineState get "maxLiftSpeed";
private _initialLift  = _engineState get "initialLift";
private _maxAltitude  = _engineState get "maxAltitude";
private _accUp        = _engineState get "accelerationUp";
private _velocity     = velocityModelSpace _man;
private _altitude     = (getPos _man)#2;
private _lift         = _velocity#2;
private _newVelocity  = [_velocity#0, _velocity#1, _lift+_accUp];

if(_altitude >= _maxAltitude) 
exitWith{
	if((_altitude - _maxAltitude) > 20)
	then{_man setVelocityModelSpace [_velocity#0, _velocity#1, -50]}
	else{_man setVelocityModelSpace [_velocity#0, _velocity#1,  0]};
	
	false;
};

if(_lift >= _maxLift)exitWith{
	_engineState call ["addLoad", 1];
	false;
};

if(isTouchingGround _man)
then{
	_newVelocity = [_velocity#0, _velocity#1, _initialLift];
	[_man] spawn RJET_fnc_takeOffSmoke;
	[_man] call RJET_fnc_takeOffSound;
	_engineState call ["addLoad", 2]; 
};

_man setVelocityModelSpace _newVelocity;
[_man] call RJET_fnc_liftSmoke;

// progressive load increase
_engineState call ["addLoad", 1];

if(_lift < -10) then{_engineState call ["addLoad", 1]};
if(_lift < -30) then{_engineState call ["addLoad", 1]};
if(_lift < -50) then{_engineState call ["addLoad", 1]};

true;