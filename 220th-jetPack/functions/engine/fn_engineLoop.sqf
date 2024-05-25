params[
	["_man",nil,[objNull]]
];

_man setVariable ["RJET_engineActive",true];
RJET_PilotLocal = _man;

private _enLoop =
addMissionEventHandler ["EachFrame", { 

	private _engineOn = RJET_PilotLocal getVariable "RJET_engineOn";
	private _timer = RJET_PilotLocal getVariable ["RJET_engineTimer", time+0.1];

	if!(_engineOn)exitWith{};
	
	
	if(_timer <= time)then{
		[RJET_PilotLocal] call RJET_fnc_onEngineTick;
		RJET_PilotLocal setVariable ["RJET_engineTimer",time+RJET_EngineCycle];
	};

}];

_enLoop;