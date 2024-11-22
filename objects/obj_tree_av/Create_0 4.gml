x_dist=(x-sb_p1_av.x)/50;
y_dist=(y-sb_p1_av.y)/50;
image_angle=random(360);
size=.7-(random(3)/10);
//mySpeed=0;
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


shadowSize=10;
sunDirection=point_direction(x,y,obj_LvlControl.sunPosition_x,obj_LvlControl.sunPosition_y);


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