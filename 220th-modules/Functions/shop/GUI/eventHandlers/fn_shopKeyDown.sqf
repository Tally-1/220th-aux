params ["_displayOrControl", "_key", "_shift", "_ctrl", "_alt"];
private _GuiState = _displayOrControl getVariable "SHM_guiState";

if(_key isEqualTo 1)exitWith{_GuiState call ["close_shop"];};

false;