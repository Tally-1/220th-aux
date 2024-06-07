if(RJET_enginesMuted)exitWith{ 
	missionNamespace setVariable ["RJET_enginesMuted", false, true];
	false;
};

missionNamespace setVariable ["RJET_enginesMuted", true, true];

true;