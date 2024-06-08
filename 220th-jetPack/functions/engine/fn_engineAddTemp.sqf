private _engineLoad = _self get "engineLoad";
private _loadCoef   = _self call ["loadCoef"];
private _baseTemp   = _engineLoad*1.5;
private _tempToAdd  = _baseTemp*(_self get "enginePower");

if(_loadCoef > 1)
then{_tempToAdd = _tempToAdd*_loadCoef};

private _curTemp    = _self get "temp";
private _newTemp    = round(_curTemp+_tempToAdd);

_self set ["temp", _newTemp];

_newTemp;