private _display = ["220th_HUD"] call RJET_fnc_initHudDisplay;
private _data    = [_display, "220th_HUD"] call RJET_fnc_initDisplayData;
[_data] call RJET_fnc_setHudData;

_data call ["initElements"];