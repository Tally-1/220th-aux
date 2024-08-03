params[
	["_lift",nil,[0]]
];
private _wantedAngle  = 0;
private _currentAngle = _self get "arrowAngle";
private _arrowCount   = 0;
if(round _lift<0)then{_wantedAngle = 180};
if(_wantedAngle isNotEqualTo _currentAngle)
then{_altiMeter call ["rotateArrows",[_wantedAngle]]};

// Determine the number of arrows to display based on lift value
if (_lift > 5 || _lift < -5) then {
    _arrowCount = 1;
};
if (_lift > 20 || _lift < -20) then {
    _arrowCount = 2;
};
if (_lift > 40 || _lift < -40) then {
    _arrowCount = 3;
};
// (_arrow1 get "ctrl")ctrlShow false;
private _arrows = _self get "arrows";
{
    private _arrowCtrl = _x get "ctrl";
    private _index     = _forEachIndex + 1;
    _arrowCtrl ctrlShow (_index <= _arrowCount);
} forEach _arrows;