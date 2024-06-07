private _startTime = time;
{
    _x params["_params", "_code"];
    _params call _code;
        
} forEach RJET_clientPr_5_SecondTasks;

private _timeSpent = time - _startTime;
private _sleep     = (5 - _timeSpent);

if(_sleep < 0)then{_sleep = 0};

RJET_clientPr_5_SecondTimer = time+_sleep;