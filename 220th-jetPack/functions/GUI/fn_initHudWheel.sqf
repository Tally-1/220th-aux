private _xPos       = 0.93;
private _yPos       = 0.87;
private _outerPos   = [_xPos, _yPos,  0.2]   call RJET_fnc_formatPosCenterSquare;
private _middlePos  = [_xPos, _yPos,  0.19]  call RJET_fnc_formatPosCenterSquare;
private _innerPos   = [_xPos, _yPos,  0.13]  call RJET_fnc_formatPosCenterSquare;
private _iconPos    = [_xPos, _yPos,  0.045] call RJET_fnc_formatPosCenterSquare;
private _circle     = _self call ["addImage", ["GUI_Components\paa\Circle_22.paa",  _outerPos, PCA_edgeColor]];
private _midWheel   = _self call ["addImage", ["GUI_Components\paa\outer_2.paa",   _middlePos, PCA_iconColor]];
private _innerWheel = _self call ["addImage", ["GUI_Components\paa\inner_3.paa",    _innerPos, PCA_edgeColor]];
private _centerIcon = _self call ["addImage", ["GUI_Components\paa\CircleFill.paa", _iconPos, PCA_textColor]];
private _dataArr    = [
	["edge",           _circle],
	["midWheel",     _midWheel],
	["innerWheel", _innerWheel],
	["centerIcon", _centerIcon],
	
	["enigneUpdate", RJET_fnc_hudWheelEnigneUpdate],
	["speedSpin",       RJET_fnc_hudWheelSpeedSpin],
	["enigneSpin",     RJET_fnc_hudWheelEnigneSpin]
];

private _hudWheel = createHashMapObject [_dataArr];

_centerIcon call ["setText",["0",1.2]];
_self set ["hudWheel",_hudWheel];

true;