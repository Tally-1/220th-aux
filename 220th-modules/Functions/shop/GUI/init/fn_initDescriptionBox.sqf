params["_stateObject"];
private _display = _stateObject get "display";
private _textBox = _display displayCtrl 1100;
private _frame   = _display displayCtrl 1802;

_frame ctrlSetTextColor [0,0,0,0];
_frame ctrlSetFontHeight 0.05;
[_frame] call SHM_fnc_normalizeTextSize;

_stateObject set ["description_box",   _textBox];
_stateObject set ["description_frame", _frame];

_textBox setVariable ["SHM_GUIstate", _stateObject];

true;