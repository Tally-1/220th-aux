params["_stateObject"];
private _category      = [(_stateObject get "category")]call SHM_fnc_upLetter1;
private _display       = _stateObject get "display";
private _categoryList  = _display displayCtrl 1500;
private _categoryFrame = _display displayCtrl 1800;
private _tradeList     = _display displayCtrl 1501;
private _tradeFrame    = _display displayCtrl 1801;
private _frames        = [_categoryFrame, _tradeFrame];
private _lists         = [_categoryList, _tradeList];
private _listsArr      = [
   ["products_list",  _categoryList],
   ["products_frame", _categoryFrame],
   ["trade_list",     _tradeList],
   ["trade_frame",    _tradeFrame]
];


[_frames] call SHM_fnc_initShopFrames;
[_lists]  call SHM_fnc_initShopLists;

_tradeFrame    ctrlSetText "Current Trade";
_categoryFrame ctrlSetText _category;


[_categoryFrame] call SHM_fnc_normalizeTextSize;

{(_x#1) setVariable ["SHM_GUIstate", _stateObject];} forEach _listsArr;

private _listBoxes = createHashmapObject [_listsArr];
_stateObject set ["list_boxes", _listBoxes];

true;