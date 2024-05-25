private _man          = player;
private _backPack     = backpack _man;

if!("220th_Jetpack" in _backPack )
exitWith{[] spawn RJET_fnc_switchOff;};

if(_man getVariable ["RJET_engineActive",false])
exitWith{[] spawn RJET_fnc_switchOff;};

call RJET_fnc_switchOn;