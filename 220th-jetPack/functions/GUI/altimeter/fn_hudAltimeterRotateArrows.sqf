params[
	["_angle",nil,[0]]
];

{_x call ["rotate",[_angle]]} forEach (_self get "arrows");
_self set ["arrowAngle",_angle];

true;