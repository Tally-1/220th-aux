class garage220th
{     
    // missionConfigFile >> "garage220th"
    idd    = -1; 
    name   = "garage220th";
    onLoad = "with uiNameSpace do { garage220th = _this select 0 }";
    class controls
    {
        class Vehicle_Name_Title: RscStructuredText
        {
            idc = 1100;

            x = 0.29375 * safezoneW + safezoneX;
            y = 0.17 * safezoneH + safezoneY;
            w = 0.4125 * safezoneW;
            h = 0.055 * safezoneH;
        };
        class Selection_List: RscListBox
        {
            idc = 1500;

            x = 0.190625 * safezoneW + safezoneX;
            y = 0.434 * safezoneH + safezoneY;
            w = 0.0928125 * safezoneW;
            h = 0.11 * safezoneH;
        };
        class Selection_List_Title: RscStructuredText
        {
            idc = 1102;

            x = 0.716562 * safezoneW + safezoneX;
            y = 0.192 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class Texture_list: RscListBox
        {
            idc = 1501;

            x = 0.0204687 * safezoneW + safezoneX;
            y = 0.203 * safezoneH + safezoneY;
            w = 0.149531 * safezoneW;
            h = 0.66 * safezoneH;
        };
        class Texture_list_Title: RscStructuredText
        {
            idc = 1101;

            x = 0.0307812 * safezoneW + safezoneX;
            y = 0.159 * safezoneH + safezoneY;
            w = 0.134062 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class Texture_Pic: RscPicture
        {
            idc = 1200;

            text = "#(argb,8,8,3)color(1,1,1,1)";
            x = 0.190625 * safezoneW + safezoneX;
            y = 0.17 * safezoneH + safezoneY;
            w = 0.0928125 * safezoneW;
            h = 0.154 * safezoneH;
        };
        class Apply_button: RscButton
        {
            idc = 1600;

            x = 0.190625 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.0928125 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class Reset_button: RscButton
        {
            idc = 1601;

            x = 0.190625 * safezoneW + safezoneX;
            y = 0.379 * safezoneH + safezoneY;
            w = 0.0928125 * safezoneW;
            h = 0.033 * safezoneH;
        };
    };
};