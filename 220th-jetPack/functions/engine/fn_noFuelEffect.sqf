private _man = objectParent (_self get "jetPack");
[_man] spawn RJET_fnc_switchOff;
if(!isTouchingGround _man)
then{_man say3D "vtolAlarm";};

hint "No more fuel";