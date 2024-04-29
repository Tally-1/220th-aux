params[
	["_man",nil,[objNull]]
];
private _pos      = ASLToATL aimpos _man;
private _foot     = getPosATLVisual _man;
private _vector   = [vectorDir _man] call RJET_fnc_invertVector;
private _smokeVel = [(_vector#0)*1.5,(_vector#1)*1.5, -1];
private _color    = [0.3,0.3,0.3];

for "_i"from 1 to 6 do {
	sleep 0.1;
	[_foot, _smokeVel, 3, _color, true, 6] call RJET_fnc_smokeBall;
	[_foot, [0,0,-5], 3, [0.1,0.05,-1], true, 6] call RJET_fnc_smokeBall;
};

true;