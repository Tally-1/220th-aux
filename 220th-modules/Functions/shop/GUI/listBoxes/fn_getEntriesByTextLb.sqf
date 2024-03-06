params["_list", "_text"];
private _count   = lbSize _list;
private _indexes = [];

for "_i" from 0 to (_count-1)do{ 
   private _lbTxt = _list lbText _i;
   if  (_lbTxt   isEqualTo _text)
   then{_indexes pushBack  _i;};
};

_indexes;