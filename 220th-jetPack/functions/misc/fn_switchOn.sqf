params[
	["_man", nil, [objNull]]
];
private _fallAlt      = (getUnitFreefallInfo _man)#2;
private _display      = findDisplay 46;
private _jetPack      = unitBackpack _man;
private	_engineActive = _man getVariable ["RJET_engineActive", false];
private _engineState  = [_man] call RJET_fnc_initEngineState;
private _fuel         = _engineState get "fuel";
private _temperature  = _engineState get "temp";

if(_engineActive)
exitWith{systemChat "engine already on"};

if(_fuel < 1)
exitWith{
	[_man] call RJET_fnc_brakingSmoke;
	[_man] call RJET_fnc_brakeSound;
	systemChat "No fuel";
};

if(_temperature > RJET_maxTemp)
exitWith{
	[_man] call RJET_fnc_brakingSmoke;
	[_man] call RJET_fnc_brakeSound;
	
	systemChat "Temperature is too high";
};

private _kEh    = _man addEventHandler ["Killed", {[_this#0] spawn RJET_fnc_switchOff}];
private _invEh  = _man addEventHandler ["InventoryOpened", {_this spawn RJET_fnc_onInventoryOpened}];
private _enLoop = [_man] call RJET_fnc_engineLoop;

_man     setVariable ["RJET_engineLoop",             _enLoop];
_man     setVariable ["RJET_engineState", _engineState, true];
_man     setVariable ["RJET_engineTimer",                  0];
_man     setVariable ["RJET_engineOn",            true, true];
_man     setVariable ["RJET_fallAlt",               _fallAlt];
_man     setVariable ["RJET_deathEh",                   _kEh];
_man     setVariable ["RJET_invEh",                   _invEh];

[_man] call RJET_fnc_setKeyHandler;
[_man] call RJET_fnc_setAnimationHandler;

_man setUnitFreefallHeight (RJET_maxAltitude+200);

[_man] remoteExecCall ["RJET_fnc_addBulletExplodeEh", 0];
_jetPack setVariable ["RJET_engineState", _engineState, true];

RJET_currentPilot = _man;

true;