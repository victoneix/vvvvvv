vel = 2;
velh = 0;
velv = 0;
grav = 1;

moving = function(){
	var _right = keyboard_check(ord("D"));
	var _left = keyboard_check(ord("A"));
	var _place = place_meeting(x, y+1, obj_collision) || place_meeting(x, y-1, obj_collision);
	
	velh = (_right - _left)*vel
	velv += grav;
	velv = clamp(velv, -3, 3);
	
	if(_place && keyboard_check_pressed(vk_space)){
		grav *= -1;
	}
}

collision = function(){
	repeat(abs(velh)){
		if(place_meeting(x+sign(velh), y, obj_collision)){
			velh = 0;
			break;
		} else{
			x+=sign(velh)
		}
	}
	
	repeat(abs(velv)){
		if(place_meeting(x, y+sign(velv), obj_collision)){
			velv = 0;
			break;
		} else{
			y+=sign(velv)
		}
	}
}