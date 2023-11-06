// Model className        | The "Parent" model of this one
class JLTS_DroidB1_Model: JLTS_Droid_B1_E5 
{
    uniformClass = "JLTS_DroidB1_item";/*Link to the "Weapon class (Item) used to select this uniform*/
	
	/*Listing name*/
	displayName          = "[220th] Reprogrammed Droid B1";
	author               = RevanHilts;

	scope                = 2;
	scopeCurator         = 2;
	faction              = "220th_Opposition";
	editorSubcategory    = "TAG_MySubcategory_2";// 220th_Mercenaries_category
	
	linkedItems[]        = {"JLTS_droid_comlink","ItemMap","ItemCompass","ItemWatch","ItemGPS"};
	respawnLinkedItems[] = {"JLTS_droid_comlink","ItemMap","ItemCompass","ItemWatch","ItemGPS"};
	backpack             = "";


	/*Set texture here*/
	hiddenSelectionsTextures[] = {
		"220th_JLTS\data\b1_co.paa"
	};
};