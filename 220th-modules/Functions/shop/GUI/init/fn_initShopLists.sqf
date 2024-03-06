params  ["_lists"];_lists 
params  ["_categoryList", "_tradeList"];
private _lBlue = [0.11,0.32,0.5, 0.49];
_categoryList ctrlAddEventHandler ["LBSelChanged", "_this call SHM_fnc_onClickProductList"];
_categoryList ctrlAddEventHandler ["LBDblClick", "_this call SHM_fnc_productDoubleClick"];
_tradeList ctrlAddEventHandler    ["LBDblClick", "_this call SHM_fnc_tradeDoubleClick"];

{
   _x ctrlSetBackgroundColor _lBlue;
   _x ctrlSetFontHeight 0.033;
   [_x] call SHM_fnc_normalizeTextSize;

} forEach _lists;