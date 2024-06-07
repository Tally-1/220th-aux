params[
	["_id", nil, [0]]
];

private _index = RJET_clientPrSecondTasks findIf {_x#2 isEqualTo _id};
if(_index isEqualTo -1)exitWith{false};

RJET_clientPrSecondTasks deleteAt _index;

true;