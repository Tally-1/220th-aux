private _man          = player;
private _fallAlt      = _man getVariable "RJET_fallAlt";
private	_smoke        = _man getVariable "RJET_smoke";
private _deathEh      = _man getVariable "RJET_deathEh";
private	_engineActive = _man getVariable ["RJET_engineActive",false];
private _display      = findDisplay 46;
private _timer        = time +1;
private _time         = time;

_display setVariable ["RJET_activeThrusts", nil];
_man     setVariable ["RJET_engineOn",    false];

if((!isNil "_engineActive")
&&{_engineActive})
then{
	systemChat "Powering down engine";
	waitUntil { 
	sleep 0.1; 
	(!(_man getVariable "RJET_engineActive")) or
	{time > _timer} 
	};
};

call RJET_fnc_removeKeyHandler;
call RJET_fnc_removeAnimationHandler;

if(!isNil "_deathEh")then{
	_man removeEventHandler ["Killed", _deathEh];
	_man setVariable ["RJET_deathEh",nil];
};

if(isNil "_fallAlt")then{
	_man setUnitFreefallHeight _fallAlt;
	_man setVariable ["RJET_fallAlt",nil];
};

if(!isNil "_smoke")then{
	deleteVehicle _smoke;
	_man setVariable ["RJET_smoke",nil];
};

true;