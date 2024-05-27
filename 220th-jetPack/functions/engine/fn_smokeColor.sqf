params[
	["_default", [0.3,0.3,0.3],[[]]]
];
private _color    = _default;
private _heatCoef = _self call ["heatCoef"];

if(_heatCoef > 0.3)
then{_color = [0.3,0.3,0.3]};

if(_heatCoef > 0.4)
then{_color = [0.2,0.2,0.2]};

if(_heatCoef > 0.6)
then{_color = [0.1,0.1,0.1]};

if(_heatCoef > 0.8)
then{_color = [0,0,0]};

_color;