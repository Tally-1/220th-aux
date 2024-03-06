params["_price", "_itemCount"];
private _priceSum  = _itemCount*_price;
private _textRight = [_itemCount,"  |  $",_priceSum]joinString"";

if(_itemCount isEqualTo 1)then{
   _textRight = [" $",_priceSum]joinString"";
};

_textRight;