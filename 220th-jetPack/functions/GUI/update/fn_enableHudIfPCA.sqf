private _display = uiNameSpace getVariable ["PCA_HUD",displayNull];
if(!isNull _display)exitWith{};

private _man    = call RJET_fnc_getCurrentMan;
private _helmet = headgear _man;
if(_helmet isNotEqualTo "220th_PCA_1")exitWith{};

["PCA_HUD"] call RJET_fnc_initHudDisplay;

true;