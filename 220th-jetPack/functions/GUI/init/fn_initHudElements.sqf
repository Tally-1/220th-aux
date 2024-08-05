_data call ["initBackGround"];         // ADDS "backGround" to hashmap.
_data call ["initAltiMeter"];          // ADDS "altimeter" to hashmap.
_data call ["initVelocityMeter"];      // ADDS "velocimeter" to hashmap.
_data call ["initBars"];               // ADDS "fuelBar", "tempBar" & "loadBar" to hashmap.
_data call ["initWheel"];			   // ADDS "hudWheel" to hashmap.
_data call ["initVideoBox"];		   // ADDS "videoBox" to hashmap.
_data call ["initNoticeBox"]; 		   // ADDS "noticeBox" to hashmap.

private _videoBox   = _data get "videoBox";
private _backGround = _data get"backGround";

_videoBox   call ["hide"];
_backGround call ["show"];

_data call ["switchJpModeOff"];
_data set  ["loaded",true];

true;