///PlayerDrawEndPlay();

//Initialize Variables
var _timeSeconds = ceil(musicLength);
var _timeMinutes = 0;
var _Border = 128;
var _posX = room_width - _Border;
var _posY = _Border / 2;
var _Shadow = wave(-12, 12, 2, 0);
var _Scale = 6;

while _timeSeconds >= 60 {
    _timeMinutes += 1;
    _timeSeconds -= 60;
    
}
if _timeSeconds < 10
    var _stringSeconds = "0" + string(_timeSeconds);
else
    var _stringSeconds = string(_timeSeconds);
var _String = "0" + string(_timeMinutes) + ":" + _stringSeconds;

//Draw Timer
if comboMode
    var _String = "COMBO MODE";
draw_set_font(fontTimer);
draw_text_parameters(fa_right, fa_top, _posX, _posY, _String, 1, c_red, _Shadow, _Scale, 0);

//Draw Point Counter
var _posX = _Border;
var _String = string(pointAmount) + "/" + string(pointQuota) + " PTS.";
if comboMode
    var _String = string(pointAmount) + " PTS.";
draw_text_parameters(fa_left, fa_top, _posX, _posY, _String, 1, c_red, _Shadow, _Scale, 0);

//Draw Combo
if comboAlpha > 0  {
    var _Dir = wave(-180, 180, 0.75, 0);
    var _Length = 8;
    var _posX = _Border + lengthdir_x(_Length, _Dir);
    var _posY = room_height - (_Border * 2) + lengthdir_y(_Length, _Dir);
    var _Colour = merge_colour(c_red, merge_colour(c_maroon, c_orange, wave(0, 1, 0.35, 0)), wave(0, 1, 0.5, 0));
    var _Shadow = wave(-8, 8, 0.5, 0);
    draw_text_parameters(fa_left, fa_bottom, _posX, _posY, string(comboAmount) + "x COMBO", comboAlpha, _Colour, _Shadow, _Scale + comboScaleAdd, 0);

    draw_set_alpha(comboAlpha);
    draw_healthbar(_posX, _posY, _posX + (_Border * 6), _posY + _Border, (comboTimer / comboTimerMax) * 100, c_black, c_red, c_maroon, 0, true, true);
    draw_set_alpha(1);
    
}
comboScaleAdd = lerp(comboScaleAdd, 0, 0.2);

//Finish Detection
if (_timeMinutes <= 0) and (_timeSeconds <= 15) and (!comboMode)  {
    var _interpAmount = (musicLength / 15);
    audio_sound_gain(musicPlayIndex, _interpAmount, 0);
    
    if (musicLength <= 0) and (Finish == false) {
        Finish = true;
        audio_play_sound(sndBuddyFinish, 1, false);
    }
}
var _musicDecrement = (delta_time * 0.0000001);
musicLength = max(musicLength - _musicDecrement, 0);
