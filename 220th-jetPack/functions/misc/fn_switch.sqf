private _man          = player;
private _backPack     = backpack _man;

if(_backPack isNotEqualTo "tgf_backpacks_JT12_LR")
exitWith{[] spawn RJET_fnc_switchOff;};

if(_man getVariable ["RJET_engineActive",false])
exitWith{[] spawn RJET_fnc_switchOff;};

call RJET_fnc_switchOn;