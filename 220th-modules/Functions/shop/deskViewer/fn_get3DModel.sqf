params[
   ["_typeName",  nil,      [""]],
   ["_returnCfg", false, [false]]
];

(_typeName call BIS_fnc_itemType)
params["_category", "_subCategory"];

private _cfgCategory = "CfgWeapons";
private _modelKey    = "model";
if(_category isEqualTo "Magazine")then{
   _cfgCategory = "CfgMagazines";
   _modelKey    = "modelSpecial";
};
// ""
if(_subCategory isEqualTo "Glasses")then{
   _cfgCategory = "CfgGlasses";
};

if(_subCategory isEqualTo "Uniform"
||{_subCategory isEqualTo "Backpack"})then{
   _cfgCategory = "CfgVehicles";
};
private _model = getText(configFile >> _cfgCategory >> _typeName >> _modelKey);

if(_model    isEqualTo ""
&&{_modelKey isEqualTo "modelSpecial"})then{
   _model = getText(configFile >> _cfgCategory >> _typeName >> "model");
};

if(_model       isEqualTo ""
&&{_subCategory isEqualTo "Uniform"})then{
   _model = getText(configFile >> "CfgWeapons" >> _typeName >> "ItemInfo" >> "uniformClass");
};

if(_returnCfg)exitWith{_cfgCategory;};

_model;