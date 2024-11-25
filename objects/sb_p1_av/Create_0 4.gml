	y=room_height/2;


	speed=0;
	jump=0;
	alive=true;
	hp=100;
	
	
	action_inherited();
///Set variables
randomize();
image_angle = 0;
image_speed = 0;
rotate = 4;
boost_rotate = 2;
shoot_cooldown = 0;
scale=.2;
image_xscale=scale;
image_yscale=scale;



//COLLISION
knockback=1;


///////////////////////////
////DEBUG
/*
level=undefined;
vehicle=undefined;
if is_undefined(level) {level=0;}
if is_undefined(vehicle) {vehicle=0;}
*/


/// @description Init
y=room_height*.666;

// Initialize variables
hspeed = 0; // Horizontal speed
//vspeed = 4; // Vertical speed
direction=90;
depth=100;
image_angle_alt=image_angle+90;

vehicle_pre_angle=image_angle+360;
angle = image_angle;
head_angle=270;
body_angle=270;


changeDirectionTimer = room_speed * irandom_range(6, 12); // Random time to change direction

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








///// INIT DRAW
	head_x=x+lengthdir_x(20*scale,image_angle);
	head_y=y+lengthdir_y(20*scale,image_angle);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=x+lengthdir_x(50*scale,image_angle-90);
	armR_y=y+lengthdir_y(50*scale,image_angle-90);
	handR_x=armR_x+lengthdir_x(40*scale,body_angle-105);
	handR_y=armR_y+lengthdir_y(40*scale,body_angle-105);
	
	armL_x=x+lengthdir_x(65*scale,image_angle+135);
	armL_y=y+lengthdir_y(65*scale,image_angle+135);
	handL_x=armL_x+lengthdir_x(222*scale,body_angle-2);
	handL_y=armL_y+lengthdir_y(222*scale,body_angle-2);
	
	shoes_x=x+lengthdir_x(110*scale,image_angle);
	shoes_y=y+lengthdir_y(110*scale,image_angle);
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,image_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,image_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,image_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,image_angle+180);

//////
/////

dir_rotate=direction;
zindex=0;
zscale=zindex/100;
jumpTimer = 0; // Timer for the jump animation
jumpDuration = 1.0; // Duration of the jump animation in seconds
jumpStartZIndex = 1; // Starting zindex value for the jump
jumpEndZIndex = 10; // Ending zindex value for the jump


//gravity=.5;
///Set up controls
///The reason for this is to make it easier to
///change the controls
k_up = vk_up;
k_left = vk_left;
k_right = vk_right;
k_shoot = vk_space;
k_space = vk_space;

gravityActive = false;

direction=90;



momentum = 0;
friction = 0;

oldDirection = direction;


pedals=3;
pedals_feet_x=pedals;
pedals_feet_y=pedals;

wheels_m=0;
wheels_atv=0;

left_shoe_x = x + lengthdir_x(140 + (pedals - 3) * 4, image_angle + 180 + 35);
left_shoe_y = y + lengthdir_y(140 + (pedals - 3) * 4, image_angle + 180 + 35);
right_shoe_x = x + lengthdir_x(160 - (pedals - 3) * 4, image_angle - 180 - 35);
right_shoe_y = y + lengthdir_y(160 - (pedals - 3) * 4, image_angle - 180 - 35);

