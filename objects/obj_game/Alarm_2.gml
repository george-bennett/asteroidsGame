/// @description Insert description here
// You can write your code in this editor
	if(room != rm_game){
	exit;
	}
	
	if(choose(0,1) == 0){
	//side
	var xx = choose(0,room_width);
	var yy = irandom_range(0,room_height);
	}else  {
	//top/bottom
	var xx = irandom_range(0,room_width);
	var yy = choose(0,room_height);
	}
instance_create_layer(xx,yy,"Instances", obj_powerup);

alarm[2] = 4*room_speed;
