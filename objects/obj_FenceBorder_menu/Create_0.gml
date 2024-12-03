/// @description setup
//instance_destroy();
/// randomize
var height = [0, 2];
var scale = [.5, .5];
var layers = 5;
var rotate = [0,0];

/// setup
sprite_array = setup_height_vector(,layers,height,scale,,rotate);
/*
sprite_array_shadow=setup_height_vector_shadow(
		,
		5,
		,
		scale,
		[c_black,c_black],
		rotate,
		sprite_index,
		o_menuMain.sun_x,
		o_menuMain.sun_y,
		o_menuMain.shadowSize,
	
	);
*/
sprite_array_shadow = setup_shadow_vector(
	,
	layers,
	[0,height[1]+o_menuMain.shadowSize],
	scale,
	,
	spr_FenceBorder,
	o_menuMain.sunDirection,
	o_menuMain.shadowSize
	//o_menuMain.shadowSize*10
	);
	

target_x=room_width/2;
target_y=room_height/2;

x_dist=(x-target_x)/50;
y_dist=(y-target_y)/50;

x_dist1=(x-target_x)/50;
y_dist1=(y-target_y)/50;
//mySpeed=0;
direction=90;
dir=point_direction(x,y,target_x,target_y);
speed=0;
_scale=.5
image_xscale=_scale;
image_yscale=_scale;
image_single=1;



