/// @description setup

/// randomize
var height = [0, 2];
var scale = [.5, .5];
var layers = 5;
var rotate = [0,0];

/// setup
setup_height_vector(,layers,height,scale,,rotate);




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



