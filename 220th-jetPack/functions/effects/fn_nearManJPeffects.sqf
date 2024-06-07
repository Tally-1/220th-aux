params [
	["_man",nil,[objNull]]
];
if!(isGameFocused)exitWith{};
if(isGamePaused)  exitWith{};
[_man, true] call RJET_fnc_engineSoundLocal;
[_man, true] call RJET_fnc_engineSmokeNearMan;

true;