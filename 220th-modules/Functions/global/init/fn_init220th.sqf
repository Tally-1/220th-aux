[] spawn RVN_fnc_initClient;

if(!isServer) exitWith{};
if(is3DEN)    exitWith{};

[] spawn RVN_fnc_taskManager;