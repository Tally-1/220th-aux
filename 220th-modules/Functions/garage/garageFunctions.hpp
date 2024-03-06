class GRG
{
    class misc
    {
        file = "\220th-modules\Functions\garage\misc"
        class useGarage     {};
        class canUseGarage  {};
        
    };

    class init
    {
		file = "\220th-modules\Functions\garage\init"
        class initPaintShop   {};
        class initRvnGarages  {postInit = 1;};
        class setTextureList  {postInit = 1;};	
	};

    class GUI
    {
        file = "\220th-modules\Functions\garage\GUI"
        class closeShop         {};
        class dialogElements    {};
        class textureLbChange   {};
        class selectionLbChange {};
        class onApplyBtn        {};
        class onResetBtn        {};
        class canFlashSelection {};
        class setVehicleData    {};
        class openGarageMenu    {};
        
    };

    class GUI_init
    {
        file = "\220th-modules\Functions\garage\GUI\init"
        class initGUIstate      {};
        class initCamera        {};
        class initTextureList   {};
        class initSelectionList {};
        class initButtons       {};
    };
};