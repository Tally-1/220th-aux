params[
	["_params", nil      ],
	["_code",   nil, [{}]]
];
private _id   = RJET_clientPrSecondTaskCount;
private _task = [_params, _code, _id];

RJET_clientPrSecondTasks pushBackUnique _task;

RJET_clientPrSecondTaskCount=RJET_clientPrSecondTaskCount+1;

_id;