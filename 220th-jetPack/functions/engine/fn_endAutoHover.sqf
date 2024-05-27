private _man  = objectParent (_self get "jetPack");
private _dirs = ["up", "forward", "right","left","brake"];

{[_man, _x]call RJET_fnc_thrustStop} forEach _dirs;

playSoundUI ["ClickSoft", 0.5, 1];
_self set ["autoHoverOn", false];

false;