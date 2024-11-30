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

image_angle_alt=image_angle+90;
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
//TUNDRA
if level =0 {
	
	
	//SNOWBOARD
	if vehicle=0{
sprite_array_snowboard = setup_height_vector(
    1, 
    1, 
    [0, 0], 
    [scale, scale], 
    [c_white, c_white], 
    [image_angle,image_angle], 
    spr_sb
);

sprite_array_shoes = setup_height_vector(
    scale, 
    1, 
    [0, 1], 
    [scale, scale], 
    [shoe_color, shoe_color], 
    [image_angle,image_angle], 
    spr_player_shoe
);
if shoe_type=2||shoe_type=3 {
//draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(30,image_angle),y+lengthdir_y(30,image_angle),scale,scale,image_angle,shoe_color_2,1);
sprite_array_shoes_tip = setup_height_vector(
    scale, 
    1, 
    [0, 1], 
    [scale, scale], 
    [shoe_color, shoe_color], 
    [image_angle,image_angle], 
    spr_player_shoe_tip
);
}
if shoe_type=2 {
//draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle,c_white,1);
//draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle,shoe_color_3,1);
sprite_array_shoes_holes = setup_height_vector(
    scale, 
    1, 
    [0, 1], 
    [scale, scale], 
    [shoe_color, shoe_color], 
    [image_angle,image_angle], 
    spr_player_shoe_holes
);
sprite_array_shoes_lace = setup_height_vector(
    scale, 
    1, 
    [0, 1], 
    [scale, scale], 
    [shoe_color, shoe_color], 
    [image_angle,image_angle], 
    spr_player_shoe_lace
);

}


//arms

//draw_sprite_ext(spr_player_hands,0,x+lengthdir_x(12,image_angle-25),y+lengthdir_y(12,image_angle-25),scale,scale,image_angle,skin_color,1);
sprite_array_hands = setup_height_vector(
    scale, 
    8, 
    [1, 3], 
    [1, 1], 
    [hair_color, hair_color], 
    [image_angle,image_angle], 
    spr_player_hair
);

if shirt_type=1 {
//draw_sprite_ext(spr_player_arm,0,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color,1);
sprite_array_shirt1 = setup_height_vector_animate(
    scale, 
    8, 
    [1, 3], 
    [1, 1], 
    [hair_color, hair_color], 
    [image_angle,image_angle], 
    spr_player_hair
);
}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
//draw_sprite_ext(spr_player_arm,2,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_2,1);
//draw_sprite_ext(spr_player_arm,3,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_3,1);
sprite_array_shirt2a = setup_height_vector_animate(
    scale, 
    8, 
    [1, 3], 
    [1, 1], 
    [hair_color, hair_color], 
    [image_angle,image_angle], 
    spr_player_hair,
	1
);
sprite_array_shirt2b = setup_height_vector_animate(
    scale, 
    8, 
    [1, 3], 
    [1, 1], 
    [hair_color, hair_color], 
    [image_angle,image_angle], 
    spr_player_hair,
	2
);
sprite_array_shirt3 = setup_height_vector_animate(
    scale, 
    8, 
    [1, 3], 
    [1, 1], 
    [hair_color, hair_color], 
    [image_angle,image_angle], 
    spr_player_hair,
	3
);
}
//Face
//draw_sprite_ext(spr_player_face,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
//draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
//draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
//draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
//draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(40,image_angle-180),y+lengthdir_y(40,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	


sprite_array_face = setup_height_vector(
    /* parameter1 */, 
    8, 
    [1, 3], 
    [1, 1], 
    [arm_color, arm_color], 
    /* additional_parameters */, 
    spr_player_face
);


sprite_array_hair = setup_height_vector_animate(
    scale, 
    8, 
    [1, 3], 
    [1, 1], 
    [hair_color, hair_color], 
    [image_angle,image_angle], 
    spr_player_hair,
	hair_frame
);
	}


}