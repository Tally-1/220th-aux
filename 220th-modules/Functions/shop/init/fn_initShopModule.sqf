params["_module"];
private _desk = _module getVariable "SHM_desk";
if(!isNil "_desk")exitWith{};

private _pos = getPosATLVisual _module;
private _dir = getDirVisual    _module;
private _desk = createVehicle ["Land_CashDesk_F", _pos, [], 0, "CAN_COLLIDE"];

_desk setDir (_dir-180);
_desk allowDamage false;

[_desk] call SHM_fnc_addDeliveryCrate;
[_desk] call SHM_fnc_shopAction;

_module setVariable ["SHM_desk", _desk, true];

true;