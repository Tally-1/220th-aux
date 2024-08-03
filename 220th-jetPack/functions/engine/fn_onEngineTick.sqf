params[
	["_man",nil,[objNull]]
];
private _jetPack  = unitBackpack _man;
private _state    = _jetPack getVariable "RJET_engineState";
private _engineOn = _man getVariable ["RJET_engineOn",false];

if!(_engineOn)exitWith{};

_state call ["resetLoad"];
_state call ["autoHover"];

[_state] call RJET_fnc_setThrust;
[_man]   call RJET_fnc_setEffects;

_state call ["setTemp"];
_state call ["setFuel",[_man]];
// _state call ["showState"];

_state call ["updateHUD",[_man]];

_state call ["lowFuelEffects"];
_state call ["heatEffect"];

true;