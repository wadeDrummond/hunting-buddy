///PlayerDrawEndFinish();

var _Border = 32;
var _Scale = 12;
var _Angle = wave(-6, 6, 4, 0) + finishAddAngle;
var _baseX = room_width - ((sprite_get_width(sprBuddyFinish) - sprite_get_xoffset(sprBuddyFinish)) * _Scale) + wave(-4, 4, 1, 0);
var _baseY = room_height - ((sprite_get_height(sprBuddyFinish) - sprite_get_yoffset(sprBuddyFinish)) * _Scale) + wave(-8, 8, 1.2, 0) + _Border * 4;
var _Sprite = sprBuddyFinish;
var _Index = 0;
draw_sprite_ext(_Sprite, _Index, _baseX, _baseY, _Scale, _Scale, _Angle, c_white, 1);

//Draw Point Counter
var _Border = 128;
var _posX = _Border;
var _posY = _Border / 2;
var _Shadow = wave(-12, 12, 2, 0);
var _Scale = wave(5, 7, 2, 0);
var _String = string(pointAmount) + "/" + string(pointQuota) + " PTS.";
if comboMode
    var _String = string(pointAmount) + " PTS.";
draw_text_parameters(fa_left, fa_top, _posX, _posY, _String, 1, c_red, _Shadow, _Scale, 0);
