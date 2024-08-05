params[
	["_man",nil,[objNull]]
];
private _display   = uiNameSpace getVariable ["PCA_HUD",displayNull];
private _canUpdate = [_display] call RJET_fnc_canUpdateHud;
if!(_canUpdate)exitWith{};

private _hud       = _display getVariable "RJET_data";
private _fuelBar   = _hud get "fuelBar";
private _tempBar   = _hud get "tempBar";
private _loadBar   = _hud get "loadBar";
private _hudWheel  = _hud get"hudWheel";

private _speedText = _hud get"velocimeter"get"speedText";



_fuelBar  call ["update",      [_self]];
_tempBar  call ["update",      [_self]];
_loadBar  call ["update",      [_self]];
_hudWheel call ["enigneUpdate",[_self,_man]];

_speedText call ["setText", [(str round speed _man),0.5]];


true;