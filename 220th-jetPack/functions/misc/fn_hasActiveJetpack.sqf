if!([_man] call RJET_fnc_hasJetpack)exitWith{false;};

private _engineState = unitBackpack _man getVariable "RJET_engineState";
if(isNil "_engineState")exitWith{false;};

private _engineOn = _man getVariable ["RJET_engineOn", false];
if!(_engineOn)exitWith{false;};

true;