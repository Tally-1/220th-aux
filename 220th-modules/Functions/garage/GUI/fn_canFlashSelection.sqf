params[
	["_vehicle", nil, [objNull]]
];
private _textures  = getObjectTextures  _vehicle;
private _materials = getObjectMaterials _vehicle;

if(_textures  isEqualTo [])                       exitWith{false;};
if(_materials isEqualTo [])                       exitWith{false;};

if(count _materials isNotEqualTo count _textures) exitWith{false;};

true;