vspeed=__background_get( e__BG.VSpeed, 0 );
x_dist1=(x-sb_p1.x)/50;
y_dist1=(y-sb_p1.y)/50;
x_dist=x_dist1;
y_dist=y_dist1;
if sb_p1.y>self.y then {depth-=y;} else {depth=0;}
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
