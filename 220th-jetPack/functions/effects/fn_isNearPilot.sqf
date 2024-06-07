params[
	["_man",         nil, [objNull]],
	["_excludedList",[],       [[]]],
	["_AGLpos",      nil,      [[]]],
	["_range",       nil,       [0]]
];

private _curPilot = missionNamespace getVariable ["RJET_currentPilot", objNull];
if(_man isEqualTo _curPilot)               exitWith{false;};
if(_man in _excludedList)                  exitWith{false;};
if!([_man] call RJET_fnc_hasActiveJetpack) exitWith{false;};
if(isNil "_AGLpos")                        exitWith{true;};
private _inRange = (getPos _man) distance _AGLpos <= _range;

_inRange;