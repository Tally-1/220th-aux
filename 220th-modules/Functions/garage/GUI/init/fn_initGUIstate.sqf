params[
   ["_dialog",  nil, [displayNull]],
   ["_vehicle", nil,     [objNull]],
   ["_camera",  nil               ]
];

private _dialogElements = [_dialog] call GRG_fnc_dialogElements;
private _textureCount   = count getObjectTextures _vehicle;
private _stateKeyValues = [
   ["dialog",                                  _dialog],
   ["dialogElements",                  _dialogElements],
   ["vehicle",                                _vehicle],
   ["vehPos",                 getPosASLVisual _vehicle],
   ["textureCount",                      _textureCount],
   ["camera",                                  _camera],
   ["vehicleData",                                  []],
   ["startTime",                                  time],

   ["timeSinceStart", {time - (_self get "startTime")}],
   ["closeShop",                     GRG_fnc_closeShop],
   ["initTextureList",         GRG_fnc_initTextureList],
   ["initSelectionList",     GRG_fnc_initSelectionList],
   ["initButtons",                 GRG_fnc_initButtons],
   ["setVehicleData",           GRG_fnc_setVehicleData]
];

private _state = createHashmapObject [_stateKeyValues];
uiNameSpace setVariable ["GRG_guiState", _state];

_state;