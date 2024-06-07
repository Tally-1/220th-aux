params[
	["_id", nil, [0]]
];
private _index = RJET_clientFrameTasks findIf {_x#2 isEqualTo _id};
if(_index isEqualTo -1)exitWith{false};

RJET_clientFrameTasks deleteAt _index;

true;