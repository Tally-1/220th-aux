private _engineLoad = _self get "engineLoad";
private _tempToAdd  = _engineLoad*1.5;
private _curTemp    = _self get "temp";
private _newTemp    = round(_curTemp+_tempToAdd);

_self set ["temp", _newTemp];

_newTemp;