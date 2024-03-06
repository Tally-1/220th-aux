#include "\220th-modules\Accounts_inventory\Accounts.sqf"

SHM_accounts = createHashmapObject [_accounts];
missionNamespace setVariable ["SHM_accounts", SHM_accounts, true];