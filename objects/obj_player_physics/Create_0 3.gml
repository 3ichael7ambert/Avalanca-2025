/// @description Init player
sPlayer_init_physics(5,10);

fix_SB = physics_fixture_create();

scale=.3;




///------------------------///
globalvar level, vehicle;
level=0;
vehicle=0;

image_angle_alt=phy_rotation+90;

img_angle_alt=image_angle_alt;
image_angle=-90;
vehicle_pre_angle=image_angle+180;
angle = image_angle;
head_angle=phy_rotation-90;
body_angle=phy_rotation-90;
img_angle=image_angle;



///COLORS
shoe_type=choose(1,2,3);
shoe_color=make_color_rgb(random(255),random(255),random(255));		 //show
shoe_color_2=make_color_rgb(random(255),random(255),random(255));	//tip
shoe_color_3=make_color_rgb(random(255),random(255),random(255));	//laces
shirt_type=choose(1,2);												//stripe or solid
arm_color=make_color_rgb(random(255),random(255),random(255));		 //arm
arm_color_2=make_color_rgb(random(255),random(255),random(255));	 //stripe 1
arm_color_3=make_color_rgb(random(255),random(255),random(255));	//stripe 2
skin_color=generate_skin_tone();									 //skin
goggles_color=make_color_rgb(random(255),random(255),random(255));	 //band
glasses_color=make_color_rgb(random(255),random(255),random(255));	//glasses
hair_color=make_color_rgb(random(255),random(255),random(255));		//hair
hair_frame=0;
c_vehicle1=make_color_rgb(random_range(128,255),random_range(128,255),random_range(128,255));	//body
c_vehicle2=make_color_rgb(random_range(128,255),random_range(128,255),random_range(128,255));	///accent1
c_vehicle3=make_color_rgb(random(255),random(255),random(255));	//accent2



hair_frame=0;
hair_speed=0.2;


pedals=3;
pedals_feet_x=pedals;
pedals_feet_y=pedals;

wheels_m=0;
wheels_atv=0;