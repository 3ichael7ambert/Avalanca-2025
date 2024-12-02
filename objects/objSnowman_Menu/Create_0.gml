/// @description setup

/// randomize
var height = [0, irandom_range(6,8)];
var scale = [random_range(0.9, 1.1), random_range(0.1, 0.3)];
var layers = random_range(6,7);
var rotate = [irandom_range(0, 360),irandom_range(0, 360)];
dir = random(360);
_scale=.3;
/// setup
/// @description setup

sprite_array_body = setup_height_vector(
	,
	3,
	[0.1,2],
	[1*_scale,.8*_scale],
	[c_ltgray, c_white],
	[dir,dir],
	sprSnowman_Body);
sprite_array_btns = setup_height_vector(
	,
	2,
	[1,2],
	[_scale,_scale],
	[c_ltgray, c_white],
	[dir-90,dir-90],
	sprSnowman_Body_Btns);
sprite_array_arm_l = setup_height_vector(
	,
	1,
	[1.5,1.5],
	[_scale,_scale],
	[c_ltgray, c_white],
	[dir-90,dir-90],
	sprSnowman_Arm);
sprite_array_arm_r = setup_height_vector(
	,
	1,
	[1,1],
	[_scale,_scale],
	[c_ltgray, c_white],
	[dir+90,dir+90],
	sprSnowman_Arm);
sprite_array_face = setup_height_vector(
	64,
	2,
	[3.1,3.5],
	[_scale,_scale],
	[c_ltgray, c_white],
	[dir,dir],
	sprSnowman_Face);
sprite_array_hat = setup_height_vector(
	64,
	3,
	[3.1,5],
	[_scale,_scale],
	[c_ltgray, c_white],
	[dir,dir],
	sprSnowman_Face_Hat);


sprite_array_shadow=setup_height_vector_shadow(
		,
		3,
		[0,0],
		[_scale,_scale],
		[c_black,c_black],
		[irandom_range(0, 360),irandom_range(0, 360)],
		sprite_index,
		o_menuMain.sun_x,
		o_menuMain.sun_y,
		o_menuMain.shadowSize,
	
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
