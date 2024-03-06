private _button = _self get "buy_button";
private _cost   = _self call ["total_trade_cost"];
private _money  = _self get "money_available";

if(_cost <= _money)exitWith{_button ctrlEnable true;};

_button ctrlEnable false;

true;