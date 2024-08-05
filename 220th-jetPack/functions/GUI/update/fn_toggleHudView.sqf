private _hidden  = _self get "hidden";
private _canShow = _self call ["canViewHUD"];

if(_hidden  isEqualTo true
&&{_canShow isEqualTo false})exitWith{};

if(_hidden  isEqualTo false
&&{_canShow isEqualTo true})exitWith{};

if(_canShow)exitWith{_self call ["showHUD"]};

_self call ["hideHUD"];