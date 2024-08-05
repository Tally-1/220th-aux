params[
	["_engine",nil,[createHashmap]]
];
private _fuel    = _engine get "fuel";
private _fuelCap = _engine get "fuelCapacity";
private _subText = _self get "amountText";

if(0 in [_fuel, _fuelCap])
exitWith{
	_subText call["setText", [""]];
	_self call ["setProgress",[0]]
};

private _coef  = _fuel/_fuelCap;
private _color = [1-_coef,_coef,0,0.7];

if(_fuel < 1000)then{
	_subText call["setText",[str _fuel,0.35]];
	_color = [1,0,0,0.7]
}else{};


_self call ["setProgress",  [_coef]];
_self call ["setFillColor", [_color]];

true;