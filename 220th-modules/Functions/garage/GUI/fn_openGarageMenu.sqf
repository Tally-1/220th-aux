private _vehicle     = vehicle player;
private _camera      = [_vehicle] call GRG_fnc_initCamera;
private _dialog      = createDialog ["garage220th", true];
private _state       = [_dialog, _vehicle, _camera] call GRG_fnc_initGUIstate;

_state call ["initTextureList"];
_state call ["initSelectionList"];
_state call ["initButtons"];
_state call ["setVehicleData", [_vehicle]];

[] call GRG_fnc_freezeVehicle;

waitUntil {sleep 0.1; isNull _dialog; };

_state call ["closeShop"];