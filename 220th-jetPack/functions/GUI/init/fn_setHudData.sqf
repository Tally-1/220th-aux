params[
	["_data",nil,[createHashmap]]
];
_data set ["loaded",     false];
_data set ["hidden",     false];
_data set ["jetpackMode", true];

// {init}
_data set ["initBackGround",       RJET_fnc_initHudBackground];
_data set ["initAltiMeter",         RJET_fnc_initHudAltimeter];
_data set ["initBars",                   RJET_fnc_initHudBars];
_data set ["initWheel",                 RJET_fnc_initHudWheel];
_data set ["initVideoBox",           RJET_fnc_initHudVideoBox];
_data set ["initNoticeBox",         RJET_fnc_initHudNoticeBox];
_data set ["initVelocityMeter", RJET_fnc_initHudVelocityMeter];
_data set ["initElements",           RJET_fnc_initHudElements];

// {events}
_data set ["onClose",           RJET_fnc_onHudDisplayClosed];
_data set ["onEachFrameEh",         RJET_fnc_eachFrameHudEh];
_data set ["onEachFrame",           RJET_fnc_onEachFrameHUD];
_data set ["setProjectileEh",      RJET_fnc_HudProjectileEh];
_data set ["onProjectile",         RJET_fnc_onHudProjectile];

// {jetpack}
_data set ["switchJpModeOn",           RJET_fnc_showJetpackHudElements];
_data set ["switchJpModeOff",          RJET_fnc_hideJetpackHudElements];
_data set ["jpFrameUpdate",             RJET_fnc_jetpackHudFrameUpdate];

// {view}
_data set ["canViewHUD",       RJET_fnc_canViewHUD];
_data set ["hideHUD",             RJET_fnc_hideHUD];
_data set ["showHUD",             RJET_fnc_showHUD];
_data set ["toggleHudView", RJET_fnc_toggleHudView];

// deactivation
_data set ["noPcaDisplay", RJET_fnc_disableHudIfNoPCA];

true;