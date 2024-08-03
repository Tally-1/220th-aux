params[
	["_yPos",nil,[0]]
];

private _iElements       = _self get "indicator";
private _indicator       = _iElements#0;
private _text            = _iElements#1;
private _indicatorPos    = _indicator call ["getPos"];
private _stickPos        = (_self get "stick")call["getPos"];
private _textPos         = _text call ["getPos"];
private _stickTop        = _stickPos#1;
private _stickHeight     = _stickPos#3;
private _indicatorHeight = _indicatorPos#3;
private _newYPos         = (_stickTop-_indicatorHeight/2) + ((1 - _yPos) * _stickHeight);

_indicatorPos set [1, _newYPos];
_textPos set [1, _newYPos];

_indicator call ["setPos",[_indicatorPos]];
_text      call ["setPos",[_textPos]];

true;