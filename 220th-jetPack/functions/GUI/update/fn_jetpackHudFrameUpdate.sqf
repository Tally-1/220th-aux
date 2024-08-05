params[
	["_man",nil,[objNull]]
];
if!(_self get "jetpackMode") exitWith{};
if (_self get "hidden")      exitWith{};

private _velociMeter = _self get "velocimeter";
private _altiMeter   = _self get "altimeter";
private _hidden      = _altiMeter get"stick"get"hidden";

if(_hidden)
then{_self call ["switchJpModeOn"]};

_velociMeter call ["update", [_man]];
_altiMeter   call ["update", [_man]];

true;