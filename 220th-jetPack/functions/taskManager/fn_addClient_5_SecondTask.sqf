params[
	["_params", nil      ],
	["_code",   nil, [{}]]
];
private _id   = RJET_clientPr_5_SecondTaskCount;
private _task = [_params, _code, _id];

RJET_clientPr_5_SecondTasks pushBackUnique _task;

RJET_clientPr_5_SecondTaskCount=RJET_clientPr_5_SecondTaskCount+1;

_id;