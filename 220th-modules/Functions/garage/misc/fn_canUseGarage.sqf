private _vehicle = vehicle player;

if(typeOf player isEqualTo typeOf _vehicle)
exitWith{false;};

private _nearShops = player nearEntities ["paintShop220th", 50];
if(_nearShops isEqualTo [])
exitWith{false;};

private _nearest = [player, _nearShops] call RVN_fnc_getNearest;
private _radius  = _nearest getVariable "GRG_radius";
if(isNil "_radius")
exitWith{false;};

if(player distance _nearest > _radius)
exitWith{false;};

if!(player inArea ([_nearest] call RVN_fnc_getModuleArea))
exitWith{false;};
 
if(_vehicle getVariable ["GRG_garageActivated", false])
exitWith{false;};


true;