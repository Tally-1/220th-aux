params[
	["_man",nil,[objNull]]
];
private _pos      = ASLToATL aimpos _man;
private _vector   = [vectorDir _man] call RJET_fnc_invertVector;
private _smokeVel = [(_vector#0)*2,(_vector#1)*2,-5];
private _color    = [0.1,0.05,0];

for "_i"from 1 to 3 do {
	[_pos, _smokeVel, 0.7, _color, true, 2] call RJET_fnc_smokeBall;
};

true;