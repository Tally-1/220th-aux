private _category  = _self get "category";
private _inventory = _self get "inventory";
private _catText   = [_category] call SHM_fnc_upLetter1;
private _itemsMap  = _inventory get _category;
private _green     = [0.51,0.99,0.5,1];
private _listBoxes = _self      get "list_boxes";
private _frame     = _listBoxes get "products_frame";
private _list      = _listBoxes get "products_list";

_frame ctrlSetText _catText;
lbClear _list;

{
   private _map         = _y;
   private _displayName = _y get "display_name";
   private _cfgName     = _y get "cfg_name";
   private _price       = str (_y get "price");
   private _data        = [_category," ", _cfgName] joinString"";
   private _index       = _list lbAdd _displayName;

   _list lbSetTextRight  [_index, _price];
   _list lbSetData       [_index, _data];
   _list lbSetColorRight [_index, _green];

} forEach _itemsMap;

true;