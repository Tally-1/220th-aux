params["_category", "_cfgName"];
private _textBox     = _self get "description_box";
private _frame       = _self get "description_frame";
private _itemMap     = _self get "inventory" get _category get _cfgName;
private _name        = _itemMap get "display_name";
private _description = [_itemMap] call SHM_fnc_itemDescription;
private _lBlue       = [0.11,0.32,0.5, 0.49];
private _aqua        = [0.4, 1, 0.9, 1];

_frame ctrlSetText _name;
_frame ctrlSetTextColor _aqua;
_textBox ctrlSetStructuredText _description;
_textBox ctrlSetBackgroundColor _lBlue;

true;