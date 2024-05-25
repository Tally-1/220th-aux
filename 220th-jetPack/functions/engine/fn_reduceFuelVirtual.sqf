private _curFuel  = _self get "fuel";
private _toReduce = _self get "engineLoad";
private _newLevel = _curFuel - _toReduce;
_self set ["fuel", _newLevel];

true;