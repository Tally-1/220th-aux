params[
	["_man",nil,[objNull]]
];
RJET_PilotLocal       = _man;
RJET_localEngineState = (unitBackpack _man)getVariable "RJET_engineState";

_man setVariable ["RJET_engineActive",true];

private _enLoop =
addMissionEventHandler ["EachFrame", { 
	private _delay    = RJET_localEngineState get "engineCycle";
	private _engineOn = RJET_PilotLocal getVariable "RJET_engineOn";
	private _timer    = RJET_PilotLocal getVariable ["RJET_engineTimer", time+_delay];

	if!(_engineOn)exitWith{};
	
	
	if(_timer <= time)then{
		[RJET_PilotLocal] call RJET_fnc_onEngineTick;
		RJET_PilotLocal setVariable ["RJET_engineTimer",time+_delay];
	};

}];

_enLoop;