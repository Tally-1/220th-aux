private _eh = addMissionEventHandler ["ProjectileCreated", RJET_fnc_onHudProjectile];
_self set ["lastShot",   time];
_self set ["projectileEh", _eh];

_eh;