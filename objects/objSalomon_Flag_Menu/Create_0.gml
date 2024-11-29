/// @description setup

/// randomize
var height = [0, irandom_range(6,8)];
var scale = [random_range(0.9, 1.1), random_range(0.1, 0.3)];
var layers = random_range(6,7);
var rotate = [irandom_range(0, 360),irandom_range(0, 360)];

/// setup
/// @description setup

sprite_array_pole1 = setup_height_vector(,15,[0,4],[1,1],[c_ltgray, c_white],,spr_pole);
sprite_array_pole2 = setup_height_vector(,15,[0,4],[1,1],[c_ltgray, c_white],,spr_pole);
sprite_array_base = setup_height_vector(,10,[2,4],[1,1],[c_ltgray, c_white],,spr_flag);






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
