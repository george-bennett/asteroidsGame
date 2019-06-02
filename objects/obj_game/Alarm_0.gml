/// @description Insert description here
// You can write your code in this editor
	if(room != rm_game){
	exit;
	}
	
	if(choose(0,1) == 0){
	//side
{
		var xx = choose(irandom_range(-1.3,room_width),
						irandom_range(room_width, room_width*1.3)
		);
		var yy = choose(irandom_range(-1.3,room_height),
						irandom_range(room_height, room_height*1.3)
		);
		instance_create_layer(xx,yy,"Instances", obj_asteroid);
			}
	}
alarm[0] = 10*room_speed;

