params [
	["_engine", nil,[createHashmap]],
	["_man",    nil,      [objNull]]
];
private _load      = _engine get "engineLoad";
private _wheelIcon = _self   get "centerIcon";

_self call ["enigneSpin",[_engine]];
_self call ["speedSpin", [_engine, _man]];
_wheelIcon call ["setText", [(str _load),1.2]];

true;