/// @description Insert description here
// You can write your code in this editor
var move = 0;
//move menu up with multiple inputs
move -= max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),0);
//move menu down
move += max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),0);


//key presses only in menuPosition.
if(move != 0){
menuPosition += move;
if(menuPosition < 0) menuPosition = array_length_1d(menu) - 1;
if(menuPosition > array_length_1d(menu) - 1) menuPosition = 0;
}

var push;
push = max(keyboard_check_released(vk_enter),keyboard_check_released(vk_shift),keyboard_check_released(vk_space),0);

if(push == 1) {
scr_menu();
}
