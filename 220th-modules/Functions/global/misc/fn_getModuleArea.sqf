params[
	["_module", nil, [objNull]]
];
(_module getVariable "objectarea")
params["_a", "_b", "_angle", "_isRectangle", "_c"]; 
private _center = getPos _module;
private _area   = [_center, _a, _b, _angle, _isRectangle, _c];

_area;