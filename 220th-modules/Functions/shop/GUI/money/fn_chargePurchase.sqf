private _uid   = getPlayerUID player;
private _price = _self get "trade_price";

[_uid, _price] remoteExecCall ["SHM_fnc_chargePurchaseServer", 2];

true;