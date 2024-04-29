class CfgFunctions
{
	class RJET
	{
		
		class misc 
		{
			file = "\220th-jetpack\Functions\misc";
			class switch                 {};
			class switchOn               {};
			class switchOff              {};
			class engineLoop             {};

			class onKeyDown              {};
			class onKeyUp                {};
			class setKeyHandler          {};
			class removeKeyHandler       {};
			class setAnimationHandler    {};
			class removeAnimationHandler {};

		};

		class math 
		{
			file = "\220th-jetpack\Functions\math";
			class numDiff      {};
			class invertNumber {};
			class invertVector {};

		};

		class init 
		{
			file = "\220th-jetpack\Functions\init";
			class initRJET {postInit = 1;};
		};

		class movement 
		{
			file = "\220th-jetpack\Functions\movement";
			class thrustStop     {};
			class thrustStart    {};
			class setThrust      {};
			class setSpeed       {};
			class setSideThrust  {};
			class setLift        {};


		};

		class effects 
		{
			file = "\220th-jetpack\Functions\effects";
			class setEffects   {};

			class takeOffSound {};
			class engineSound  {};
			class brakeSound   {};
			
			class brakingSmoke {};
			class takeOffSmoke {};
			class liftSmoke    {};
			class idleSmoke    {};
			class smokeBall    {};


		};
	};
};