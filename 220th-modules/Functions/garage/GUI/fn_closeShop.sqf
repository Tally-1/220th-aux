private _cam = _self get "camera";

_cam cameraEffect ["terminate", "back"]; 
camDestroy _cam;

closeDialog 1;

private _eh = uiNameSpace getVariable "GRG_freezeEh";
removeMissionEventHandler["EachFrame", _eh];

true;