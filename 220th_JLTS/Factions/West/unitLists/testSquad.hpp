class Unit0
{
	side=1;                    // Side ENUM (0=east,1=west,2=ind)
	vehicle="B_Soldier_TL_F"; //  Unit(model) CFG name
	rank="LIEUTENANT";       //   Unit Rank
	position[]={0,0,0};     //    Position relative to leader ({0,0,0} is the leaders position)
};

class Unit1
{
	side=1;
	vehicle="B_Soldier_TL_F";
	rank="SERGEANT";
	position[]={5,-5,0};
};

class Unit2
{
	side=1;
	vehicle="B_soldier_AR_F";
	rank="CORPORAL";
	position[]={-5,-5,0};
};

class Unit3
{
	side=1;
	vehicle="B_soldier_LAT2_F";
	rank="PRIVATE";
	position[]={10,-10,0};
};

class Unit4
{
	side=1;
	vehicle="B_Soldier_F";
	rank="PRIVATE";
	position[]={-10,-10,0};
};

class Unit5
{
	side=1;
	vehicle="B_Soldier_F";
	rank="PRIVATE";
	position[]={0,-10,0};
};