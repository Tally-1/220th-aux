private _man = player;
private _eh  =
_man addEventHandler ["AnimStateChanged", {
	params ["_man", "_anim"];
	private _isFreeFalling = animationState _man isEqualTo "halofreefall_non";
	private _velocity      = velocityModelSpace _man;
	private _altitude      = (getPos _man)#2;

	if(_isFreeFalling)then{_man switchMove "afalpercmstpsraswrfldnon"};
	if(_isFreeFalling 
	&&{_altitude > 99})
	then{_man setVelocityModelSpace [_velocity#0, _velocity#1, -20]};
}];


_man setVariable ["RJET_animHandler", _eh];

true;