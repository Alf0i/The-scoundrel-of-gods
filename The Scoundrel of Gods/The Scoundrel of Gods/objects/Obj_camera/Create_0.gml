obj = Obj_Player;

width = camera_get_view_width(view_camera[0]);
height = camera_get_view_height(view_camera[0]);
camera_set_view_target(view_camera[0],obj.id);

x = obj.x - (width/2);
y = (room_height - height);

window_set_fullscreen(true);