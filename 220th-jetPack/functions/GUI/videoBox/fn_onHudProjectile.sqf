params[
	["_projectile",nil,[objNull]]
];
private _shooter = (getShotParents _projectile)#0;
private _man     = call RJET_fnc_getCurrentMan;
if(_shooter isNotEqualTo _man)exitWith{};

private _display  = uiNameSpace getVariable ["PCA_HUD",displayNull];
private _data     = _display getVariable "RJET_data";
private _lastShot = _data get "lastShot";
if(time-_lastShot<1)exitWith{};

_data set ["lastShot",time];

if(_data get "hidden")exitWith{};

private _launcher = secondaryWeapon _man;
private _weapon   = currentWeapon _man;
if(_weapon isNotEqualTo _launcher)exitWith{};

private _videoBox = _data get "videoBox";
if(_videoBox get "activated")exitWith{};

_videoBox call ["projectileCam",[_projectile]];

true;