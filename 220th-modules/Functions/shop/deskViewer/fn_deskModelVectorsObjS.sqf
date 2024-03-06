params  ["_object", "_cfgName"];      (_cfgName call BIS_fnc_itemType)
params  ["_category", "_subCategory"];
private ["_scale"];
private _attachPos = [-0.6,0,1.68];
private _dirUp     = [-0.002,0.002,0.999];
private _dir       = 0;


if(_subCategory isEqualTo "Uniform")then{
   _dir       = 180;
   _attachPos = [-0.5,0,1.74];
   _scale     = 0.4;
};

if(_subCategory isEqualTo "Grenade")then{
   _attachPos = [-0.6,0,1.05];
};

if(_subCategory isEqualTo "Headgear")then{
   _attachPos = [-0.6,0,0.5];
   _dir = 275;
};

if(_subCategory isEqualTo "Vest")then{
   _attachPos = [-0.5,-0.1,1.05];
   _scale     = 0.7;
};

if(_subCategory isEqualTo "Bullet")then{
   _attachPos = [-0.5,-0.1,1.2];
};

if(_subCategory isEqualTo "NVGoggles")then{
   _attachPos = [-0.5,-0,0.35];
};

if(_subCategory isEqualTo "Glasses")then{
   _attachPos = [-0.5,-0,0.45];
};

if(_subCategory isEqualTo "Rocket")then{
   _attachPos = [-0.5,-0,1.1];
   _dir       = 45;
};

if(_subCategory isEqualTo "Missile")then{
   _attachPos = [-0.15,0.2,1.1];
   _dir       = 45;
};

if(_subCategory isEqualTo "SmokeShell"
or{_subCategory isEqualTo "Shell"})then{
   _attachPos = [-0.5,-0.2,1.08];
};

private _returnArr = [_attachPos, _dirUp, _dir];
if(!isNil "_scale")then{_returnArr pushBack _scale;};

_returnArr;