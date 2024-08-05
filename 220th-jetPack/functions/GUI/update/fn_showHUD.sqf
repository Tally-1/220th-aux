private _videoBox    = _self get "videoBox";
private _jetpackMode = _self get "jetpackMode";

_self call ["showDisplay"];

_videoBox call ["hide"];

if!(_jetpackMode)
then{_self call ["switchJpModeOff"]};

true;