params[
	["_man",nil,[objNull]]
];
private _jetPack     = unitBackpack _man;
private _engineState = _jetPack getVariable "RJET_engineState";
private _heatCoef    = _engineState call ["heatCoef"];
private _pos         = _engineState call ["getEffectPos"];
private _vector      = [vectorDir _man] call RJET_fnc_invertVector;
private _smokeVel    = [(_vector#0)*1.5,(_vector#1)*1.5, -1];
private _color       = _engineState call ["smokeColor", [[0.3,0.3,0.3]]];
private _fire        = false;

if(_heatCoef > 0.6)
then{_fire = true;};

for "_i"from 1 to 2 do {
	[_pos, _smokeVel, 0.5, _color, _fire, 2] call RJET_fnc_smokeBall;
};


true;