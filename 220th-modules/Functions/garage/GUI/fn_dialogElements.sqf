params[
   ["_dialog",  nil, [displayNull]]
];
private _dataArr = [
	["title",               _dialog displayCtrl 1100],

	["selectionList_title", _dialog displayCtrl 1102],
	["selectionList",       _dialog displayCtrl 1500],

	["textureList_title",   _dialog displayCtrl 1101],
	["textureList",         _dialog displayCtrl 1501],
	["textureList_pic",     _dialog displayCtrl 1200],

	["applyButton",     _dialog displayCtrl 1600],
	["resetButton",     _dialog displayCtrl 1601]
];

private _dialogElements = createHashmapObject [_dataArr];

_dialogElements;