params[
	["_man",nil,[objNull]]
];
if(_man getVariable ["RJET_exploding", false])
exitWith{};

_man setVariable ["RJET_exploding", true];

private _clayMore = "clayMoreDirectionalMine_Remote_Ammo" createVehicle getPosATLVisual _man;
private _timer    = time +0.3;
_clayMore attachTo [_man, [0,-0.2,0], "spine3"];
_clayMore setDir 200;

waitUntil {(_clayMore distance2D _man < 0.1) || {time >= _timer}};

[_man] call RJET_fnc_switchOff;

_clayMore setDamage 1;

removeBackpack _man;

_man setVariable ["RJET_exploding", nil];

true;