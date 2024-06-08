private _curFuel          = _self get "fuel";
private _baseValue        = _self get "engineLoad";
private _powerConsumption = _baseValue*(_self get "enginePower");
private _toReduce         = _powerConsumption*(_self get "fuelConsumption");

private _newLevel = _curFuel - (round _toReduce);
_self set ["fuel", _newLevel];

true;