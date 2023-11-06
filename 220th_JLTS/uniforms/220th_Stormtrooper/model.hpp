class 220th_Stormtrooper_model: JLTS_Clone_P2_DC15S 
{
	uniformClass = "220th_Stormtrooper_item";/*Link to the "Weapon class (Item) used to select this uniform*/
	
	/*Listing name*/
	displayName          = "[220th] Stormtrooper";
	author               = RevanHilts;
	
	scope                = 2;
	scopeCurator         = 2;
	faction              = "220th_Unit";
	editorSubcategory    = "TAG_MySubcategory_1";

	linkedItems[]        = {"TAG_220th_Trooper","TAG_MyVest","TAG_MyNVG","JLTS_clone_comlink","ItemMap","ItemCompass","ItemWatch","ItemGPS"};
	respawnLinkedItems[] = {"TAG_220th_Trooper","TAG_MyVest","TAG_MyNVG","JLTS_clone_comlink","ItemMap","ItemCompass","ItemWatch","ItemGPS"};
	
	/*Set texture here*/
	hiddenSelectionsTextures[]=
	{
		"220th_JLTS\data\StormtrooperBody_clean_co.paa",
		"220th_JLTS\data\StormtrooperBody_clean_co.paa",
		"Clone_Armor_Unit\data\StormtrooperBody_clean_co.paa"
	};

	/*Armor values*/
	armor                   = 25;
	armorStructural         = 0.5;
	explosionShielding      = 0.050000001;
	minTotalDamageThreshold = 0.001;
	impactDamageMultiplier  = 0.69999999;
};
