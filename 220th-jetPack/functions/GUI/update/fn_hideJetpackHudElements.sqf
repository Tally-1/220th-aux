if(_self get "hidden")
exitWith{_self set ["jetpackMode", false]};

_self get "altimeter"   call ["hide"];
_self get "velocimeter" call ["hide"];
_self get "fuelBar"     call ["hide"];
_self get "tempBar"     call ["hide"];
_self get "loadBar"     call ["hide"];
_self get "hudWheel"    call ["hide"];
_self get "noticeBox"   call ["hide"];

_self get "fuelBar"get"amountText"call["hide"];

_self set ["jetpackMode", false];

true;