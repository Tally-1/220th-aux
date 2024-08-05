RJET_fnc_initHudD = { 
private _display = ["PCA_HUD"] call RJET_fnc_initHudDisplay;
private _data    = [_display, "PCA_HUD"] call RJET_fnc_initDisplayData;
[_data] call RJET_fnc_setHudData;

_data call ["initElements"];
};




RJET_fnc_initHudDisplay = { 
disableSerialization;
params[
	["_varName",nil,[""]]
];
private _display = uiNameSpace getVariable [_varName,displayNull];
if(!isNull _display)
then{
	_display closeDisplay 1; 
	uiSleep 0.1;
};
1 cutRsc [_varName,"PLAIN"];

waitUntil {!isNull (uiNameSpace getVariable _varName)};
_display = uiNameSpace getVariable _varName;

_display;
};



RJET_fnc_initDisplayData = { 
params[
	["_display",nil,[displayNull]],
	["_varName",nil,         [""]]
];
private _ratio   = (getResolution#1)/(getResolution#0);
private _dataArr = [ 
	["display",                  _display],
	["name",                     _varName],
	["ratio",                      _ratio],
	["controls",                       []],
	/*************{METHODS}*************/
	["addCtrl",                RJET_fnc_displayAddCtrl],
	["addImage",          RJET_fnc_displayAddImageCtrl],
	["addProgressBar", RJET_fnc_displayAddProgressBarV],
	["addTextBox",          RJET_fnc_displayAddTextBox]
];

private _data = createHashmapObject [_dataArr];

_display setVariable ["RJET_data", _data];

_data;
};



RJET_fnc_displayAddCtrl = { 
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
};



RJET_fnc_displayAddImageCtrl = { 
params[
	["_image",   nil,         [""]],
	["_pos",     nil,         [[]]],
	["_color",   [1,1,1,1],   [[]]],
	["_show",    PCA_debug,[false]]
];
private _img = _self call ["addCtrl",["RscPicture",_pos, _show]];

_img set  ["setText",   RJET_fnc_imgCtrlSetText];
_img set  ["rotate",   RJET_fnc_imgCtrlSetAngle];
_img set  ["getAngle", RJET_fnc_imgCtrlGetAngle];
_img set  ["defaultColor",               _color];
_img call ["setImage",                 [_image]];
_img call ["setColor",                 [_color]];

_img;
};