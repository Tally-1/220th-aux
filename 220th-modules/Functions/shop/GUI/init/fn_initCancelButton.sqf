params["_stateObject"];
private _display = uiNamespace getVariable "shop220th";
private _button  = _display displayCtrl 1608;
private _red     = [1,0.11,0.11,0.78];

_button ctrlSetText "Cancel";
_button ctrlSetBackgroundColor _red;
_button ctrlSetFontHeight 0.033;

[_button] call SHM_fnc_normalizeTextSize;

_button ctrlAddEventHandler ["ButtonClick", "_this call SHM_fnc_onCancelButton"];
_button setVariable ["SHM_GUIstate", _stateObject];

_stateObject set ["cancel_button", _button];

true;