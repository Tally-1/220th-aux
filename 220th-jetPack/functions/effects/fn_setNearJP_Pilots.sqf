private _pos           = positionCameraToWorld [0,0,0];
private _range         = 300;
private _currentPilots = RJET_nearJP_Pilots apply {_x#0};
private _oldPilCount   = count RJET_nearJP_Pilots-1;
private _newPilots     = (_pos nearEntities ["caManBase", _range]) select {[_x, _currentPilots] call RJET_fnc_isNearPilot};
private _newPilotsData = [];
{
	private _data = [_x] call RJET_fnc_getNearPilotEffectData;
	_newPilotsData pushBack _data;
	
} forEach _newPilots;

{
	private _pilot = _x#0;
	private _valid = { [_pilot,[],_pos,_range] call RJET_fnc_isNearPilot};
	if(_valid isEqualTo false)then{ 
		private _index = RJET_nearJP_Pilots findIf {_x isEqualTo _pilot};
		RJET_nearJP_Pilots deleteAt 0;
	};
	
} forEach RJET_nearJP_Pilots;


RJET_nearJP_Pilots insert [0, _newPilotsData, true];

// private _newPilCount = count RJET_nearJP_Pilots-1;
// // if(_newPilCount > _oldPilCount)then{systemChat "New pilots found"};
// // if(_newPilCount < _oldPilCount)then{systemChat "Pilots removed"};

RJET_nearJP_Pilots;