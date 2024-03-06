private _self     = uiNameSpace getVariable "GRG_guiState";
private _ctrls    = _self  get "dialogElements";
private _vehicle  = _self  get "vehicle";
private _txtList  = _ctrls get "textureList";
private _selList  = _ctrls get "selectionList";
private _texture  = _txtList lbData lbCurSel _txtList;
private _slot     = lbCurSel _selList;
private _data     = _selList lbData _slot;

if(_data isEqualTo "clan")then{_slot = "clan"};

_vehicle setObjectTextureGlobal  [_slot, _texture];

true;