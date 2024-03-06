params ["_list", "_index"];
private _state = _list getVariable "SHM_GUIstate";
private _data  = ((_list lbData _index)splitString" ");

_state call ["add_purchase", _data];