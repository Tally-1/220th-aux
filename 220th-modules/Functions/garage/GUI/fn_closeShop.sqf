private _cam = _self get "camera";

_cam cameraEffect ["terminate", "back"]; 
camDestroy _cam;

closeDialog 1;

true;