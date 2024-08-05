if!(cameraView in ["INTERNAL", "GUNNER"]) exitWith{false};
if!(isNull (findDisplay 312))             exitwith{false};

private _unit    = focusOn;
private _vehicle = cameraOn;
if(_unit isNotEqualTo _vehicle)exitWith{false};

private _camPos   = (positionCameraToWorld [0,0,0]);
private _distance = _unit distance2D _camPos;
if(_distance>6)exitWith{false};

true;