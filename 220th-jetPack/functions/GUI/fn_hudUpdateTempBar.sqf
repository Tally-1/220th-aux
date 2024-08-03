params[
	["_engine",nil,[createHashmap]]
];
private _temp    = _engine get "temp";
private _maxTemp = _engine get "maxTemp";

if(0 in [_temp, _maxTemp])
exitWith{_self call ["setProgress",[0]]};

private _coef  = (_temp/_maxTemp)max 0 min 1;
private _color = [_coef,0,1-_coef,0.7];
_self call ["setProgress",   [_coef]];
_self call ["setFillColor", [_color]];

true;