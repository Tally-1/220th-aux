params [
	["_engineState", nil,[createHashmap]]
];
private _man          = player;
private _velocity     = velocityModelSpace _man;
private _altitude     = (getPos _man)#2;
private _lift         = _velocity#2;
private _newVelocity  = [_velocity#0, _velocity#1, _lift+RJET_liftIncrease];

if(_altitude >= RJET_maxAltitude) 
exitWith{
	if((_altitude - RJET_maxAltitude) > 20)
	then{_man setVelocityModelSpace [_velocity#0, _velocity#1, -50]}
	else{_man setVelocityModelSpace [_velocity#0, _velocity#1,  0]};
	
	false;
};

if(_lift >= RJET_maxLift)exitWith{false;};

if(isTouchingGround _man)
then{
	_newVelocity = [_velocity#0, _velocity#1, RJET_initialLift];
	[_man] spawn RJET_fnc_takeOffSmoke;
	[_man] call RJET_fnc_takeOffSound;
	_engineState call ["addLoad", 2]; 
};

_man setVelocityModelSpace _newVelocity;
[_man] call RJET_fnc_liftSmoke;
_engineState call ["addLoad", 1]; 

true;