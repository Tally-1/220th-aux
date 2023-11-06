class 220th_Unit // Faction CFG name 
{
	// Displayname for groups in this faction.
	name = "[220th] Squads";

	// group category class 
	class infantry_220
	{
		// Category name
		name="[220] Infantry";

		//This is a standard group entry, check the "unitLists\StormSquad.hpp" file for details on how to add units to the group.
		class B_StormSquad
		{
			// "Group name"
			name="Storm Squad";
			side=1;                                          // Side ENUM  (0=west,1=east,2=ind)
			faction="220th_Unit";                            // Faction CFG name (same as above)
			icon="\A3\ui_f\data\map\markers\nato\b_inf.paa"; // Icon used to symbolize the type of group

			#include "unitLists\StormSquad.hpp"
		};		

		//Feel fre to comment this out if you do not want the test-group in your list of groups.
		class B_TestSquad
		{
			// "Group name"
			name="Test Squad";
			side=1;                                          // Side ENUM  (0=west,1=east,2=ind)
			faction="220th_Unit";                            // Faction CFG name (same as above)
			icon="\A3\ui_f\data\map\markers\nato\b_inf.paa"; // Icon used to symbolize the type of group

			#include "unitLists\testSquad.hpp"
		};
	};
};