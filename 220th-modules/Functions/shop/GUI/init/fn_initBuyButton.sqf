params["_stateObject"];
private _display = uiNamespace getVariable "shop220th";
private _button  = _display displayCtrl 1609;
private _green   = [0.11,1,0.11,0.78];

_button ctrlSetText "Buy items";
_button ctrlSetBackgroundColor _green;
_button ctrlSetFontHeight 0.034;

[_button] call SHM_fnc_normalizeTextSize;

_button ctrlAddEventHandler ["ButtonClick", "_this call SHM_fnc_onBuyButton"];
_button setVariable ["SHM_GUIstate", _stateObject];

_stateObject set ["buy_button", _button];

true;