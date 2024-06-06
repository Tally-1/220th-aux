params [
	["_displayOrControl", nil, [displayNull]],
	["_key",              nil,           [0]],
	["_shift",            nil,        [true]],
	["_ctrl",             nil,        [true]],
	["_alt",              nil,        [true]]
];
private _man             = call RJET_fnc_getCurrentMan;
private _keys            = [57, 17, 32, 30, 31, 45];
private _flying          = !isTouchingGround _man;
private _toggleAutoHover = _ctrl && {_key isEqualTo 45};

if!(_key in _keys)           exitWith{false};
if(RJET_currentPilot != _man)exitWith{
	[RJET_currentPilot] spawn RJET_fnc_switchOff;
	// [_man] call RJET_fnc_switchOn;
	[_man] spawn RJET_fnc_switchOff;
	true;
};

if(_key isEqualTo 57) exitWith{[_man, "up"] call RJET_fnc_thrustStart; true;};
if(!_flying)          exitWith{false;};
if(_toggleAutoHover)  exitWith{true;};

if(_key isEqualTo 17)exitWith{[_man, "forward"] call RJET_fnc_thrustStart; _flying;};
if(_key isEqualTo 32)exitWith{[_man, "right"]   call RJET_fnc_thrustStart; _flying;};
if(_key isEqualTo 30)exitWith{[_man, "left"]    call RJET_fnc_thrustStart; _flying;};
if(_key isEqualTo 31)exitWith{[_man, "brake"]   call RJET_fnc_thrustStart; _flying;};

false;