//                                         IP          port
#define connect220      "connectToServer ['127.0.0.1', 2302, '']"
#define backgroundVideo "220th-main-menu\media\video\background.ogv"
#define backgroundImage "\220th-main-menu\media\images\MOS_Shuuta.jpg"
#define buttonIcon      "\220th-main-menu\media\images\Join_220th.paa"
#define buttonTip       "Join the Battle"


class CfgPatches {
	class mainmenu {
		units[]          = {};
		weapons[]        = {};
		requiredVersion  = 0.1;
		requiredAddons[] = {"A3_Map_Stratis", "A3_Data_F_Enoch_Loadorder"};
	};
};

class CfgWorlds {
	class CAWorld;	// External class reference	
	class Stratis : CAWorld {
		cutscenes[] = {"mymainmenu"};
	};

	initWorld = "Stratis";
	demoWorld = "Stratis";
};

class CfgMissions
{
	class Cutscenes
	{
		class mymainmenu // Class referenced in 'cutscenes' property in CfgWorlds
		{
			directory = "220th-main-menu\scenes\mainmenu.stratis"; // Path to scenario with the scene
		};
	};
};

class RscActivePicture;
class RscStandardDisplay;
class RscText;
class RscPicture;

class RscDisplayMain: RscStandardDisplay {
	enableDisplay = 0;
	delete Spotlight;
	class controls {
		delete Spotlight1;
		delete Spotlight2;
		delete Spotlight3;
		delete BackgroundSpotlightRight;
		delete BackgroundSpotlightLeft;
		delete BackgroundSpotlight;
		delete SpotlightNext;
		delete SpotlightPrev;
		
		class Logo: RscActivePicture
		{
			text          = buttonIcon;
			tooltip       = buttonTip;
			color[]       = {0.89999998,0.89999998,0.89999998,1};
			colorActive[] = {1,1,1,1};
			shadow        = 0;
			x             = "0.5 - 	5 * 	(pixelW * pixelGrid * 2)";
			y             = "safezoneY + (3 - 0.4 * 	5) * 	(pixelH * pixelGrid * 2)";
			w             = "2 * 	5 * 	(pixelW * pixelGrid * 2)";
			h             = "2 * 	5 * 	(pixelH * pixelGrid * 2)";
			onButtonClick = connect220;
			onSetFocus    = "(_this select 0) ctrlsettextcolor [1,1,1,1];";
			onKillFocus   = "(_this select 0) ctrlsettextcolor [0.9,0.9,0.9,1];";
		};
	};
	
	class ControlsBackground
	{
		class MouseArea;
		class BackgroundLeft;
		class BackgroundRight;
		class Picture: RscPicture
		{
			idc  = 998;
			text = backgroundImage;
			vid  = backgroundVideo;
			x    = "safezoneX";
			y    = "safezoneY";
			w    = "safezoneW";
			h    = "safezoneW * 4/3";
		};
	};

};