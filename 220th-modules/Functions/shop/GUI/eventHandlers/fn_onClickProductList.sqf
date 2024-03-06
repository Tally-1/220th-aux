params ["_list", "_lbCurSel", "_lbSelection"];
private _state   = _list getVariable "SHM_GUIstate";
private _data    = ((_list lbData _lbCurSel)splitString" ");
private _cfgName = _data#1;


_state call ["update_description", _data];

if(_cfgName isEqualTo (_state get "current_item"))exitWith{};

_state call ["render_item",  _cfgName];
_state set  ["current_item", _cfgName];

true;