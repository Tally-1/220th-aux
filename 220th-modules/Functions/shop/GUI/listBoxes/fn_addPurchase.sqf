params  ["_category", "_cfgName"];
private ["_index"];
private _itemMap     = _self get "inventory"  get _category get _cfgName;
private _list        = _self get "list_boxes" get "trade_list";
private _frame       = _self get "list_boxes" get "trade_frame";
private _buyButton   = _self get "buy_button";
private _money       = _self get "money_available";
private _currentCost = _self call ["total_trade_cost"];
private _price       = _itemMap get "price";
private _newCost     = _currentCost+_price;
private _displayName = _itemMap get "display_name";
private _entries     = [_list, _displayName] call SHM_fnc_getEntriesByTextLb;
private _exists      = _entries isNotEqualTo [];
private _itemCount   = 1;

if(_money<_newCost)exitWith{
   systemChat "Item price exceeds funds, cannot add to list."
};

if(_exists)
then{
   _index     = _entries#0;
   _itemCount = parseNumber(((_list lbData _index)splitString" ")#2)+1;
}
else{_index = _list lbAdd _displayName;};

private _priceSum  = _itemCount*_price;
private _textRight = [_price, _itemCount] call SHM_fnc_tradeItemTextRight;


private _data = [
   _category,   " ",
   _cfgName,    " ",
   _itemCount,  " ",
   _priceSum

] joinString"";

_list lbSetData      [_index, _data];
_list lbSetTextRight [_index, _textRight];

_self call ["update_trade_frame"];
_self call ["update_buy_button"];

(_self get "selected_items") pushBack _cfgName;



true;