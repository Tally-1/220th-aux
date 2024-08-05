isNil{ 
RJET_AceLoaded        = isClass (configFile >> "CfgPatches" >> "ace_common");
RJET_EngineCycle      = 0.1;
RJET_maxLift          = 15;
RJET_liftIncrease     = 2;
RJET_initialLift      = 10;

RJET_maxSpeed         = 220;
RJET_speedIncrease    = 2;
RJET_speedDecrease    = 2;

RJET_maxDrift         = 50;
RJET_driftChange      = 2;

RJET_maxAltitude      = 150;
RJET_tempReductionSec = 30;
RJET_maxTemp          = 1000;
RJET_enginesMuted     = true;
RJET_CookOffSounds = [];

if(RJET_AceLoaded)then{
	RJET_CookOffSounds = [
		"ace_cookoff_shotbullet_close_1",
		"ace_cookoff_shotbullet_close_2",
		"ace_cookoff_shotbullet_close_3"
	];
};

private _alpha = 0.8;
PCA_edgeColor set [3,_alpha];
PCA_iconColor set [3,_alpha];
PCA_textColor set [3,     1];

true;
};