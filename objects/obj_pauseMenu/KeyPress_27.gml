/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_escape)){
if(global.pause == 0){
global.pause = 1; 
var offset = 0;
for(var i = 0; i < instance_count; i++){
	if(instance_find(all,i).sprite_index != -1){
allObjects[i - offset,0] = instance_find(all,i).sprite_index;
allObjects[i - offset,1] = instance_find(all,i).image_index;
allObjects[i - offset,2] = instance_find(all,i).x;
allObjects[i - offset,3] = instance_find(all,i).y;
allObjects[i - offset,4] = instance_find(all,i).image_xscale;
allObjects[i - offset,5] = instance_find(all,i).image_yscale;
allObjects[i - offset,6] = instance_find(all,i).image_angle;
allObjects[i - offset,7] = instance_find(all,i).image_blend;
allObjects[i - offset,8] = instance_find(all,i).image_alpha;
}
else 
offset++;
}
if(audio_is_playing(msc_song)){
audio_pause_sound(msc_song)
}

instance_deactivate_all(true);
}
else{
global.pause = 0
if(audio_is_paused(msc_song)){
audio_resume_sound(msc_song);
}
instance_activate_all();
}
}