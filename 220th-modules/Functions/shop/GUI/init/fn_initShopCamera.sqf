cameraEffectEnableHUD true;
params["_desk"];

private _fov      = 1.1;
private _xOffset  = -0.55;
private _focusPos = _desk modelToWorld [_xOffset,1,1];//[_desk] call SHM_fnc_deskFocusPos;
private _cam      = "camera" camCreate getPosATL _desk;

_cam attachTo [_desk, [_xOffset,-0.8,1.5]]; detach _cam;

_cam cameraeffect ["internal","back"];
_cam camSetFov _fov;
_cam camPrepareTarget _focusPos;

_cam camCommitPrepared 0;

_cam;