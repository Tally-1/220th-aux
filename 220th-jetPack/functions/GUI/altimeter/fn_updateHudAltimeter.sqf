params[
	["_man",nil,[objNull]]
];
private _engine      = (unitBackpack _man) getVariable "RJET_engineState";
if(isNil "_engine")exitWith{};

private _velocity     = velocityModelSpace _man;
private _altitude     = (getPos _man)#2;
private _maxAltitude  = _engine get "maxAltitude";
private _lift         = (_velocity#2)*3.6;
private _altCoef      = 0;

if(_altitude>0&&{_maxAltitude>0})
then{_altCoef = (_altitude/_maxAltitude) max 0 min 1};

_self call ["setAltText",   [_altitude]];
_self call ["setIndicator",  [_altCoef]];
_self call ["setArrows",        [_lift]];

true;