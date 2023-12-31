// Model className        | The "Parent" model of this one
class JLTS_CloneArmor_Model: JLTS_Clone_P2_DC15A {
	uniformClass = "JLTS_CloneArmor_item";/*Link to the "Weapon class (Item) used to select this uniform*/
	
	/*Listing name*/
	displayName          = "[220th] Clone Trooper P2";
	author               = RevanHilts;

	scope                = 2;
	scopeCurator         = 2;
	faction              = "220th_Unit";
	editorSubcategory    = "TAG_MySubcategory_1";
	
	linkedItems[]        = {"TAG_220th_Trooper","TAG_MyVest","TAG_MyNVG","JLTS_clone_comlink","ItemMap","ItemCompass","ItemWatch","ItemGPS"};
	respawnLinkedItems[] = {"TAG_220th_Trooper","TAG_MyVest","TAG_MyNVG","JLTS_clone_comlink","ItemMap","ItemCompass","ItemWatch","ItemGPS"};
	backpack             = "TAG_MyBackpack_1";

	/*Set texture here*/
	hiddenSelectionsTextures[] = {
		"220th_JLTS\data\220th_Trooper_Top.paa",
		"220th_JLTS\data\220th_Trooper_Bottom.paa"
	};

	
};