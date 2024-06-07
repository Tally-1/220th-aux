{
	_x params["_pilot", "_cycle", "_effectTime"];
	if(time >= _effectTime)then{
		[_pilot] call RJET_fnc_nearManJPeffects;
		_x set [2, (time + _cycle)];
	};
	
} forEach RJET_nearJP_Pilots;

true;