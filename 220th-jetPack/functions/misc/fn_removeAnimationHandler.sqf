private _man = player;
private _eh  = _man getVariable "RJET_animHandler";
if(isNil "_eh")exitWith{};

_man removeEventHandler ["AnimChanged", _eh];
_man setVariable ["RJET_animHandler", nil];

true;