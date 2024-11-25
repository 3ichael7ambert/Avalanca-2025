/// @description Insert description here
// You can write your code in this editor


//draw_self();
/// @description Insert description here
// You can write your code in this editor


/*
if (level == 0) { // Snow level
    vehicle = clamp(vehicle, 0, 2); // Snowboard, Ski, Snow Mobile
    vehicleName = choose("Snowboard", "Ski", "Snow Mobile");
    gameMode = clamp(gameMode, 0, 5); // Avalanche, Survival, Race, Trick Attack, Pong, Snowmobile Soccer
    gameModeName = choose("Avalanche", "Survival", "Race", "Trick Attack", "Pong", "Snowmobile Soccer");
}
else if (level == 1) { // Desert level
    vehicle = clamp(vehicle, 0, 1); // Sandboard, Bike
    vehicleName = choose("Sandboard", "Bike");
    gameMode = clamp(gameMode, 0, 3); // Sandstorm, Survival, Race, Trick Attack
    gameModeName = choose("Sandstorm", "Survival", "Race", "Trick Attack");
}
else if (level == 2) { // Jungle level
    vehicle = clamp(vehicle, 0, 1); // Bike, ATV
    vehicleName = choose("Bike", "ATV");
    gameMode = clamp(gameMode, 0, 6); // Mud Slide, Collect, Snake Attack, Survival, Temple Run, Race, Trick Attack
    gameModeName = choose("Mud Slide", "Collect", "Snake Attack", "Survival", "Temple Run", "Race", "Trick Attack");
}
else if (level == 3) { // Forest level
    vehicle = clamp(vehicle, 0, 0); // Bike
    vehicleName = "Bike";
    gameMode = clamp(gameMode, 0, 5); // Rock Slide, Mud Slide, Bear Attack, Survival, Race, Trick Attack
    gameModeName = choose("Rock Slide", "Mud Slide", "Bear Attack", "Survival", "Race", "Trick Attack");
}
else if (level == 4) { // Water level
    vehicle = clamp(vehicle, 0, 2); // Surf, Jet Ski, Water Ski
    vehicleName = choose("Surf", "Jet Ski", "Water Ski");
    gameMode = clamp(gameMode, 0, 5); // Surfs Up, Shark Attack, Sumo, Race, Volleyball, Trick Attack
    gameModeName = choose("Surfs Up", "Shark Attack", "Sumo", "Race", "Volleyball", "Trick Attack");
}
else if (level == 5) { // Space level
    vehicle = clamp(vehicle, 0, 1); // Space Board, Space Mobile
    vehicleName = choose("Space Board", "Space Mobile");
    gameMode = clamp(gameMode, 0, 3); // Asteroids, Sumo, Race, Trick Attack
    gameModeName = choose("Asteroids", "Sumo", "Race", "Trick Attack");
}
else if (level == 6) { // City level
    vehicle = clamp(vehicle, 0, 3); // Skate, Scooter, Bike, Motorcycle
    vehicleName = choose("Skate", "Scooter", "skate" "Bike", "Motorcycle");
    gameMode = clamp(gameMode, 0, 1); // Race, Trick Attack
    gameModeName = choose("Race", "Trick Attack");
}

*/


//TUNDRA
if level =0 {
	
	
	//SNOWBOARD
	if vehicle=0{
draw_sprite_ext(spr_sb,0,x,y,scale,scale,image_angle_alt,c_white,1);
//SHOES
draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(30,image_angle),y+lengthdir_y(30,image_angle),scale,scale,image_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle,shoe_color_3,1);
}

//arms

draw_sprite_ext(spr_player_hands,0,x+lengthdir_x(12,image_angle-25),y+lengthdir_y(12,image_angle-25),scale,scale,image_angle,skin_color,1);
if shirt_type=1 {
draw_sprite_ext(spr_player_arm,0,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,2,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_2,1);
draw_sprite_ext(spr_player_arm,3,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_3,1);
}
//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(40,image_angle-180),y+lengthdir_y(40,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	
	}
	
	
	//SKI
	if vehicle=1{
		//BOARD
draw_sprite_ext(spr_sb,0,x+lengthdir_x(10,image_angle+90),y+lengthdir_y(10,image_angle+90),scale/2,scale*1.2,image_angle+90,c_white,1);
draw_sprite_ext(spr_sb,0,x+lengthdir_x(10,image_angle-90),y+lengthdir_y(10,image_angle-90),scale/2,scale*1.2,image_angle+90,c_white,1);
	//SHOES
	draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(20,image_angle+35),y+lengthdir_y(20,image_angle+35),scale-.03,scale-.03,image_angle,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(20,image_angle-35),y+lengthdir_y(20,image_angle-35),scale-.03,scale-.03,image_angle,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(25,image_angle+30),y+lengthdir_y(25,image_angle+30),scale-.03,scale-.03,image_angle,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(25,image_angle-30),y+lengthdir_y(25,image_angle-30),scale-.03,scale-.03,image_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(20,image_angle+30),y+lengthdir_y(20,image_angle+30),scale-.03,scale-.03,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(20,image_angle-30),y+lengthdir_y(20,image_angle-30),scale-.03,scale-.03,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(20,image_angle+30),y+lengthdir_y(20,image_angle+30),scale-.03,scale-.03,image_angle,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(20,image_angle-30),y+lengthdir_y(20,image_angle-30),scale-.03,scale-.03,image_angle,shoe_color_3,1);
}
	
//arms
draw_sprite_ext(spr_player_hands,3,x+lengthdir_x(12,image_angle-25),y+lengthdir_y(12,image_angle-25),scale,scale,image_angle,skin_color,1);
draw_sprite_ext(spr_player_hands,4,x+lengthdir_x(12,image_angle+25),y+lengthdir_y(12,image_angle+25),scale,scale,image_angle,skin_color,1);

if shirt_type=1 {
draw_sprite_ext(spr_player_arm,18,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color,1);
draw_sprite_ext(spr_player_arm,19,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,12,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_2,1);
draw_sprite_ext(spr_player_arm,13,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_2,1);

draw_sprite_ext(spr_player_arm,16,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_3,1);
draw_sprite_ext(spr_player_arm,17,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_3,1);
}

//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(40,image_angle-180),y+lengthdir_y(40,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	

	}
	
	//SnowMobile
	if vehicle=2{
		draw_sprite_ext(spr_sb,0,x+lengthdir_x(25,image_angle+35),y+lengthdir_y(25,image_angle+35),scale/3,scale*1.4,image_angle+90,c_vehicle3,1);
		draw_sprite_ext(spr_sb,0,x+lengthdir_x(25,image_angle-35),y+lengthdir_y(25,image_angle-35),scale/3,scale*1.4,image_angle+90,c_vehicle3,1);

draw_sprite_ext(sprJetski,1,x+lengthdir_x(50,image_angle),y+lengthdir_y(50,image_angle),scale,scale,image_angle,c_vehicle1,1);

draw_sprite_ext(sprJetski,2,x+lengthdir_x(50,image_angle),y+lengthdir_y(50,image_angle),scale,scale,image_angle,c_vehicle2,1);

draw_sprite_ext(sprJetski,3,x+lengthdir_x(50,image_angle),y+lengthdir_y(50,image_angle),scale,scale,image_angle+hspeed*5,c_vehicle1,1);

	//SHOES
	draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(35,image_angle+32),y+lengthdir_y(35,image_angle+32),scale-.03,scale-.03,image_angle+10,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(35,image_angle-32),y+lengthdir_y(35,image_angle-32),scale-.03,scale-.03,image_angle-10,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,shoe_color_3,1);
}

//arms
draw_sprite_ext(spr_player_hands,1,x+lengthdir_x(12,image_angle-25+hspeed),y+lengthdir_y(12,image_angle-25+hspeed),scale,scale,image_angle+hspeed*5,skin_color,1);
draw_sprite_ext(spr_player_hands,2,x+lengthdir_x(12,image_angle+25+hspeed),y+lengthdir_y(12,image_angle+25+hspeed),scale,scale,image_angle+hspeed*5,skin_color,1);

if shirt_type=1 {
draw_sprite_ext(spr_player_arm,4,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color,1);
draw_sprite_ext(spr_player_arm,5,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,8,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color_2,1);
draw_sprite_ext(spr_player_arm,9,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color_2,1);

draw_sprite_ext(spr_player_arm,10,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color_3,1);
draw_sprite_ext(spr_player_arm,11,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color_3,1);
}

	//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(40,image_angle-180),y+lengthdir_y(40,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	}

}





//DESERT
if level =1 {
	//SNOWBOARD
	if vehicle=0{
draw_sprite_ext(spr_sb,0,x,y,scale,scale,image_angle_alt,c_white,1);
//SHOES
draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(30,image_angle),y+lengthdir_y(30,image_angle),scale,scale,image_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle,shoe_color_3,1);
}

//arms
draw_sprite_ext(spr_player_hands,0,x+lengthdir_x(12,image_angle-25),y+lengthdir_y(12,image_angle-25),scale,scale,image_angle,skin_color,1);
if shirt_type=1 {
draw_sprite_ext(spr_player_arm,0,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,2,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_2,1);
draw_sprite_ext(spr_player_arm,3,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_3,1);
}
//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(40,image_angle-180),y+lengthdir_y(40,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	
	}
	
	
	
	
	//Bike
	if vehicle=1{

//pedals
draw_sprite_ext(sprBike,pedals,x+lengthdir_x(15,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle_alt,c_white,1);
//wheels
draw_sprite_ext(sprBike,2,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt+hspeed*5,c_white,1);
draw_sprite_ext(sprBike,3,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt,c_white,1);
//
draw_sprite_ext(sprBike,1,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt,c_white,1);
draw_sprite_ext(sprBike,14,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt,c_vehicle1,1);
//Handlebars
draw_sprite_ext(sprBike,0,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt+hspeed*5,c_white,1);
draw_sprite_ext(sprBike,15,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt+hspeed*5,c_vehicle1,1);

	//SHOES
	draw_sprite_ext(spr_player_shoe,0,left_shoe_x,left_shoe_y,scale-.03,scale-.03,image_angle,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,right_shoe_x,right_shoe_y,scale-.03,scale-.03,image_angle,shoe_color,1);
	//draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(50-pedals*2,image_angle+180+35),y+lengthdir_y(50-pedals*2,image_angle+180+35),scale-.03,scale-.03,image_angle,shoe_color,1);
	//draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(50-pedals*2,image_angle-180-35),y+lengthdir_y(50-pedals*2,image_angle-180-35),scale-.03,scale-.03,image_angle,shoe_color,1);
	
	//draw_sprite_ext(spr_player_shoe, 0, left_shoe_x, left_shoe_y, scale - 0.03, scale - 0.03, image_angle, shoe_color, 1);
	//draw_sprite_ext(spr_player_shoe, 0, right_shoe_x, right_shoe_y, scale - 0.03, scale - 0.03, image_angle, shoe_color, 1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,left_shoe_x+lengthdir_x(10,-90),left_shoe_y+lengthdir_y(10,-90),scale-.03,scale-.03,image_angle+10,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,right_shoe_x+lengthdir_x(10,-90),right_shoe_y+lengthdir_y(10,-90),scale-.03,scale-.03,image_angle-10,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,left_shoe_x+lengthdir_x(10,-90),left_shoe_y+lengthdir_y(10,-90),scale-.03,scale-.03,image_angle+10,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,right_shoe_x+lengthdir_x(10,-90),right_shoe_y+lengthdir_y(10,-90),scale-.03,scale-.03,image_angle-10,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,left_shoe_x+lengthdir_x(10,-90),left_shoe_y+lengthdir_y(10,-90),scale-.03,scale-.03,image_angle+10,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,right_shoe_x+lengthdir_x(10,-90),right_shoe_y+lengthdir_y(10,-90),scale-.03,scale-.03,image_angle-10,shoe_color_3,1);
}

//arms
draw_sprite_ext(spr_player_hands,1,x+lengthdir_x(20,image_angle-265+hspeed),y+lengthdir_y(20,image_angle-265-+hspeed),scale,scale,image_angle+15+hspeed*5,skin_color,1);
draw_sprite_ext(spr_player_hands,2,x+lengthdir_x(20,image_angle+265+hspeed),y+lengthdir_y(20,image_angle+265+hspeed),scale,scale,image_angle-15+hspeed*5,skin_color,1);

if shirt_type=1 {
draw_sprite_ext(spr_player_arm,4,x+lengthdir_x(10,image_angle+180+hspeed),y+lengthdir_y(10,image_angle+180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color,1);
draw_sprite_ext(spr_player_arm,5,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,8,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color_2,1);
draw_sprite_ext(spr_player_arm,9,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color_2,1);

draw_sprite_ext(spr_player_arm,10,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color_3,1);
draw_sprite_ext(spr_player_arm,11,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color_3,1);
}

	//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(50,image_angle-180),y+lengthdir_y(50,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	}

}






//WOODLAND

if level=2 {
	
		
	//Bike
	if vehicle=0{


//pedals
draw_sprite_ext(sprBike,pedals,x+lengthdir_x(15,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle_alt,c_white,1);
//wheels
draw_sprite_ext(sprBike,2,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt+hspeed*5,c_white,1);
draw_sprite_ext(sprBike,3,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt,c_white,1);
//
draw_sprite_ext(sprBike,1,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt,c_white,1);
draw_sprite_ext(sprBike,14,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt,c_vehicle1,1);
//Handlebars
draw_sprite_ext(sprBike,0,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt+hspeed*5,c_white,1);
draw_sprite_ext(sprBike,15,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt+hspeed*5,c_vehicle1,1);

	//SHOES
	draw_sprite_ext(spr_player_shoe,0,left_shoe_x,left_shoe_y,scale-.03,scale-.03,image_angle,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,right_shoe_x,right_shoe_y,scale-.03,scale-.03,image_angle,shoe_color,1);
	//draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(50-pedals*2,image_angle+180+35),y+lengthdir_y(50-pedals*2,image_angle+180+35),scale-.03,scale-.03,image_angle,shoe_color,1);
	//draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(50-pedals*2,image_angle-180-35),y+lengthdir_y(50-pedals*2,image_angle-180-35),scale-.03,scale-.03,image_angle,shoe_color,1);
	
	//draw_sprite_ext(spr_player_shoe, 0, left_shoe_x, left_shoe_y, scale - 0.03, scale - 0.03, image_angle, shoe_color, 1);
	//draw_sprite_ext(spr_player_shoe, 0, right_shoe_x, right_shoe_y, scale - 0.03, scale - 0.03, image_angle, shoe_color, 1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(35,image_angle+32),y+lengthdir_y(35,image_angle+32),scale-.03,scale-.03,image_angle+10,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(35,image_angle-32),y+lengthdir_y(35,image_angle-32),scale-.03,scale-.03,image_angle-10,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,shoe_color_3,1);
}

//arms
draw_sprite_ext(spr_player_hands,1,x+lengthdir_x(20,image_angle-265+hspeed),y+lengthdir_y(20,image_angle-265-+hspeed),scale,scale,image_angle+15+hspeed*5,skin_color,1);
draw_sprite_ext(spr_player_hands,2,x+lengthdir_x(20,image_angle+265+hspeed),y+lengthdir_y(20,image_angle+265+hspeed),scale,scale,image_angle-15+hspeed*5,skin_color,1);

if shirt_type=1 {
draw_sprite_ext(spr_player_arm,4,x+lengthdir_x(10,image_angle+180+hspeed),y+lengthdir_y(10,image_angle+180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color,1);
draw_sprite_ext(spr_player_arm,5,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,8,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color_2,1);
draw_sprite_ext(spr_player_arm,9,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color_2,1);

draw_sprite_ext(spr_player_arm,10,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color_3,1);
draw_sprite_ext(spr_player_arm,11,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color_3,1);
}

	//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(50,image_angle-180),y+lengthdir_y(50,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	}






//ATV
	if vehicle=1{
		
//WHEELS
draw_sprite_ext(sprATV,wheels_atv+1,x+lengthdir_x(35,image_angle),y+lengthdir_y(35,image_angle),scale-.03,scale-.03,image_angle_alt+180,c_white,1);

draw_sprite_ext(sprATV,wheels_atv+7,x+lengthdir_x(35,image_angle),y+lengthdir_y(35,image_angle),scale-.03,scale-.03,image_angle_alt+180+hspeed*5,c_white,1);
draw_sprite_ext(sprATV,6,x+lengthdir_x(35,image_angle),y+lengthdir_y(35,image_angle),scale-.03,scale-.03,image_angle_alt+180+hspeed*5,c_vehicle1,1);


//BODY
draw_sprite_ext(sprATV,0,x+lengthdir_x(35,image_angle),y+lengthdir_y(35,image_angle),scale-.03,scale-.03,image_angle_alt+180,c_vehicle1,1);
//HANDLEBARS
draw_sprite_ext(sprATV,5,x+lengthdir_x(35,image_angle),y+lengthdir_y(35,image_angle),scale-.03,scale-.03,image_angle_alt+180+hspeed*5,c_white,1);


	//SHOES
	draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(35,image_angle+32),y+lengthdir_y(35,image_angle+32),scale-.03,scale-.03,image_angle+10,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(35,image_angle-32),y+lengthdir_y(35,image_angle-32),scale-.03,scale-.03,image_angle-10,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,shoe_color_3,1);
}

//arms
draw_sprite_ext(spr_player_hands,1,x+lengthdir_x(20,image_angle-265+hspeed),y+lengthdir_y(20,image_angle-265-+hspeed),scale,scale,image_angle+15+hspeed*5,skin_color,1);
draw_sprite_ext(spr_player_hands,2,x+lengthdir_x(20,image_angle+265+hspeed),y+lengthdir_y(20,image_angle+265+hspeed),scale,scale,image_angle-15+hspeed*5,skin_color,1);

if shirt_type=1 {
draw_sprite_ext(spr_player_arm,4,x+lengthdir_x(10,image_angle+180+hspeed),y+lengthdir_y(10,image_angle+180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color,1);
draw_sprite_ext(spr_player_arm,5,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,8,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color_2,1);
draw_sprite_ext(spr_player_arm,9,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color_2,1);

draw_sprite_ext(spr_player_arm,10,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color_3,1);
draw_sprite_ext(spr_player_arm,11,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color_3,1);
}

	//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(40,image_angle-180),y+lengthdir_y(40,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	}
	
	
}






//JUNGLE

if level =3 {
	
	
		
	//Bike
	if vehicle=0{


//pedals
draw_sprite_ext(sprBike,pedals,x+lengthdir_x(15,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle_alt,c_white,1);
//wheels
draw_sprite_ext(sprBike,2,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt+hspeed*5,c_white,1);
draw_sprite_ext(sprBike,3,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt,c_white,1);
//
draw_sprite_ext(sprBike,1,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt,c_white,1);
draw_sprite_ext(sprBike,14,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt,c_vehicle1,1);
//Handlebars
draw_sprite_ext(sprBike,0,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt+hspeed*5,c_white,1);
draw_sprite_ext(sprBike,15,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt+hspeed*5,c_vehicle1,1);

	//SHOES
	draw_sprite_ext(spr_player_shoe,0,left_shoe_x,left_shoe_y,scale-.03,scale-.03,image_angle,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,right_shoe_x,right_shoe_y,scale-.03,scale-.03,image_angle,shoe_color,1);
	//draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(50-pedals*2,image_angle+180+35),y+lengthdir_y(50-pedals*2,image_angle+180+35),scale-.03,scale-.03,image_angle,shoe_color,1);
	//draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(50-pedals*2,image_angle-180-35),y+lengthdir_y(50-pedals*2,image_angle-180-35),scale-.03,scale-.03,image_angle,shoe_color,1);
	
	//draw_sprite_ext(spr_player_shoe, 0, left_shoe_x, left_shoe_y, scale - 0.03, scale - 0.03, image_angle, shoe_color, 1);
	//draw_sprite_ext(spr_player_shoe, 0, right_shoe_x, right_shoe_y, scale - 0.03, scale - 0.03, image_angle, shoe_color, 1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(35,image_angle+32),y+lengthdir_y(35,image_angle+32),scale-.03,scale-.03,image_angle+10,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(35,image_angle-32),y+lengthdir_y(35,image_angle-32),scale-.03,scale-.03,image_angle-10,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,shoe_color_3,1);
}

//arms
draw_sprite_ext(spr_player_hands,1,x+lengthdir_x(20,image_angle-265+hspeed),y+lengthdir_y(20,image_angle-265-+hspeed),scale,scale,image_angle+15+hspeed*5,skin_color,1);
draw_sprite_ext(spr_player_hands,2,x+lengthdir_x(20,image_angle+265+hspeed),y+lengthdir_y(20,image_angle+265+hspeed),scale,scale,image_angle-15+hspeed*5,skin_color,1);

if shirt_type=1 {
draw_sprite_ext(spr_player_arm,4,x+lengthdir_x(10,image_angle+180+hspeed),y+lengthdir_y(10,image_angle+180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color,1);
draw_sprite_ext(spr_player_arm,5,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,8,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color_2,1);
draw_sprite_ext(spr_player_arm,9,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color_2,1);

draw_sprite_ext(spr_player_arm,10,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color_3,1);
draw_sprite_ext(spr_player_arm,11,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color_3,1);
}

	//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(50,image_angle-180),y+lengthdir_y(50,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	}



	
}







//OCEAN

if level=4 {
	
	
	
	//SURFBOARD
	if vehicle=0{
draw_sprite_ext(sprSurfboard,0,x,y,scale-0.05,scale-0.05,image_angle_alt+180,c_white,1);
//SHOES
draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(30,image_angle),y+lengthdir_y(30,image_angle),scale,scale,image_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle,shoe_color_3,1);
}

//arms
draw_sprite_ext(spr_player_hands,0,x+lengthdir_x(12,image_angle-25),y+lengthdir_y(12,image_angle-25),scale,scale,image_angle,skin_color,1);
if shirt_type=1 {
draw_sprite_ext(spr_player_arm,0,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,2,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_2,1);
draw_sprite_ext(spr_player_arm,3,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_3,1);
}
//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(40,image_angle-180),y+lengthdir_y(40,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	
	}
	
	
	//WATERSKI
	if vehicle=1{
		//BOARD
draw_sprite_ext(spr_sb,0,x+lengthdir_x(10,image_angle+90),y+lengthdir_y(10,image_angle+90),scale/2,scale*1.2,image_angle+90,c_white,1);
draw_sprite_ext(spr_sb,0,x+lengthdir_x(10,image_angle-90),y+lengthdir_y(10,image_angle-90),scale/2,scale*1.2,image_angle+90,c_white,1);
	//HANDLE
	draw_sprite_ext(sprSurfHandle,0,x+lengthdir_x(70,image_angle),y+lengthdir_y(70,image_angle),.4,.4,0+hspeed*4,c_white,1);
	draw_line_width_color(x+lengthdir_x(70,image_angle),y+lengthdir_y(70,image_angle),room_width/3,room_height,3,c_dkgray,c_ltgray);
	draw_line_width_color(x+lengthdir_x(70,image_angle),y+lengthdir_y(70,image_angle),room_width/3,room_height,1,c_white,c_white);
	//SHOES
	draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(20,image_angle+35),y+lengthdir_y(20,image_angle+35),scale-.03,scale-.03,image_angle,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(20,image_angle-35),y+lengthdir_y(20,image_angle-35),scale-.03,scale-.03,image_angle,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(25,image_angle+35),y+lengthdir_y(25,image_angle+35),scale-.03,scale-.03,image_angle,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(25,image_angle-35),y+lengthdir_y(25,image_angle-35),scale-.03,scale-.03,image_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(20,image_angle+35),y+lengthdir_y(20,image_angle+35),scale-.03,scale-.03,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(20,image_angle-35),y+lengthdir_y(20,image_angle-35),scale-.03,scale-.03,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(20,image_angle+35),y+lengthdir_y(20,image_angle+35),scale-.03,scale-.03,image_angle,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(20,image_angle-35),y+lengthdir_y(20,image_angle-35),scale-.03,scale-.03,image_angle,shoe_color_3,1);
}
	
//arms
draw_sprite_ext(spr_player_hands,1,x+lengthdir_x(12,image_angle-25),y+lengthdir_y(12,image_angle-25),scale,scale,image_angle,skin_color,1);
draw_sprite_ext(spr_player_hands,2,x+lengthdir_x(12,image_angle+25),y+lengthdir_y(12,image_angle+25),scale,scale,image_angle,skin_color,1);

if shirt_type=1 {
draw_sprite_ext(spr_player_arm,4,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color,1);
draw_sprite_ext(spr_player_arm,5,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,8,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_2,1);
draw_sprite_ext(spr_player_arm,9,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_2,1);

draw_sprite_ext(spr_player_arm,10,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_3,1);
draw_sprite_ext(spr_player_arm,11,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_3,1);
}

//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(40,image_angle-180),y+lengthdir_y(40,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	

	}
	
	//SnowMobile
	if vehicle=2{
		//draw_sprite_ext(spr_sb,0,x+lengthdir_x(25,image_angle+35),y+lengthdir_y(25,image_angle+35),scale/3,scale*1.4,image_angle+90,c_vehicle3,1);
		//draw_sprite_ext(spr_sb,0,x+lengthdir_x(25,image_angle-35),y+lengthdir_y(25,image_angle-35),scale/3,scale*1.4,image_angle+90,c_vehicle3,1);

draw_sprite_ext(sprJetski,1,x+lengthdir_x(50,image_angle),y+lengthdir_y(50,image_angle),scale,scale,image_angle,c_vehicle1,1);

draw_sprite_ext(sprJetski,2,x+lengthdir_x(50,image_angle),y+lengthdir_y(50,image_angle),scale,scale,image_angle,c_vehicle2,1);

draw_sprite_ext(sprJetski,3,x+lengthdir_x(50,image_angle),y+lengthdir_y(50,image_angle),scale,scale,image_angle+hspeed*5,c_vehicle1,1);

	//SHOES
	draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(35,image_angle+32),y+lengthdir_y(35,image_angle+32),scale-.03,scale-.03,image_angle+10,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(35,image_angle-32),y+lengthdir_y(35,image_angle-32),scale-.03,scale-.03,image_angle-10,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,shoe_color_3,1);
}

//arms
draw_sprite_ext(spr_player_hands,1,x+lengthdir_x(12,image_angle-25+hspeed),y+lengthdir_y(12,image_angle-25+hspeed),scale,scale,image_angle+hspeed*5,skin_color,1);
draw_sprite_ext(spr_player_hands,2,x+lengthdir_x(12,image_angle+25+hspeed),y+lengthdir_y(12,image_angle+25+hspeed),scale,scale,image_angle+hspeed*5,skin_color,1);

if shirt_type=1 {
draw_sprite_ext(spr_player_arm,4,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color,1);
draw_sprite_ext(spr_player_arm,5,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,8,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color_2,1);
draw_sprite_ext(spr_player_arm,9,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color_2,1);

draw_sprite_ext(spr_player_arm,10,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color_3,1);
draw_sprite_ext(spr_player_arm,11,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color_3,1);
}

	//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(40,image_angle-180),y+lengthdir_y(40,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	}
	
	
	
}





//CITY

if level=5 {
	

	//SKATEBOARD
	if vehicle=0{
draw_sprite_ext(sprSkateboard_Ride,0,x,y,.5,.5,image_angle_alt,c_white,1);
//SHOES
draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle-90,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle+-90,shoe_color_3,1);
}

//arms
draw_sprite_ext(spr_player_hands,0,x+lengthdir_x(12,image_angle-25),y+lengthdir_y(12,image_angle-25),scale,scale,image_angle,skin_color,1);
if shirt_type=1 {
draw_sprite_ext(spr_player_arm,0,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,2,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_2,1);
draw_sprite_ext(spr_player_arm,3,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_3,1);
}
//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(40,image_angle-180),y+lengthdir_y(40,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	
	}
	
	
	//SCOOTER
	if vehicle=1{
		//wheel
		draw_sprite_ext(sprScooter,5,x+lengthdir_x(35,image_angle),y+lengthdir_y(35,image_angle),scale+.1,scale+.1,image_angle_alt-180+hspeed*5,c_vehicle1,1);
		draw_sprite_ext(sprScooter,6,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale+.1,scale+.1,image_angle_alt-180,c_vehicle1,1);
		draw_sprite_ext(sprScooter,4,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale+.1,scale+.1,image_angle_alt-180,c_white,1);

//base
draw_sprite_ext(sprScooter,2,x+lengthdir_x(30,image_angle),y+lengthdir_y(30,image_angle),scale+.1,scale+.1,image_angle_alt-180+hspeed*5,c_white,1);
//handlebar
draw_sprite_ext(sprScooter,1,x+lengthdir_x(30,image_angle),y+lengthdir_y(30,image_angle),scale+.1,scale+.1,image_angle_alt-180,c_vehicle1,1);
	
	
//SHOES
draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(10,image_angle),y+lengthdir_y(10,image_angle),scale,scale,image_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,shoe_color_3,1);
}

	

//arms
draw_sprite_ext(spr_player_hands,1,x+lengthdir_x(20,image_angle-265+hspeed),y+lengthdir_y(20,image_angle-265-+hspeed),scale,scale,image_angle+12+hspeed*5,skin_color,1);
draw_sprite_ext(spr_player_hands,2,x+lengthdir_x(20,image_angle+265+hspeed),y+lengthdir_y(20,image_angle+265+hspeed),scale,scale,image_angle-12+hspeed*5,skin_color,1);

if shirt_type=1 {
draw_sprite_ext(spr_player_arm,4,x+lengthdir_x(10,image_angle+180+hspeed),y+lengthdir_y(10,image_angle+180+hspeed),scale,scale,image_angle+42+hspeed*4,arm_color,1);
draw_sprite_ext(spr_player_arm,5,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-42+hspeed*4,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,8,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle+42+hspeed*4,arm_color_2,1);
draw_sprite_ext(spr_player_arm,9,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-42+hspeed*4,arm_color_2,1);

draw_sprite_ext(spr_player_arm,10,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle+42+hspeed*4,arm_color_3,1);
draw_sprite_ext(spr_player_arm,11,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-42+hspeed*4,arm_color_3,1);
}

//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(40,image_angle-180),y+lengthdir_y(40,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	

	}
	
	
	
	
	//Bike
	if vehicle=2{

//pedals
draw_sprite_ext(sprBike,pedals,x+lengthdir_x(15,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle_alt,c_white,1);
//wheels
draw_sprite_ext(sprBike,2,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt+hspeed*5,c_white,1);
draw_sprite_ext(sprBike,3,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt,c_white,1);
//
draw_sprite_ext(sprBike,1,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt,c_white,1);
draw_sprite_ext(sprBike,14,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt,c_vehicle1,1);
//Handlebars
draw_sprite_ext(sprBike,0,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt+hspeed*5,c_white,1);
draw_sprite_ext(sprBike,15,x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),scale,scale,image_angle_alt+hspeed*5,c_vehicle1,1);

	//SHOES
	draw_sprite_ext(spr_player_shoe,0,left_shoe_x,left_shoe_y,scale-.03,scale-.03,image_angle,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,right_shoe_x,right_shoe_y,scale-.03,scale-.03,image_angle,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,left_shoe_x+lengthdir_x(5,image_angle+32),left_shoe_y+lengthdir_y(5,image_angle+32),scale-.03,scale-.03,image_angle+10,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,right_shoe_x+lengthdir_x(5,image_angle-32),right_shoe_y+lengthdir_y(5,image_angle-32),scale-.03,scale-.03,image_angle-10,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,left_shoe_x+lengthdir_x(0,image_angle+35),left_shoe_y+lengthdir_y(0,image_angle+35),scale-.03,scale-.03,image_angle+10,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,left_shoe_x+lengthdir_x(0,image_angle-35),left_shoe_y+lengthdir_y(0,image_angle-35),scale-.03,scale-.03,image_angle-10,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,right_shoe_x+lengthdir_x(0,image_angle+35),right_shoe_y+lengthdir_y(0,image_angle+35),scale-.03,scale-.03,image_angle+10,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,right_shoe_x+lengthdir_x(0,image_angle-35),right_shoe_y+lengthdir_y(0,image_angle-35),scale-.03,scale-.03,image_angle-10,shoe_color_3,1);
}

//arms
draw_sprite_ext(spr_player_hands,1,x+lengthdir_x(20,image_angle-265+hspeed),y+lengthdir_y(20,image_angle-265-+hspeed),scale,scale,image_angle+15+hspeed*5,skin_color,1);
draw_sprite_ext(spr_player_hands,2,x+lengthdir_x(20,image_angle+265+hspeed),y+lengthdir_y(20,image_angle+265+hspeed),scale,scale,image_angle-15+hspeed*5,skin_color,1);

if shirt_type=1 {
draw_sprite_ext(spr_player_arm,4,x+lengthdir_x(10,image_angle+180+hspeed),y+lengthdir_y(10,image_angle+180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color,1);
draw_sprite_ext(spr_player_arm,5,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,8,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color_2,1);
draw_sprite_ext(spr_player_arm,9,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color_2,1);

draw_sprite_ext(spr_player_arm,10,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color_3,1);
draw_sprite_ext(spr_player_arm,11,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color_3,1);
}

	//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(50,image_angle-180),y+lengthdir_y(50,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	}
	
	
	
	
	//MOTORCYCLE
	if vehicle=3{

//wheels
draw_sprite_ext(sprMotorcycle,wheels_m+5,x+lengthdir_x(35,image_angle),y+lengthdir_y(35,image_angle),scale*.5,scale*.5,image_angle_alt+hspeed*5+180,c_white,1);
draw_sprite_ext(sprMotorcycle,wheels_m+2,x+lengthdir_x(35,image_angle),y+lengthdir_y(35,image_angle),scale*.5,scale*.5,image_angle_alt+180,c_white,1);
//
draw_sprite_ext(sprMotorcycle,0,x+lengthdir_x(35,image_angle),y+lengthdir_y(35,image_angle),scale*.5,scale*.5,image_angle_alt+180,c_white,1);
//Handlebars
draw_sprite_ext(sprMotorcycle,1,x+lengthdir_x(35,image_angle),y+lengthdir_y(35,image_angle),scale*.5,scale*.5,image_angle_alt+hspeed*5+180,c_white,1);

//SHOES
/*
	draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(10,image_angle+35),y+lengthdir_y(10,image_angle+35),scale-.03,scale-.03,image_angle+10,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(10,image_angle-35),y+lengthdir_y(10,image_angle-35),scale-.03,scale-.03,image_angle-10,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(15,iamage_angle+32),y+lengthdir_y(15,image_angle+32),scale-.03,scale-.03,image_angle+10,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(15,image_angle-32),y+lengthdir_y(15,image_angle-32),scale-.03,scale-.03,image_angle-10,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(10,image_angle+35),y+lengthdir_y(10,image_angle+35),scale-.03,scale-.03,image_angle+10,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(10,image_angle-35),y+lengthdir_y(10,image_angle-35),scale-.03,scale-.03,image_angle-10,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(10,image_angle+35),y+lengthdir_y(10,image_angle+35),scale-.03,scale-.03,image_angle+10,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(10,image_angle-35),y+lengthdir_y(10,image_angle-35),scale-.03,scale-.03,image_angle-10,shoe_color_3,1);
}
*/
//arms
draw_sprite_ext(spr_player_hands,1,x+lengthdir_x(20,image_angle-265+hspeed),y+lengthdir_y(20,image_angle-265-+hspeed),scale,scale,image_angle+15+hspeed*5,skin_color,1);
draw_sprite_ext(spr_player_hands,2,x+lengthdir_x(20,image_angle+265+hspeed),y+lengthdir_y(20,image_angle+265+hspeed),scale,scale,image_angle-15+hspeed*5,skin_color,1);

if shirt_type=1 {
draw_sprite_ext(spr_player_arm,4,x+lengthdir_x(10,image_angle+180+hspeed),y+lengthdir_y(10,image_angle+180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color,1);
draw_sprite_ext(spr_player_arm,5,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,8,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color_2,1);
draw_sprite_ext(spr_player_arm,9,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color_2,1);

draw_sprite_ext(spr_player_arm,10,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle+45+hspeed*4,arm_color_3,1);
draw_sprite_ext(spr_player_arm,11,x+lengthdir_x(10,image_angle-180+hspeed),y+lengthdir_y(10,image_angle-180+hspeed),scale,scale,image_angle-45+hspeed*4,arm_color_3,1);
}

	//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(10,image_angle-180),y+lengthdir_y(10,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(50,image_angle-180),y+lengthdir_y(50,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	}
	
	
}





//COSMOS

if level=6 {
	
	//SPACEBOARD
	if vehicle=0{
draw_sprite_ext(sprSurfboard,0,x,y,scale-0.05,scale-0.05,image_angle_alt+180,c_white,1);
//SHOES
draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(30,image_angle),y+lengthdir_y(30,image_angle),scale,scale,image_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),scale,scale,image_angle,shoe_color_3,1);
}

//arms
draw_sprite_ext(spr_player_hands,0,x+lengthdir_x(12,image_angle-25),y+lengthdir_y(12,image_angle-25),scale,scale,image_angle,skin_color,1);
if shirt_type=1 {
draw_sprite_ext(spr_player_arm,0,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,2,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_2,1);
draw_sprite_ext(spr_player_arm,3,x+lengthdir_x(15,image_angle-180),y+lengthdir_y(15,image_angle-180),scale,scale,image_angle,arm_color_3,1);
}
//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(40,image_angle-180),y+lengthdir_y(40,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	
	}
		
	
	
	
	//SpaceMobile
	if vehicle=1{
		//draw_sprite_ext(spr_sb,0,x+lengthdir_x(25,image_angle+35),y+lengthdir_y(25,image_angle+35),scale/3,scale*1.4,image_angle+90,c_vehicle3,1);
		//draw_sprite_ext(spr_sb,0,x+lengthdir_x(25,image_angle-35),y+lengthdir_y(25,image_angle-35),scale/3,scale*1.4,image_angle+90,c_vehicle3,1);

draw_sprite_ext(sprJetski,1,x+lengthdir_x(50,image_angle),y+lengthdir_y(50,image_angle),scale,scale,image_angle,c_vehicle1,1);

draw_sprite_ext(sprJetski,2,x+lengthdir_x(50,image_angle),y+lengthdir_y(50,image_angle),scale,scale,image_angle,c_vehicle2,1);

draw_sprite_ext(sprJetski,3,x+lengthdir_x(50,image_angle),y+lengthdir_y(50,image_angle),scale,scale,image_angle+hspeed*5,c_vehicle1,1);

	//SHOES
	draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(35,image_angle+32),y+lengthdir_y(35,image_angle+32),scale-.03,scale-.03,image_angle+10,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,x+lengthdir_x(35,image_angle-32),y+lengthdir_y(35,image_angle-32),scale-.03,scale-.03,image_angle-10,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(30,image_angle+35),y+lengthdir_y(30,image_angle+35),scale-.03,scale-.03,image_angle+10,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,x+lengthdir_x(30,image_angle-35),y+lengthdir_y(30,image_angle-35),scale-.03,scale-.03,image_angle-10,shoe_color_3,1);
}

//arms
draw_sprite_ext(spr_player_hands,1,x+lengthdir_x(12,image_angle-25+hspeed),y+lengthdir_y(12,image_angle-25+hspeed),scale,scale,image_angle+hspeed*5,skin_color,1);
draw_sprite_ext(spr_player_hands,2,x+lengthdir_x(12,image_angle+25+hspeed),y+lengthdir_y(12,image_angle+25+hspeed),scale,scale,image_angle+hspeed*5,skin_color,1);

if shirt_type=1 {
draw_sprite_ext(spr_player_arm,4,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color,1);
draw_sprite_ext(spr_player_arm,5,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,8,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color_2,1);
draw_sprite_ext(spr_player_arm,9,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color_2,1);

draw_sprite_ext(spr_player_arm,10,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color_3,1);
draw_sprite_ext(spr_player_arm,11,x+lengthdir_x(15,image_angle-180+hspeed),y+lengthdir_y(15,image_angle-180+hspeed),scale,scale,image_angle+hspeed*4,arm_color_3,1);
}

	//Face
draw_sprite_ext(spr_player_face,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,skin_color,1);
draw_sprite_ext(spr_player_band2,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,x+lengthdir_x(0,image_angle-180),y+lengthdir_y(0,image_angle-180),scale,scale,(image_angle-270)/2+90,glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,x+lengthdir_x(40,image_angle-180),y+lengthdir_y(40,image_angle-180),scale,scale,(image_angle-270)/2+90,hair_color,1);
	}
	
	
	
	
	
}












/*
//TUNDRA
if level =0 {

	
	//SNOWBOARD
	if vehicle=0{
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
	
draw_sprite_ext(spr_sb,0,x,y,scale,scale,image_angle_alt,c_white,1);
//SHOES
draw_sprite_ext(spr_player_shoe,0,shoes_x,shoes_y,scale,scale,image_angle,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoes_tip_x,shoes_tip_y,scale,scale,image_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoes_laces_x,shoes_laces_y,scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoes_laces_x,shoes_laces_y,scale,scale,image_angle,shoe_color_3,1);
}

//arms

draw_sprite_ext(spr_player_handsLR,3,handR_x,handR_y,scale,scale,body_angle,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle,skin_color,1); //LEFT
if shirt_type=1 {
//draw_sprite_ext(spr_player_arm,0,arm_x,arm_y,scale,scale,body_angle,arm_color,1);

draw_sprite_ext(spr_player_armR,4,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT


}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);

//draw_sprite_ext(spr_player_arm,2,arm_x,arm_y,scale,scale,body_angle,arm_color_2,1);
//draw_sprite_ext(spr_player_arm,3,arm_x,arm_y,scale,scale,body_angle,arm_color_3,1);

draw_sprite_ext(spr_player_armR,6,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT


draw_sprite_ext(spr_player_armR,7,armR_x,armR_y,scale,scale,body_angle,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,body_angle,arm_color_2,1); //LEFT

}
//Face

draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);

	}
	
	
	//SKI
	if vehicle=1{
		
	var skiR_x = x+lengthdir_x(50*scale,image_angle-90);
	var skiR_y = y+lengthdir_y(50*scale,image_angle-90);
	var skiL_x = x+lengthdir_x(50*scale,image_angle+90);
	var skiL_y = y+lengthdir_y(50*scale,image_angle+90);
	
	head_x=x+lengthdir_x(20*scale,image_angle);
	head_y=y+lengthdir_y(20*scale,image_angle);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=x+lengthdir_x(100*scale,body_angle-135);
	armR_y=y+lengthdir_y(100*scale,body_angle-135);
	handR_x=armR_x+lengthdir_x(40*scale,body_angle-105);
	handR_y=armR_y+lengthdir_y(40*scale,body_angle-105);
	
	armL_x=x+lengthdir_x(100*scale,body_angle+135);
	armL_y=y+lengthdir_y(100*scale,body_angle+135);
	handL_x=armL_x+lengthdir_x(60*scale,body_angle+105);
	handL_y=armL_y+lengthdir_y(60*scale,body_angle+105);
	
	shoes_x=x+lengthdir_x(110*scale,image_angle);
	shoes_y=y+lengthdir_y(110*scale,image_angle);
	
	var shoesR_x = x+lengthdir_x(70*scale,image_angle-35);
	var shoesR_y = y+lengthdir_y(70*scale,image_angle-35);
	var shoesL_x = x+lengthdir_x(70*scale,image_angle+35);
	var shoesL_y = y+lengthdir_y(70*scale,image_angle+35);
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,image_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,image_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,image_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,image_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,image_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,image_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,image_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,image_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,image_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,image_angle+180);
	
		//BOARD
	draw_sprite_ext(spr_sb,0,skiL_x,skiL_y,scale/2,scale*1.2,image_angle+90,c_white,1);
	draw_sprite_ext(spr_sb,0,skiR_x,skiR_y,scale/2,scale*1.2,image_angle+90,c_white,1);
	//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,image_angle,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,image_angle,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,image_angle,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,image_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,image_angle,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,image_angle,shoe_color_3,1);
}
	
//arms

draw_sprite_ext(spr_player_handsLR,3,handR_x,handR_y,scale,scale,body_angle,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,1,handL_x,handL_y,scale,scale,body_angle,skin_color,1); //LEFT
if shirt_type=1 {
	
draw_sprite_ext(spr_player_armR,4,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,4,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT


}
if shirt_type=2 {

draw_sprite_ext(spr_player_armR,6,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,6,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT


draw_sprite_ext(spr_player_armR,7,armR_x,armR_y,scale,scale,body_angle,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,7,armL_x,armL_y,scale,scale,body_angle,arm_color_2,1); //LEFT

}

//Face

draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);


	}
	
	//SnowMobile
	if vehicle=2{
	var jetski_x = x+lengthdir_x(110*scale,image_angle);
	var jetski_y = y+lengthdir_y(110*scale,image_angle);
	
	var skiR_x = jetski_x+lengthdir_x(125*scale,image_angle-145);
	var skiR_y = jetski_y+lengthdir_y(125*scale,image_angle-145);
	var skiL_x = jetski_x+lengthdir_x(125*scale,image_angle+145);
	var skiL_y = jetski_y+lengthdir_y(125*scale,image_angle+145);
	

	
	head_x=x+lengthdir_x(80*scale,image_angle-180);
	head_y=y+lengthdir_y(80*scale,image_angle-180);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=x+lengthdir_x(200*scale,image_angle-165);
	armR_y=y+lengthdir_y(200*scale,image_angle-165);
	handR_x=armR_x+lengthdir_x(225*scale,image_angle-15);
	handR_y=armR_y+lengthdir_y(225*scale,image_angle-15);
	
	armL_x=x+lengthdir_x(200*scale,image_angle+165);
	armL_y=y+lengthdir_y(200*scale,image_angle+165);
	handL_x=armL_x+lengthdir_x(225*scale,image_angle+15);
	handL_y=armL_y+lengthdir_y(225*scale,image_angle+15);
	
	shoes_x=x+lengthdir_x(70*scale,image_angle);
	shoes_y=y+lengthdir_y(70*scale,image_angle);
	
	var shoesR_x = x+lengthdir_x(120*scale,image_angle-135);
	var shoesR_y = y+lengthdir_y(120*scale,image_angle-135);
	var shoesL_x = x+lengthdir_x(120*scale,image_angle+135);
	var shoesL_y = y+lengthdir_y(120*scale,image_angle+135);
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,image_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,image_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,image_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,image_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,image_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,image_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,image_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,image_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,image_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,image_angle+180);
		
//SKI Mobile	
draw_sprite_ext(spr_sb,0,skiL_x,skiL_y,scale/2,scale*1.2,image_angle+90,c_white,1);
draw_sprite_ext(spr_sb,0,skiR_x,skiR_y,scale/2,scale*1.2,image_angle+90,c_white,1);

draw_sprite_ext(sprJetski,1,jetski_x,jetski_y,scale,scale,image_angle,c_vehicle1,1);

draw_sprite_ext(sprJetski,2,jetski_x,jetski_y,scale,scale,image_angle,c_vehicle2,1);

draw_sprite_ext(sprJetski,3,jetski_x,jetski_y,scale,scale,image_angle+hspeed*3,c_vehicle1,1);

	//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,image_angle,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,image_angle,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,image_angle,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,image_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,image_angle,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,image_angle,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,image_angle-18+hspeed/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,image_angle+18+hspeed/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,image_angle-18,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,image_angle+18,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,image_angle-18,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,image_angle+18,arm_color_2,1); //LEFT
}

//Face
draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);
	
	
	}

} //LEVEL





//DESERT
if level =1 {
	//SNOWBOARD
	if vehicle=0{
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
	
draw_sprite_ext(spr_sb,0,x,y,scale,scale,image_angle_alt,c_white,1);
//SHOES
draw_sprite_ext(spr_player_shoe,0,shoes_x,shoes_y,scale,scale,image_angle,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoes_tip_x,shoes_tip_y,scale,scale,image_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoes_laces_x,shoes_laces_y,scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoes_laces_x,shoes_laces_y,scale,scale,image_angle,shoe_color_3,1);
}

//arms

draw_sprite_ext(spr_player_handsLR,3,handR_x,handR_y,scale,scale,body_angle,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle,skin_color,1); //LEFT
if shirt_type=1 {
//draw_sprite_ext(spr_player_arm,0,arm_x,arm_y,scale,scale,body_angle,arm_color,1);

draw_sprite_ext(spr_player_armR,4,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT


}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);

//draw_sprite_ext(spr_player_arm,2,arm_x,arm_y,scale,scale,body_angle,arm_color_2,1);
//draw_sprite_ext(spr_player_arm,3,arm_x,arm_y,scale,scale,body_angle,arm_color_3,1);

draw_sprite_ext(spr_player_armR,6,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT


draw_sprite_ext(spr_player_armR,7,armR_x,armR_y,scale,scale,body_angle,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,body_angle,arm_color_2,1); //LEFT

}
//Face

draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);

	}
	
	
	
	//Bike
	if vehicle=1{
	var bike_x = x+lengthdir_x(55*scale,image_angle);
	var bike_y = y+lengthdir_y(55*scale,image_angle);
	
	var pedals_x = x+lengthdir_x(15*scale,image_angle);
	var pedals_y = y+lengthdir_y(15*scale,image_angle);
	
	var wheelsF_x = bike_x+lengthdir_x(15*scale,image_angle);
	var wheelsF_y = bike_y+lengthdir_y(15*scale,image_angle);
	var wheelsR_x = bike_x+lengthdir_x(15*scale,image_angle);
	var wheelsR_y = bike_y+lengthdir_y(15*scale,image_angle);
	

	
	head_x=x+lengthdir_x(80*scale,vehicle_pre_angle+90);
	head_y=y+lengthdir_y(80*scale,vehicle_pre_angle+90);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=x+lengthdir_x(100*scale,image_angle-165);
	armR_y=y+lengthdir_y(100*scale,image_angle-165)+hspeed;
	handR_x=armR_x+lengthdir_x(230*scale,image_angle-50);
	handR_y=armR_y+lengthdir_y(230*scale,image_angle-50);
	
	armL_x=x+lengthdir_x((100)*scale,image_angle+165);
	armL_y=y+lengthdir_y((100+hspeed)*scale,image_angle+165+hspeed);
	handL_x=armL_x+lengthdir_x(230*scale,image_angle+50);
	handL_y=armL_y+lengthdir_y(230*scale,image_angle+50);

	shoes_x=x+lengthdir_x(70*scale,vehicle_pre_angle);
	shoes_y=y+lengthdir_y(70*scale,vehicle_pre_angle);
	
	var shoesR_x = x+lengthdir_x((360 - pedals_offset * 10)*scale,vehicle_pre_angle+113);
	var shoesR_y = y+lengthdir_y((360 - pedals_offset * 10)*scale,vehicle_pre_angle+114);
	var shoesL_x = x+lengthdir_x((260 + pedals_offset * 10)*scale,vehicle_pre_angle+70);
	var shoesL_y = y+lengthdir_y((260 + pedals_offset * 10)*scale,vehicle_pre_angle+70);
	
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,image_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,image_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,image_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,image_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,image_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,image_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,image_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,image_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,image_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,image_angle+180);

//pedals
draw_sprite_ext(sprBike,pedals,pedals_x,pedals_y,scale,scale,vehicle_pre_angle,c_white,1);
//wheels
draw_sprite_ext(sprBike,2,wheelsF_x,wheelsF_y,scale,scale,image_angle_alt+hspeed,c_white,1);
draw_sprite_ext(sprBike,3,wheelsR_x,wheelsR_y,scale,scale,vehicle_pre_angle,c_white,1);
//BODY
draw_sprite_ext(sprBike,1,bike_x,bike_y,scale,scale,vehicle_pre_angle,c_white,1);
draw_sprite_ext(sprBike,14,bike_x,bike_y,scale,scale,vehicle_pre_angle,c_vehicle1,1);
//Handlebars
draw_sprite_ext(sprBike,0,bike_x,bike_y,scale,scale,image_angle_alt+hspeed,c_white,1);
draw_sprite_ext(sprBike,15,bike_x,bike_y,scale,scale,image_angle_alt+hspeed,c_vehicle1,1);

//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle+-90,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle-15,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle+15,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,image_angle-55+hspeed/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,image_angle+55+hspeed/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,image_angle-55+hspeed/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,image_angle+55+hspeed/5,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,image_angle-55+hspeed/5,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,image_angle+55+hspeed/5,arm_color_2,1); //LEFT
}


//Face
draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);

	}

}






//WOODLAND

if level=2 {
	
		
	//Bike
	if vehicle=0{

var bike_x = x+lengthdir_x(55*scale,image_angle);
	var bike_y = y+lengthdir_y(55*scale,image_angle);
	
	var pedals_x = x+lengthdir_x(15*scale,image_angle);
	var pedals_y = y+lengthdir_y(15*scale,image_angle);
	
	var wheelsF_x = bike_x+lengthdir_x(15*scale,image_angle);
	var wheelsF_y = bike_y+lengthdir_y(15*scale,image_angle);
	var wheelsR_x = bike_x+lengthdir_x(15*scale,image_angle);
	var wheelsR_y = bike_y+lengthdir_y(15*scale,image_angle);
	

	
	head_x=x+lengthdir_x(80*scale,vehicle_pre_angle+90);
	head_y=y+lengthdir_y(80*scale,vehicle_pre_angle+90);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=x+lengthdir_x(100*scale,image_angle-165);
	armR_y=y+lengthdir_y(100*scale,image_angle-165+hspeed);
	handR_x=armR_x+lengthdir_x(230*scale,image_angle-50);
	handR_y=armR_y+lengthdir_y(230*scale,image_angle-50);
	
	armL_x=x+lengthdir_x((100)*scale,image_angle+165);
	armL_y=y+lengthdir_y((100+hspeed)*scale,image_angle+165+hspeed);
	handL_x=armL_x+lengthdir_x(230*scale,image_angle+50);
	handL_y=armL_y+lengthdir_y(230*scale,image_angle+50);

	shoes_x=x+lengthdir_x(70*scale,vehicle_pre_angle);
	shoes_y=y+lengthdir_y(70*scale,vehicle_pre_angle);
	
	var shoesR_x = x+lengthdir_x((360 - pedals_offset * 10)*scale,vehicle_pre_angle+113);
	var shoesR_y = y+lengthdir_y((360 - pedals_offset * 10)*scale,vehicle_pre_angle+114);
	var shoesL_x = x+lengthdir_x((260 + pedals_offset * 10)*scale,vehicle_pre_angle+70);
	var shoesL_y = y+lengthdir_y((260 + pedals_offset * 10)*scale,vehicle_pre_angle+70);
	
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,image_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,image_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,image_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,image_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,image_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,image_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,image_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,image_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,image_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,image_angle+180);

//pedals
draw_sprite_ext(sprBike,pedals,pedals_x,pedals_y,scale,scale,vehicle_pre_angle,c_white,1);
//wheels
draw_sprite_ext(sprBike,2,wheelsF_x,wheelsF_y,scale,scale,image_angle_alt+hspeed,c_white,1);
draw_sprite_ext(sprBike,3,wheelsR_x,wheelsR_y,scale,scale,vehicle_pre_angle,c_white,1);
//BODY
draw_sprite_ext(sprBike,1,bike_x,bike_y,scale,scale,vehicle_pre_angle,c_white,1);
draw_sprite_ext(sprBike,14,bike_x,bike_y,scale,scale,vehicle_pre_angle,c_vehicle1,1);
//Handlebars
draw_sprite_ext(sprBike,0,bike_x,bike_y,scale,scale,image_angle_alt+hspeed,c_white,1);
draw_sprite_ext(sprBike,15,bike_x,bike_y,scale,scale,image_angle_alt+hspeed,c_vehicle1,1);

//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle+-90,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle-15,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle+15,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,image_angle-55+hspeed/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,image_angle+55+hspeed/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,image_angle-55+hspeed/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,image_angle+55+hspeed/5,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,image_angle-55+hspeed/5,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,image_angle+55+hspeed/5,arm_color_2,1); //LEFT
}


//Face
draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);

	}






//ATV
	if vehicle=1{
		
	var atv_x = x+lengthdir_x(150*scale,image_angle)
	var atv_y = y+lengthdir_y(150*scale,image_angle);

	
	var wheelsF_x = atv_x+lengthdir_x(15*scale,image_angle);
	var wheelsF_y = atv_y+lengthdir_y(15*scale,image_angle);
	var wheelsR_x = atv_x+lengthdir_x(15*scale,image_angle);
	var wheelsR_y = atv_y+lengthdir_y(15*scale,image_angle);
	

	
	head_x=x+lengthdir_x(80*scale,vehicle_pre_angle+90);
	head_y=y+lengthdir_y(80*scale,vehicle_pre_angle+90);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=x+lengthdir_x(100*scale,image_angle-175);
	armR_y=y+lengthdir_y(100*scale,image_angle-175+hspeed/5);
	handR_x=armR_x+lengthdir_x(100*scale,image_angle-70);
	handR_y=armR_y+lengthdir_y(100*scale,image_angle-70);
	
	armL_x=x+lengthdir_x(100*scale,image_angle+175);
	armL_y=y+lengthdir_y(100*scale,image_angle+175+hspeed/5);
	handL_x=armL_x+lengthdir_x(105*scale,image_angle+50);
	handL_y=armL_y+lengthdir_y(105*scale,image_angle+50);

	shoes_x=x+lengthdir_x(70*scale,image_angle);
	shoes_y=y+lengthdir_y(70*scale,image_angle);
	
	var shoesR_x = x+lengthdir_x(220*scale,vehicle_pre_angle-225);
	var shoesR_y = y+lengthdir_y(220*scale,vehicle_pre_angle-225);
	var shoesL_x = x+lengthdir_x(220*scale,vehicle_pre_angle+45);
	var shoesL_y = y+lengthdir_y(220*scale,vehicle_pre_angle+45);
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,image_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,image_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,image_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,image_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,image_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,image_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,image_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,image_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,image_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,image_angle+180);
	
		
//WHEELS
draw_sprite_ext(sprATV,wheels_atv+1,atv_x,atv_y,scale-.03,scale-.03,vehicle_pre_angle-180,c_white,1);

draw_sprite_ext(sprATV,wheels_atv+7,atv_x,atv_y,scale-.03,scale-.03,image_angle_alt+180+hspeed/5,c_white,1);
draw_sprite_ext(sprATV,6,atv_x,atv_y,scale-.03,scale-.03,image_angle_alt+180+hspeed/5,c_vehicle1,1);


//BODY
draw_sprite_ext(sprATV,0,atv_x,atv_y,scale-.03,scale-.03,vehicle_pre_angle-180,c_vehicle1,1);
//HANDLEBARS
draw_sprite_ext(sprATV,5,atv_x,atv_y,scale-.03,scale-.03,image_angle_alt+180+hspeed/5,c_white,1);


	//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_hands,1,handL_x,handL_y,scale,scale,image_angle+15+hspeed*5,skin_color,1);
draw_sprite_ext(spr_player_hands,2,handR_x,handR_y,scale,scale,image_angle-15+hspeed*5,skin_color,1);

if shirt_type=1 {
draw_sprite_ext(spr_player_arm,4,armL_x,armL_y,scale,scale,image_angle+40+hspeed*4,arm_color,1);
draw_sprite_ext(spr_player_arm,5,armR_x,armL_y,scale,scale,image_angle-40+hspeed*4,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_arm,8,armL_x,armL_y,scale,scale,image_angle+40+hspeed*4,arm_color_2,1);
draw_sprite_ext(spr_player_arm,9,armR_x,armL_y,scale,scale,image_angle-40+hspeed*4,arm_color_2,1);

draw_sprite_ext(spr_player_arm,10,armL_x,armL_y,scale,scale,image_angle+40+hspeed*4,arm_color_3,1);
draw_sprite_ext(spr_player_arm,11,armR_x,armL_y,scale,scale,image_angle-40+hspeed*4,arm_color_3,1);
}

//Face
draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);

	}
	
	
}






//JUNGLE

if level =3 {
	
	
		
	//Bike
	if vehicle=0{
var bike_x = x+lengthdir_x(50*scale,image_angle);
	var bike_y = y+lengthdir_y(50*scale,image_angle);
	
	var pedals_x = x+lengthdir_x(15*scale,image_angle);
	var pedals_y = y+lengthdir_y(15*scale,image_angle);
	
	var wheelsF_x = bike_x+lengthdir_x(15*scale,image_angle);
	var wheelsF_y = bike_y+lengthdir_y(15*scale,image_angle);
	var wheelsR_x = bike_x+lengthdir_x(15*scale,image_angle);
	var wheelsR_y = bike_y+lengthdir_y(15*scale,image_angle);
	

	
	head_x=x+lengthdir_x(80*scale,vehicle_pre_angle+90);
	head_y=y+lengthdir_y(80*scale,vehicle_pre_angle+90);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=head_x+lengthdir_x(30*scale,image_angle-90);
	armR_y=head_y+lengthdir_y(30*scale,image_angle-90+hspeed);
	handR_x=armR_x+lengthdir_x(225*scale,image_angle-57+hspeed);
	handR_y=armR_y+lengthdir_y(225*scale,image_angle-58+hspeed);
	
	armL_x=head_x+lengthdir_x(30*scale,image_angle+90);
	armL_y=head_y+lengthdir_y(30*scale,image_angle+90+hspeed);
	handL_x=armL_x+lengthdir_x(225*scale,image_angle+58+hspeed);
	handL_y=armL_y+lengthdir_y(225*scale,image_angle+57+hspeed);

	shoes_x=x+lengthdir_x(70*scale,vehicle_pre_angle);
	shoes_y=y+lengthdir_y(70*scale,vehicle_pre_angle);
	
	var shoesR_x = x+lengthdir_x((360 - pedals_offset * 10)*scale,vehicle_pre_angle+113);
	var shoesR_y = y+lengthdir_y((360 - pedals_offset * 10)*scale,vehicle_pre_angle+114);
	var shoesL_x = x+lengthdir_x((260 + pedals_offset * 10)*scale,vehicle_pre_angle+70);
	var shoesL_y = y+lengthdir_y((260 + pedals_offset * 10)*scale,vehicle_pre_angle+70);
	
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,image_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,image_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,image_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,image_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,image_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,image_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,image_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,image_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,image_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,image_angle+180);

//pedals
draw_sprite_ext(sprBike,pedals,pedals_x,pedals_y,scale,scale,vehicle_pre_angle,c_white,1);
//wheels
draw_sprite_ext(sprBike,2,wheelsF_x,wheelsF_y,scale,scale,image_angle_alt+hspeed,c_white,1);
draw_sprite_ext(sprBike,3,wheelsR_x,wheelsR_y,scale,scale,vehicle_pre_angle,c_white,1);
//BODY
draw_sprite_ext(sprBike,1,bike_x,bike_y,scale,scale,vehicle_pre_angle,c_white,1);
draw_sprite_ext(sprBike,14,bike_x,bike_y,scale,scale,vehicle_pre_angle,c_vehicle1,1);
//Handlebars
draw_sprite_ext(sprBike,0,bike_x,bike_y,scale,scale,image_angle_alt+hspeed,c_white,1);
draw_sprite_ext(sprBike,15,bike_x,bike_y,scale,scale,image_angle_alt+hspeed,c_vehicle1,1);

//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle+-90,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle-15,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle+15,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,image_angle-60+hspeed,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,image_angle+60+hspeed,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,image_angle-60+hspeed,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,image_angle+60+hspeed,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,image_angle-60+hspeed,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,image_angle+60+hspeed,arm_color_2,1); //LEFT
}


//Face
draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);

	}



	
}







//OCEAN

if level=4 {
	

	
	//SURFBOARD
	if vehicle=0{

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
	
draw_sprite_ext(sprSurfboard,0,x,y,scale-0.2,scale-0.2,image_angle_alt+180,c_white,1);
//SHOES
draw_sprite_ext(spr_player_shoe,0,shoes_x,shoes_y,scale,scale,image_angle,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoes_tip_x,shoes_tip_y,scale,scale,image_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoes_laces_x,shoes_laces_y,scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoes_laces_x,shoes_laces_y,scale,scale,image_angle,shoe_color_3,1);
}

//arms

draw_sprite_ext(spr_player_handsLR,3,handR_x,handR_y,scale,scale,body_angle,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle,skin_color,1); //LEFT
if shirt_type=1 {
//draw_sprite_ext(spr_player_arm,0,arm_x,arm_y,scale,scale,body_angle,arm_color,1);

draw_sprite_ext(spr_player_armR,4,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT


}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);

//draw_sprite_ext(spr_player_arm,2,arm_x,arm_y,scale,scale,body_angle,arm_color_2,1);
//draw_sprite_ext(spr_player_arm,3,arm_x,arm_y,scale,scale,body_angle,arm_color_3,1);

draw_sprite_ext(spr_player_armR,6,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT


draw_sprite_ext(spr_player_armR,7,armR_x,armR_y,scale,scale,body_angle,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,body_angle,arm_color_2,1); //LEFT

}
//Face

draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);
	
	}
	
	
	//WATERSKI
	if vehicle=1{
		
		
	var skiR_x = x+lengthdir_x(50*scale,image_angle-90);
	var skiR_y = y+lengthdir_y(50*scale,image_angle-90);
	var skiL_x = x+lengthdir_x(50*scale,image_angle+90);
	var skiL_y = y+lengthdir_y(50*scale,image_angle+90);
	var handle_x = x+lengthdir_x(310*scale,body_angle);
	var handle_y = y+lengthdir_y(310*scale,body_angle);
	head_x=x+lengthdir_x(20*scale,image_angle);
	head_y=y+lengthdir_y(20*scale,image_angle);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=x+lengthdir_x(100*scale,body_angle-115);
	armR_y=y+lengthdir_y(100*scale,body_angle-115);
	handR_x=armR_x+lengthdir_x(285*scale,body_angle+36);
	handR_y=armR_y+lengthdir_y(285*scale,body_angle+36);
	
	armL_x=x+lengthdir_x(100*scale,body_angle+115);
	armL_y=y+lengthdir_y(100*scale,body_angle+115);
	handL_x=armL_x+lengthdir_x(285*scale,body_angle-36);
	handL_y=armL_y+lengthdir_y(285*scale,body_angle-36);
	
	shoes_x=x+lengthdir_x(110*scale,image_angle);
	shoes_y=y+lengthdir_y(110*scale,image_angle);
	
	var shoesR_x = x+lengthdir_x(80*scale,image_angle-35);
	var shoesR_y = y+lengthdir_y(80*scale,image_angle-35);
	var shoesL_x = x+lengthdir_x(80*scale,image_angle+35);
	var shoesL_y = y+lengthdir_y(80*scale,image_angle+35);
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,image_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,image_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,image_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,image_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,image_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,image_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,image_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,image_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,image_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,image_angle+180);
	
		//BOARD
	draw_sprite_ext(spr_sb,0,skiL_x,skiL_y,scale/2,scale*1.2,image_angle+90,c_white,1);
	draw_sprite_ext(spr_sb,0,skiR_x,skiR_y,scale/2,scale*1.2,image_angle+90,c_white,1);
	//HANDLE
	draw_sprite_ext(sprSurfHandle,0,handle_x,handle_y,scale*1.2,scale*1.2,0+hspeed*4,c_white,1);
	
	draw_line_width_color(handle_x,handle_y,room_width/3,room_height,3,c_dkgray,c_ltgray);
	draw_line_width_color(handle_x,handle_y,room_width/3,room_height,1,c_white,c_white);

	//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,image_angle,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,image_angle,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,body_angle,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,body_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,body_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,body_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,body_angle,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,body_angle,shoe_color_3,1);
}
	
//arms

draw_sprite_ext(spr_player_handsLR,0,handR_x,handR_y,scale,scale,body_angle,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,2,handL_x,handL_y,scale,scale,body_angle,skin_color,1); //LEFT
if shirt_type=1 {
	
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT


}
if shirt_type=2 {

draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT


draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,body_angle,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,body_angle,arm_color_2,1); //LEFT

}

//Face
draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);


	}
	
	//SnowMobile
	if vehicle=2{
	var jetski_x = x+lengthdir_x(110*scale,image_angle);
	var jetski_y = y+lengthdir_y(110*scale,image_angle);

	
	head_x=x+lengthdir_x(80*scale,image_angle-180);
	head_y=y+lengthdir_y(80*scale,image_angle-180);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=x+lengthdir_x(200*scale,image_angle-165);
	armR_y=y+lengthdir_y(200*scale,image_angle-165+hspeed*3);
	handR_x=armR_x+lengthdir_x(225*scale,image_angle-15);
	handR_y=armR_y+lengthdir_y(225*scale,image_angle-15);
	
	armL_x=x+lengthdir_x(200*scale,image_angle+165);
	armL_y=y+lengthdir_y(200*scale,image_angle+165+hspeed*3);
	handL_x=armL_x+lengthdir_x(225*scale,image_angle+15);
	handL_y=armL_y+lengthdir_y(225*scale,image_angle+15);
	
	shoes_x=x+lengthdir_x(70*scale,image_angle);
	shoes_y=y+lengthdir_y(70*scale,image_angle);
	
	var shoesR_x = x+lengthdir_x(120*scale,image_angle-135);
	var shoesR_y = y+lengthdir_y(120*scale,image_angle-135);
	var shoesL_x = x+lengthdir_x(120*scale,image_angle+135);
	var shoesL_y = y+lengthdir_y(120*scale,image_angle+135);
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,image_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,image_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,image_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,image_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,image_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,image_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,image_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,image_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,image_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,image_angle+180);
		
//SKI Mobile

draw_sprite_ext(sprJetski,1,jetski_x,jetski_y,scale,scale,image_angle,c_vehicle1,1);

draw_sprite_ext(sprJetski,2,jetski_x,jetski_y,scale,scale,image_angle,c_vehicle2,1);

draw_sprite_ext(sprJetski,3,jetski_x,jetski_y,scale,scale,image_angle+hspeed*3,c_vehicle1,1);

	//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,image_angle,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,image_angle,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,image_angle,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,image_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,image_angle,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,image_angle,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,image_angle-18+hspeed/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,image_angle+18+hspeed/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,image_angle-18,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,image_angle+18,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,image_angle-18,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,image_angle+18,arm_color_2,1); //LEFT
}

//Face
draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);
	
	}
	
	
	
}





//CITY

if level=5 {
	

	//SKATEBOARD
	if vehicle=0{
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
	
	shoesL_x=x+lengthdir_x(110*scale,image_angle);
	shoesL_y=y+lengthdir_y(110*scale,image_angle);
	shoesR_x=x+lengthdir_x(110*scale,image_angle+180);
	shoesR_y=y+lengthdir_y(110*scale,image_angle+180);
	
	shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,image_angle);
	shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,image_angle);
	shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,image_angle+180);
	shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,image_angle+180);
	
	shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,image_angle);
	shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,image_angle);
	shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,image_angle+180);
	shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,image_angle+180);
	
draw_sprite_ext(sprSkateboard_Ride,0,x,y,2*scale,2*scale,image_angle_alt,c_white,1);
//SHOES
draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale,scale,image_angle-35,shoe_color,1);
draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale,scale,image_angle-125,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale,scale,image_angle-35,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale,scale,image_angle-35,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale,scale,image_angle-35,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale,scale,image_angle-35,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale,scale,image_angle-35,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale,scale,image_angle-35,shoe_color_3,1);
}

//arms

draw_sprite_ext(spr_player_handsLR,3,handR_x,handR_y,scale,scale,body_angle,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle,skin_color,1); //LEFT
if shirt_type=1 {
//draw_sprite_ext(spr_player_arm,0,arm_x,arm_y,scale,scale,body_angle,arm_color,1);

draw_sprite_ext(spr_player_armR,4,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT


}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);

//draw_sprite_ext(spr_player_arm,2,arm_x,arm_y,scale,scale,body_angle,arm_color_2,1);
//draw_sprite_ext(spr_player_arm,3,arm_x,arm_y,scale,scale,body_angle,arm_color_3,1);

draw_sprite_ext(spr_player_armR,6,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT


draw_sprite_ext(spr_player_armR,7,armR_x,armR_y,scale,scale,body_angle,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,body_angle,arm_color_2,1); //LEFT

}
//Face

draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);
	}
	
	//SCOOTER
	if vehicle=1{
		
	var scooter_x = x+lengthdir_x(160,image_angle);
	var scooter_y = y+lengthdir_y(160,image_angle);
	var wheelsF_x =	scooter_x+lengthdir_x(35,image_angle);
	var wheelsF_y = scooter_y+lengthdir_y(35,image_angle);
	var wheelsR_x = scooter_x+lengthdir_x(20,image_angle);
	var wheelsR_y = scooter_y+lengthdir_y(20,image_angle);
	
	head_x=x+lengthdir_x(80*scale,vehicle_pre_angle+90);
	head_y=y+lengthdir_y(80*scale,vehicle_pre_angle+90);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=head_x+lengthdir_x(30*scale,image_angle-90);
	armR_y=head_y+lengthdir_y(30*scale,image_angle-90+hspeed*5);
	handR_x=armR_x+lengthdir_x(220*scale,image_angle-26);
	handR_y=armR_y+lengthdir_y(220*scale,image_angle-26);
	
	armL_x=head_x+lengthdir_x(30*scale,image_angle+90);
	armL_y=head_y+lengthdir_y(30*scale,image_angle+90+hspeed*5);
	handL_x=armL_x+lengthdir_x(220*scale,image_angle+26);
	handL_y=armL_y+lengthdir_y(220*scale,image_angle+26);

	
	
	shoesL_x=scooter_x+lengthdir_x(155*scale,vehicle_pre_angle+90);
	shoesL_y=scooter_y+lengthdir_y(155*scale,vehicle_pre_angle+90);
	shoesR_x=scooter_x+lengthdir_x(350*scale,vehicle_pre_angle+90);
	shoesR_y=scooter_y+lengthdir_y(350*scale,vehicle_pre_angle+90);
	
	shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,vehicle_pre_angle);
	shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,vehicle_pre_angle);
	shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,vehicle_pre_angle+180);
	shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,vehicle_pre_angle+180);
	
	shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,vehicle_pre_angle);
	shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,vehicle_pre_angle);
	shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,vehicle_pre_angle+180);
	shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,vehicle_pre_angle+180);
	

	
		//wheel
		draw_sprite_ext(sprScooter,5,wheelsF_x,wheelsF_y, scale+.1,scale+.1,image_angle_alt-180+hspeed,c_vehicle1,1); //FRONT
		draw_sprite_ext(sprScooter,6,wheelsR_x,wheelsR_y,scale+.1,scale+.1,vehicle_pre_angle-180,c_vehicle1,1); //REAR
		draw_sprite_ext(sprScooter,4,wheelsR_x,wheelsR_y,scale+.1,scale+.1,image_angle_alt-180,c_white,1); //FRONT
//base
draw_sprite_ext(sprScooter,1,scooter_x, scooter_y,scale+.1,scale+.1,vehicle_pre_angle-180,c_vehicle1,1);
	
//handlebar
draw_sprite_ext(sprScooter,2,scooter_x, scooter_y,scale+.1,scale+.1,image_angle_alt-180+hspeed,c_white,1);


//SHOES
draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale,scale,image_angle-35,shoe_color,1);
draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale,scale,image_angle-125,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale,scale,image_angle-35,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale,scale,image_angle-125,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale,scale,image_angle-35,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale,scale,image_angle-35,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale,scale,image_angle-125,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale,scale,image_angle-125,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle-15,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle+15,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,image_angle-25+hspeed/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,image_angle+25+hspeed/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,image_angle-25+hspeed/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,image_angle+25+hspeed/5,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,image_angle-25+hspeed/5,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,image_angle+25+hspeed/5,arm_color_2,1); //LEFT
}


//Face
draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);

	}
	
	
	
	
	//Bike
	if vehicle=2{
	var bike_x = x+lengthdir_x(55*scale,image_angle);
	var bike_y = y+lengthdir_y(55*scale,image_angle);
	
	var pedals_x = x+lengthdir_x(15*scale,image_angle);
	var pedals_y = y+lengthdir_y(15*scale,image_angle);
	
	var wheelsF_x = bike_x+lengthdir_x(15*scale,image_angle);
	var wheelsF_y = bike_y+lengthdir_y(15*scale,image_angle);
	var wheelsR_x = bike_x+lengthdir_x(15*scale,image_angle);
	var wheelsR_y = bike_y+lengthdir_y(15*scale,image_angle);
	

	
	head_x=x+lengthdir_x(80*scale,vehicle_pre_angle+90);
	head_y=y+lengthdir_y(80*scale,vehicle_pre_angle+90);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=x+lengthdir_x(100*scale,image_angle-165);
	armR_y=y+lengthdir_y(100*scale,image_angle-165)+hspeed;
	handR_x=armR_x+lengthdir_x(230*scale,image_angle-50);
	handR_y=armR_y+lengthdir_y(230*scale,image_angle-50);
	
	armL_x=x+lengthdir_x((100)*scale,image_angle+165);
	armL_y=y+lengthdir_y((100+hspeed)*scale,image_angle+165+hspeed);
	handL_x=armL_x+lengthdir_x(230*scale,image_angle+50);
	handL_y=armL_y+lengthdir_y(230*scale,image_angle+50);

	shoes_x=x+lengthdir_x(70*scale,vehicle_pre_angle);
	shoes_y=y+lengthdir_y(70*scale,vehicle_pre_angle);
	
	var shoesR_x = x+lengthdir_x((360 - pedals_offset * 10)*scale,vehicle_pre_angle+113);
	var shoesR_y = y+lengthdir_y((360 - pedals_offset * 10)*scale,vehicle_pre_angle+114);
	var shoesL_x = x+lengthdir_x((260 + pedals_offset * 10)*scale,vehicle_pre_angle+70);
	var shoesL_y = y+lengthdir_y((260 + pedals_offset * 10)*scale,vehicle_pre_angle+70);
	
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,image_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,image_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,image_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,image_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,image_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,image_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,image_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,image_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,image_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,image_angle+180);

//pedals
draw_sprite_ext(sprBike,pedals,pedals_x,pedals_y,scale,scale,vehicle_pre_angle,c_white,1);
//wheels
draw_sprite_ext(sprBike,2,wheelsF_x,wheelsF_y,scale,scale,image_angle_alt+hspeed,c_white,1);
draw_sprite_ext(sprBike,3,wheelsR_x,wheelsR_y,scale,scale,vehicle_pre_angle,c_white,1);
//BODY
draw_sprite_ext(sprBike,1,bike_x,bike_y,scale,scale,vehicle_pre_angle,c_white,1);
draw_sprite_ext(sprBike,14,bike_x,bike_y,scale,scale,vehicle_pre_angle,c_vehicle1,1);
//Handlebars
draw_sprite_ext(sprBike,0,bike_x,bike_y,scale,scale,image_angle_alt+hspeed,c_white,1);
draw_sprite_ext(sprBike,15,bike_x,bike_y,scale,scale,image_angle_alt+hspeed,c_vehicle1,1);

//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle+-90,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle-15,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle+15,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,image_angle-55+hspeed/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,image_angle+55+hspeed/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,image_angle-55+hspeed/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,image_angle+55+hspeed/5,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,image_angle-55+hspeed/5,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,image_angle+55+hspeed/5,arm_color_2,1); //LEFT
}


//Face
draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);

	}
	
	
	
	
	//MOTORCYCLE
	if vehicle=3{
var bike_x = x+lengthdir_x(95*scale,image_angle);
	var bike_y = y+lengthdir_y(95*scale,image_angle);
	
	var pedals_x = x+lengthdir_x(15*scale,image_angle);
	var pedals_y = y+lengthdir_y(15*scale,image_angle);
	
	var wheelsF_x = bike_x+lengthdir_x(15*scale,image_angle);
	var wheelsF_y = bike_y+lengthdir_y(15*scale,image_angle);
	var wheelsR_x = bike_x+lengthdir_x(15*scale,image_angle);
	var wheelsR_y = bike_y+lengthdir_y(15*scale,image_angle);
	

	
	head_x=x+lengthdir_x(80*scale,vehicle_pre_angle+90);
	head_y=y+lengthdir_y(80*scale,vehicle_pre_angle+90);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=x+lengthdir_x(100*scale,image_angle-165);
	armR_y=y+lengthdir_y(100*scale,image_angle-165+hspeed);
	handR_x=armR_x+lengthdir_x(230*scale,image_angle-50);
	handR_y=armR_y+lengthdir_y(230*scale,image_angle-50);
	
	armL_x=x+lengthdir_x((100)*scale,image_angle+165);
	armL_y=y+lengthdir_y((100+hspeed)*scale,image_angle+165+hspeed);
	handL_x=armL_x+lengthdir_x(230*scale,image_angle+50);
	handL_y=armL_y+lengthdir_y(230*scale,image_angle+50);

	shoes_x=x+lengthdir_x(70*scale,vehicle_pre_angle);
	shoes_y=y+lengthdir_y(70*scale,vehicle_pre_angle);
	
	var shoesR_x = x+lengthdir_x((260)*scale,vehicle_pre_angle+123);
	var shoesR_y = y+lengthdir_y((260)*scale,vehicle_pre_angle+124);
	var shoesL_x = x+lengthdir_x((260)*scale,vehicle_pre_angle+60);
	var shoesL_y = y+lengthdir_y((260)*scale,vehicle_pre_angle+60);
	
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,image_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,image_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,image_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,image_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,image_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,image_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,image_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,image_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,image_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,image_angle+180);
	
//wheels
draw_sprite_ext(sprMotorcycle,wheels_m+5,bike_x,bike_y,scale*.5,scale*.5,image_angle_alt+hspeed*5+180,c_white,1);
draw_sprite_ext(sprMotorcycle,wheels_m+2,bike_x,bike_y,scale*.5,scale*.5,vehicle_pre_angle+180,c_white,1);
//
draw_sprite_ext(sprMotorcycle,0,bike_x,bike_y,scale*.5,scale*.5,vehicle_pre_angle+180,c_white,1);
//Handlebars
draw_sprite_ext(sprMotorcycle,1,bike_x,bike_y,scale*.5,scale*.5,image_angle_alt+hspeed*5+180,c_white,1);


//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-90,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle+-90,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle-15,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle+15,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,image_angle-55+hspeed/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,image_angle+55+hspeed/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,image_angle-55+hspeed/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,image_angle+55+hspeed/5,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,image_angle-55+hspeed/5,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,image_angle+55+hspeed/5,arm_color_2,1); //LEFT
}


//Face
draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);
	}
	
	
}





//COSMOS

if level=6 {
	
	//SPACEBOARD
	if vehicle=0{
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
	
draw_sprite_ext(sprSurfboard,0,x,y,scale-0.2,scale-0.2,image_angle_alt+180,c_white,1);
//SHOES
draw_sprite_ext(spr_player_shoe,0,shoes_x,shoes_y,scale,scale,image_angle,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoes_tip_x,shoes_tip_y,scale,scale,image_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoes_laces_x,shoes_laces_y,scale,scale,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoes_laces_x,shoes_laces_y,scale,scale,image_angle,shoe_color_3,1);
}

//arms

draw_sprite_ext(spr_player_handsLR,3,handR_x,handR_y,scale,scale,body_angle,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle,skin_color,1); //LEFT
if shirt_type=1 {
//draw_sprite_ext(spr_player_arm,0,arm_x,arm_y,scale,scale,body_angle,arm_color,1);

draw_sprite_ext(spr_player_armR,4,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT


}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle),scale,scale,image_angle,c_white,1);

//draw_sprite_ext(spr_player_arm,2,arm_x,arm_y,scale,scale,body_angle,arm_color_2,1);
//draw_sprite_ext(spr_player_arm,3,arm_x,arm_y,scale,scale,body_angle,arm_color_3,1);

draw_sprite_ext(spr_player_armR,6,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT


draw_sprite_ext(spr_player_armR,7,armR_x,armR_y,scale,scale,body_angle,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,body_angle,arm_color_2,1); //LEFT

}
//Face

draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);
	
	}
		
	
	
	
	//SpaceMobile
	if vehicle=1{
	var jetski_x = x+lengthdir_x(110*scale,image_angle);
	var jetski_y = y+lengthdir_y(110*scale,image_angle);

	
	head_x=x+lengthdir_x(80*scale,image_angle-180);
	head_y=y+lengthdir_y(80*scale,image_angle-180);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=x+lengthdir_x(200*scale,image_angle-165);
	armR_y=y+lengthdir_y(200*scale,image_angle-165+hspeed*3);
	handR_x=armR_x+lengthdir_x(225*scale,image_angle-15);
	handR_y=armR_y+lengthdir_y(225*scale,image_angle-15);
	
	armL_x=x+lengthdir_x(200*scale,image_angle+165);
	armL_y=y+lengthdir_y(200*scale,image_angle+165+hspeed*3);
	handL_x=armL_x+lengthdir_x(225*scale,image_angle+15);
	handL_y=armL_y+lengthdir_y(225*scale,image_angle+15);
	
	shoes_x=x+lengthdir_x(70*scale,image_angle);
	shoes_y=y+lengthdir_y(70*scale,image_angle);
	
	var shoesR_x = x+lengthdir_x(120*scale,image_angle-135);
	var shoesR_y = y+lengthdir_y(120*scale,image_angle-135);
	var shoesL_x = x+lengthdir_x(120*scale,image_angle+135);
	var shoesL_y = y+lengthdir_y(120*scale,image_angle+135);
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,image_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,image_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,image_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,image_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,image_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,image_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,image_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,image_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,image_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,image_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,image_angle+180);
		
//SKI Mobile

draw_sprite_ext(sprJetski,1,jetski_x,jetski_y,scale,scale,image_angle,c_vehicle1,1);

draw_sprite_ext(sprJetski,2,jetski_x,jetski_y,scale,scale,image_angle,c_vehicle2,1);

draw_sprite_ext(sprJetski,3,jetski_x,jetski_y,scale,scale,image_angle+hspeed*3,c_vehicle1,1);

	//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,image_angle,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,image_angle,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,image_angle,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,image_angle,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,image_angle,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,image_angle,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,image_angle,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,image_angle-18+hspeed/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,image_angle+18+hspeed/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,image_angle-18,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,image_angle+18,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,image_angle-18,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,image_angle+18,arm_color_2,1); //LEFT
}

//Face
draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);
	
	}
	
	
	
	
	
}






























