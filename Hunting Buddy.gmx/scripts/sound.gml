///sound(index, [pitch]);

var _Sound = argument[0];

if argument_count > 1
    _Pitch = argument[1];
else
    _Pitch = 1;
    
var _idSound = audio_play_sound(_Sound, 1, 0);
audio_sound_pitch(_idSound, _Pitch);

return _idSound;
