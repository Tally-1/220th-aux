/*
This is the baseclass for all jetpacks, this config is set to scope 1 meaning it will not be available ingame.
The purpose of this config is to server as a base for new jetpacks, and as a editing referance.
when making a new jetpack make sure to: 
    1) Include the new config-file in the "config\cfgVehicles.cpp" file
    2) set the scope to 2

For more information look at the jp_1 & speeder setups.
*/

// All jetpack-classNames need to start with "220th_Jetpack", if not the engine will not recognize it as a jetpack.
class 220th_Jetpack_Base:tgf_backpacks_JT12_LR
{
    scope            = 1; // Scope = 1; --> Set to 2 to make the jetpack available ingame, 1 is only to set up base settings here. 
    displayName      = "[220th] JP base"; // ingame name
    descriptionShort = "Jetpack<br />Fueled by Atomic Fusion Cells.<br />Make sure you carry minimum one ''[AFCP] 3000 E-U'' with remaining energy.";
    picture          = "\z\tgf\addons\backpacks\jt12\data\JT12.paa"; // Inventory image
    maximumload      = 300; // a value representing how much inventory can be carried inside the jetpack

    // These settings affect the ingame performance of the jetPack
    // the number is a coef representing how much of the basevalue is applied during flight.
    // 1   = 100%
    // 2.5 = 250%
    // 0.2 =  20%
    cooling           = 1;   // The higher the faster it cools down
    overHeatTolerance = 0.2; // How much heat can exceed max before being in danger of exploding, in this case the heat can go 20% over the max limit before the Jetpack may explode.
    engineCycleSpeed  = 1;   // The higher the faster the enging cycles (affects speed, fuel consumption, temperature sound and smoke)
    enginePower       = 1;   // Output pr engine cycle (Increases speed and fuel consumption)
    takeOffPower      = 1;   // The higher the more power is used when taking off
    liftPower         = 1;   // The higher the faster the Jetpack can climb
    maxLiftPower      = 1;   // Coef by which the maximum upward speed is calculated
    brakePower        = 1;   // The higher the faster the jetpack stops when braking
    fuelConsumption   = 1;   // The higher the more fuel it consumes pr cycle.

    // exact values used ingame
    maxTemperature   = 1000; // Degrees celsius 
    maxAltitude      = 120;  // meters over the ground
    maxSpeed         = 220;  // Km pr hour. Works as a speedlimit, just because it is set to 220 does not mean the jetpack will reach that speed.
                             // The REAL maximum speed depends on the engineCycle & enginePower.
                             // For referance the max speed of a little bird is roughly 250 kmh.
                             // With no speedlimit the default settings here would give the jetpack roughly 320 Kmh max speed


    hiddenSelections[]=
	{
	    "camo1"
	};	
    hiddenSelectionsTextures[]=
	{
		"\220TH-JETPACK\jetpacks\jp_1\textures\camo1_co[220th].paa"
	};

    class eventHandlers{
        init = "_this call RJET_fnc_JetPackInit;";
    };
};