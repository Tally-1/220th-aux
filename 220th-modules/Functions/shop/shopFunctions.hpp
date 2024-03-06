class SHM
{
    class misc
    {
        file = "\220th-modules\Functions\shop\misc"
        class custom3Dmarkers   {};
        class drawTrajectory    {};
        class addTrajectory     {};
        class trackTrajectory   {};
        class getGearList       {};
        class upLetter1         {};
        class removeSubString   {};
        class rgbToA3           {};
        class shopAction        {};
    };

    class init
    {
        file = "\220th-modules\Functions\shop\init";
        class initShopModule      {};
        class initAllShops        {};
        class initAccounts        {};
        class setInventoryContent {};
        class mainInit            {postInit = 1;};

    };

    class GUI
    {
        file = "\220th-modules\Functions\shop\GUI";
        class closeShop               {};
        class openShop                {};
        class openShopGui             {};
        class normalizeTextSize       {};
        class itemDescription         {};
        class updateDescriptionBox    {};
        class updateBuyButton         {};
        class renderItem3D            {};
    };

    class init_GUI
    {
        file = "\220th-modules\Functions\shop\GUI\init";
        class initShopCamera          {};
        class initShopButtons         {};
        class initShopCategoryButtons {};
        class initShopListBoxes       {};
        class initShopFrames          {};
        class initShopLists           {};
        class initShopItem            {};
        class initShopInventory       {};
        class initDescriptionBox      {};
        class initShopGUIstate        {};
        class initClearButton         {};
        class initBuyButton           {};
        class initCancelButton        {};
        class initAccountView         {};
    };

    class eventHandlers_GUI
    {
        file = "\220th-modules\Functions\shop\GUI\eventHandlers";
        class tradeDoubleClick      {};
        class productDoubleClick    {};
        class onClickProductList    {};
        class onClickCategoryButton {};
        class shopKeyDown           {};
        class onCancelButton        {};
        class onClearButton         {};
        class onBuyButton           {};
    };

    class listBoxes_GUI
    {
        file = "\220th-modules\Functions\shop\GUI\listBoxes";
        class addPurchase        {};
        class removePurchase     {};
        class tradeItemTextRight {};
        class updateProductList  {};
        class updateTradeFrame   {};
        class getTradePriceLb    {};
        class getEntriesByTextLb {};
    };

    class money_GUI
    {
        file = "\220th-modules\Functions\shop\GUI\money";
        class createAccount        {};
        class getAccount           {};
        class chargePurchase       {};
        class chargePurchaseServer {};
    };

    class deskViewer
    {
        file = "\220th-modules\Functions\shop\deskViewer";
        class spawnDeskModel        {};
        class deskModelVectors      {};
        class deskModelVectorsObjS  {};
        class createItemModel3D     {};
        class createInventoryHolder {};
        class get3DModel            {};
    };

    class delivery
    {
        file = "\220th-modules\Functions\shop\delivery";
        class addDeliveryCrate   {};
        class deliverPurchase    {};
    };

};