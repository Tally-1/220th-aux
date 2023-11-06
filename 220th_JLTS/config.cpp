/*
	Welcome to Arma 3 where:
		- Your helmet is a weapon
		- Your vest is a weapon
		- You are a vehicle
		- Your uniform is somebody else's skin
		- Your backpack is a vehicle loaded into you
		- Your hands are attached to your weapon, and not the weapon to your hands
		- Handguns don't exist
		- Your IR pointer points backwards

	Here are some notes to take before jumping into the sample.

	This sample mod is not intended to be a modding tutorial. It requires basic understanding of Arma 3 modding. For that I advise reading the Arma 3 wiki, specifically the links found below.

	The configurations and files are for rexture mods based on the Just Like The Simulations - The Great War mod.
	The "#inlude"ed "defines_..." files are the CfgWeaponsDefinitions.hpp and CfgVehiclesDefinitions.hpp files found in the Republic and Confederacy folders of the Google Drive just renamed.

	What this sample contains:
		-config.cpp								-> main configuration file
		
			-list_weapons.hpp					-> #include file of item list from CfgWeapons for the CfgPatches definition
			-list_units.hpp						-> #include file of item list from CfgVehicles for the CfgPatches definition

			-CfgFactionClasses.hpp				-> #include file of CfgFactionClasses
			-CfgEditorSubcategories.hpp			-> #include file of CfgEditorSubcategories
			-CfgWeapons.hpp						-> #include file of CfgWeapons
				-defines_CfgWeapons_GAR.hpp 	-> base class definitions file copied and renamed from the Republic folder of the JLTS modding assets Google Drive directory
				-defines_CfgWeapons_CIS.hpp 	-> base class definitions file copied and renamed from the Confederacy folder of the JLTS modding assets Google Drive directory
				-items_helmets.hpp				-> definitions of helmet items
				-items_uniforms.hpp				-> definitions of uniform items
				-items_vests.hpp				-> definitions of vest items
				-items_NVGs.hpp					-> definitions of NVG items
			-CfgVehicles.hpp					-> #include file of CfgVehicles
				-defines_CfgVehicles_GAR.hpp 	-> base class definitions file copied and renamed from the Republic folder of the JLTS modding assets Google Drive directory
				-defines_CfgVehicles_CIS.hpp 	-> base class definitions file copied and renamed from the Confederacy folder of the JLTS modding assets Google Drive directory
				-backpacks.hpp 					-> definitions of backpack items
				-units.hpp						-> definitions of units
		
		-data/ui/	-> folder for intentory item icons if you have any
		-data/ui/editorPreviews/	-> folder for editor preview imgages if you have any
		
	This set of sample files was put together by me, MrClock(#8163).
	If you run into issues with either the JLTS mods themselves or with making your own retexture mod that you can't resolve, feel free to join my discord https://discord.gg/KQSBDF3 where you can get help.

	USEFUL LINKS:

	https://community.bistudio.com/wiki/CfgPatches
	https://community.bistudio.com/wiki/Arma_3_Characters_And_Gear_Encoding_Guide
	https://community.bistudio.com/wiki/Arma_3_Assets
	https://community.bistudio.com/wiki/Eden_Editor:_Configuring_Asset_Previews

	PS:
	Use the built-in Config Viewer of Arma 3 that lets you look into the compiled master config.bin! It will save you from asking unneccessary questions.
	And don't forget, Google is your friend ;)

	Inspirational quote:

		"If you seek to aid everyone that suffers in the galaxy, you will only weaken yourself… and weaken them.
		It is the internal struggles, when fought and won on their own, that yield the strongest rewards.
		You stole that struggle from them, cheapened it.
		If you care for others, then dispense with pity and sacrifice and recognize the value in letting them fight their own battles.
		And when they triumph, they will be even stronger for the victory." - Kreia
*/
#define AUTHOR You // macro to define the authors, replace "You" with whatever you like

// class CfgEditorSubcategories {
// 	class TAG_MySubcategory_1 { // category to display the units in inside the faction
// 		displayName = "[200th]_Clones";
// 	};
// 	class TAG_MySubcategory_2 {
// 		displayName = "[220th]_Mercenaries";
// 	};
// 	class TAG_MySubcategory_3 {
// 		displayName = "[220th]_Imperials";
// 	};
// };


class CfgPatches {
	class TAG_220th_JLTS {
		author = RevanHilts;
		name = "220th_JLTS"; // easier to understand name shown in the "Show Required Addons" option in 3DEN for instance
		requiredVersion = 2.0; // (optional) required Arma 3 version
		requiredAddons[] = { // list of other CfgPatches classes that this addons depends on
			"JLTS_characters_CloneArmor",
			"JLTS_characters_CloneArmor2",
			"JLTS_characters_CloneLegions",
			"JLTS_characters_DroidArmor",
			"JLTS_characters_DroidUnits",

		};
		units[] = { // class names defined in CfgVehicles (everything, not only actual vehicles)
			#include "list_units.hpp" // in case Addon Builder is used, replace this line with the content of the file directly (Addon Builder cannot handle #includes inside arrays like Mikero's pboProject does)
		};
		weapons[] = { // class names defined in CfgWeapons (everything, not only actual weapons)
			#include "list_weapons.hpp" // in case Addon Builder is used, replace this line with the content of the file directly (Addon Builder cannot handle #includes inside arrays like Mikero's pboProject does)
		};
	};
};

// class CfgEditorSubcategories {
// 	class 220th_Clones_category {
// 		displayName = "[200th]_Clones";
// 	};
// 	class 220th_Mercenaries_category {
// 		displayName = "[220th]_Mercenaries";
// 	};
// 	class 220th_Imperials_category {
// 		displayName = "[220th]_Imperials";
// 	};
// };

#include "Factions\CfgFactionClasses.hpp"
#include "CfgEditorSubcategories.hpp"
#include "CfgWeapons.hpp"
#include "CfgVehicles.hpp"
#include "Factions\CfgGroups.hpp"