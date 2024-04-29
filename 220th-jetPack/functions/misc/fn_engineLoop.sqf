private _man = player;

_man setVariable ["RJET_engineActive",true];
while{_man getVariable "RJET_engineOn"}do{ 

	if!(_man getVariable "RJET_engineOn")exitWith{};
	

	[] call RJET_fnc_setThrust;
	[_man] call RJET_fnc_setEffects;

	sleep 0.1;	
};

_man setVariable ["RJET_engineActive",false];

true;