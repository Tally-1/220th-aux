private _stickPos     = [0.015, 0.1, 0.04, 0.8];
private _indicatorPos = [0.05, 0.48, 0.05, 0.05];
private _stick     = _self call ["addImage", ["GUI_Components\paa\measure_2.paa",_stickPos, PCA_iconColor]];
private _indicator = _self call ["addImage", ["GUI_Components\paa\EmptyIndicator.paa",_indicatorPos, PCA_iconColor]];

_indicatorPos set [0,0.056];
private _indiText  = _self call ["addImage", ["",_indicatorPos, PCA_textColor]];

private _arrowPos = [0.01,0.45,0.02,0.03];
private _arrow1   = _self call ["addImage", ["GUI_Components\paa\ArrowAngle.paa", _arrowPos, PCA_iconColor]]; _arrowPos set [1,0.46];
private _arrow2   = _self call ["addImage", ["GUI_Components\paa\ArrowAngle.paa", _arrowPos, PCA_iconColor]]; _arrowPos set [1,0.47];
private _arrow3   = _self call ["addImage", ["GUI_Components\paa\ArrowAngle.paa", _arrowPos, PCA_iconColor]];

private _thrustArrows = [_arrow1, _arrow2, _arrow3];
private _indicators   = [_indicator, _indiText];
private _dataArr = [
	["arrows",    _thrustArrows],
	["arrowAngle",            0],
	["indicator",   _indicators],
	["stick",            _stick],

	// {Methods}
	["setAltText",           RJET_fnc_hudAltimeterSetText],
	["setIndicator", RJET_fnc_hudAltimeterSetIndicatorPos],
	["setArrows",          RJET_fnc_hudAltimeterSetArrows],
	["rotateArrows",    RJET_fnc_hudAltimeterRotateArrows],
	["update",                RJET_fnc_updateHudAltimeter]
];

private _altiMeter = createHashmapObject [_dataArr];
_self set ["altimeter", _altiMeter];

true;