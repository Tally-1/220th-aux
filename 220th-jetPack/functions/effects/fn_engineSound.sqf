params[["_man",nil,[objNull]]];
private _thrustDirs = _display getVariable "RJET_activeThrusts" select {_x isNotEqualTo "brake";};
private _volume     = 0.5;
private _pitch      = 1.5;
private _distance   = 100;
private _sound      = "\220th-jetPack\sounds\Engine_02.ogg";// getMissionPath "Engine_02.ogg";

if(_thrustDirs isNotEqualTo [])then{
	_volume   = count _thrustDirs;
	_pitch    = 1 - (_volume*0.1);
	_distance = 100*_volume;
};

playSound3D [
	_sound, 
	_man, 
	false,
	aimpos _man,
	_volume,
	_pitch,
	_distance
];

true;