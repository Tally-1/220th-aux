private _list      = _self get "list_boxes" get "trade_list";
private _count     = lbSize _list;
private _costFinal = 0;
private _prices    = [];

if(_count isEqualTo 0)exitWith{0;};

for "_i" from 0 to (_count-1)do{ 
   private _data  = _list lbData _i;
   private _price = parseNumber((_data splitString " ")#3);
   
   _prices pushBack _price;

   _costFinal = _costFinal+_price;
};

// systemChat str _prices;

_self set ["trade_price", _costFinal];

_costFinal;