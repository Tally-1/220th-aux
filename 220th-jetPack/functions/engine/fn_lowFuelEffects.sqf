private _fuel         = _self get "fuel";
private _warningTime  = _self get "fuelWarningTime";
private _warningDelay = _fuel/1000;
private _jetPack      = _self get "jetPack";
private _man          = objectParent _jetPack;
private _uiVolume     = (1-(_fuel*0.001))/2;
private _uiPitch      = 0.5 + _uiVolume;

if(_fuel > 1000)        exitWith{};
if(_fuel <= 0)          exitWith{_self call["noFuelEffect"]};
if(time < _warningTime) exitWith{};

if(_warningDelay < 0.12)
then{
	_warningDelay = 0.12;
	_uiPitch      = 0.5;
};

_uiVolume = _uiVolume*0.5;

if(!isTouchingGround _man)
then{playSoundUI ["beep", _uiVolume, _uiPitch];};

_man say3D "beep";
_self set ["fuelWarningTime", time+_warningDelay];

true;