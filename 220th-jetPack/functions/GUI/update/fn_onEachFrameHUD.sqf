private _man      = call RJET_fnc_getCurrentMan;
private _display  = uiNameSpace getVariable "PCA_HUD";
private _self     = _display getVariable "RJET_data";

_self call ["jpFrameUpdate",[_man]];
_self call ["toggleHudView"];
_self call ["noPcaDisplay",[_man]];

true;