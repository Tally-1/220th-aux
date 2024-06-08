/*
This jetpack is the vanilla jetPack inheriting all values from the base Jetpack.
The only changes made is:
    -> Setting the scope to 2 (Makes it available ingame)
    -> A new displayName (The name seen in the inventory and arsenal)

Look at the config for the "speeder" jetpack for an example of how the jetpacks can be tweaked.
*/

// All jetpack-classNames need to start with "220th_Jetpack", if not the engine will not recognize it as a jetpack.
// All new jetpacks must inherit from the base jetpack.
// EXAMPLE:
//       New name            parent class
// class 220th_Jetpack_NewJP:220th_Jetpack_Base {};
class 220th_Jetpack_1:220th_Jetpack_Base
{
    scope         = 2; // Very important! if not set to 2 the jetpack is not available ingame.
    displayName   = "[220th] Jetpack 0.1";
};