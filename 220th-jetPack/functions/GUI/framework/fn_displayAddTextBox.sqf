params[
	["_pos",   nil, [[]]],
	["_text",  nil, [""]]
];
private _textBox = _self call ["addCtrl", ["RscStructuredText",_pos]];
_textBox  set ["setBackgroundColor", RJET_fnc_setTextBoxBackgroundColor];
_textBox call ["setTextColor",[PCA_textColor]];


if(!isNil "_text")
then{_textBox call ["setText", [_text]]};

_textBox;