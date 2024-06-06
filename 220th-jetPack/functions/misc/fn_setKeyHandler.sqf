params[
	["_man",     nil, [objNull]]
];
private _display = findDisplay 46;
private _downEh  = _display displayAddEventHandler ["KeyDown", {_this call RJET_fnc_onKeyDown}];
private _upEh    = _display displayAddEventHandler ["KeyUp",     {_this call RJET_fnc_onKeyUp}];

_man setVariable ["RJET_keyDown", _downEh];
_man setVariable ["RJET_keyUp",     _upEh];

true;