params[
	["_pos",   nil, [[]]],
	["_text",  nil, [""]],
	["_color", nil, [[]]]
];
private _textBox = _self call ["addCtrl", ["RscStructuredText",_pos]];
_textBox set ["setBackgroundColor", RJET_fnc_setTextBoxBackgroundColor];

if(!isNil "_text")
then{_textBox call ["setText", [_text]]};

_textBox;