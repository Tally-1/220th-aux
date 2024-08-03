params[
	["_engine",nil,[createHashmap]]
];
private _engineLoad    = _engine get "engineLoad";
private _maxEngineLoad = _engine get "maxEngineLoad";

if(0 in [_engineLoad, _maxEngineLoad])
exitWith{_self call ["setProgress",[0]]};

private _coef  = (_engineLoad/_maxEngineLoad)max 0 min 1;
private _color = [_coef,1-_coef,0,0.7];
_self call ["setProgress",  [_coef]];
_self call ["setFillColor", [_color]];

true;