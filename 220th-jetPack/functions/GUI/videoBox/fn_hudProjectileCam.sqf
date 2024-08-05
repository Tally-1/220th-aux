params[
	["_projectile",nil,[objNull]]
];
_self set ["activated", true];
_self call ["show"];

private _projectilePos = getPosATLVisual _projectile;
private _cam           = "camera" camCreate _projectilePos;
private _screen        = _self get "screen";
private _feed          = "#(argb,512,512,1)r2t(ProjectileFeed,1)";
private _pData         = [_projectile, _cam, time];
private _textBox       = _self get "text";

_cam cameraEffect ["internal", "back", "ProjectileFeed"];
_cam attachTo [_projectile, [0,-2,0]];

_self set  ["pData",    _pData];
_self call ["setImage",[_feed]];
_self call ["endProjectileCam"];

_textBox call ["setText",["Projectile feed"]];

true;