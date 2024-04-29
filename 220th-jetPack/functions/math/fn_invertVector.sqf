params[
	["_vector", nil,[[]]]
];
private _newVector = [];

{_newVector pushBack ([_x] call RJET_fnc_invertNumber)} forEach _vector;

_newVector;