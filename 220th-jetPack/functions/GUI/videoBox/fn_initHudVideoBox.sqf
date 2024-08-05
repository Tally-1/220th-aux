private _ratio  = _self get"ratio";
private _boxPos = [0.11,0.665,0.3,0.3];
private _txtPos = [0.125,0.9,0.27,0.05];
private _screen = _self call ["addImage", ["",_boxPos]];
private _frame  = _self call ["addImage", ["\220th-jetPack\GUI_Components\paa\Rectangle_edge.paa",_boxPos, PCA_edgeColor]];
private _text   = _self call ["addTextBox",  [_txtPos]];
private _dataArr = [
	["screen",  _screen],
	["frame",    _frame],
	["text",      _text],
	["activated", false],

	["hide",                            RJET_fnc_hideHudVideoBox],
	["show",                            RJET_fnc_showHudVideoBox],
	["setImage",                      RJET_fnc_setHudVBoxTexture],
	["projectileCam",                  RJET_fnc_hudProjectileCam],
	["endProjectileCam", {_self spawn RJET_fnc_endProjectileCam}],
	["setFrameColor",              RJET_fnc_setHudVBoxFrameColor]
];
private _videoBox = createHashmapObject [_dataArr];


_self set ["videoBox",_videoBox];

_videoBox;