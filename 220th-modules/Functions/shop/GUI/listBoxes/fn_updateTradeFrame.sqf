private _frame     = _self get "list_boxes" get "trade_frame";
private _costFinal = _self call ["total_trade_cost"];
private _tradeText = ["Total: $",_costFinal]joinString"";

_frame ctrlSetTextColor [0.51,0.99,0.5,1];
_frame ctrlSetText _tradeText;

true;