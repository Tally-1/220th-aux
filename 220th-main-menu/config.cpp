//                                         IP          port
#define connect220      "connectToServer ['127.0.0.1', 2302, '']"
#define backgroundVideo "220th-main-menu\media\video\background.ogv"
#define backgroundImage "\220th-main-menu\media\images\Star_Wars_Jungle.jpg"
#define buttonIcon      "\220th-main-menu\media\images\Join_220th.paa"
#define buttonTip       "Join the Battle"


class CfgPatches {
	delete SWTOR_Menu;
	class RVN_MainMenu {
		units[]          = {};
		weapons[]        = {};
		requiredVersion  = 0.1;
		requiredAddons[] = {
			"A3_Map_Stratis", 
			"A3_Data_F_Enoch_Loadorder",
			"A3_UI_F",
			"A3_Ui_F_AoW",
			"A3_Ui_F_Enoch",
			"A3_Ui_F_Oldman",
			"A3_Ui_F_Orange",
			"A3_Ui_F_Tank",
			"3AS_Main_Intro"
			// , "SWTOR_Menu"
		};
	};
};
// class CfgAddons
// {
// 	class PreloadAddons
// 	{
// 		class read
// 		{
// 			list[]=
// 			{
// 				"RVN_MainMenu"
// 			};
// 		};
// 	};
// };

class CfgWorlds {
	class CAWorld;	// External class reference	
	class Stratis : CAWorld {
		cutscenes[] = {"RVN_Menu"};
	};

	initWorld = "Stratis";
	demoWorld = "Stratis";
};

class CfgMissions
{
	class Cutscenes
	{
		class RVN_Menu // Class referenced in 'cutscenes' property in CfgWorlds
		{
			directory = "220th-main-menu\scenes\mainmenu.stratis"; // Path to scenario with the scene
		};
	};
};

class RscActivePicture;
class RscStandardDisplay;
class RscText;
class RscPicture;
class RscDisplayMPPlayers;

class RscDisplayMain: RscStandardDisplay {
	idd           = 0;
	text          = backgroundImage;
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

		delete SWTOR_Menu_rscButton;
		delete SWTOR_Menu_discordButton;
		delete Version;
		delete Footer;

		
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


/********************RSC overrides***************************/


class RscDisplayLoadCustom: RscStandardDisplay
{
	class controlsBackground
	{
		class LoadPic: RscPicture
		{
			idc=1;
			x="SafeZoneX";
			y="SafeZoneY";
			h="SafeZoneH";
			w="SafeZoneW";
			text=backgroundImage;
		};
	};
};
class RscDisplayLoadMission: RscStandardDisplay
{
	class controlsBackground
	{
		class LoadPic: RscPicture
		{
			idc=1;
			x="SafeZoneX";
			y="SafeZoneY";
			h="SafeZoneH";
			w="SafeZoneW";
			text=backgroundImage;
		};
	};
};
class RscDisplayStart: RscStandardDisplay
{
	class controls
	{
		class LoadPic: RscPicture
		{
			idc=1;
			x="SafeZoneX";
			y="SafeZoneY";
			h="SafeZoneH";
			w="SafeZoneW";
			text=backgroundImage;
		};
	};
};
class RscDisplayClientWait: RscDisplayMPPlayers
{
	class LoadPic: RscPicture
	{
		idc=1;
		x="SafeZoneX";
		y="SafeZoneY";
		h="SafeZoneH";
		w="SafeZoneW";
		text=backgroundImage;
	};
};
class RscDisplayClient: RscStandardDisplay
{
	class controlsBackground
	{
		class LoadPic: RscPicture
		{
			idc=1;
			x="SafeZoneX";
			y="SafeZoneY";
			h="SafeZoneH";
			w="SafeZoneW";
			text=backgroundImage;
		};
	};
};

class RscDisplayLoading
{
	class Variants
	{
		class LoadingOne
		{
			idd=250;
			class controls
			{
				class LoadPic: RscPicture
				{
					idc=1;
					x="SafeZoneX";
					y="SafeZoneY";
					h="SafeZoneH";
					w="SafeZoneW";
					text=backgroundImage;
				};
			};
		};
	};
};