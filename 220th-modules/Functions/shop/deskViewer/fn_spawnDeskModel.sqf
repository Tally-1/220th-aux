params["_desk", "_type"];
private _model3d   = [_type] call SHM_fnc_createItemModel3D;
([_model3d, _type] call SHM_fnc_deskModelVectors)
params["_attachPos", "_dirUp", "_dir", "_scale"];

_model3d attachTo [_desk, _attachPos];
_model3d setDir _dir;
_model3d setVectorUp _dirUp;

if(!isNil "_scale")then{
   _model3d setObjectScale _scale;
};


_model3d;