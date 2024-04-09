private _video = (getText   (configFile >> "RscDisplayMain" >> "ControlsBackground" >> "Picture" >> "vid"));

cutText ["", "BLACK FADED", 69];
enableEnvironment false;
showCinemaBorder false;
player setPosATL [3782.93,4609.52,0];


while {true} do
{
	private _play = [_video] spawn BIS_fnc_playVideo;
	cutText ["", "BLACK FADED", 60];
	waitUntil {scriptDone _play};

};