///turn(current_angle, target_angle, speed);

var _angleCurrent = argument[0];
var _angleTarget = argument[1];
var _angleSpeed = argument[2];

var _angleDifference = angle_difference(_angleCurrent, _angleTarget);     
return _angleCurrent - min(abs(_angleDifference), _angleSpeed) * sign(_angleDifference);
