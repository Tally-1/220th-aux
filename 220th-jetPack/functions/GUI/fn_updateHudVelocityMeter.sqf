params[
	["_man",nil,[objNull]]
];
private _engine = (unitBackpack _man) getVariable "RJET_engineState";
if(isNil "_engine")exitWith{};
private _speedText   = _self get "speedText";
private _aspectRatio = _self get "ratio";
private _maxSpeed    = (_engine get "maxSpeed")*1.1;
private _vel         = velocityModelSpace _man;
private _drift       = ((_vel#0) * 3.6);
private _speed       = ((_vel#1) * 3.6);

private _x = (_drift / _maxSpeed) max -1 min 1;
private _y = (_speed / _maxSpeed) max -1 min 1;

_self call ["setIndicator", [_x,_y]];


true;