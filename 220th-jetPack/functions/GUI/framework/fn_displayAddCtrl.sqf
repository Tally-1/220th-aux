params[
	["_type",   nil,          [""]],
	["_pos",    nil,          [[]]],
	["_show",   PCA_debug, [false]]
];
private _display        = _self get "display";
private _ctrl           = _display ctrlCreate [_type, -1];
private _imgCtrl        = (toLower _type) isEqualTo "rscpicture";
private _structuredText = (toLower _type) isEqualTo "rscstructuredtext";
private _textAction     = "setText";
private _colorAction    = "setTextColor";
private _setTextCode    = RJET_fnc_setCtrlStandardText;
private _ratio          = (getResolution#1)/(getResolution#0);
private _hidden         = _show isEqualTo false;
private _typeName       = _type;

if(_structuredText)then{ 
	_typeName = "structuredText";
	_setTextCode = RJET_fnc_setCtrlStructuredText;
};

if(_imgCtrl)then{
	_typeName    = "image";
	_textAction  = "setImage";
	_colorAction = "setColor";
};

private _dataArr = [
	["ctrl",                                                           _ctrl],
	["type",                                                       _typeName],
	["hidden",                                                       _hidden],
	["ratio",                                                         _ratio],

	//                          {METHODS}
	["hide",                                               RJET_fnc_hideCtrl],
	["show",                                               RJET_fnc_showCtrl],
	["setPosGrid",                                    RJET_fnc_oopCtrlSetPos],
	["setPos",                                    RJET_fnc_oopCtrlSetPosSafe],
	["setPosSqr",                           RJET_fnc_oopCtrlSetPosSafeSquare],
	// ["setPosC",                             RJET_fnc_oopCtrlSetPosSafeCenter],
	["getPos",                                    RJET_fnc_oopCtrlGetPosSafe],
	[_textAction,                                               _setTextCode],
	[_colorAction,  {params["_clr"];(_self get "ctrl")ctrlSetTextColor _clr}]
];
private _data = createHashmapObject [_dataArr];

_data call ["setPos", [_pos]];

_ctrl setVariable ["data", _data];

(_self get "controls") pushBackUnique _ctrl;

_ctrl ctrlShow _show;

_data;