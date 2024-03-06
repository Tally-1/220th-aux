cameraEffectEnableHUD true;
params["_vehicle"];

private _minDist = 3;
private _fov     = 1;
private _z       = (ASLToATL aimPos _vehicle)#2;
private _camPos  = _vehicle modelToWorld [3, 5, 0];
private _cam     = "camera" camCreate _camPos;

_cam setDir (_cam getDir _vehicle);
_cam cameraeffect ["internal","back"];
_cam camSetFov _fov;
_cam camPrepareTarget _vehicle;

_cam camCommitPrepared 0.5;

_cam;