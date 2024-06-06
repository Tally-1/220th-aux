params[
	["_man",     nil, [objNull]]
];
private _display = findDisplay 46;
private _downEh  = _man getVariable "RJET_keyDown";
private _upEh    = _man getVariable "RJET_keyUp";

if(!isNil "_downEh") then{_display displayRemoveEventHandler ["KeyDown", _downEh]};
if(!isNil "_upEh")   then{_display displayRemoveEventHandler ["KeyUp",   _upEh]};
if (isNil "_upEh")    exitWith{false};


_man setVariable ["RJET_keyDown", nil];
_man setVariable ["RJET_keyUp",   nil];

true;