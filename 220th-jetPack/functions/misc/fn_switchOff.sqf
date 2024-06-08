params[
	["_man",     nil, [objNull]],
	["_restart", false, [false]]
];

private _display      = findDisplay 46;
private _timer        = time +1;
private _time         = time;
private _jetPack      = unitBackpack _man;
private _engineState  = _jetPack getVariable "RJET_engineState";

[_man] call RJET_fnc_removeKeyHandler;
[_man] call RJET_fnc_removeFlightVars;
[_man] call RJET_fnc_removeAnimationHandler;
[_man] remoteExecCall ["RJET_fnc_removeBulletExplodeEh", 0];

if([_man] call RJET_fnc_hasJetpack)
then{
	[_jetPack,"RJET_engineState",_engineState]call RJET_fnc_forceGlobalVarValue;
	[_man,"RJET_engineOn",false]call RJET_fnc_forceGlobalVarValue;
};

if(_restart)
then{[_man] call RJET_fnc_switchOn;};


true;