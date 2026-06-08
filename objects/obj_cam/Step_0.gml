var _room = instance_position(cam_target.x, cam_target.y, obj_room);

cam_x = cam_target.x - cam_w / 2;
cam_y = cam_target.y - cam_h / 2;

if(_room){
	cam_x_min = _room.x;
	cam_x_max = _room.x + (cam_w * _room.image_xscale) - cam_w;
	cam_y_min = _room.y;
	cam_y_max = _room.y + (cam_h * _room.image_yscale) - cam_h;
} else{
	cam_x_min = 0;
	cam_x_max = room_width - cam_w;
	cam_y_min = 0;
	cam_y_max = room_height - cam_h;
}

cam_x = clamp(cam_x, cam_x_min, cam_x_max);
cam_y = clamp(cam_y, cam_y_min, cam_y_max);
camera_set_view_pos(view_camera[0], cam_x, cam_y);