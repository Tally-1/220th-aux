params[
	["_man",nil,[objNull]]
];
private _clayMore = "clayMoreDirectionalMine_Remote_Ammo" createVehicle getPosATLVisual _man;
_clayMore attachTo [_man, [0,-0.2,0], "spine3"];
_clayMore setDir 200;

waitUntil {_clayMore distance2D _man<0.1};

call RJET_fnc_switchOff;

_clayMore setDamage 1;

removeBackpack _man;

true;