disableSerialization;
params[
   ["_desk",   objNull, [objNull]],
   ["_camera", objNull, [objNull]]
];
createDialog "shop220th";
private _display = uiNamespace getVariable "shop220th";
private _state   = [_display, _desk, _camera] call SHM_fnc_initShopGUIstate;

[_state] call SHM_fnc_initAccountView;
[_state] call SHM_fnc_initShopButtons;
[_state] call SHM_fnc_initShopListBoxes;
[_state] call SHM_fnc_initDescriptionBox;
[_state] call SHM_fnc_initShopInventory;

_display displayAddEventHandler ["KeyDown", "_this call SHM_fnc_shopKeyDown"];
_display setVariable ["SHM_guiState", _state];

_state;