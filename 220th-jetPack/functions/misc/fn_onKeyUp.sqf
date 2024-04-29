params [
	["_displayOrControl", nil, [displayNull]],
	["_key",              nil,           [0]],
	["_shift",            nil,        [true]],
	["_ctrl",             nil,        [true]],
	["_alt",              nil,        [true]]
];

private _man  = player;
private _keys = [57, 17, 32, 30, 31];
if!(_key in _keys)exitWith{false;};

if(!isTouchingGround _man)
then{[_man] call RJET_fnc_brakeSound;};

if(_key isEqualTo 57)exitWith{[player, "up"]      call RJET_fnc_thrustStop;};
if(_key isEqualTo 17)exitWith{[player, "forward"] call RJET_fnc_thrustStop;};
if(_key isEqualTo 32)exitWith{[player, "right"]   call RJET_fnc_thrustStop;};
if(_key isEqualTo 30)exitWith{[player, "left"]    call RJET_fnc_thrustStop;};
if(_key isEqualTo 31)exitWith{[player, "brake"]   call RJET_fnc_thrustStop;};


false;