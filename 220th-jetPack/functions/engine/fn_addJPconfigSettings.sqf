params[
	["_jetPack",     nil,[objNull]],
	["_engineState", nil,[createHashmap]]
];
private _jetpackClass      = typeOf _jetPack;
private _configPath        = configfile >> "CfgVehicles" >> _jetpackClass;

private _cooling           = getNumber (_configPath >> "cooling");   
private _overHeatTolerance = getNumber (_configPath >> "overHeatTolerance");  
private _engineCycleSpeed  = getNumber (_configPath >> "engineCycleSpeed"); 
private _enginePower       = getNumber (_configPath >> "enginePower"); 
private _takeOffPower      = getNumber (_configPath >> "takeOffPower"); 
private _liftPower         = getNumber (_configPath >> "liftPower"); 
private _maxLiftPower      = getNumber (_configPath >> "maxLiftPower"); 
private _brakePower        = getNumber (_configPath >> "brakePower"); 
private _fuelConsumption   = getNumber (_configPath >> "fuelConsumption"); 

private _maxTemperature   = getNumber (_configPath >> "maxTemperature"); 
private _maxAltitude      = getNumber (_configPath >> "maxAltitude"); 
private _maxSpeed         = getNumber (_configPath >> "maxSpeed");
private _engineCycle      = RJET_EngineCycle/_engineCycleSpeed;
private _allSettings = [
	["cooling",              _cooling*RJET_tempReductionSec],
	["heatTolerance",                  _overHeatTolerance+1],
	["engineCycle",                            _engineCycle],
	["standardEngineCycle",                    _engineCycle],
	["enginePower",                            _enginePower],
	["acceleration",        RJET_speedIncrease*_enginePower],
	["initialLift",          RJET_initialLift*_takeOffPower],
	["accelerationUp",         RJET_liftIncrease*_liftPower],
	["maxLiftSpeed",             RJET_maxLift*_maxLiftPower],
	["brakePower",           RJET_speedDecrease*_brakePower],
	["fuelConsumption",                    _fuelConsumption],
	["maxTemp",                             _maxTemperature],
	["maxAltitude",                            _maxAltitude],
	["maxSpeed",                                  _maxSpeed]
]; 

{
	_engineState set [_x#0,_x#1];
	
} forEach _allSettings;


_allSettings;