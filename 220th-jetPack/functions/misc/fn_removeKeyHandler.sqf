private _display = findDisplay 46;
private _downEh  = _display getVariable "RJET_keyDown";
private _upEh    = _display getVariable "RJET_keyUp";

if(isNil "_downEh")exitWith{};

_display displayRemoveEventHandler ["KeyDown", _downEh];
_display displayRemoveEventHandler ["KeyUp",   _upEh];

_display setVariable ["RJET_keyDown", nil];
_display setVariable ["RJET_keyUp",   nil];

true;