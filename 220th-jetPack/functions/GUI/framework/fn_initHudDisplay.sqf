disableSerialization;
params[
	["_varName",nil,[""]]
];
private _display = uiNameSpace getVariable [_varName,displayNull];
if(!isNull _display)
then{
	_display closeDisplay 1; 
	uiSleep 0.1;
};
1 cutRsc [_varName,"PLAIN"];

waitUntil {!isNull (uiNameSpace getVariable _varName)};
_display = uiNameSpace getVariable _varName;

_display;