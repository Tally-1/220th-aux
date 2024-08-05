params [
	["_display",nil,[displayNull]]
];
private _data    = [_display, "PCA_HUD"] call RJET_fnc_initDisplayData;

[_data] call RJET_fnc_setHudData;

_data call ["initElements"];
_data call ["onEachFrameEh"];
_data call ["setProjectileEh"];

uiNamespace setVariable ["PCA_HUD", _display];

true;