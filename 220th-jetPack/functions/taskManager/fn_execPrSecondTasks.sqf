private _startTime = time;
{
    _x params["_params", "_code"];
    _params call _code;
        
} forEach RJET_clientPrSecondTasks;

private _timeSpent = time - _startTime;
private _sleep     = (1 - _timeSpent);

if(_sleep < 0)then{_sleep = 0};

RJET_clientPrSecondTimer = time+_sleep;