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








