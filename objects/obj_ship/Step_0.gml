/// @description Insert description here
// You can write your code in this editor

image_alpha += 0.05;

if(keyboard_check(vk_nokey)){
sprite_index = spr_ship;
}

if(keyboard_check(vk_left)) {
image_angle = image_angle + 5;
}

if(keyboard_check(vk_right)){
image_angle = image_angle -5;
}

if(keyboard_check(vk_up)){
motion_add(image_angle, 0.03);
moving = true;
if(moving){
sprite_index = spr_shipMovement;
image_speed = 1;
}
}



if(keyboard_check(vk_down)){
motion_add(image_angle, - 0.03);

}

if(keyboard_check_pressed(vk_space)){
if(weapon == defaultWeapon){	
var defaultWeaponState = instance_create_layer(x+5,y,"Instances",obj_shipbullet);
audio_play_sound(snd_zap,1,false);
defaultWeaponState.direction = image_angle;
}
else if (weapon == upgradedWeapon){
	
var Xoffset = 5;
var YOffsetLEFT = 20;
var YOffsetRIGHT = - 20;
 
//var rotatedXOffset = Xoffset * cos(image_angle) - YOffsetLEFT * sin(image_angle);
//var rotatedyoffset = Xoffset * sin(image_angle) + YOffsetLEFT * cos(image_angle);

	
var upgradedWeaponStateLeft = instance_create_layer(x + 5 ,y + 20,"Instances",obj_shipbullet);
var upgradedWeaponStateRight = instance_create_layer(x + 5 ,y- 20,"Instances",obj_shipbullet);
audio_play_sound(snd_zap,1,false);

upgradedWeaponStateLeft.direction = image_angle;
upgradedWeaponStateRight.direction = image_angle;
upgradedWeaponStateLeft.image_xscale += 2;
upgradedWeaponStateLeft.image_yscale += 2;
upgradedWeaponStateRight.image_xscale += 2;
upgradedWeaponStateRight.image_yscale += 2;
}
}

move_wrap(true,true,sprite_width/2);





