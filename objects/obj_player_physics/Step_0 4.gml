/// @description Control player
sPlayer_carcontrol();

///Particle system
sPlayer_partice_step();

///Smooth camera
//scr_smoothcam(obj_car);

//phy_position_x = clamp(phy_position_x,view_xview[0],view_wview[0]);
//phy_position_y = clamp(phy_position_y,view_yview[0],view_yview[0]);

physics_set_friction(fix_SB,1);

//image_angle=-phy_rotation;

hair_frame+=phy_speed/10;
if hair_frame>3 {hairframe=0;}

////////////////////////
img_angle=image_angle;
//img_angle=360-phy_rotation;
///////
//debug
image_angle_alt=image_angle+90;
img_angle_alt=image_angle_alt;
//level=0;
/////

if	(level=0 && vehicle=0) ||
	(level=0 && vehicle=1) ||
	(level=1 && vehicle=0) 
{
body_angle=(img_angle-180)/2;
head_angle=(body_angle-90)/2;
} else if 
	(level=1 && vehicle=1) 
{
	body_angle=img_angle-90;
	head_angle=img_angle-90;
	
} else {
body_angle=img_angle-90;
head_angle=img_angle-90;
}

if vehicle_pre_angle<img_angle+90 {vehicle_pre_angle+=phy_speed/5;}
if vehicle_pre_angle>img_angle+90 {vehicle_pre_angle-=phy_speed/5;}




//infinitydog_wrap_room();

//head_angle=phy_rotation-90;
//body_angle=phy_rotation-90;


xx = x;
yy = y;



//-------------------------------------------//
//WHEELS PEDALS
if pedals>13 {pedals=4;}
if pedals<4 {pedals=13;} //13?

pedals+=phy_speed/10;
pedals_feet_x+=pedals;
pedals_feet_y+=pedals;

wheels_m+=phy_speed/10;
if wheels_m >3 {wheels_m=0;}

wheels_atv+=phy_speed/10;
if wheels_atv >3 {wheels_atv=0;}

pedals_offset = max(4, min(13, 4 + abs(9 - pedals)));



pedals_offset = max(4, min(13, 4 + abs(9 - pedals)));



//-------------------------------------------//