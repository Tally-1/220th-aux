private _xPos          = 0.5;
private _yPos          = 0.81;
private _edgeSize      = 0.25;
private _indicatorSize = 0.05;
private _textSize      = 0.1;
private _center        = [_xPos, _yPos];
private _edgePosition  = [_xPos,_yPos,_edgeSize]      call RJET_fnc_formatPosCenterSquare;
private _indicatorPos  = [_xPos,_yPos,_indicatorSize] call RJET_fnc_formatPosCenterSquare;
private _speedPos      = [_xPos,0.66,_textSize]       call RJET_fnc_formatPosCenterSquare;
private _speedText     = _self call ["addImage", ["\220th-jetPack\GUI_Components\paa\Square.paa",_speedPos,      PCA_textColor]];
private _edgeCircle    = _self call ["addImage", ["\220th-jetPack\GUI_Components\paa\Circle.paa",_edgePosition,  PCA_iconColor]];
private _centerIcon    = _self call ["addImage", ["\220th-jetPack\GUI_Components\paa\inner_4.paa",_indicatorPos, PCA_edgeColor]];
private _indicator     = _self call ["addImage", ["\220th-jetPack\GUI_Components\paa\inner_1.paa",_indicatorPos, PCA_iconColor]];
private _ratio         = _self get "ratio";

private _dataArr = [ 
	// [DATA]
	["circle",           _edgeCircle],
	["indicator",         _indicator],
	["center",               _center],
	["centerIcon",       _centerIcon],
	["speedText",         _speedText],
	["radius",             _edgeSize],
	["ratio",                 _ratio],
	["indicatorSize", _indicatorSize],

	// {METHODS}
	["hide",      RJET_fnc_hideHudVelocityMeter],
	["show",      RJET_fnc_showHudVelocityMeter],
	["setIndicator", RJET_fnc_setHudVelocityPos],
	["update",  RJET_fnc_updateHudVelocityMeter]
];

private _velocimeter = createHashmapObject [_dataArr];

_speedText call ["setText", ["200",0.5]];
_self set ["velocimeter", _velocimeter];

true;