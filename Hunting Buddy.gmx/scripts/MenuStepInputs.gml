///MenuStepInputs();

var _inputUp = (keyboard_check_pressed(ord("W")) + keyboard_check_pressed(vk_up));
var _inputLeft = (keyboard_check_pressed(ord("A")) + keyboard_check_pressed(vk_left));
var _inputDown = (keyboard_check_pressed(ord("S")) + keyboard_check_pressed(vk_down));
var _inputRight = (keyboard_check_pressed(ord("D")) + keyboard_check_pressed(vk_right));
var _inputDeltaV = sign(_inputDown - _inputUp);
var _inputDeltaH = sign(_inputRight - _inputLeft);
inputEnter = (keyboard_check_pressed(vk_enter));

menuSelected += _inputDeltaV;
if menuSelected > (array_length_2d(menuArray, menuIndex) - 1)
    menuSelected = 0;
if menuSelected < 0
    menuSelected = (array_length_2d(menuArray, menuIndex) - 1);
    
if (_inputDeltaH)   {
    MenuExecuteActionsHorizontal(_inputDeltaH);
}
