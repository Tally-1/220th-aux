params[
	["_list",  nil, [controlNull]],
	["_index", -1,            [0]]
];
private _pic     = _list getVariable "GRG_pic";
private _texture = _list lbData _index;
_pic ctrlSetText _texture;

true;