class CfgFunctions
{
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
			class initRJET      {postInit = 1;};
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
			
			class brakingSmoke {};
			class takeOffSmoke {};
			class liftSmoke    {};
			class idleSmoke    {};
			class smokeBall    {};
			class engineSmokeNearMan {};

			class playNearJPEffects      {};
			class nearManJPeffects       {};
			class setNearJP_Pilots       {};
			class getNearPilotEffectData {};
			class isNearPilot            {};



		};
	};
};