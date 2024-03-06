params["_category", "_cfgName", "_price"];
(_cfgName call BIS_fnc_itemType)
params["_category", "_subCategory"];

private _cfgCategory = [_cfgName, true] call SHM_fnc_get3Dmodel;
private _displayName = getText(configFile >> _cfgCategory >> _cfgName >> "displayName");
private _shortDesc   = getText(configFile >> _cfgCategory >> _cfgName >> "descriptionShort");
private _longDesc    = "";
private _RPM         = -1;

if(_cfgCategory == "cfgWeapons")then{
   _longDesc    = getText(configfile >> "CfgWeapons" >> _cfgName >> "Library" >> "libTextDesc");
   private _fireRate = (getNumber (configfile >> "CfgWeapons" >> _cfgName >> "Single" >> "reloadTime"));
   
   if(_fireRate>0)          then {_RPM = 60/_fireRate;};
   if("launch_"in _cfgName) then {_RPM = -1};

};

if(_subCategory isEqualTo "Uniform" 
&& {_displayName isEqualTo ""})then{
   _displayName    = getText(configfile >> "CfgWeapons" >> _cfgName >> "displayName");
};

[_shortDesc, "<br />Caliber:"] call SHM_fnc_removeSubString;

private _dataArr = [
   ["category",     _category],
   ["cfg_category", _cfgCategory],
   ["cfg_name",     _cfgName],
   ["display_name", _displayName],
   ["price",        _price],
   ["short_desc",   _shortDesc],
   ["long_desc",    _longDesc],
   ["rnds_pr_min",  _RPM]
];

private _item = createHashmapObject [_dataArr];

_item;