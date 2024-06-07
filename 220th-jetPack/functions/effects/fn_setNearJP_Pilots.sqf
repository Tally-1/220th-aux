private _pos       = positionCameraToWorld [0,0,0];
private _range     = 300;
private _newPilots = (_pos nearEntities ["caManBase", _range]) select {[_x] call RJET_fnc_isNearPilot};

RJET_nearJP_Pilots = [];

{
	private _data = [_x] call RJET_fnc_getNearPilotEffectData;
	RJET_nearJP_Pilots pushBack _data;
	
} forEach _newPilots;


RJET_nearJP_Pilots;