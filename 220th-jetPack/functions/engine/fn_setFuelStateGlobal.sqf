params[
	["_man",         nil,  [objNull]],
	["_ignoreTimer", false,  [false]]
];

if(_ignoreTimer isEqualTo false
&&{time < (_self get "fuelUpdateTime")})
exitWith{};

([_man] call RJET_fnc_getPhysicalFuelState)params[
	["_cellCount",   nil,[0]],
	["_maxCapacity", nil,[0]],
	["_fusionPacks", nil,[[]]]
];

private _curFuelVirtual = _self get "fuel";
private _amountToReduce = _cellCount-_curFuelVirtual;

[_man, _amountToReduce] call RJET_fnc_reduceFuelPhysical;

_self set  ["fuelUpdateTime", time + 3];
_self call ["syncFuelStateVirtual",[_man]];

true;