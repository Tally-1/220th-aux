_this spawn {
params[
	["_list",  nil, [controlNull]],
	["_index", -1,            [0]]
];

private _self    = uiNameSpace getVariable "GRG_guiState";
private _vehicle = _self  get "vehicle";
private _timer   = time + 1;

if (_self call ["timeSinceStart"] < 1)         exitWith{};
if!([_vehicle] call GRG_fnc_canFlashSelection) exitWith{};
if!(isNil "GRG_flashing")then{
	waitUntil { (isNil "GRG_flashing") || {time > _timer}};
};
if!(isNil "GRG_flashing")exitWith{};


private _textures  = getObjectTextures  _vehicle;
private _materials = getObjectMaterials _vehicle;
private _original  = [_textures#_index, _materials#_index];
private _flashTxt  = "#(rgb,8,8,3)color(1,0,0,1)";
private _flashMat  = "A3\Structures_F\Data\Windows\ResHQ_Glass.rvmat";
private _data      = _list lbData _index;

if(_data isEqualTo "clan")then{
	_index = "clan";
	_original = ["", _original#1];
};

_vehicle setObjectTexture  [_index, _flashTxt];
// _vehicle setObjectMaterial [_index, _flashMat];

sleep 0.3;

_vehicle setObjectTexture  [_index, _original#0];
// _vehicle setObjectMaterial [_index, _original#1];

true;
};