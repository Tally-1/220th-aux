params [
	["_object",    nil, [objNull]],
	["_selection", nil,      [""]],
	["_offset",    nil,      [[]]]
];
private _selectionPos = _object selectionPosition _selection;

if(!isNil "_offset")then{ 
	_selectionPos = [
		(_selectionPos#0)+(_offset#0),
		(_selectionPos#1)+(_offset#1),
		(_selectionPos#2)+(_offset#2)
	];
};

private _toWorld = _object modelToWorld _selectionPos;

_toWorld;