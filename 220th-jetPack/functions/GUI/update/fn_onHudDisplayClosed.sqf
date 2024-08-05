params [
	["_display",nil,[displayNull]]
];
private _data         = _display getVariable "RJET_data";
private _frameEh      = _data get "frameEh";
private _projectileEh = _data get "projectileEh";

removeMissionEventHandler ["EachFrame",              _frameEh];
removeMissionEventHandler ["ProjectileCreated", _projectileEh];

uiNamespace setVariable ["PCA_HUD",nil];

if((!isNil "PCA_debug")
&&{PCA_debug})then{hint "220th_HUD display closed"};

true;