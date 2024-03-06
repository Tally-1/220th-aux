params ["_button"];
private _state = _button getVariable "SHM_GUIstate";
_state call ["close_shop"];

true;