params["_uid"];
private _defaultAmount = SHM_accounts get "default";

SHM_accounts set [_uid, _defaultAmount];
missionNamespace setVariable ["SHM_accounts", SHM_accounts, true];

_defaultAmount;