// Must be executed globaly (remoteExecCall 0)
params[
	["_man",nil,[objNull]]
];
private _eh = _man getVariable "RJET_bulletExplodeEh";
if(isNil "_eh")exitWith{};

_man removeEventHandler ["HitPart", _eh];
_man setVariable ["RJET_bulletExplodeEh", nil];