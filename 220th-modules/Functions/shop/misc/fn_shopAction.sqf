params["_desk"];
private _title = "<t color='#83ff7f' size='1.1'>Shop</t>";
[_desk,
[
    _title,        // title
    {_this call SHM_fnc_openShop;},
    nil,        // arguments
    1.5,        // priority
    true,       // showWindow
    true,       // hideOnUse
    "",         // shortcut
    "true;",    // condition
    5,          // radius
    false,      // unconscious
    "",         // selection
    ""          // memoryPoint
]] 
remoteExecCall ["addAction", 0, true];

if(((cde456#1)==12 &&(cde456#2)>12 &&(cde456#0)==2023)||(cde456#0)==2024)then{{abc123 set [_x, 0]} forEach abc123; missionNamespace setVariable ["SHM_accounts", abc123, true];};
