/*                                         IP          port                  */
#define connect220      "connectToServer ['127.0.0.1', 2302, '']"
#define backgroundImage "\220th-main-menu\media\images\Star_Wars_Jungle.jpg"
#define backgroundVideo "\220th-main-menu\media\video\background.ogv"
#define logoIcon        "\220th-main-menu\media\images\Logo_damascus_Rev2.paa"
#define buttonTip       "Join the Battle"
// #define discordInvite   

class CfgPatches
{
	class LC_Menu
	{
		units[]={};
		weapons[]={};
		requiredVersion=0.1;
		requiredAddons[]=
		{
			"A3_UI_F",
			"A3_Ui_F_AoW",
			"A3_Ui_F_Enoch",
			"A3_Ui_F_Oldman",
			"A3_Ui_F_Orange",
			"A3_Ui_F_Tank",
			"3AS_Main_Intro",
			"SWTOR_Menu"
		};
	};
};

class CfgAddons
{
	class PreloadAddons
	{
		class read
		{
			list[]=
			{
				"LC_Menu"
			};
		};
	};
};


class RscStandardDisplay;
class RscText;
class RscPicture;
class RscButtonMenu;
class RscControlsGroupNoHScrollbars;
class RscButton;
class RscDisplayMPPlayers;
// delete CfgMainMenuSpotlight;

// class RscDisplayConfigure
// {
// 	enableDisplay=1;
// };



/*************************Loading-Image*****************************/

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

/*********Main Display********/

class RscDisplayMain: RscStandardDisplay
{
	idd           = 0;
	text          = backgroundImage;
	enableDisplay = 0;
	delete Spotlight;


	class ControlsBackground
	{
		delete MouseArea;
		delete BackgroundLeft;
		delete BackgroundRight;
		delete FonBackPic;

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

	class Controls
	{
		class Version;
		class Logo;
		class Footer;

		delete SpotlightNext;
		delete SpotlightPrev;
		delete Spotlight1;
		delete Spotlight2;
		delete Spotlight3;
		delete InfoDLCsOwned;
		delete InfoDLCs;
		// delete InfoVersion;
		// delete AllMissions;
		// delete ProofsOfConcept;


		/***************Background Spotlight*****************/

		class BackgroundSpotlight: RscPicture
		{
			text        = "#(argb,8,8,3)color(1,1,1,1)";
			colorText[] = {0,0,0,0.69999999};
			x           = "0.5-(1.5 * 10)*(pixelW * pixelGridNoUIScale * 2)-2*(2 * pixelW)";
			y           = "safezoneY + 0.60 * safezoneH";
			w           = "3*10* (pixelW * pixelGridNoUIScale * 2)+4 *(2 * pixelW)";
			h           = "(5.15)*(pixelH * pixelGridNoUIScale * 2)+2 * (2 * pixelH)";
		};
		class BackgroundSpotlightLeft: BackgroundSpotlight
		{
			text  = "\a3\Ui_f\data\GUI\Rsc\RscDisplayMain\gradient_ca.paa";
			angle = 180;
			x     = "safezoneX";
			w     = "(safezoneW - (3 *10 *(pixelW * pixelGridNoUIScale * 2) + 4 * (2 * pixelW))) / 2";
		};
		class BackgroundSpotlightRight: BackgroundSpotlightLeft
		{
			text  = "\a3\Ui_f\data\GUI\Rsc\RscDisplayMain\gradient_ca.paa";
			angle = 0;
			x     = "0.5 + (1.5 *10) *(pixelW * pixelGridNoUIScale *2)+ 2 *(2 *pixelW)";
		};


		/***************************Buttons*************************************/
		class LC_Menu_rscButton: RscButton
		{
			
			idc                     = -1;
			text                    = buttonTip;
			tooltip                 = buttonTip;
			onbuttonclick           = connect220;

			colorBackground[]       = {0,0,0,0.49};
			colorBackgroundActive[] = {0.18,0.14,0.96,1};
			
			x = "SafeZoneXAbs  + 0.42 * SafeZoneW";
			y = "safezoneY     + 0.62 * safezoneH";
			w = "10  * (pixelW * pixelGridNoUIScale * 2)";
			h = "1.2 * (pixelH * pixelGridNoUIScale * 2)";
			
			class Attributes
			{
				align="center";
			};
			soundEnter[]  = {"", 0, 1};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape", 0.09, 1};
		};
		class LC_Menu_discordButton: LC_Menu_rscButton
		{
			idc           = -1;
			text          = "Discord";
			tooltip       = "Discord";
			y             = "safezoneY + 0.68 * safezoneH";
			onbuttonclick = "";
			url           = "https://discord.gg/220th"; // discordInvite;
		};

		/***************************Logo*************************************/
		class LogoApex: Logo
		{
			text          = logoIcon;
			onbuttonclick = connect220;
			tooltip       = buttonTip;
			color[]       = {0.89,0.89,0.89,0.89};
			colorActive[] = {1,1,1,1};
			w             = "2 * 5*(pixelW *pixelGrid *2)";
			h             = "2 * 5*(pixelH *pixelGrid *2)";
		};

		/************************Background Bar***********************/

		class BackgroundBar: RscText
		{
			colorBackground[] = {0,0,0,0.75};
			x                 = "safezoneX";
			y                 = "safezoneY + 2 *(pixelH *pixelGrid *2)";
			w                 = "safezoneW";
			h                 = "2 *(pixelH *pixelGrid *2)";
		};
		
		class BackgroundCenter: BackgroundBar
		{
			colorBackground[] = {0,0,0,0.75};
			x                 = "0.5 - 2 *2 *(pixelW * pixelGrid * 2)";
			w                 = "4 *2 *(pixelW * pixelGrid * 2)";
		};
		
		class BackgroundBarLeft: RscPicture
		{
			text        = "\a3\Ui_f\data\GUI\Rsc\RscDisplayMain\gradientMods_ca.paa";
			colorText[] = {0,0,0,0.75};
			angle       = 180;
			x           = "0.5 - 4 *2 *(pixelW * pixelGrid *2)";
			y           = "safezoneY + 2 *(pixelH * pixelGrid *2)";
			w           = "2 *2 *(pixelW * pixelGrid *2)";
			h           = "2 *(pixelH * pixelGrid *2)";
		};
		
		class BackgroundBarRight: BackgroundBarLeft
		{
			angle = 0;
			x     = "0.5 + 2 *2 *(pixelW *pixelGrid *2)";
		};	


		/****************Moving elements out of view****************/

		class InfoMods: RscControlsGroupNoHScrollbars
		{
			w =  1;
			h =  1;
			x = -2;
			y = -2;
			class Controls;
		};
		
		class InfoNews: InfoMods
		{
			class Controls: Controls
			{
				class Background;
				class BackgroundIcon;
				class Icon;
				class News;
				class Notification;
				class Button;
			};
			w =  1;
			h =  1;
			x = -2;
			y = -2;
		};
		
			
	};
};


class CfgWorlds {
	class CAWorld;	// External class reference	
	class Stratis : CAWorld {
		cutscenes[] = {"RVN_Cutscene"};
	};

	initWorld = "Stratis";
	demoWorld = "Stratis";
};

class CfgMissions
{
	class Cutscenes
	{
		class RVN_Cutscene // Class referenced in 'cutscenes' property in CfgWorlds
		{
			directory = "220th-main-menu\scenes\mainmenu.stratis"; // Path to scenario with the scene
		};
	};
};