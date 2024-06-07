params [
	["_man",nil,[objNull]]
];
private _backPack = backpack _man;
if(_backPack isEqualTo "")        exitWith{false};
if("220th_Jetpack" in _backPack ) exitWith{true};

false;