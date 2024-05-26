
class 220th_PCA_1: 220TH_PCA_Base
{
	
	scope                   = 2;
	displayname             = "[220th]PCA Helmet";
	descriptionShort        = "Personal Combat Assistant and Head protection";
	model                   = "\z\tgf\addons\helmets\pilot\pilot_helmet.p3d";
	picture                 = "\z\tgf\addons\helmets\pilot\data\pilot_helmet.paa";
	ace_hearing_lowerVolume = 0;
	ace_hearing_protection  = 0.85000002;
	hiddenSelections[]=
	{
		"camo1",
		"camo2",
		"camo"
	};
	hiddenSelectionsTextures[]=
	{
		"\220TH-JETPACK\helmets\PCA_1\textures\MetalParts[220th](4).paa",
		"#(argb,8,8,3)color(0,0,0.1,0.3,ca)",//"\220TH-JETPACK\helmets\PCA_1\textures\black.paa",
		"\220TH-JETPACK\helmets\PCA_1\textures\instruments[220th].paa" // Not working
	};
	hiddenselectionsmaterials[]=
	{
		"\a3\characters_f_bootcamp\common\data\vrarmoremmisive.rvmat",
		"\a3\characters_f_bootcamp\common\data\vrarmoremmisive.rvmat",
		"\a3\characters_f_bootcamp\common\data\vrarmoremmisive.rvmat"
	};

	class ItemInfo: ItemInfo
	{
		Uniformmodel = "\z\tgf\addons\helmets\pilot\pilot_helmet.p3d";
		mass         = 10;
		class HitpointsProtectionInfo
		{
			class head
			{
				hitpointName = "HitHead";
				armor        = 10;
				passThrough  = 0.30000001;
			};

			class face
			{
				hitpointName = "HitFace";
				armor        = 5;
				passThrough  = 0.2;
			};
		};

	};
};