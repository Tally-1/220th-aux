/*
    This is the Trucker Jetpack, it is the answer to all those who complained about low cargo space.
        + Can carry almost twice as much stuff
        - Slow
        - Cannot fly high
        - High fuel consumption
    
*/

class 220th_Jetpack_Trucker:220th_Jetpack_Base
{
    scope            = 2;                     
    displayName      = "[220th] Trucker"; 
    descriptionShort = "Jetpack<br />Fueled by Atomic Fusion Cells. ([AFC] ammo)<br />This is the Trucker Jetpack.<br />The answer to all those who complained about low cargo space.<br />    + Can carry almost twice as much stuff<br />    - Slow<br />    - Cannot fly high<br />    - High fuel consumption";
	maximumload      = 500;

	cooling           = 0.6; 
	engineCycleSpeed  = 0.5; 
	enginePower       = 1.2; 
	liftPower         = 1.6; 
	brakePower        = 1.2;   
	fuelConsumption   = 2.5; 

	maxTemperature   = 900;
	maxAltitude      = 50;
	maxSpeed         = 100; 

    // used the model and texture values from "tgf_backpacks_mereel_z6"
    model   = "\z\tgf\addons\backpacks\z6\z6_jetpack.p3d";
    picture = "\z\tgf\addons\backpacks\z6\data\Z6.paa";

    hiddenSelectionsTextures[] = {
        "\z\tgf\addons\backpacks\z6\data\retex\camo1_mereel_co.paa"
    };
};