///EnemyReturnWord(min_length, [max_length]);

if (argument_count > 1) {
    var _minimumLength = argument[0];
    var _maximumLength = argument[1];
}   else    {
    var _minimumLength = argument[0];
    var _maximumLength = argument[0];
}

var _Word = EnemyReturnWordRandom();
while ((string_length(_Word) < _minimumLength) or (string_length(_Word) > _maximumLength))   {
    _Word = EnemyReturnWordRandom();
}

return _Word;
