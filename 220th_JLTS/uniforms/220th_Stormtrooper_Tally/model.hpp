class 220th_Stormtrooper_Tally_model: JLTS_Clone_P2_DC15A 
{
	uniformClass = "220th_Stormtrooper_Tally_item";/*Link to the "Weapon class (Item) used to select this uniform*/
	
	/*Listing name*/
	displayName  = "[220th] Stormtrooper Tally";

	author = RevanHilts;
	
	faction              = "TAG_MyFaction_1";
	editorSubcategory    = "TAG_MySubcategory_1";
	linkedItems[]        = {"TAG_220th_Trooper","TAG_MyVest","TAG_MyNVG","JLTS_clone_comlink","ItemMap","ItemCompass","ItemWatch","ItemGPS"};
	respawnLinkedItems[] = {"TAG_220th_Trooper","TAG_MyVest","TAG_MyNVG","JLTS_clone_comlink","ItemMap","ItemCompass","ItemWatch","ItemGPS"};
	
	/*Set texture here*/
	hiddenSelectionsTextures[]=
	{
		"220th_JLTS\uniforms\220th_Stormtrooper_Tally\Texture_1.paa",
		"220th_JLTS\data\220th_Trooper_Bottom.paa"
	};

	/*Armor values*/
	armor                   = 50;
	armorStructural         = 2;
	explosionShielding      = 0.5;
	minTotalDamageThreshold = 0.001;
	impactDamageMultiplier  = 0.1;
};
