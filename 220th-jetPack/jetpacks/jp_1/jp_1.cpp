class 220th_Jetpack_1:tgf_backpacks_JT12_LR
{
        
    displayName      = "[220th] Jetpack 0.1";
    descriptionShort = "Jetpack<br/>Fueled by Atomic Fusion Cells.<br/>Make sure you carry minimum one ''[AFCP] 6000 E-U'' with remaining energy.";
    picture          = "\z\tgf\addons\backpacks\jt12\data\JT12.paa";
    maximumload      = 300;
    init             = "systemChat str ['JP_1 init',_this];";

    hiddenSelections[]=
	{
	    "camo1"
	};	
    hiddenSelectionsTextures[]=
	{
		"\220TH-JETPACK\jetpacks\jp_1\textures\camo1_co[220th].paa"
	};
};