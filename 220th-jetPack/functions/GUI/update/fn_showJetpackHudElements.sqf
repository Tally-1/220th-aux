if(_self get "hidden")
exitWith{_self set ["jetpackMode", true]};

_self get "altimeter"   call ["show"];
_self get "velocimeter" call ["show"];
_self get "fuelBar"     call ["show"];
_self get "tempBar"     call ["show"];
_self get "loadBar"     call ["show"];
_self get "hudWheel"    call ["show"];
_self get "noticeBox"   call ["show"];

_self get "fuelBar"get"amountText"call["show"];

_self set ["jetpackMode", true];

true;