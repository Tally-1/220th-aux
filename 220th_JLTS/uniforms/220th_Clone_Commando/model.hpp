// Model className        | The "Parent" model of this one
class Clone_Commando_model: JLTS_Clone_P2_DC15A 
{
	uniformClass         = "Clone_Commando_item";

	/*Listing name*/
	displayName          = "[220th] Clone Commando";
	author               = RevanHilts;

	scope                = 2;
	scopeCurator         = 2;
	faction              = "220th_Unit";
	editorSubcategory    = "TAG_MySubcategory_1";
	
	linkedItems[]        = {"TAG_220th_TrooperCOMMANDO","TAG_MyVest1","TAG_MyNVG","JLTS_clone_comlink","ItemMap","ItemCompass","ItemWatch","ItemGPS"};
	respawnLinkedItems[] = {"TAG_220th_TrooperCOMMANDO","TAG_MyVest1","TAG_MyNVG","JLTS_clone_comlink","ItemMap","ItemCompass","ItemWatch","ItemGPS"};
	backpack             = "220th_Rep_Cmmnd_BckPck";

	/*Set texture here*/
	hiddenSelectionsTextures[]=
	{
		"220th_JLTS\data\220th_RC_Camo1_co.paa",
		"220th_JLTS\data\220th_RC_Camo2_co.paa",
		"Clone_Armor_Unit\data\RC_Under_co.paa"
	};

	armor=25;
	armorStructural=0.5;
	explosionShielding=0.050000001;
	minTotalDamageThreshold=0.001;
	impactDamageMultiplier=0.69999999;
};