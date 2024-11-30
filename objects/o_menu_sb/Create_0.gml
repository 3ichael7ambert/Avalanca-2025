/// @description Init
randomize();
y=room_height*.666;
scale=.2;
// Initialize variables
hspeed = 0; // Horizontal speed
//vspeed = 4; // Vertical speed
direction=90;
depth=100;

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
hair_speed=0.2;

pedals=3;
pedals_feet_x=pedals;
pedals_feet_y=pedals;

wheels_m=0;
wheels_atv=0;

left_shoe_x = x + lengthdir_x(140 + (pedals - 3) * 4, image_angle + 180 + 35);
left_shoe_y = y + lengthdir_y(140 + (pedals - 3) * 4, image_angle + 180 + 35);
right_shoe_x = x + lengthdir_x(160 - (pedals - 3) * 4, image_angle - 180 - 35);
right_shoe_y = y + lengthdir_y(160 - (pedals - 3) * 4, image_angle - 180 - 35);



sprite_array_pole1 = setup_height_vector(,15,[0,4],[1,1],[c_ltgray, c_white],,spr_pole);
sprite_array_pole2 = setup_height_vector(,15,[0,4],[1,1],[c_ltgray, c_white],,spr_pole);
sprite_array_base = setup_height_vector(,10,[2,4],[1,1],[c_ltgray, c_white],,spr_flag);


/*function setup_height_vector(
    _scaling = 32, 
    layers = 6, 
    height_spread = [0, 6], 
    scale_range = [1, 0.2], 
    color_range = [c_dkgray, c_white], 
    angle_range = [0, 0],
	sprite = sprite_index
)
*/


// Create

sprite_array_snowboard = setup_height_vector(
    /* parameter1 */, 
    25, 
    [0, 6], 
    [1, 1], 
    [c_blue, c_white], 
    /* additional_parameters */, 
    spr_sb
);

sprite_array_shoes = setup_height_vector(
    /* parameter1 */, 
    10, 
    [0, 2], 
    [1, 1], 
    [c_black, c_dkgray], 
    /* additional_parameters */, 
    spr_player_shoe
);




sprite_array_hair = setup_height_vector(
    /* parameter1 */, 
    8, 
    [1, 3], 
    [1, 1], 
    [hair_color, hair_color], 
    /* additional_parameters */, 
    spr_player_hair
);

sprite_array_arm = setup_height_vector(
    /* parameter1 */, 
    8, 
    [1, 3], 
    [1, 1], 
    [arm_color, arm_color], 
    /* additional_parameters */, 
    spr_player_arm
);



