params[["_man",nil,[objNull]]];
private _jetPack      = unitBackpack _man;
private _engineState  = _jetPack getVariable "RJET_engineState";
if(isNil "_engineState")exitWith{};

private _engineLoad = _engineState get "engineLoad";
private _volume     = 0.5;
private _pitch      = 1.5;
private _distance   = 100;
private _sound      = "\220th-jetPack\sounds\Engine_02.ogg";// getMissionPath "Engine_02.ogg";

if(_engineLoad > 1)then{
	_volume   = _engineLoad-1;
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