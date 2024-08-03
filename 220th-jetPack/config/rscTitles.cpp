class RscTitles
{
    class Default 
    {
        idd = -1;
        fadein = 0;
        fadeout = 0;
        duration = 0;
    };
    
    class PCA_HUD 
	{
		idd              = -1;
		name             = "PCA_HUD";
		movingEnable     = 0;
		enableSimulation = 1;
		enableDisplay    = 1;
		fadein           = 0;
		fadeout          = 0;
		duration         = 10000;
		onLoad           = "with uiNameSpace do { PCA_HUD = _this select 0 }";
		onUnLoad         = "with uiNameSpace do { PCA_HUD = displayNull }";

		class Controls{};
	};
	
};