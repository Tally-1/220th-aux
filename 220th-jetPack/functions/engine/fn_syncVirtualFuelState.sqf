params[["_man",nil,[objNull]]];
private _fuelState = [_man] call RJET_fnc_getPhysicalFuelState;
_fuelState params[
	["_cellCount",   0,[0]],
	["_maxCapacity", 0,[0]],
	["_fusionPacks", [],[[]]]
];
_self set ["fuel",               _cellCount];
_self set ["fuelCapacity",     _maxCapacity];
_self set ["fusionPacks",      _fusionPacks];

true;