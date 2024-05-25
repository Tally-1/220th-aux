params[
	["_loadToAdd",nil,[0]]
];
private _curLoad = +(_self get "engineLoad");
private _newLoad = _curLoad + _loadToAdd;

_self set ["engineLoad", _newLoad];

_newLoad;