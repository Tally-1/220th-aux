// Must be executed globaly (remoteExecCall 0)
params[
	["_man",nil,[objNull]]
];
private _eh = 
_man addEventHandler ["HitPart", {
	(_this select 0) params ["_victim", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo", "_vector", "_radius", "_surfaceType", "_isDirect", "_instigator"];
	private _part = _selection#0;
	if(_part isNotEqualTo "spine3")                         exitWith{};
	if(_projectile isEqualTo "")                            exitWith{};
	if(isNull _shooter)                                     exitWith{};
	if!([_victim, _shooter]call RJET_fnc_isTargetBehindMan) exitWith{};
	
	[_victim] RemoteExec  ["RJET_fnc_jetPackExplode", _victim];
	
	nil;
}];

_man setVariable ["RJET_bulletExplodeEh", _eh];