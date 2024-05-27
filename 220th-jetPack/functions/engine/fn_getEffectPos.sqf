private _man = _self call ["getPilot"];
private _pos = [ 
	_man,
	"spine3",
	[-0.1,-0.25,-0.1]
] call RJET_fnc_selectionPos;

_pos;