x_dist1=(x-sb_p1_av.x)/50;
y_dist1=(y-sb_p1_av.y)/50;
x_dist=x_dist1;
y_dist=y_dist1;
if sb_p1_av.y>self.y then {depth-=y;} else {depth=0;}
//if sb_p1.y<self.y then {depth-=y;}
vspeed=__background_get( e__BG.VSpeed, 0 );
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

if y<-100 instance_destroy();
if !position_meeting(self.x,self.y+sprite_height,obj_FenceBorder_av)and y<room_height+500 then {instance_create(x,y+sprite_height-10,obj_FenceBorder_av);}

