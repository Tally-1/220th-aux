private _self            = uiNameSpace getVariable "GRG_guiState";
private _vehicle         = _self get "vehicle";
private _defaultTextures = (_self get "vehicleData")#0;//_vehicle getVariable "GRG_textures";//

for "_i" from 0 to (count _defaultTextures -1)do{ 
	private _texture = _defaultTextures#_i;
	_vehicle setObjectTextureGlobal  [_i, _texture];
};

_vehicle setObjectTextureGlobal  ["clan", ""];

true;