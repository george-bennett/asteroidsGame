/// @description Insert description here
// You can write your code in this editor

if( move_bounce_all(false)){
move_bounce_all(true);
}

instance_destroy();
audio_play_sound(snd_die,1,false);
with(other) {
    instance_destroy();
     if (sprite_index == spr_giant_asteroid) {
		score += 5;
        repeat(2){
	    var dist = 64;
		var dir = random_range(0,360);
		var dir = random_range(0,360);
		//var xx = choose(irandom_range(x - 64, x + 64));
		//var yy = choose(irandom_range(y- 64,y + 64));	
		var newAsteroid = instance_create_layer(x + lengthdir_x(dist,dir),y + lengthdir_y(dist,dir), "Instances", obj_asteroid);
		newAsteroid.sprite_index = spr_medium_asteroid;
	repeat(10) {
	instance_create_layer(x,y,"Instances",obj_debris);
	}
		}
    } else if (sprite_index == spr_medium_asteroid) {
		score += 15;
		repeat(2) {
	    
		var dist = 30;
		var dir = random_range(0,360);

		var newAsteroid = instance_create_layer(x + lengthdir_x(dist,dir),  y + lengthdir_y(dist,dir), "Instances", obj_asteroid);
        newAsteroid.sprite_index = spr_small_asteroid;						
			repeat(10) {
	instance_create_layer(x,y,"Instances",obj_debris);
	}
}

    }
		else{
	score += 20;
			}
	repeat(10) {
	instance_create_layer(x,y,"Instances",obj_debris);
	}
}

