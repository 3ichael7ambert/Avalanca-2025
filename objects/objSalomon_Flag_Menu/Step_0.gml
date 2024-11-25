// Define the target (focal point)
target_x = room_width / 2;
target_y = room_height / 2;

// Calculate direction from the pole base to the target
direction_to_target = point_direction(x, y, target_x, target_y);

// Adjust pole and flag positions
lp_x = x;                   // Left pole base X
lp_y = y;                   // Left pole base Y
rp_x = lp_x + 350*scale; // Adjust right pole position
rp_y = lp_y;

// Perspective offsets for depth effect
x_offset = lengthdir_x(100*scale, direction_to_target + 180); // Horizontal offset perpendicular to direction
y_offset = lengthdir_y(100*scale, direction_to_target + 180); // Vertical offset perpendicular to direction

// Ensure the object moves up and destroys when out of bounds
y -= o_menuMain.roomSpeed;
if (y < -500) {
    instance_destroy();
}


//if sb_p1.y>self.y then {depth-=y;} else {depth=0;}
//if sb_p1.y<self.y then {depth-=y;}
//depth=distance_to_point(room_width,room_height)-100;
depth=(distance_to_point(room_width>>1,room_height>>1)>>3)-1140;

/*
if y<o_menu_sb.y depth=o_menu_sb.depth-1;
if y>o_menu_sb.y depth=o_menu_sb.depth+1;
*/

vspeed=__background_get( e__BG.VSpeed, 0 );
/*
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

*/
if y<-500 instance_destroy();







