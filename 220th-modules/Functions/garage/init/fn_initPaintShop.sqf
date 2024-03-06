params[
	["_module",nil,[objNull]]
];

private _garage = (synchronizedObjects _module)#0;
private _area   = [_module] call RVN_fnc_getModuleArea;
private _radius = selectMax [_area#0, _area#1, _area#4];

_area insert [0, (getPosATLVisual _module)];
_module setVariable ["GRG_area",   _area];
_module setVariable ["GRG_radius", _radius];

true;