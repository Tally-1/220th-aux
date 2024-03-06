params ["_list", "_index"];
private _state = _list getVariable "SHM_GUIstate";
private _data  = ((_list lbData _index)splitString" ");

_data pushBack _index;

_state call ["remove_purchase", _data];