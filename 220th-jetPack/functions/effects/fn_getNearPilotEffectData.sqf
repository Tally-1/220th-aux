params[
	["_man", nil, [objNull]]
];
private _engine     = unitBackpack _man getVariable "RJET_engineState";
private _cycle      = _engine get "engineCycle";
private _effectTime = time+_cycle;

[_man, _cycle, _effectTime];