if!(_self call ["isOverHeating"])
exitWith{_self call ["resetEngineCycle"]};

private _jetPack       = _self get "jetPack";
private _man           = objectParent _jetPack;
private _tempCoef      = _self call ["heatCoef"];
private _standardCycle = _self get "standardEngineCycle";
private _tolerance     = _self get "heatTolerance";
private _delayedCycle  = _standardCycle*_tempCoef;

_self set["engineCycle", _delayedCycle];

if(time < (_self get "tempWarningTime"))exitWith{};

if(RJET_AceLoaded &&{random 1 > 0.3})
then{_man say3D (selectRandom RJET_CookOffSounds)};

if(_tempCoef <= _tolerance)exitWith{
	playSoundUI ["vtolAlarm", 0.2, 2];
	_man say3D "beep";
	_self set ["tempWarningTime", time+1];
};

_man say3D "vtolAlarm";
playSoundUI ["vtolAlarm", 2, 1];

_self set ["tempWarningTime", time+2];

_self call ["overHeatExplode"];

true;