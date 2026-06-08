cam_target = obj_player;

cam_w = camera_get_view_width(view_camera[0]);
cam_h = camera_get_view_height(view_camera[0]);

cam_x = cam_w;
cam_y = cam_h;

cam_x_min = 0;
cam_x_max = room_width - cam_w;
cam_y_min = 0;
cam_y_max = room_height - cam_h;