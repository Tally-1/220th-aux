params[
	["_altitude",nil,[0]]
];
private _txtImg = (_self get "indicator")#1;
_txtImg call ["setText", [(str round _altitude),0.45]];

true;