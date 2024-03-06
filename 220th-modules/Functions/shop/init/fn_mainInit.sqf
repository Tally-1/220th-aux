if(!isServer)exitWith{};
[] spawn {
	[] call SHM_fnc_setInventoryContent;
	[] call SHM_fnc_initAccounts;
	[] call SHM_fnc_initAllShops;
};
true;