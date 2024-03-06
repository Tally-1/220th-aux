private _ctrls = _self  get "dialogElements";
private _title = _ctrls get "selectionList_title";
private _list  = _ctrls get "selectionList";
private _count = (_self get "textureCount")-1;

private _titleTxt = parseText([
	"<t ", 
	"size   = '1.4'",
	"color  = '#acffa4'",
	"align  = 'center'",
	"valign = 'bottom'",
	"shadow='2'",
	">",
	"Slot selection",
	"</t>"
]joinstring"");

if(_count < 0)exitWith{_self call ["noTextureSlots"]};

for "_i" from 0 to _count do { 
	private _slotTxt = ["Slot ", _i] joinString "";
	_list lbAdd _slotTxt;
};

private _index = _list lbAdd "Insignia";
_list lbSetData [_index, "clan"];

_list ctrlAddEventHandler ["LBSelChanged", GRG_fnc_selectionLbChange];

_list lbSetCurSel 0;