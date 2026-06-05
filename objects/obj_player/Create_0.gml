vel = 2;
velh = 0;
velv = 0;
grav = 1;

moving = function(){
	var _right = keyboard_check(ord("D"));
	var _left = keyboard_check(ord("A"));
	
	velh = (_right - _left)*vel
	velv += grav;
	velv = clamp(velv, -3, 3);
	
	if(place_meeting(x+velh, y, obj_collision)){
		while(!place_meeting(x+sign(velh), y, obj_collision)){
			x += sign(velh);
		}
		velh = 0;
	}
	x += velh;
	
	if(place_meeting(x, y+velv, obj_collision)){
		while(!place_meeting(x, y+sign(velv), obj_collision)){
			y += sign(velv);
		}
		velv = 0;
	}
	y += velv;
	var _place = place_meeting(x, y+1, obj_collision) || place_meeting(x, y-1, obj_collision);
	if(keyboard_check_pressed(vk_space)){
		if(_place){
			grav *= -1;
		}
	}
}