params["_man"];(getUnitLoadout _man)
params[
   "_rifleAndAmmo",
   "_launcherAndAmmo",
   "_pistolAndAmmo",
   "_uniformAndInventory",
   "_vestAndInventory",
   "_backpackAndInventory",
   "_headGear",
   "_faceWear",
   "_binoAndMags",
   "_items"
];

private _rifle       = _rifleAndAmmo#0;
private _launcher    = _launcherAndAmmo#0;
private _pistol      = _pistolAndAmmo#0;
private _uniform     = _uniformAndInventory#0;
private _vest        = _vestAndInventory#0;
private _backpack    = _backpackAndInventory#0;
private _binos       = _binoAndMags#0;

private _rifleMag    = "";
private _pistolMag   = "";
private _launcherMag = "";

if(count _rifleAndAmmo    >= 5) then {_rifleMag    = _rifleAndAmmo#4#0;};
if(count _pistolAndAmmo   >= 5) then {_pistolMag   = _pistolAndAmmo#4#0;};
if(count _launcherAndAmmo >= 5) then {_launcherMag = _launcherAndAmmo#4#0;};

private _inventoryB  = [""]; //  (_backpackAndInventory#1)apply{_x#0};
private _inventoryU  = [""]; //  (_uniformAndInventory#1)apply{_x#0};
private _inventoryV  = [""]; //  (_vestAndInventory#1)apply{_x#0};

if(count _backpackAndInventory >= 1) then {_inventoryB = (_backpackAndInventory#1)apply{_x#0};};
if(count _uniformAndInventory  >= 1) then {_inventoryU = (_uniformAndInventory#1)apply{_x#0};};
if(count _vestAndInventory     >= 1) then {_inventoryV = (_vestAndInventory#1)apply{_x#0};};


private _gearList  = [];
private _equipment = [ 
   _headGear,
   _faceWear 
];

if(!isNil "_uniform") then{_items pushBackUnique _uniform;};
if(!isNil "_vest")     then{_items pushBackUnique _vest;};
if(!isNil "_backpack") then{_items pushBackUnique _backpack;};
if(!isNil "_rifle")    then{_equipment insert [0, [_rifle], true];};
if(!isNil "_launcher") then{_equipment insert [0, [_launcher], true];};
if(!isNil "_pistol")   then{_equipment insert [0, [_pistol], true];};
if(!isNil "_binos")    then{_items pushBackUnique _binos;};


_items insert [(count _items), _inventoryU, true];
_items insert [(count _items), _inventoryV, true];
_items insert [(count _items), _inventoryB, true];

_gearList insert [(count _gearList), _items, true];
_gearList insert [0, _equipment, true];

_gearList deleteAt (_gearList findIf {_x isEqualTo ""});

_gearList;