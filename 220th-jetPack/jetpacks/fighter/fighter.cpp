/*
    This is the Fighter Jetpack. The settings is mainly focused on high speed and manouverability
        + Very manouverable
        + Slightly better speed
        + Slightly improved temperature tolerance for sustained firefights
        - High fuel consumption
        - Slightly less than normal cargo space
        - May cause some performance issues on dedicated servers with many players
    
*/

class 220th_Jetpack_Fighter:220th_Jetpack_Base
{
    scope            = 2;                     
    displayName      = "[220th] Fighter"; 
    descriptionShort = "Jetpack<br />Fueled by Atomic Fusion Cells. ([AFC] ammo)<br />This is the Trucker Jetpack.<br />The answer to all those who complained about low cargo space.<br />    + Can carry almost twice as much stuff<br />    - Slow<br />    - Cannot fly high<br />    - High fuel consumption";
	maximumload      = 250;

	cooling           = 3; 
	engineCycleSpeed  = 3;
    enginePower       = 1.3;
    fuelConsumption   = 0.8; // Due to the cycle-speed & engine power the fuel consumption is already very high.
    takeOffPower      = 1.2;

	maxTemperature   = 1100;
	maxAltitude      = 80;
	maxSpeed         = 280;

    hiddenSelectionsTextures[]=
	{
		"\220TH-JETPACK\jetpacks\fighter\JP_Fighter.paa"
	};
};