private _ratio     = _self get "ratio";
private _xPos      = 0.955;
private _yPos      = 0.55;
private _width     = 0.03;
private _height    = 0.2;
private _spacing   = 0.005;
private _barPos    = [_xPos, _yPos, _width, _height];
private _amountPos = [_xPos, _yPos+(_height-0.02), _width,_width/_ratio];
private _fuelBar   = _self call ["addProgressBar", ["Fuel", _barPos, PCA_edgeColor]];
private _amountImg = _self call ["addImage", ["",_amountPos, PCA_textColor]];
private _xPos      = _xPos-(_width+_spacing); _barPos set [0,_xPos];
private _tempBar   = _self call ["addProgressBar", ["Temp", _barPos, PCA_edgeColor]];
private _xPos      = _xPos-(_width+_spacing); _barPos set [0,_xPos];
private _loadBar  = _self call ["addProgressBar", ["Load", _barPos, PCA_edgeColor]];

_self set ["fuelBar", _fuelBar];
_self set ["tempBar", _tempBar];
_self set ["loadBar", _loadBar];

_fuelBar set ["amountText",            _amountImg];
_fuelBar set ["update", RJET_fnc_hudUpdateFuelBar];
_tempBar set ["update", RJET_fnc_hudUpdateTempBar];
_loadBar set ["update", RJET_fnc_hudUpdateLoadBar];

{_x call ["setTitleColor", [PCA_textColor]]} forEach [_fuelBar, _tempBar, _loadBar];

true;