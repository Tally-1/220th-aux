params[
	["_man",nil,[objNull]]
];
private _helmet = headgear _man;
if(_helmet isEqualTo "220th_PCA_1")exitWith{};

private _display = uiNameSpace getVariable ["PCA_HUD",displayNull];

_display closeDisplay 1;

true;