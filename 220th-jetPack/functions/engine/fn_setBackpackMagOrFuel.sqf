params[
	["_magDetails",     nil,     [[]]],
	["_amountToReduce", nil,      [0]],
	["_backPack",       nil,[objNull]]
];
_magDetails params[
	["_type",      nil,    [""]],
	["_ammoCount", nil,     [0]],
	["_isLoaded",  nil, [false]],
	["_magType",   nil,     [0]],
	["_location",  nil,    [""]],
	["_magId",     nil,     [0]],
	["_client",    nil,     [0]]
];
private _isFusionCellMag = "200TH_FusionCell" in _type;
if!(_isFusionCellMag)exitWith{
	_backPack addMagazineAmmoCargo [_type, 1, _ammoCount];
	0;
};


private _newAmount = _ammoCount-_amountToReduce;
if(_newAmount<0)then{_newAmount = 0};

private _amountRemoved = [_newAmount, _ammoCount]call RJET_fnc_numDiff;

_backPack addMagazineAmmoCargo [_type, 1, _newAmount];

_amountRemoved;