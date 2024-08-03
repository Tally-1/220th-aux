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
private _setTextCode    = {params["_txt"];(_self get "ctrl")ctrlSetText _txt};
private _ratio          = (getResolution#1)/(getResolution#0);

if(_structuredText)
then{_setTextCode = RJET_fnc_setCtrlStructuredText};

if(_imgCtrl)then{
	_textAction  = "setImage";
	_colorAction = "setColor";
};

private _dataArr = [
	["ctrl",                                                           _ctrl],
	["ratio",                                                         _ratio],
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

(_self get "controls")pushBackUnique _ctrl;
_ctrl setVariable ["data", _data];
_ctrl ctrlShow _show;

_data;