params["_desk"];
private _box = createVehicle ["Box_Syndicate_WpsLaunch_F", [0,0,0], [], 0, "CAN_COLLIDE"];

clearMagazineCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearWeaponCargoGlobal   _box; 
clearItemCargoGlobal     _box;

_box allowDamage false;

_box attachTo [_desk, [0,-0.6,0.2]];
_desk setVariable ["SHM_deliveryBox", _box];