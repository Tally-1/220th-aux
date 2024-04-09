class CfgMainMenuSpotlight // RscDisplayMain >> Spotlight works but is considered obsolete since SPOTREP #00064
{
	class JoinServer
	{
		text        = "Splendid Server";                           // Text displayed on the square button, converted to upper-case
		textIsQuote = 1;                                           // 1 to add quotation marks around the text
		picture     = "\220th-modules\mainMenu\Star_Wars_512.paa"; // Square picture, ideally 512x512
		video       = "\a3\Ui_f\Video\spotlight_1_Apex.ogv";       // Video played on mouse hover
		action      = "connectToServer ['127.0.0.1', 2302, '']";   // Code called upon clicking, passed arguments are [<button:Control>]
		actionText  = "Join 220th Online.";                        // Text displayed in top left corner of on-hover white frame
		condition   = "true";                                      // Condition for showing the spotlight
	};
};