params["_itemMap"];
private _smallTxt    = "<t size='0.75'>";
private _bigTxt      = "<t size='1.05'>";
private _smallTxt    = "<t size='0.75'>";
private _outLine     = "<t shadow='2'>";
private _aqua        = "<t color='#00ffff'>";
private _khaki       = "<t color='#acffa4'>";
private _green       = "<t color='#83ff7f'>";
private _end         = "</t>";
private _nl          = "<br/>";
private _rndPrMin = _itemMap get "rnds_pr_min";
private _RPM = "";
if(_rndPrMin > 10)then{_RPM = ["Rounds pr minute: ", _rndPrMin, "<br/>"]joinString"";};

private _description = parsetext ([
_outLine,_bigTxt,
"Price: ", "<t size='1.1' color='#83ff7f'>",(_itemMap get "price"),_end,_nl,
(_itemMap get "short_desc"),_nl,
_RPM,_end,_nl,_nl,
(_itemMap get "long_desc")

]joinString"");


_description;