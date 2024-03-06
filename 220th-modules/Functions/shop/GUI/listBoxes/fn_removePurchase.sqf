params  [
   ["_category",  nil, [""]],
   ["_cfgName",   nil, [""]],
   ["_itemCount", nil, [""]],
   ["_priceSum",  nil, [""]],
   ["_index",     nil,  [0]]
];
private _itemMap   = _self    get "inventory"  get _category get _cfgName;
private _list      = _self    get "list_boxes" get "trade_list";
private _price     = _itemMap get "price";
private _itemCount = parseNumber _itemCount;

if(_itemCount isEqualTo 1)exitWith{
      _list lbDelete _index;
      _self call ["update_trade_frame"];
};

_itemCount = _itemCount - 1;

private _priceSum  = _itemCount*_price;
private _textRight = [_price, _itemCount] call SHM_fnc_tradeItemTextRight;
private _data      = [
   _category,   " ",
   _cfgName,    " ",
   _itemCount,  " ",
   _priceSum

] joinString"";

_list lbSetData      [_index, _data];
_list lbSetTextRight [_index, _textRight];

_self call ["update_trade_frame"];
_self call ["update_buy_button"];
(_self get "selected_items") deleteAt ((_self get "selected_items") find _cfgName);

true;