/// @description setup cam

init_sys_camera();

cam_reset(1920, 1080, 1, id);

image_xscale = 0.5;
image_yscale = 0.5;

motion = new Vector2();

x=room_width/2;
y=room_height/2;