[
	[_category, _subCategory_Keybinds],
	"toggle_engine",
	"Switch engine on/off",
	{call RJET_fnc_switch},
	"",
	[DIK_J, [false,true,false]],
	false
] call CBA_fnc_addKeybind;

[
	[_category, _subCategory_Keybinds],
	"RJET_thrustUp",
	"Thrust up / Take off",
	{["up"] call RJET_fnc_actionKeyDown},
	{["up"] call RJET_fnc_actionKeyUp},
//    Key        shift, ctrl, alt
	[DIK_SPACE, [false,false,false]]
] call CBA_fnc_addKeybind;

[
	[_category, _subCategory_Keybinds],
	"RJET_brake",
	"Brake",
	{["brake"] call RJET_fnc_actionKeyDown},
	{["brake"] call RJET_fnc_actionKeyUp},
	[DIK_S, [false,false,false]]
] call CBA_fnc_addKeybind;

[
	[_category, _subCategory_Keybinds],
	"RJET_autohover",
	"Autohover",
	{["autohover"] call RJET_fnc_actionKeyDown},
	{["autohover"] call RJET_fnc_actionKeyUp},
	[DIK_X, [false,false,false]]
] call CBA_fnc_addKeybind;

[
	[_category, _subCategory_Keybinds],
	"RJET_thrustForward",
	"Thrust forward",
	{["forward"] call RJET_fnc_actionKeyDown},
	{["forward"] call RJET_fnc_actionKeyUp},
	[DIK_W, [false,false,false]]
] call CBA_fnc_addKeybind;

[
	[_category, _subCategory_Keybinds],
	"RJET_thrustRight",
	"Thrust right",
	{["right"] call RJET_fnc_actionKeyDown},
	{["right"] call RJET_fnc_actionKeyUp},
	[DIK_D, [false,false,false]]
] call CBA_fnc_addKeybind;

[
	[_category, _subCategory_Keybinds],
	"RJET_thrustLeft",
	"Thrust left",
	{["left"] call RJET_fnc_actionKeyDown},
	{["left"] call RJET_fnc_actionKeyUp},
	[DIK_A, [false,false,false]]
] call CBA_fnc_addKeybind;