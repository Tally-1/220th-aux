params[
	["_man",nil,[objNull]]
];
private _jetPack = unitBackpack _man;
private _state   = _jetPack getVariable "RJET_engineState";

if(!isNil "_state")exitWith{
	_state call ["setTemp"];
	_state call ["syncFuelStateVirtual",[_man]];
	_state;
};

private _fuel     = 0;
private _stateArr = [
	["temp",                  0],
	["maxTemp",    RJET_maxTemp],
	["engineLoad",            1],
	["maxEngineLoad",         6],
	["fuel",              _fuel],
	["fuelCapacity",      _fuel],
	["fusionPacks",       _fuel],
	["fuelUpdateTime", time + 3],
	["jetPack",        _jetPack],
	["prevTempLower",       0.1],

	
	/****METHODS***/
	["showState",          RJET_fnc_showEngineState],

	//load (Minimum 1)
	["addLoad",          RJET_fnc_engineAddLoad],
	["resetLoad", {_self set ["engineLoad", 1]}],

	// Temperature
	["addTemp",                                 RJET_fnc_engineAddTemp],
	["lowerTemp",                             RJET_fnc_engineLowerTemp],
	["setTemp",      {_self call ["lowerTemp"];_self call ["addTemp"]}],
	["getHeatCoef",                  {(_self get "temp")/RJET_maxTemp}],
	["isOverHeating",                {(_self get "temp")>RJET_maxTemp}],
	["setHeatEffect",                     RJET_fnc_engineSetHeatEffect],

	// fuel
	["syncFuelStateVirtual", RJET_fnc_syncVirtualFuelState],
	["reduceFuelVirtual",       RJET_fnc_reduceFuelVirtual],
	["setFuelPhysical",        RJET_fnc_setFuelStateGlobal],
	["setFuel",                     RJET_fnc_setEngineFuel]

];

_state = createHashmapObject [_stateArr];
_jetPack setVariable ["RJET_engineState", _state];
_state call ["syncFuelStateVirtual",[_man]];

_state;