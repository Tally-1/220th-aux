params[
   ["_string",    nil, [""]],
   ["_subString", nil, [""]]
];
private _index = _string find _subString;
if(_index < 0)exitwith{_string};

private _stringSize  = count _string;
private _subsize     = count _subString;
private _endStart    = _index + _subsize;
private _start       = _string select [0, _index];
private _end         = _string select [_endStart, _stringSize];

private _newString = [_start, _end] joinstring "";

_newString;