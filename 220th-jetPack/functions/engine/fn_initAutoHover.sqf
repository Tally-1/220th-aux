private _man      = objectParent (_self get "jetPack");
private _velocity = velocityModelSpace _man;
private _lift     = _velocity#2;

if(isTouchingGround _man)exitWith{};

if(_lift<0)then{
	_engineState call ["addLoad", 4];
	[_man] call RJET_fnc_brakingSmoke; 
	[_man] call RJET_fnc_brakeSound;
};

playSoundUI ["click", 1, 1];
_self set ["autoHoverOn", true];

true;