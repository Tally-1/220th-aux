class 220th_Weequay_Pirate_model: JLTS_Droid_B1_E5 {
	uniformClass = "220th_Weequay_Pirate_item";/*Link to the "Weapon class (Item) used to select this uniform*/
	
	/*Listing name*/
	displayName          = "[220th] Weequay Pirate";

	author               = RevanHilts;
	backpack             = "";
	faction              = "TAG_MyFaction_2";
	editorSubcategory    = "TAG_MySubcategory_2";

	linkedItems[]        = {"JLTS_droid_comlink","ItemMap","ItemCompass","ItemWatch","ItemGPS"};
	respawnLinkedItems[] = {"JLTS_droid_comlink","ItemMap","ItemCompass","ItemWatch","ItemGPS"};
	
	hiddenSelectionsTextures[] = {
		"220th_JLTS\uniforms\220th_Weequay_Pirate\Texture.paa"
	};
};