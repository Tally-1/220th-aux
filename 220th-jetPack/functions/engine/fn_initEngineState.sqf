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

private _stateArr = [
	["temp",                               0],
	["maxTemp",                 RJET_maxTemp],
	["engineLoad",                         1],
	["maxEngineLoad",                      6],
	["fuel",                               0],
	["fuelCapacity",                       0],
	["fusionPacks",                        0],
	["fuelWarningTime",               time+1],
	["fuelUpdateTime",              time + 3],
	["jetPack",                     _jetPack],
	["prevTempLower",                    0.1],
	["standardEngineCycle", RJET_EngineCycle],
	["engineCycle",         RJET_EngineCycle],
	["tempWarningTime",               time+1],

	
	/****METHODS***/
	["showState",          RJET_fnc_showEngineState],
	["resetEngineCycle",  RJET_fnc_resetEngineCycle],

	//load (Minimum 1)
	["addLoad",          RJET_fnc_engineAddLoad],
	["resetLoad", {_self set ["engineLoad", 1]}],

	// Temperature
	["addTemp",                                 RJET_fnc_engineAddTemp],
	["lowerTemp",                             RJET_fnc_engineLowerTemp],
	["setTemp",      {_self call ["lowerTemp"];_self call ["addTemp"]}],
	["heatCoef",            {(_self get "temp")/(_self get "maxTemp")}],
	["isOverHeating",       {(_self get "temp")>(_self get "maxTemp")}],
	["heatEffect",                       RJET_fnc_engineOverHeatEffect],
	["overHeatExplode",                       RJET_fnc_overHeatExplode],

	// fuel
	["syncFuelStateVirtual", RJET_fnc_syncVirtualFuelState],
	["reduceFuelVirtual",       RJET_fnc_reduceFuelVirtual],
	["setFuelPhysical",        RJET_fnc_setFuelStateGlobal],
	["setFuel",                     RJET_fnc_setEngineFuel],
	["lowFuelEffects",             RJET_fnc_lowFuelEffects],
	["noFuelEffect",                 RJET_fnc_noFuelEffect]

];

_state = createHashmapObject [_stateArr];
_jetPack setVariable ["RJET_engineState", _state];
_state call ["syncFuelStateVirtual",[_man]];

_state;