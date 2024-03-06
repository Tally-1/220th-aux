private _items = _state get "selected_items";
private _crate = _state get "delivery_box";

clearMagazineCargo _crate;
clearBackpackCargo _crate;
clearWeaponCargo   _crate; 
clearItemCargo     _crate;

[_crate, _items] spawn {
	params["_crate", "_items"];
	sleep 0.1;
	{
		_crate addItemCargo     [_x,1];
		
		if((_x call BIS_fnc_itemType)#1 isEqualTo "Backpack")
		then{_crate addBackpackCargo [_x,1];};
		
	} forEach _items;
};


private _message = parseText([
   "Your purchase is in the crate.<br/><br/>",
   "Make sure you pick it all up!<br/>",
   "Leftover Items will be removed on the next purchase"
]joinString"");

hint _message;

true;