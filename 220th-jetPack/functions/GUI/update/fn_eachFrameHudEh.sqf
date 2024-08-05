private _eventHandler = addMissionEventHandler ["EachFrame", RJET_fnc_onEachFrameHUD];
_self set ["frameEh", _eventHandler];

_eventHandler;