params[ 
	["_man",   nil,[objNull]],
	["_target",nil,[objNull]]
];
private _dirToTarget = _man getDir _target;
private _dirBack     = (getDir _man)-180;
private _deviation   = 70;
private _inDirRange  = [_dirToTarget, _dirBack, _deviation] call RJET_fnc_inDirRange;

_inDirRange;