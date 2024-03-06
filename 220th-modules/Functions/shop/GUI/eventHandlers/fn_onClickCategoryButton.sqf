params ["_button"];

private _text         = ctrlText _button;
private _itemCategory = toLowerANSI _text;
private _state        = _button getVariable "SHM_GUIstate";
private _productList  = (_state get "list_boxes") get "products_list";

_state set  ["category", _itemCategory];
_state call ["updt_product_list"];

_productList lbSetCurSel 0;

true;