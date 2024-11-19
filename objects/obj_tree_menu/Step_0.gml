x_dist1=(x-room_width/2)/50;
y_dist1=(y-room_height/2)/50;
x_dist=x_dist1;
y_dist=y_dist1;
//if sb_p1.y>self.y then {depth-=y;} else {depth=0;}
//if sb_p1.y<self.y then {depth-=y;}
//depth=distance_to_point(room_width,room_height)-100;
depth=(distance_to_point(room_width>>1,room_height>>1)>>3)-1140;

/*
if y<o_menu_sb.y depth=o_menu_sb.depth-1;
if y>o_menu_sb.y depth=o_menu_sb.depth+1;
*/

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

//obj_LvlControl.AvaSpeed=speed;

if y<-500 instance_destroy();



y-=o_menuMain.roomSpeed;




if level=0 sprite_index=spr_tree;
if level=1 sprite_index=sprPalmTree;
if level=2 sprite_index=sprTree;
if level=2 sprite_index=sprTree;

if level>=4 && level<=6 {visible=false} else {visible=true;}

////////////////