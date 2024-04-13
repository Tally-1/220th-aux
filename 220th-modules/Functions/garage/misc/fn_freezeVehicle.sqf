private _vehicle = uiNameSpace getVariable "GRG_guiState" get "vehicle";
_vehicle setVelocityModelSpace [0,0,0];
_vehicle setVectorUp [0,0,1];

private _eh = 
addMissionEventHandler ["EachFrame", { 
	private _eh       = uiNameSpace getVariable "GRG_freezeEh";
	private _hashMap  = uiNameSpace getVariable "GRG_guiState";

	if(isNil "_hashMap")
	exitWith{removeMissionEventHandler["EachFrame", _eh]};

	private _vehicle = _hashMap get "vehicle";
	private _pos     = _hashMap get "vehPos";

	_vehicle setPosASL _pos;
	_vehicle setVelocityModelSpace [0,0,0];
}];

uiNameSpace setVariable ["GRG_freezeEh", _eh];

true;