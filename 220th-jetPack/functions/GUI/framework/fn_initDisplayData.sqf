params[
	["_display",nil,[displayNull]],
	["_varName",nil,         [""]]
];
private _ratio   = (getResolution#1)/(getResolution#0);
private _dataArr = [ 
	["display",                  _display],
	["hidden",                      false],
	["name",                     _varName],
	["ratio",                      _ratio],
	["controls",                       []],

	/*************{METHODS}*************/
	["hideDisplay",               RJET_fnc_hideDisplay],
	["showDisplay",               RJET_fnc_showDisplay],
	["addCtrl",                RJET_fnc_displayAddCtrl],
	["addImage",          RJET_fnc_displayAddImageCtrl],
	["addProgressBar", RJET_fnc_displayAddProgressBarV],
	["addTextBox",          RJET_fnc_displayAddTextBox]

];

private _data = createHashmapObject [_dataArr];

_display setVariable ["RJET_data", _data];

_data;