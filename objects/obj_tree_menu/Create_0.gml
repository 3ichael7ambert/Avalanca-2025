////NEW 3D
/// @description setup

/// randomize
var height = [0, irandom_range(4,6)];
var scale = [random_range(0.9, 1.1), random_range(0.1, 0.3)];
var layers = random_range(6,7);
var rotate = [irandom_range(0, 360),irandom_range(0, 360)];

/// setup
setup_height_vector(,layers,height,scale,,rotate);
///





randomize();

x_dist=(x-room_width/2)/50;
y_dist=(y-room_height/2)/50;
image_angle=random(360);
//size=.7-(random(3)/10);
//mySpeed=0;
direction=90;
speed=0;
hit=false;
fade=10;
size=0;
/*
{
do
{
  x = choose(random_range(8, room_width/3 - 158 - 8), random_range(room_width/3 + 142 + 8, room_width - 8));
  y = room_height + 208;
} until place_free(x,y) && place_free(x-8, y-8) && place_free(x-8,y+8) && place_free(x+8,y-8) && place_free(x+8,y+8) ;
}
*/


hitdir1=1;
hitdir2=.5;
hitdir3=1.5;



//Size based on level
if level=0 {
	size=.7-(random(3)/10);
}
if level=1 {
	size=.3;
}
if level=2 {
	size=0;
}
if level=3 {
	size=0;
}


//Palm Tree
leaf1 = irandom_range(10,50);
leaf2 = irandom_range(70,110);
leaf3 = irandom_range(130,170);
leaf4 = irandom_range(190,230);
leaf5 = irandom_range(250,290);
leaf6 = irandom_range(310,350);
//Jungle Tree
jungleTree=irandom(15);
//Forest Tree
forestTree=choose(1,2,3,4,5,6);





