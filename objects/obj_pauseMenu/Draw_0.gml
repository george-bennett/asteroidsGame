/// @description Insert description here
// You can write your code in this editor

if(global.pause){
	draw_set_color(c_black);
	draw_set_alpha(1);
	draw_rectangle(0,0,room_width, room_height, 0);
	draw_set_halign(fa_center);
	draw_set_font(fnt_text);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(room_width/2, room_height/2,"Game is Paused");
	draw_set_color(c_black);	
	
	for(var i = 0; i < array_height_2d(allObjects); i++){
	draw_sprite_ext(allObjects[i,0],allObjects[i,1],allObjects[i,2],
	allObjects[i,3],allObjects[i,4],allObjects[i,5],
	allObjects[i,6],allObjects[i,7],allObjects[i,8])
	}
}