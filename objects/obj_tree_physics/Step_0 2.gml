/// @description Insert description here
// You can write your code in this editor





x_dist1=(x-target.x)/50;
y_dist1=(y-target.y)/50;
x_dist=x_dist1;
y_dist=y_dist1;
//if sb_p1.y>self.y then {depth-=y;} else {depth=0;}
//if sb_p1.y<self.y then {depth-=y;}
//depth=distance_to_object(sb_p1_av);

//vspeed=__background_get( e__BG.VSpeed, 0 );

if x_dist1>10 then
{
x_dist=10;
}
if x_dist1<-10 then
{
x_dist=-10;
}


if y_dist1>10 then
{
y_dist=10;
}
if y_dist1<-10 then
{
y_dist=-10;
}

//obj_LvlControl.AvaSpeed=speed;

//if y<-100 instance_destroy();

if hit =true {
	fade-=.5;
	if fade<0 {
		instance_destroy();
	}
	hitdir1+=1;
	hitdir2+=.5;
	hitdir3+=1.5;
}










