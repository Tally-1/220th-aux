params[
	["_man",nil,[objNull]]
];
private _jetPack     = unitBackpack _man;
private _engineState = _jetPack getVariable "RJET_engineState";
private _heatCoef    = _engineState call ["heatCoef"];
private _pos         = _engineState call ["getEffectPos"];
private _vector      = [vectorDir _man] call RJET_fnc_invertVector;
private _smokeVel    = [(_vector#0)*2,(_vector#1)*2,-5];
private _color       = [0.1,0.05,0];
private _size        = 0.5;

if(_heatCoef > 1)then{_size = 0.6;};

for "_i"from 1 to 3 do {
	[_pos, _smokeVel, _size, _color, true, 2] call RJET_fnc_smokeBall;
};

true;