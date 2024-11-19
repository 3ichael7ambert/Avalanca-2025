/// @description Insert description here
// You can write your code in this editor

//physics_set_density(,0)

if instance_exists(obj_player_physics){
target=obj_player_physics; } else {
	target=self;
}

x_dist=(x-target.x)/50;
y_dist=(y-target.y)/50;
image_angle=random(360);
//size=.7-(random(3)/10);
//mySpeed=0;
scale=1;
direction=90;
speed=0;
hit=false;
fade=10;
{
  do
  {
    x = random(room_width);
  }
  until (place_free(x,y))
}

hitdir1=1;
hitdir2=.5;
hitdir3=1.5;
