HOW TO CREATE NEW GROUPS:
1) Create a new entry in the "Factions\West\groups.hpp" file, use the previous groups as an example.
2) Copy a file from the "Factions\West\unitLists" folder and copy it there.
3) Rename the new file in accordance to naming conventions.
4) include the new unitlist into your new group entry:
    #include "unitLists\StormSquad.hpp"

The final result should look like this:
class B_TestSquad
{
	name="Test Squad";
	side=1;                                          
	faction="220th_Unit"; 
	icon="\A3\ui_f\data\map\markers\nato\b_inf.paa"; 
    #include "unitLists\testSquad.hpp"
};


INGAME IMPLEMENTATION:
Currently the Zeus implementation of custom groups is broken.
This is due to some unknown config-error related to editorSubcategories.
Most likely found in the asset mod.
From my point of view fixing this would require restructuring the assets-mod.