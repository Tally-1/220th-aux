params[
   ["_typeName", nil,   [""]],
   ["_posATL", [0,0,0], [[]]]
];
(_typeName call BIS_fnc_itemType)
params["_category", "_subCategory"];
private _weaponHolder = createVehicle ["GroundWeaponHolder_Scripted", _posATL, [], 0, "CAN_COLLIDE"];
private _addItem      = "addWeaponCargo";

if(_subCategory isEqualTo "Backpack") then{_addItem = "addBackPackCargo";};
if(_subCategory isEqualTo "Item")     then{_addItem = "addItemCargo";};
if(_category    isEqualTo "Magazine") then{_addItem = "addMagazineCargo";};

private _code = compile (["_this ", _addItem, "['", _typeName, "',1];"]joinString"");

_weaponHolder call _code;

_weaponHolder;