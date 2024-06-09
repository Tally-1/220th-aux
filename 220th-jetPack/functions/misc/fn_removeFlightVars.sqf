private _fallAlt      = _man getVariable "RJET_fallAlt";
private	_smoke        = _man getVariable "RJET_smoke";
private _deathEh      = _man getVariable "RJET_deathEh";
private _invEh        = _man getVariable "RJET_invEh";
private _enLoop       = _man getVariable "RJET_engineLoop";
private _engineState  = _man getVariable "RJET_engineState";

if(!isNil "_deathEh")then{
	_man removeEventHandler ["Killed", _deathEh];
	_man setVariable ["RJET_deathEh",nil];
};

if(!isNil "_invEh")then{
	_man removeEventHandler ["InventoryOpened", _invEh];
	_man setVariable ["RJET_invEh",nil];
};

if(!isNil "_fallAlt"
&&{isTouchingGround _man})then{
	_man setUnitFreefallHeight _fallAlt;
	_man setVariable ["RJET_fallAlt",nil];
};

if(!isNil "_smoke")then{
	deleteVehicle _smoke;
	_man setVariable ["RJET_smoke",nil];
};

if(!isNil "_engineState")then{_man setVariable ["RJET_engineState",nil]};

if(!isNil "_enLoop")then{
	removeMissionEventHandler ["eachFrame",_enLoop];
	_man setVariable ["RJET_engineLoop",nil];
	_man setVariable ["RJET_engineActive",false];
};