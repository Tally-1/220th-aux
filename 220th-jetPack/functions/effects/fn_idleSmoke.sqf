params[
	["_man",nil,[objNull]]
];
private _pos      = ASLToATL aimpos _man;
private _vector   = [vectorDir _man] call RJET_fnc_invertVector;
private _smokeVel = [(_vector#0)*1.5,(_vector#1)*1.5, -1];
private _color    = [0.6,0.6,0.6];

[_pos, _smokeVel, 0.1, _color, true, 0.5] call RJET_fnc_smokeBall;

true;