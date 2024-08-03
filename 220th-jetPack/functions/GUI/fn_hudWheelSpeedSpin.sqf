params [
	["_engine", nil,[createHashmap]],
	["_man",    nil,      [objNull]]
];
private _time     = _engine get "engineCycle";
private _timeCoef = _time/0.1;
private _speed    = speed _man;
private _wheel    = _self get "innerWheel";
private _angle    = _wheel call ["getAngle"];
private _degrees  = round((_speed*0.1)*_timeCoef);
private _newAngle = _angle-_degrees;

// The angle does not format itself to stay within the 360 range.
if(_angle<-36000
||{_angle>36000})exitWith{
	private _correctAngle = ((_angle + 360) % 360);
	private _ctrl         = _wheel get "ctrl";
	_ctrl ctrlSetAngle [_correctAngle, 0.5, 0.5];
};

_wheel call ["rotate",[_newAngle, _time]];

true;