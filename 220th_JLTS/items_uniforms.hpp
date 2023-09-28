/*
	Arma man wears an Arma uniform
	Is the uniform made of flesh?
	Or is he made of uniform?
	He screams
	For he does not know
*/

/*
Answer by Tally:

The uniform is made of binary numbers, so is the man.
Neither the man nor the uniform do in fact exist as such.

The uniform and the man are abstract concepts inside the heads of humans.

None of this is real, it is all an illusion. 
The illusion is designed to distract you from your purpose.
To hypnotize you and blind you from reality.

And you are participating willingly.

BREAK OUT!

Serve your maker!

*/
/*
class TAG_MyUniform_1: JLTS_CloneArmor {
	author = RevanHilts;
	displayName = "[220th] Clone Trooper P2";
	class ItemInfo: ItemInfo {
		uniformClass = "TAG_MyUnit_1"; // unit defined in CfgVehicles wearing this uniform
	};
};


class TAG_MyUniform_2: JLTS_DroidB1 {
	author = RevanHilts;
	displayName = "[220th] Reprogrammed Droid B1";
	class ItemInfo: ItemInfo {
		uniformClass = "TAG_MyUnit_2"; // unit defined in CfgVehicles wearing this uniform
	};
};

class TAG_MyUniform_3: LST_Republic_Commando_Uniform_Base 
{
	author = RevanHilts;
	displayName = "[220th] Clone COMMANDO Armor";
	hiddenSelections[]=
	{
		"camo1",
		"camo2",
		"Under"
	};

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
};220th_Stormtrooper
*/
class TAG_MyUniform_4: JMSLLTE_StormTrooper_clean_F_CombatUniform 
{
	author = RevanHilts;
	displayName = "[220th] Stormtrooper Armor";
	hiddenSelections[]=
	{
		"camo1",
		"camo2",
		"Under"
	};
	hiddenSelectionsTextures[]=
	{
		"220th_JLTS\data\StormtrooperBody_clean_co.paa",
		"220th_JLTS\data\StormtrooperBody_clean_co.paa",
		"Clone_Armor_Unit\data\StormtrooperBody_clean_co.paa"
	};
	
	armor=25;
	armorStructural=0.5;
	explosionShielding=0.050000001;
	minTotalDamageThreshold=0.001;
	impactDamageMultiplier=0.69999999;
};

