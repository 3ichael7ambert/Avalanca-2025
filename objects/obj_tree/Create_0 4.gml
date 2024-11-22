
/*if level=0
{
	target=sb_p1;
}
if level=1
{
	target=objPlayer;
}
*/
target=objPlayer;
x_dist=(x-target.x)/50;
y_dist=(y-target.y)/50;
image_angle=random(360);
//size=.7-(random(3)/10);
size=0;
//mySpeed=0;
direction=90;
speed=0;

{
  do
  {
    x = random(room_width);
  }
  until (place_free(x,y))
}

shadowSize=10;


sunDirection=point_direction(x,y,objLevel.sunPosition_x,objLevel.sun_Position_y);


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
