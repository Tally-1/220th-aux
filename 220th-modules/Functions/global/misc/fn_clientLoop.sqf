while {
	sleep RVN_clientSleep; 
	true;
} do { 
	private _nearShops = player nearEntities ["paintShop220th", 30];
	if(_nearShops isEqualTo [])
	then{RVN_clientSleep = 3}
	else{RVN_clientSleep = 0.3};
	
	[] call GRG_fnc_useGarage;
};