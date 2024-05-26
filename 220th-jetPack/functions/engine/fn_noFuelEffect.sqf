private _man = objectParent (_self get "jetPack");
[] call RJET_fnc_switchOff;
if(!isTouchingGround _man)
then{_man say3D "vtolAlarm";};

hint "No more fuel";