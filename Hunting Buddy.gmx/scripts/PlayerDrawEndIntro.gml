///PlayerDrawEndIntro();

var _Border = 32;
var _Scale = 12;
var _Angle = wave(-6, 6, 4, 0) + introAddAngle;
var _baseX = room_width - ((sprite_get_width(sprBuddyCountdownHunt) - sprite_get_xoffset(sprBuddyCountdownHunt)) * _Scale) + wave(-4, 4, 1, 0);
var _baseY = room_height - ((sprite_get_height(sprBuddyCountdownHunt) - sprite_get_yoffset(sprBuddyCountdownHunt)) * _Scale) + wave(-8, 8, 1.2, 0) + _Border * 4;
var _Sprite = stateSprite[introState + 1];
var _Index = lerp(0, sprite_get_number(_Sprite) - 1, introTimer / stateTime);
draw_sprite_ext(_Sprite, _Index, _baseX, _baseY, _Scale, _Scale, _Angle, c_white, 1);

gunYAdd = lerp(gunYAdd, 0, 0.08);
