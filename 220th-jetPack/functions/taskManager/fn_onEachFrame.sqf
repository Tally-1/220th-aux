call RJET_fnc_execPrFrameTasks;

if(time >= RJET_clientPrSecondTimer)
then RJET_fnc_execPrSecondTasks;

if(time >= RJET_clientPr_5_SecondTimer)
then RJET_fnc_execPr_5_SecondTasks;