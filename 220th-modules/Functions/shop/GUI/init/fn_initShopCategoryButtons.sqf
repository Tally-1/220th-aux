params["_stateObject"];
private _display         = uiNamespace getVariable "shop220th";
private _weaponsButton   = _display displayCtrl 1600;
private _uniformsButton  = _display displayCtrl 1601;
private _vestsButton     = _display displayCtrl 1602;
private _helmetsButton   = _display displayCtrl 1603;
private _backPacksButton = _display displayCtrl 1604;
private _magazinesButton = _display displayCtrl 1605;
private _itemsButton     = _display displayCtrl 1606;
private _categoryArr     = [
   ["weapons",   _weaponsButton],
   ["uniforms",  _uniformsButton],
   ["vests",     _vestsButton],
   ["headgear",  _helmetsButton],
   ["backpacks", _backPacksButton],
   ["magazines", _magazinesButton],
   ["items",     _itemsButton]
];

{
   _x params ["_name", "_button"];
   private _title = [_name] call SHM_fnc_upLetter1;
   _button ctrlSetText _title;
   
} forEach _categoryArr;


{
   private _green     = [0.039,0.39,0.11,0.78];////[0.11,0.32,0.5, 0.49];
   private _darkGreen = [0.03,0.23,0.06,0.78];//([7, 59, 17, true, 200] call SHM_fnc_rgbToA3);
   private _button = _x#1;
   _button ctrlSetBackgroundColor _green;
   _button ctrlAddEventHandler ["ButtonClick", "_this call SHM_fnc_onClickCategoryButton"];
   _button setVariable ["SHM_GUIstate", _stateObject];
   [_button] call SHM_fnc_normalizeTextSize;

} forEach _categoryArr;

private _categoryButtons = createHashmapObject [_categoryArr];
_stateObject set ["buttons_category", _categoryButtons];

true;