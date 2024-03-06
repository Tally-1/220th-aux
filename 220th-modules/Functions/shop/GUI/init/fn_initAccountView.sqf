params["_stateObject"];
private _display = uiNamespace getVariable "shop220th";
private _textBox = _display displayCtrl 1101;
private _uid     = getPlayerUID player;
private _amount  = [_uid] call SHM_fnc_getAccount;
private _green   = [0.51,0.99,0.5,1];
private _text    = parseText(["<t align='center' valign='bottom'>Your account: $", _amount,"<t/>"]joinString"");

_textBox ctrlSetStructuredText _text;
_textBox ctrlSetTextColor _green;
_textBox ctrlSetFontHeight 0.035;
[_textBox] call SHM_fnc_normalizeTextSize;

_stateObject set ["account_textbox", _textBox];
_stateObject set ["money_available", _amount];

true;