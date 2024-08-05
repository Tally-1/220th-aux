params[
	["_man",     nil, [objNull]],
	["_restart", false, [false]]
];
private _display     = uiNameSpace getVariable ["PCA_HUD",displayNull];
private _time        = time;
private _jetPack     = unitBackpack _man;
private _engineState = _jetPack getVariable "RJET_engineState";

if([_man] call RJET_fnc_hasJetpack
&&{!isNil "_engineState"})
then{
	_man setVariable ["RJET_engineOn",false];
	_engineState call ["setFuelPhysical",[_man, true]];
	[_jetPack,"RJET_engineState",_engineState] spawn RJET_fnc_forceGlobalVarValue;
	[_man,"RJET_engineOn",false]               spawn RJET_fnc_forceGlobalVarValue;
};


[_man] call RJET_fnc_removeFlightVars;
[_man] call RJET_fnc_removeAnimationHandler;
[_man] remoteExecCall ["RJET_fnc_removeBulletExplodeEh", 0];

if(!isNull _display)then{
	private _data = _display getVariable "RJET_data";
	_data call ["switchJpModeOff"];
};

if(_restart)
then{[_man] call RJET_fnc_switchOn;};

true;
/*
OLD FUNCTION-KEEPING IT JUST IN CASE

params[
	["_man",     nil, [objNull]],
	["_restart", false, [false]]
];
private _display     = findDisplay 46;
private _time        = time;
private _jetPack     = unitBackpack _man;
private _engineState = _jetPack getVariable "RJET_engineState";

[_man] call RJET_fnc_removeKeyHandler;
[_man] call RJET_fnc_removeFlightVars;
[_man] call RJET_fnc_removeAnimationHandler;
[_man] remoteExecCall ["RJET_fnc_removeBulletExplodeEh", 0];

if([_man] call RJET_fnc_hasJetpack)
then{
	_man setVariable ["RJET_engineOn",false];
	_engineState call ["setFuelPhysical",[_man, true]];
	[_jetPack,"RJET_engineState",_engineState] spawn RJET_fnc_forceGlobalVarValue;
	[_man,"RJET_engineOn",false]               spawn RJET_fnc_forceGlobalVarValue;
};

if(_restart)
then{[_man] call RJET_fnc_switchOn;};

true;
*/