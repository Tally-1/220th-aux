private _curMan = call RJET_fnc_getCurrentMan;
params[
	["_man", _curMan, [objNull,displayNull]]
];
if(typeName _man isEqualTo "DISPLAY")
then{_man = _curMan};

private _backPack     = backpack _man;

if!("220th_Jetpack" in _backPack )
exitWith{[_man] spawn RJET_fnc_switchOff;};

if(_man getVariable ["RJET_engineActive",false])
exitWith{[_man] spawn RJET_fnc_switchOff;};

[_man] call RJET_fnc_switchOn;