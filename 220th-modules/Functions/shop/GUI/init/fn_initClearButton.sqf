params["_stateObject"];
private _display = uiNamespace getVariable "shop220th";
private _button  = _display displayCtrl 1607;
private _aqua    = [0.4, 1, 0.9, 0.78];

_button ctrlSetText "Clear";
_button ctrlSetBackgroundColor _aqua;
_button ctrlSetFontHeight 0.033;

[_button] call SHM_fnc_normalizeTextSize;

_button ctrlAddEventHandler ["ButtonClick", "_this call SHM_fnc_onClearButton"];
_button setVariable ["SHM_GUIstate", _stateObject];

_stateObject set ["clear_button", _button];

true;