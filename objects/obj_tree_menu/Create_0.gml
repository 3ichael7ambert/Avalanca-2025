////NEW 3D
/// @description setup
randomize();

	/// setup
if level=0 {
	sprite_index=spr_tree_menu;
	sprite_array = setup_height_vector(
		,
		random_range(6,7),
		[0, irandom_range(6,8)],
		[random_range(0.9, 1.1), random_range(0.1, 0.3)],
		,
		[irandom_range(0, 360),irandom_range(0, 360)],
		sprite_index);
	
	sprite_array_leaves = setup_height_vector(
		4,
		random_range(6,7),
		[0, irandom_range(6,8)],
		[random_range(0.9, 1.1), random_range(0.9, 1.1)],
		,
		[irandom_range(0, 360),irandom_range(0, 360)],
		spr_blank);
	
	/*sprite_array_shadow=setup_height_vector_shadow(
		,
		random_range(6,7),
		,
		[random_range(0.9, 1.1), random_range(0.1, 0.3)],
		[c_black,c_black],
		[irandom_range(0, 360),irandom_range(0, 360)],
		sprite_index,
		o_menuMain.sun_x,
		o_menuMain.sun_y,
		o_menuMain.shadowSize,
	
	);*/
	
	sprite_array_shadow = setup_shadow_vector(
	,
	random_range(6,7),
	[0,20],
	[random_range(0.9, 1.1), random_range(0.1, 0.3)],
	[irandom_range(0, 360),irandom_range(0, 360)],
	spr_tree_menu,
	o_menuMain.sunDirection,
	40+o_menuMain.shadowSize*10
	);
	
	
	}
	
if level=1 {
	sprite_index=sprPalmTree_Base;
	sprite_array = setup_height_vector(
	,
	random_range(14,16),
	[0, irandom_range(14,15)],
	[random_range(0.2, 0.3), random_range(0.2, 0.3)],
	,
	[irandom_range(0, 360),irandom_range(0, 360)],
	sprPalmTree_Base);
	
	sprite_array_leaves = setup_height_vector(
	,
	random_range(5,9),
	[15, irandom_range(16,17)],
	[random_range(0.4, 0.5), random_range(0.4, 0.5)],
	,
	[irandom_range(0, 0),irandom_range(360, 360)],
	sprPalmTree_Leaves);
	}
if level=2 {
	sprite_index=sprTreeJungle;

	sprite_array = setup_height_vector(
	,
	random_range(6,7),
	[0, irandom_range(6,8)],
	[random_range(0.9, 1.1), random_range(0.1, 0.3)],
	,
	[irandom_range(0, 360),irandom_range(0, 360)],
	sprite_index);}
if level=3 {
	sprite_index=sprTree;
	sprite_array = setup_height_vector(
	,
	random_range(6,7),
	[0, irandom_range(6,8)],
	[random_range(0.9, 1.1), random_range(0.1, 0.3)],
	,
	[irandom_range(0, 360),irandom_range(0, 360)],
	sprite_index);}
if level=4 {
	sprite_index=spr_tree_menu;
	sprite_index=spr_tree_menu;
	sprite_array = setup_height_vector(
	,
	random_range(6,7),
	[0, irandom_range(6,8)],
	[random_range(0.9, 1.1), random_range(0.1, 0.3)],
	,
	[irandom_range(0, 360),irandom_range(0, 360)],
	sprite_index);}
if level=5 {
	sprite_index=spr_blank;}
if level=6 {
	sprite_index=spr_blank;}






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





