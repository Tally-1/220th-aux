params[
	["_man",nil,[objNull]]
];
private _display   = uiNameSpace getVariable ["220th_HUD",displayNull];
private _canUpdate = [_display] call RJET_fnc_canUpdateHud;
if!(_canUpdate)exitWith{};

private _data        = _display getVariable "RJET_data";
private _velociMeter = _data get "velocimeter";
private _altiMeter   = _data get "altimeter";

_velociMeter call ["update", [_man]];
_altiMeter   call ["update", [_man]];

true;