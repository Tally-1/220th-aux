private _curTemp            = _self get "temp";
if(_curTemp <= 0)exitWith{};

private _reductionPrSecond  = _self get "cooling";
private _lastReduction      = _self get "prevTempLower";
private _sinceLastReduction = time - _lastReduction;
private _coef               = _sinceLastReduction/1;
private _tempToSubtract     = _reductionPrSecond*_coef;

private _newTemp    = _curTemp - _tempToSubtract;
if(_newTemp < 0)then{_newTemp = 0};

_self set ["temp",      _newTemp];
_self set ["prevTempLower", time];

_newTemp;