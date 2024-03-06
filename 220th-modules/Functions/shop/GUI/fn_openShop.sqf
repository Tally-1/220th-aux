params["_desk", "_player"];
private _camera  = [_desk] call SHM_fnc_initShopCamera;
[_desk, _camera] call SHM_fnc_openShopGui;


private _model3D = _desk getVariable ["SHM_3dModel", objNull];
if(!isNull _model3D)then{deleteVehicle _model3D;};

player allowDamage false;

true;