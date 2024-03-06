params[
   ["_type", nil,     [""]],
   ["_pos",  [0,0,0], [[]]]
];
(_type call BIS_fnc_itemType)
params  ["_category", "_subCategory"];
private ["_object"];
private _simpleSubcategories = ["Uniform", "Vest", "Headgear", "NVGoggles", "Glasses"];
private _model               = [_type] call SHM_fnc_get3DModel;
private _noSpecialModel      = _model isEqualTo "\A3\weapons_F\ammo\mag_univ.p3d";
private _simpleSub           = _subCategory in _simpleSubcategories;
private _useSimpleObject     = _category isEqualTo "Magazine"||(_simpleSub);

if(_useSimpleObject
&&{_noSpecialModel isEqualTo false})
exitWith{createSimpleObject [_model, _pos, true];};

_object = _this call SHM_fnc_createInventoryHolder;
_object enableSimulation false;

_object;