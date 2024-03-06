params["_cfgName"];
private _desk         = _self get "desk";
private _currentModel = _self get "item_model_3d";

if(!isNull _currentModel)then{deleteVehicle _currentModel;};
private _newModel = [_desk, _cfgName] call SHM_fnc_spawnDeskModel;

_self set ["item_model_3d", _newModel];
_desk setVariable ["SHM_3dModel", _newModel];

true;