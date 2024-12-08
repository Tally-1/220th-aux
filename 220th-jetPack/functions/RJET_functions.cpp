class RJET
{
    class misc
    {
        file = "\220th-jetpack\Functions\misc";
        class switch                 {};
        class switchOn               {};
        class switchOff              {};
        class removeFlightVars       {};
        class hasJetpack             {};
        class hasActiveJetpack       {};
        class onKeyDown              {};
        class onKeyUp                {};
        class setKeyHandler          {};
        class removeKeyHandler       {};
        class setAnimationHandler    {};
        class removeAnimationHandler {};
        class addBulletExplodeEh     {};
        class removeBulletExplodeEh  {};
        class jetPackExplode         {};
        class getCurrentMan          {};
        class forceGlobalVarValue    {};
        class actionKeyDown          {};
        class actionKeyUp            {};
    };

    class math
    {
        file = "\220th-jetpack\Functions\math";
        class numDiff           {};
        class invertNumber      {};
        class invertVector      {};
        class selectionPos      {};
        class formatDirRanges   {};
        class formatDir         {};
        class inDirRange        {};
        class isTargetBehindMan {};
    };

    class init
    {
        file = "\220th-jetpack\Functions\init";
        class initRJET      { postInit = 1; };
        class clientInit    {};
        class setGlobalVars {};
        class setClientVars {};
        class jetPackInit   {};
    };

    class taskManager
    {
        file = "\220th-jetpack\Functions\taskManager";
        class frameLoop                 {};
        class onEachFrame               {};
        class execPrFrameTasks          {};
        class execPrSecondTasks         {};
        class execPr_5_SecondTasks      {};
        class addClientFrameTask        {};
        class addClientSecondTask       {};
        class addClient_5_SecondTask    {};
        class removeClientFrameTask     {};
        class removeClientSecondTask    {};
        class removeClient_5_SecondTask {};
    };

    class movement
    {
        file = "\220th-jetpack\Functions\movement";
        class thrustStop     {};
        class thrustStart    {};
        class setThrust      {};
        class setSpeed       {};
        class setSideThrust  {};
        class setLift        {};
    };

    class engine
    {
        file = "\220th-jetpack\Functions\engine";
        class addJPconfigSettings   {};
        class initEngineState       {};
        class engineLoop            {};
        class onEngineTick          {};
        class resetEngineCycle      {};
        class engineAddTemp         {};
        class engineLowerTemp       {};
        class engineOverHeatEffect  {};
        class overHeatExplode       {};
        class engineAddLoad         {};
        class onInventoryOpened     {};
        class showEngineState       {};
        class setEngineFuel         {};
        class setFuelStateGlobal    {};
        class reduceFuelVirtual     {};
        class syncVirtualFuelState  {};
        class reduceFuelPhysical    {};
        class setBackpackMagOrFuel  {};
        class getPhysicalFuelState  {};
        class lowFuelEffects        {};
        class noFuelEffect          {};
        class smokeColor            {};
        class getEffectPos          {};
        class autoHoverSwitch       {};
        class initAutoHover         {};
        class endAutoHover          {};
        class autoHover             {};
    }

    class effects
    {
        file = "\220th-jetpack\Functions\effects";
        class setEffects           {};
        class takeOffSound         {};
        class engineSound          {};
        class engineSoundLocal     {};
        class brakeSound           {};
        class toggleAllEngineSound {};
        class brakingSmoke         {};
        class takeOffSmoke         {};
        class liftSmoke            {};
        class idleSmoke            {};
        class smokeBall            {};
        class engineSmokeNearMan   {};
        class playNearJPEffects    {};
        class nearManJPeffects     {};
        class setNearJP_Pilots     {};
        class getNearPilotEffectData {};
        class isNearPilot          {};
    };

    class GUI
    {
        file = "\220th-jetpack\Functions\GUI";
        class initHudNoticeBox            {};
    };

    class GUI_background
    {
        file = "\220th-jetpack\Functions\GUI\background";
        class initHudBackground           {};
        class hideHudBackground           {};
        class showHudBackground           {};
    };

    class GUI_update
    {
        file = "\220th-jetpack\Functions\GUI\update";
        class canUpdateHud                {};    
        class jetpackHudFrameUpdate       {};
        class engineTickUpdateHUD         {};
        class eachFrameHudEh              {};
        class onHudDisplayClosed          {};
        class onEachFrameHUD              {};
        class disableHudIfNoPCA           {};
        class enableHudIfPCA              {};
        class hideHUD                     {};
        class showHUD                     {};
        class toggleHudView               {};
        class canViewHUD                  {};
        class showJetpackHudElements      {};
        class hideJetpackHudElements      {};
    };

    class GUI_videoBox
    {
        file = "\220th-jetpack\Functions\GUI\videoBox";
        class setHudVBoxTexture           {};
        class setHudVBoxFrameColor        {};
        class initHudVideoBox             {};
        class hideHudVideoBox             {};
        class showHudVideoBox             {};
        class hudProjectileEh             {};
        class onHudProjectile             {};
        class hudProjectileCam            {};
        class endProjectileCam            {};
    };

    class GUI_velocityMeter
    {
        file = "\220th-jetpack\Functions\GUI\velocityMeter";
        class initHudVelocityMeter        {};
        class updateHudVelocityMeter      {};
        class setHudVelocityPos           {};
        class hideHudVelocityMeter        {};
        class showHudVelocityMeter        {};
    };

    class GUI_altimeter
    {
        file = "\220th-jetpack\Functions\GUI\altimeter";
        class initHudAltimeter            {};
        class updateHudAltimeter          {};
        class hudAltimeterSetText         {};
        class hudAltimeterSetIndicatorPos {};
        class hudAltimeterRotateArrows    {};
        class hudAltimeterSetArrows       {};
        class hideHudAltimeter            {};
        class showHudAltimeter            {};
    };

    class GUI_wheel
    {
        file = "\220th-jetpack\Functions\GUI\wheel";
        class initHudWheel                {};
        class hideHudWheel                {};
        class showHudWheel                {};
        class hudWheelEnigneUpdate        {};
        class hudWheelSpeedSpin           {};
        class hudWheelEnigneSpin          {};
    };

    class GUI_bars
    {
        file = "\220th-jetpack\Functions\GUI\bars";
        class initHudBars                 {};
        class hudUpdateLoadBar            {};
        class hudUpdateTempBar            {};
        class hudUpdateFuelBar            {};    
    };

    class GUI_init
    {
        file = "\220th-jetpack\Functions\GUI\init";
        class setHudData                  {};
        class initHudElements             {};
        class initPcaHud                  {};
    };


    class GUI_framework 
    { 
        file = "\220th-jetpack\Functions\GUI\framework";
        class RGBtoA3color              {};
        class initHudDisplay            {};
        class initDisplayData           {};
        class imgCtrlSetText            {};
        class setCtrlStructuredText     {};
        class setCtrlStandardText       {};
        class oopCtrlSetPos             {};
        class oopCtrlSetPosSafeSquare   {};
        class oopCtrlGetPosSafe         {};
        class oopCtrlSetPosSafe         {};
        class setTextBoxBackgroundColor {};
        class displayAddTextBox         {};
        class displayAddCtrl            {};
        class displayAddImageCtrl       {};
        class imgCtrlGetAngle           {};
        class imgCtrlSetAngle           {};
        class formatPosCenterSquare     {};
        class textTexture               {};
        class getCtrlSafePos            {};
        class setCtrlSafePos            {};
        class displayAddProgressBarV    {};
        class hideProgressBar           {};
        class showProgressBar           {};
        class setProgressOnBar          {};
        class setProgressBarTitle       {};
        class setProgressBarFrameColor  {};
        class setProgressBarFillColor   {};
        class setProgressBarTitleColor  {};

        class hideDisplay               {};
        class showDisplay               {};
        class hideCtrl                  {};
        class showCtrl                  {};
    };
};