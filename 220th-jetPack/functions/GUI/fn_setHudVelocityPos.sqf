params [
    ["_xPos", 0, [0]], // -1 to 1
	["_yPos", 0, [0]] // -1 to 1
];

private _aspectRatio   = _self get "ratio";
private _indicator     = _self get "indicator";
private _center        = _self get "center";
private _indicatorSize = (_self get "indicatorSize")/_aspectRatio;

// Ensure input values are within the range of -1 to 1
_xPos = (_xPos max -1) min 1;
_yPos = (_yPos max -1) min 1;

// Calculate the new position based on the input
private _newX = (_center#0) + _xPos * (_indicatorSize*_aspectRatio);
private _newY = (_center#1) - _yPos * (_indicatorSize/_aspectRatio); // Invert Y axis for screen coordinates

// Constrain the position within the circle
private _distance = sqrt ((_newX - (_center#0))^2 + (_newY - (_center#1))^2);
if (_distance > _indicatorSize) then {
    private _angle = (_newY - (_center#1)) atan2 (_newX - (_center#0));
    _newX = (_center#0) + cos _angle * _indicatorSize;
    _newY = (_center#1) + sin _angle * _indicatorSize;
};

// recalculate position.
private _newPos = [_newX,_newY,_self get "indicatorSize"] call RJET_fnc_formatPosCenterSquare;
_indicator call ["setPos", [_newPos]];
(_indicator get "ctrl")ctrlSetAngle [_newPos#0,_newPos#1,_angle];

true;