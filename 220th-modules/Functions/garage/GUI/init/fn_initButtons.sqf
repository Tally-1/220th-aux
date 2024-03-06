private _ctrls = _self  get "dialogElements";
private _apBtn = _ctrls get "applyButton";
private _reBtn = _ctrls get "resetButton";

_apBtn ctrlSetText "Apply";
_reBtn ctrlSetText "Reset";

_apBtn ctrlAddEventHandler ["ButtonClick", GRG_fnc_onApplyBtn];
_reBtn ctrlAddEventHandler ["ButtonClick", GRG_fnc_onResetBtn];

true;