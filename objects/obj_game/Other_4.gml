/// @description Insert description here
// You can write your code in this editor

if(room == rm_game){
	if(audio_is_playing(msc_song)){
	
	audio_stop_sound(msc_song)
}
		audio_play_sound(msc_song,2,true);
		repeat(6){
		var xx = choose(irandom_range(-1.3,room_width),
						irandom_range(room_width, room_width*1.3)
		);
		var yy = choose(irandom_range(-1.3,room_height),
						irandom_range(room_height, room_height*1.3)
		);
		instance_create_layer(xx,yy,"Instances", obj_asteroid);
			}
			alarm[0] = 60;
			alarm[2] = 60;
			alarm[3] = 60;
		}
		
		
		else if(room == rm_start){	
		repeat(20){
					var xx = choose(irandom_range(-1.3,room_width),
						irandom_range(room_width, room_width*1.3)
		);
		var yy = choose(irandom_range(-1.3,room_height),
						irandom_range(room_height, room_height*1.3)
		);
			
		instance_create_layer(xx,yy,"Instances", obj_asteroid);
		}
			alarm[0] = 60;
			alarm[2] = 60;
			alarm[3] = 60;
		
		
		}
	

		
		