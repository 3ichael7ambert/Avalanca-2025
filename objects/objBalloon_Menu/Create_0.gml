/// @description setup

/// randomize
var height = [0, irandom_range(6,8)];
var scale = [random_range(0.9, 1.1), random_range(0.1, 0.3)];
var layers = random_range(6,7);
var rotate = [irandom_range(0, 360),irandom_range(0, 360)];
z=10;
_scale=.5;
_color=make_color_hsv(random(360),100,100);
target=obj_camera_menu;

target_x=obj_camera_menu.x;
target_y=obj_camera_menu.y;


dis=distance_to_object(target);
dir=point_direction(x,y,target_x,target_y)+182;
xdist=lengthdir_x(dis,dir);
ydist=lengthdir_y(dis,dir);


/// setup
/// @description setup
sprite_array_balloon2 = setup_height_vector_balloon(
	,
	15,
	[z+5,z+10],
	[0,_scale],
	[_color, _color],
	[dir,dir],
	sprBalloon_1);
	
	
sprite_array_string = setup_height_vector(
	,
	3,
	[z+0,z+5.1],
	[_scale,_scale],
	[c_ltgray, c_white],
	[dir,dir],
	sprBalloon_Str);
	/*
sprite_array_balloon = setup_height_vector(
	64,
	2,
	[z+2,z+5],
	[_scale,_scale],
	[_color, _color],
	[dir,dir],
	sprBalloon);
	*/
sprite_array_reflection = setup_height_vector(
	,
	1,
	[z+10.1,z+11],
	[_scale,_scale],
	[c_white, c_white],
	[0,0],
	sprBalloon_Ref);

/*
sprite_array_shadow = setup_height_vector_shadow(
	,
	2,
	,
	[_scale/2,_scale/2],
	,
	,
	sprite_index,
	o_menuMain.shadowSize,
	o_menuMain.sun_x,
	o_menuMain.sun_y,
	.3
	
);*/

sprite_array_shadow = setup_shadow_vector(
	,
	random_range(1,1),
	[0,1+o_menuMain.shadowSize+z],
	[random_range(0.9, 1.1), random_range(0.1, 0.3)],
	[irandom_range(0, 360),irandom_range(0, 360)],
	sprBalloon_1,
	o_menuMain.sunDirection,
	o_menuMain.shadowSize
	//o_menuMain.shadowSize*10
	);




/// @description Insert description here
// You can write your code in this editor

/*if level=0
{
	target=sb_p1;
}
if level=1
{
	target=objPlayer;
}
*/
target_x=room_width/2;
target_y=room_height/2;
x_dist=(x-target_x)/50;
y_dist=(y-target_y)/50;
image_angle=random(360);
//size=.7-(random(3)/10);
size=0;
_scale=.2;
 
//mySpeed=0;
//direction=90;
speed=0;



//shadowSize=10;

// General dimensions and offsets
pole_width = 10;     // Width of each pole
pole_height = 100;   // Height of each pole
flag_width = 200;    // Width of the flag
flag_height = 50;    // Height of the flag

// Perspective offsets
x_offset = 5; // Horizontal offset for perspective
y_offset = 10; // Vertical offset for perspective

// Left pole coordinates
lp_x = x; // Base x position of left pole
lp_y = y; // Base y position of left pole

// Right pole coordinates (based on flag width)
rp_x = lp_x + flag_width + pole_width;
rp_y = lp_y;
