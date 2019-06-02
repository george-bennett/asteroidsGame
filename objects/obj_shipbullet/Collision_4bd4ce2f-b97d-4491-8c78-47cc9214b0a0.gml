/// @description Insert description here
// You can write your code in this editor
instance_destroy();
audio_play_sound(snd_die,1,false);

with(other){
if(sprite_index == spr_massive_asteroid){
	health -= 1;
	if(health <= 0){
	instance_destroy();
	score += 30	
	health = 10;
	}
}
}