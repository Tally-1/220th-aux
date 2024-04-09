private _video = (getText   (configFile >> "RscDisplayMain" >> "ControlsBackground" >> "Picture" >> "vid"));

cutText ["", "BLACK FADED", 0];
enableEnvironment false;
showCinemaBorder false;
player setPosATL [3782.93,4609.52,0];


while {true} do
{
	private _play = [_video] spawn BIS_fnc_playVideo;
	waitUntil {scriptDone _play};

};