private _eOff    = 0.01;
private _ePos    = [0-0.01,0-_eOff,1+(_eOff*2),1+(_eOff*2)];
private _fPos    = [-0.005,0, 1.01,1];
private _bColor  = [0,0,0,1];
private _edge    = _self call ["addImage", ["\220th-jetPack\GUI_Components\paa\Rectangle_edge.paa",_ePos,_bColor]];
private _frame   = _self call ["addImage", ["\220th-jetPack\GUI_Components\paa\Rectangle.paa",_fPos,PCA_edgeColor]];
private _dataArr = [
	["edge",   _edge],
	["frame", _frame],
	["hide", RJET_fnc_hideHudBackground],
	["show", RJET_fnc_showHudBackground]
];
private _backGround = createHashMapObject [_dataArr];


_self       set ["backGround", _backGround];

true;