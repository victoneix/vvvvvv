var _place = place_meeting(x, y+1, obj_player) || place_meeting(x, y-1, obj_player);
if(_place){
	image_speed = 1;
	place = false;
}

if(place == false && alarm[0] < 0){
	alarm[0] = 60*4;
}

if(image_index < 1 && place == true){ 
	image_speed = 0;
	image_index = 0;
}