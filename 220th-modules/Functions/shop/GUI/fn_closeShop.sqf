private _cam     = _self get "camera";
private _model3D = _self get "item_model_3d";

closeDialog 1;

_cam cameraEffect ["terminate", "back"]; 
camDestroy _cam;

if(!isNull _model3D)then{deleteVehicle _model3D;};

player allowDamage true;

true;