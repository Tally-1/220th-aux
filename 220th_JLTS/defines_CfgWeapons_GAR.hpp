/*
 *	Just Like The Simulations - The Great War v2.3.0
 *
 *	Author: MrClock
 *	
 *	Base class definitions of clone gear items in JLTS - TGW for modders who wish make armor textures dependent on JLTS - TGW
 *	The list is incomplete, only contains classes of items that are actually useful for re-texturing
 *	
 *	Way to utilize this file:
 *		Put this file in the folder where your config.cpp is located and do this
 *		
 *		class CfgWeapons {
 *			#include "CfgWeaponsDefinitions.hpp"
 *			....
 *		};
 *	
 */

//Uniforms
class JLTS_CloneArmor: U_I_CombatUniform {
	class ItemInfo;
};
class JLTS_CloneArmorMC: U_I_CombatUniform {
	class ItemInfo;
};
class JLTS_CloneArmorRecon: U_I_CombatUniform {
	class ItemInfo;
};
class JLTS_CloneArmorGrenadier: U_I_CombatUniform {
	class ItemInfo;
};
class JLTS_CloneArmorSupport: U_I_CombatUniform {
	class ItemInfo;
};
class 3AS_U_Rep_Katarn_Armor: U_I_CombatUniform {
	class ItemInfo;
};
class LST_Republic_Commando_Uniform_Base: U_I_CombatUniform {
	class ItemInfo;
};
class JMSLLTE_StormTrooper_clean_F_CombatUniform: U_I_CombatUniform {
	class ItemInfo;	
};
//class JMSLLTE_StormTrooper_clean_F_CombatUniform: U_I_CombatUniform {
//	class ItemInfo;	
//};

//Helmets
class JLTS_CloneHelmetP2;
class JLTS_CloneHelmetP2_illum;
class JLTS_CloneHelmetP2MC;
class JLTS_CloneHelmetP2MC_illum;
class JLTS_CloneHelmetSC;
class JLTS_CloneHelmetSCC;
class JLTS_CloneHelmetAB;
class JLTS_CloneHelmetAB_illum;
class JLTS_CloneHelmetARC;
class JLTS_CloneHelmetARC_illum;
class JLTS_CloneHelmetBARC;
class JLTS_CloneHelmetBARC_illum;
class SEA_Helmet_ARF_base;
class 3AS_ARF_Helmet;
class LST_Republic_Commando_Helmet_Base;
class LST_Clone_Helmet_Guard;
class LSEA_Helmet_Pilot_P1_Base;
class JMSLLTE_Stormtrooper_helmet;
//class LST_Helmet_Mando_Skirata


//Weapons


//Vests
class JLTS_CloneVestHolster;
class JLTS_CloneVestSuspender;
class JLTS_CloneVestKama;
class JLTS_CloneVestLieutenant;
class JLTS_CloneVestOfficer;
class JLTS_CloneVestOfficer2;
class JLTS_CloneVestCommander;
class JLTS_CloneVestRecon;
class JLTS_CloneVestReconNCO;
class JLTS_CloneVestReconOfficer;
class JLTS_CloneVestAirborne;
class JLTS_CloneVestAirborneNCO;
class JLTS_CloneVestARC;
class JLTS_CloneVestARCCadet;
class JLTS_CloneVestPurge;

//NVGs
class JLTS_CloneNVGRange;
class JLTS_CloneNVG;
class JLTS_CloneNVG_spec;
class JLTS_CloneNVGCC;
class JLTS_CloneNVGMC;
class Shield_Police;