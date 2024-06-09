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

	cooling           = 3;   // By setting the cyclespeed to 3 the engine heats 3x faster, meaning cooling also needs to be increased... Or else BOOM!
	engineCycleSpeed  = 3;   // The faster the engine cycle speed the faster you can change speeds and direction. It also increases acceleration. The downside is increased fuel consumption and heat increase.
    enginePower       = 1.3; // The overAll speed added pr engine cycle, it also adds to fuel consumption and temperature.
    fuelConsumption   = 0.8; // Due to the cycle-speed & engine power the fuel consumption is already very high.
    takeOffPower      = 1.2; // Jumps 20% higher than the default setting

	maxTemperature   = 1100;
	maxAltitude      = 80;   
	maxSpeed         = 250;  // I've limited the speed here to reduce travel range, as this JP is primarily designed to engage in firefights

    hiddenSelectionsTextures[]=
	{
		"\220TH-JETPACK\jetpacks\fighter\JP_Fighter.paa"
	};
};