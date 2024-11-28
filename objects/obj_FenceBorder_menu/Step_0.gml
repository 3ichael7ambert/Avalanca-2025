
//instance_create(20,room_height, obj_FenceBorder_menu);
x_dist=x_dist1;
y_dist=y_dist1;

dir=point_direction(x,y,target_x,target_y);

//if target_y>self.y then {depth-=y;} else {depth=0;}
//if sb_p1.y<self.y then {depth-=y;}
//vspeed=__background_get( e__BG.VSpeed, 0 );
y -= o_menuMain.roomSpeed;

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
if !position_meeting(self.x,self.y+sprite_height,obj_FenceBorder_menu)and y<room_height+500 then {instance_create(x,y+sprite_height-30,obj_FenceBorder_menu);}

