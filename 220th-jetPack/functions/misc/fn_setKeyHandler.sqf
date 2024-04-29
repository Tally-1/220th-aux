private _display = findDisplay 46;
private _downEh = _display displayAddEventHandler ["KeyDown", {_this call RJET_fnc_onKeyDown}];
private _upEh   = _display displayAddEventHandler ["KeyUp",     {_this call RJET_fnc_onKeyUp}];

_display setVariable ["RJET_keyDown", _downEh];
_display setVariable ["RJET_keyUp",     _upEh];

true;