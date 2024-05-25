params[
	["_man",       nil,[objNull]],
	["_container", nil,[objNull]]
];
private _timer = time + 3;
waitUntil{
	(!isNull (findDisplay 602))||
	{time > _timer}
};
if(isNull (findDisplay 602))exitWith{};

if(isTouchingGround _man)exitWith{call RJET_fnc_switchOff};

(findDisplay 602) closeDisplay 1;
systemChat "Cannot open Inventory while flying the Jetpack";

true;