params[
	["_params", nil, [[]]],
	["_code",   nil, [{}]]
];
private _id   = RJET_clientFrameTaskCount;
private _task = [_params, _code, _id];

RJET_clientFrameTasks pushBackUnique _task;

RJET_clientFrameTaskCount=RJET_clientFrameTaskCount+1;

_id;