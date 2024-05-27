if!(_self get "autoHoverOn")exitwith{};
private _man      = objectParent (_self get "jetPack");
if(isTouchingGround _man)exitWith{_self call ["autoHoverSwitch"]};

(velocityModelSpace _man)
params[
	"_drift",
	"_speed",
	"_lift"
];
private _velocityLimit = 1;
private _driftingRight = _drift>_velocityLimit;
private _driftingLeft  = _drift<(0-_velocityLimit);
private _forward       = _speed>_velocityLimit;
private _backward      = _speed<(0-_velocityLimit);
private _falling       = _lift<(0-0.5);//(0-_velocityLimit);

if(_driftingRight) 
then{[_man, "left"]call RJET_fnc_thrustStart}
else{[_man, "left"] call RJET_fnc_thrustStop};

if(_driftingLeft)  
then{[_man, "right"]call RJET_fnc_thrustStart}
else{[_man, "right"] call RJET_fnc_thrustStop};

if(_forward)
then{[_man, "brake"]call RJET_fnc_thrustStart}
else{[_man, "brake"] call RJET_fnc_thrustStop};

if(_backward)
then{[_man, "forward"]call RJET_fnc_thrustStart}
else{[_man, "forward"] call RJET_fnc_thrustStop};

if(_falling)
then{[_man, "up"]call RJET_fnc_thrustStart}
else{[_man, "up"] call RJET_fnc_thrustStop};


_self call ["addLoad", 2];