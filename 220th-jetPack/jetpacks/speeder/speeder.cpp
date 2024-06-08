/*
	This is the "fast" jetpack, I've tried to balance it by:
		- Low load capacity
		- High fuel consumption
		- Unstable engine (Explodes with almost no warning)
*/

// All jetpack-classNames need to start with "220th_Jetpack", if not the engine will not recognize it as a jetpack.
// Look at jp_1.cpp for more details.
class 220th_Jetpack_Speeder:220th_Jetpack_Base
{
    scope            = 2;                     // Makes it available ingame.
    displayName      = "[220th] Speeder 0.1"; // Ingame name
	maximumload      = 150;                   // enough to carry 1 medium-small size cellpack (6000 cells)

	cooling           = 1.4; // Will cool down the engine 40% faster (needed because of the other settings below)
	overHeatTolerance = 0.05;// at 5% over max-temp the engine is in danger of exploding
	engineCycleSpeed  = 1.5; // The pistons in this engine cycle 50% faster (meaning all effects are enhanced)
	enginePower       = 1.3; // will generate 30% more speed pr engine cycle, +30% engine load (affects fuel and temp)
	takeOffPower      = 1.5; // Will jump roughly 50% higher when taking off
	liftPower         = 1.5; // upwards acceleration is +50% (keep in mind that the engine also works at +50%)
	maxLiftPower      = 2;   // upwards speed-limit is twice as much as normal
	brakePower        = 2;   // Will slow down twice as fast when braking
	fuelConsumption   = 1.3; // Warning! engine power and cycle speeds also increase fuel consumption in this case.

	// These ones should be self explanatory
	maxTemperature   = 1200;
	maxAltitude      = 300;
	maxSpeed         = 500;

	// New skin.
    hiddenSelectionsTextures[]=
	{
		"\220TH-JETPACK\jetpacks\speeder\Speeder.paa"
	};
};