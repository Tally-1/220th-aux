params[
	["_man",            nil,[objNull]],
	["_amountToReduce", nil,      [0]]
];
private _backPack      = backpackContainer _man;
private _allMagDetails = magazinesAmmoFull _man select {_x#4 isEqualTo "Backpack"};

clearMagazineCargo _backPack;

{
	private _amountReduced = [_x, _amountToReduce, _backPack]call RJET_fnc_setBackpackMagOrFuel;
	_amountToReduce = _amountToReduce - _amountReduced;
	if(_amountToReduce < 0)then{_amountToReduce = 0;};

} forEach _allMagDetails;

true;