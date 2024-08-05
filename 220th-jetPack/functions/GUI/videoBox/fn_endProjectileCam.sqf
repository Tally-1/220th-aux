private _videoBox = _this;
private _textBox  = _videoBox get "text";
private _man      = call RJET_fnc_getCurrentMan;
(_videoBox get "pData")params[
	["_projectile", nil, [objNull]],
	["_camera",     nil, [objNull]],
	["_startTime",  nil,       [0]]
];

waitUntil {
	sleep 1;
	if(isNull _projectile)     exitWith{true};
	if(_videoBox get "hidden") exitWith{true};

	private _distance = _man distance _projectile;
	if(_distance > 1000)exitWith{true};

	private _timePassed = time - _startTime;
	if(_timePassed > 10)exitWith{true};

	false;
};

sleep 3;

_camera cameraEffect ["terminate","back"];
camDestroy _camera;

sleep 1;

_videoBox set ["activated", false];
_videoBox call ["hide"];
_textBox  call ["setText",[""]];

true;