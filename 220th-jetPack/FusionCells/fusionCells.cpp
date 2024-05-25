
class 200TH_FusionCell_Base: 100Rnd_65x39_caseless_khaki_mag
{
	author           = "Tally";
	scope            = 1;
	displayName      = "[AFCP]";
	descriptionShort = "Atomic Fusion Cell pack";
	picture          = "\220TH-JETPACK\FusionCells\images\Battery_Black.paa";
	ammo             = "F_40mm_Green";
	model            = "\a3\Props_F_Enoch\Military\Equipment\BatteryPack_01_battery_F.p3d";
	modelSpecial     = "\a3\Props_F_Enoch\Military\Equipment\BatteryPack_01_battery_F.p3d";
	
	
hiddenSelectionsTextures[]=
{
	"a3\Props_F_Enoch\Military\Equipment\data\BatteryPack_01_Black_CO.paa"
};

};

class 200TH_FusionCell_6000: 200TH_FusionCell_Base
{
	scope            = 2;
	displayName      = "[AFCP] 6000 E-U";
	descriptionShort = "Atomic Fusion Cell Pack \n 6000 Energy units";
	count            = 6000;
	mass             = 150;
};

class 200TH_FusionCell_12000: 200TH_FusionCell_Base
{
	scope            = 2;
	displayName      = "[AFCP] 12000 E-U";
	descriptionShort = "Atomic Fusion Cell Pack \n 12000 Energy units";
	count            = 12000;
	mass             = 250;
	picture          = "\220TH-JETPACK\FusionCells\images\Battery_Olive.paa";
	hiddenSelectionsTextures[]=
	{
		"a3\Props_F_Enoch\Military\Equipment\data\BatteryPack_01_Olive_CO.paa"
	};
};

class 200TH_FusionCell_18000: 200TH_FusionCell_Base
{
	scope            = 2;
	displayName      = "[AFCP] 18000 E-U";
	descriptionShort = "Atomic Fusion Cell Pack \n 18000 Energy units";
	count            = 18000;
	mass             = 300;
	picture          = "\220TH-JETPACK\FusionCells\images\Battery_Sand.paa";
	hiddenSelectionsTextures[]=
	{
		"a3\Props_F_Enoch\Military\Equipment\data\BatteryPack_01_Sand_CO.paa"
	};
};