private _tempCoef = (_self call ["heatCoef"])-1;
private _man      = objectParent (_self get "jetPack");
if(random 1 > _tempCoef)exitWith{};
[_man] spawn RJET_fnc_jetPackExplode;

hint "The engine overheated\nJetpack exploded";

true;