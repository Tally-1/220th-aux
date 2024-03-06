params["_frames"];
private _aqua = [0.4, 1, 0.9, 1];
{
   _x ctrlSetTextColor _aqua;
   _x ctrlSetFontHeight 0.05;
   [_x] call SHM_fnc_normalizeTextSize;

} forEach _frames;

true;