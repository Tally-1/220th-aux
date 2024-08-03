private _ratio  = _self get"ratio";
private _boxPos = [0.11,0.665,0.3,0.3];
private _screen = _self call ["addImage", ["",_boxPos]];
private _frame  = _self call ["addImage", ["GUI_Components\paa\Rectangle_edge.paa",_boxPos, PCA_edgeColor]];
private _dataArr = [
	["screen", _screen],
	["frame",   _frame],

	["setImage",       RJET_fnc_setHudVBoxTexture],
	["setFrameColor",  RJET_fnc_setHudVBoxFrameColor]
];
private _videoBox = createHashmapObject [_dataArr];

_self set ["videoBox",_videoBox];

_videoBox;