params["_object", "_cfgName"];      (_cfgName call BIS_fnc_itemType)
params["_category", "_subCategory"];
private _attachPos = [-0.6,0,1.68];
private _dirUp     = [-0.002,0.002,0.999];
private _dir       = 0;

if(isSimpleObject _object)exitWith{_this call SHM_fnc_deskModelVectorsObjS;};

if(_subCategory isEqualTo "Backpack")then{
   _attachPos = [-0.4,-0.5,1];
   _dirUp = [0, -1, 0.001];
   _dir   = 180;
};

[_attachPos, _dirUp, _dir];