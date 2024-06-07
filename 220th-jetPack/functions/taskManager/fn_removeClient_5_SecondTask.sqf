params[
	["_id", nil, [0]]
];

private _index = RJET_clientPr_5_SecondTasks findIf {_x#2 isEqualTo _id};
if(_index isEqualTo -1)exitWith{false};

RJET_clientPr_5_SecondTasks deleteAt _index;

true;