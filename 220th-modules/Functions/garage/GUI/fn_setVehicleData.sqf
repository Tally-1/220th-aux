params[
	["_vehicle",nil,[objNull]]
];
private _textureList = _vehicle getVariable ["GRG_textures", []];

_textureList pushBackUnique (getObjectTextures _vehicle);

_vehicle setVariable ["GRG_textures", _textureList];

_self set ["vehicleData", _textureList];

true;