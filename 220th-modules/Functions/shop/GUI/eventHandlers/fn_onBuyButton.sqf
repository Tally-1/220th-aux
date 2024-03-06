params ["_button"];
private _state = _button getVariable "SHM_GUIstate";
private _items = _state get "selected_items";

if(_items isEqualTo [])exitWith{
	_state call ["close_shop"];
};

_state call ["update_trade_frame"];
_state call ["deliver_purchase"];
_state call ["charge_purchase"];
_state call ["close_shop"];

true;