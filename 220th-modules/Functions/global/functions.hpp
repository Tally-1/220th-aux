class RVN
{
    class misc
    {
        file = "\220th-modules\Functions\global\misc";
        class clientLoop     {};
        class getModuleArea  {};
        class getNearest     {};
    };

	class taskManagement
    {
        file = "\220th-modules\Functions\global\taskManagement";
        class taskManager        {};
		class tenSecondTasks     {};
		class minuteTasks        {};
		class fiveMinTasks       {};
		class globalTasks        {};
    };

    class init
    {
		file = "\220th-modules\Functions\global\init";
		class init220th  {postInit = 1;};
        class initClient {};
	};
	
};