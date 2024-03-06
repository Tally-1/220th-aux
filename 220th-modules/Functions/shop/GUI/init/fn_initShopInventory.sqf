params["_stateMap"];
private _inventoryArr    = SHM_inventory;
private _inventoryMapArr = [ 
   ["weapons",   createHashmap],
   ["magazines", createHashmap],
   ["uniforms",  createHashmap],
   ["backpacks", createHashmap],
   ["headgear",  createHashmap],
   ["vests",     createHashmap],
   ["items",     createHashmap]
];
private _inventoryMap    = createHashmapObject [_inventoryMapArr];

{
   _x params["_category", "_cfgName", "_price"];
   private _itemMap  = _x call SHM_fnc_initShopItem;
   (_inventoryMap get _category)set[_cfgName, _itemMap];
   
} forEach _inventoryArr;

if(!isNil "_stateMap")then{
   _stateMap set ["inventory", _inventoryMap]
};

_inventoryMap;