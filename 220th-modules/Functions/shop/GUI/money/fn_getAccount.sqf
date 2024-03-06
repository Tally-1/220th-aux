params["_uid"];
private _account = SHM_accounts get _uid;
if(!isNil "_account")exitWith{_account;};

private _accountDeclared = false;
private _timer = time + 1;

[_uid] remoteExecCall ["SHM_fnc_createAccount",2];
[_uid] remoteExecCall ["SHM_fnc_createAccount",2];

while{_accountDeclared isEqualTo false
&&   {time < _timer}}do{
   _account = SHM_accounts get _uid;
   _accountDeclared = !isNil "_account";
};

private _account = SHM_accounts get _uid;
if(!isNil "_account")exitWith{_account;};

SHM_accounts get "default";

true;