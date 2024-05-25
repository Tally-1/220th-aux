params[
	["_man",nil,[objNull]]
];
private _maxCapacity = 0;
private _cellCount   = 0;
private _fusionPacks = [];

{
	_x params["_type", "_ammoCount", "_isLoaded", "_magType", "_location"];
	if(_location isEqualTo "Backpack"
	&&{"200TH_FusionCell" in _type})
	then{
		private _capacity   = getNumber (configfile >> "CfgMagazines" >> _type >> "count");
		private _fusionPack = [_type, _ammoCount, _capacity];

		_fusionPacks pushBack _fusionPack;
		_maxCapacity = _maxCapacity+_capacity;
		_cellCount   = _cellCount+_ammoCount;
	};
}
forEach(magazinesAmmoFull _man);
private _fuelState = [_cellCount, _maxCapacity, _fusionPacks];

_fuelState;