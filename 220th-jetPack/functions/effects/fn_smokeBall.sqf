params[
	["_pos",      nil,        [[]]],
	["_velocity", [0,0,0],    [[]]],
	["_size",     0.5,         [0]],
	["_color", [0.3,0.3,0.3], [[]]],
	["_fire",  false,       [true]],
	["_lifeTime", 6,           [0]]
];
private _particleShape = "A3\Data_F\ParticleEffects\Universal\universal.p3d";
private _tnt           = 1;
private _r             = _color#0;
private _g             = _color#1;
private _b             = _color#2;
private _fireInt       = 0;

if(_fire)then{_fireInt = 1;};

drop[
	[
		_particleShape, //p3dPath
		16,            //nth 
		7,             //index 
		120            // frame-count 
	],
	"",                //obsolete
	"Billboard",       //type (Billboard or SpaceObject)
	1,                 //timerPeriod (seconds)
	_lifeTime,         //lifeTime (seconds) 
	_pos,              //position 
	_velocity,         //velocity3d
	1,	               //rotationVelocity
	0.63,              //particle weight
	0.49,               //particle volume m3
	0,                 //rubbing
	[_size],             //size (throughout lifetime)
	[
		[_r, _g, _b, 1],
		[_r, _g, _b, 0.9],
		[_r, _g, _b, 0.7],
		[_r, _g, _b, 0.5],
		[_r, _g, _b, 0.3],
		[_r, _g, _b, 0.1]
	],
	[_fireInt],
	0.1,
	0.1,
	"",
	"",
	"",
	0,
	true
];


true;