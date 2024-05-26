params[
	["_man",nil,[objNull]]
];
private _jetPack = unitBackpack _man;
private _state   = _jetPack getVariable "RJET_engineState";

_state call ["resetLoad"];

[_state] call RJET_fnc_setThrust;
[_man] call RJET_fnc_setEffects;

_state call ["setTemp"];
_state call ["setFuel",[_man]];
_state call ["showState"];

_state call ["lowFuelEffects"];
_state call ["heatEffect"];

true;