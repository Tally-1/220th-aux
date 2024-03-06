params ["_button"];
private _state = _button getVariable "SHM_GUIstate";
private _tradeList = _state get "list_boxes" get "trade_list";

lbClear _tradeList;

_state set ["selected_items", []];
_state set ["trade_price",     0];

_state call ["update_trade_frame"];

true;