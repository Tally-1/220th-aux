params [
	["_engine",nil,[createHashmap]]
];
private _time     = _engine get "engineCycle";
private _timeCoef = _time/0.1;
private _load     = _engine get "engineLoad";
private _wheel    = _self get "midWheel";
private _angle    = _wheel call ["getAngle"];
private _degrees  = round(6+(_load*6)*_timeCoef);
private _newAngle = _angle+_degrees;

// Just making sure we are not dealing with angles in the billions
if(_angle>36000)exitWith{
	private _correctAngle = ((_angle + 360) % 360);
	private _ctrl         = _wheel get "ctrl";
	_ctrl ctrlSetAngle [_correctAngle, 0.5, 0.5];
};

_wheel call ["rotate",[_newAngle, _time]];

true;