[]spawn{
waitUntil { (!isNull (findDisplay 46))&&{isTouchingGround player}};
isNil{ 

RJET_EngineCycle    = 0.1;
RJET_maxLift        = 15;
RJET_liftIncrease   = 2;
RJET_initialLift    = 10;

RJET_maxSpeed       = 220;
RJET_speedIncrease  = 2;
RJET_speedDecrease  = 2;

RJET_maxDrift       = 50;
RJET_driftChange    = 2;

RJET_maxAltitude    = 200;
RJET_maxTemp        = 1000;

(findDisplay 46) displayAddEventHandler 
["KeyUp",
{
params [
	["_displayOrControl", nil, [displayNull]],
	["_key",              nil,           [0]],
	["_shift",            nil,        [true]],
	["_ctrl",             nil,        [true]],
	["_alt",              nil,        [true]]
];

if(!_ctrl)               exitWith{false;};
if(_key isNotEqualTo 36) exitWith{false;};
call RJET_fnc_switch;

}
];

}};