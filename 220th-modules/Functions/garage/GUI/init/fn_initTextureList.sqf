private _ctrls = _self  get "dialogElements";
private _title = _ctrls get "textureList_title";
private _list  = _ctrls get "textureList";
private _pic   = _ctrls get "textureList_pic";

private _titleText = parseText([
	"<t ", 
	"size   = '1.4'",
	"color  = '#acffa4'",
	"align  = 'center'",
	"valign = 'bottom'",
	"shadow='2'",
	">",
	"Textures",
	"</t>"
]joinstring"");

_title ctrlSetStructuredText _titleText;
_title ctrlSetBackgroundColor [0,0,0,0.5];
_list  ctrlSetBackgroundColor [0,0,0,0.5];
_list  setVariable ["GRG_pic", _pic];
_pic   ctrlSetText "";

{
	private _name  = _x#0;
	private _path  = _x#1;
	private _index = _list lbAdd _name;

	_list lbSetData         [_index, _path];
	_list lbSetPictureRight [_index, _path];
	
} forEach GRG_Textures;

_list ctrlAddEventHandler ["LBSelChanged", GRG_fnc_textureLbChange];