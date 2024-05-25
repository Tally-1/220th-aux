class H_HelmetO_ViperSP_hex_F;
class headgearitem;
class tgf_helmets_Base;
class 220TH_PCA_Base: H_HelmetO_ViperSP_hex_F
{
	scope=1;
	author="220TH";
	displayname="Base";
	hiddenSelections[]=
	{
		"camo1",
		"camo2"
	};
	subItems[]={};
	ace_hearing_lowerVolume=0.60000002;
	ace_hearing_protection=0.85000002;
	class ItemInfo: headgearitem
	{
		mass=10;
		hiddenSelections[]=
		{
			"camo1",
			"camo2"
		};
		allowedSlots[]={801,901,701,605};
		modelsides[]={6};
		class HitpointsProtectionInfo
		{
			class head
			{
				hitpointName="HitHead";
				armor=10;
				passThrough=0.30000001;
			};
		};
	};
};