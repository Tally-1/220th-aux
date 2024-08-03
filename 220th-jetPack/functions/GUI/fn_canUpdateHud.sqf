params[
	["_display",nil,[displayNull]]
];
if(isNull _display)exitWith{false};

private _data = _display getVariable "RJET_data";
if(isNil "_data")exitWith{false};

private _ready = _data get "loaded";
if!(_ready)exitWith{false};

private _hidden = _data get "hidden";
if(_hidden)exitWith{false};

true;