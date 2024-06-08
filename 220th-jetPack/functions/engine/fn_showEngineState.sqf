private _newLine  = "<br />";
private _right    = "<t align='right'>";
private _left     = "<t align='left'>";
private _center   = "<t align='center'>";
private _largeTxt = "<t size='1.5'>";
private _end      = "</t>";

private _man        = objectParent (_self get "jetPack");
private _velocity   = velocityModelSpace _man;
private _altitude   = round ((getPos _man)#2);
private _drift      = round ((_velocity#0) * 3.6);
private _speed      = round ((_velocity#1) * 3.6);
private _lift       = round ((_velocity#2) * 3.6);
private _temp       = _self get "temp";
private _maxTemp    = _self get "maxTemp";
private _fuel       = _self get "fuel";
private _fuelCap    = _self get "fuelCapacity";
private _cellpacks  = count (_self get "fusionPacks");
private _engineLoad = _self get "engineLoad";
private _maxEngineLoad = _self get "maxEngineLoad";
private _isOverHeating = _self call ["isOverHeating"];
private _autHover      = _self get "autoHoverOn";

private _textArr = [
	_left,"Temperature",_end,_right,_temp,"/",_maxTemp,_end,
	_newLine,
	_left,"FusionCells",_end,_right,_fuel,"/",_fuelCap,_end,
	_newLine,
	_left,"Fusion cellpacks",_end,_right,_cellpacks,_end,
	_newLine,
	_left,"EngineLoad",_end,_right,_engineLoad,"/",_maxEngineLoad,_end,
	_newLine,
	_left,"OverHeating",_end,_right,_isOverHeating,_end,
	_newLine,
	"-------------------------",
	_newLine,
	_left,"Speed",_end,_right,_speed," (",round speed _man,")",_end,
	_newLine,
	_left,"Lift",_end,_right,_lift,_end,
	_newLine,
	_left,"Drift",_end,_right,_drift,_end,
	_newLine,
	"-------------------------",
	_newLine,
	_left,"Altitude",_end,_right,_altitude,_end

];

if(_autHover)then{
	_textArr append [ 
		_newLine,
		_newLine,
		_largeTxt,_center,"Autohover",_end,_end
	];
};

private _text = parseText (_textArr joinString"");
hintSilent _text;

_text;