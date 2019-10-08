///draw_text_ext_parameters(halign, valign, x, y, string, sep, width, alpha, colour, shadow, scale, [angle]);

var _hAlign = argument[0];
var _vAlign = argument[1];
var _xPos = argument[2];
var _yPos = argument[3];
var _String = argument[4];
var _Sep = argument[5];
var _Width = argument[5];
var _Alpha = argument[6];
var _Colour = argument[7];
var _shadowValue = argument[8];
var _Scale = argument[9];

if (argument_count > 10) {
    var _Angle = argument[10];
}   else    {
    var _Angle = 0;
}

var _oldAlpha = draw_get_alpha();

draw_set_halign(_hAlign);
draw_set_valign(_vAlign);
draw_set_alpha(_Alpha);

if _shadowValue != 0    {
    draw_set_colour(merge_colour(_Colour, c_black, 0.5));
    draw_text_ext_transformed(_xPos + (_shadowValue / 2), _yPos + (_shadowValue / 2), _String, _Sep, _Width, _Scale, _Scale, _Angle);
}

draw_set_colour(_Colour);
draw_text_ext_transformed(_xPos - (_shadowValue / 2), _yPos - (_shadowValue / 2), _String, _Sep, _Width, _Scale, _Scale, _Angle);

draw_set_alpha(_oldAlpha);
