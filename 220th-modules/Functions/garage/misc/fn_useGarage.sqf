if!([] call GRG_fnc_canUseGarage)exitWith{};
private _vehicle   = vehicle player;
private _module    = [player, (player nearEntities ["paintShop220th", 50])] call RVN_fnc_getNearest;

_vehicle setVariable ["GRG_garageActivated", true];
_vehicle setVelocityModelSpace [0,0,0];
_vehicle allowDamage false;
player allowDamage false;

[] call GRG_fnc_openGarageMenu;

waitUntil {sleep 3; !(player inArea ([_module] call RVN_fnc_getModuleArea))};

_vehicle allowDamage true;
player allowDamage   true;
_vehicle setVariable ["GRG_garageActivated", false];

true;