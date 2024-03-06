params["_uid", "_price"];
private _account = SHM_accounts get _uid;

if(isNil "_account")then{ 
   _account = [_uid] call SHM_fnc_createAccount;
};

private _remaining = _account - _price;

SHM_accounts set [_uid, _remaining];
missionNamespace setVariable ["SHM_accounts", SHM_accounts, true];

true;