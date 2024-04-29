private _man          = player;
private _fallAlt      = (getUnitFreefallInfo _man)#2;
private _display      = findDisplay 46;
private	_engineActive = _man getVariable ["RJET_engineActive", false];

if(_engineActive)
exitWith{systemChat "engine already on"};
private _kEh =
_man addEventHandler ["Killed", {[] spawn RJET_fnc_switchOff}];

_display setVariable ["RJET_activeThrusts", []];
_man     setVariable ["RJET_engineOn",    true];
_man     setVariable ["RJET_fallAlt", _fallAlt];
_man     setVariable ["RJET_deathEh",     _kEh];

call RJET_fnc_setKeyHandler;
call RJET_fnc_setAnimationHandler;

[] spawn RJET_fnc_engineLoop;

_man setUnitFreefallHeight (RJET_maxAltitude+200);

true;