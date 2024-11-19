/// @description Draw particles
part_system_drawit(drift);

///Draw neon
sPlayer_draw_neon(c_red);
//draw_self();

/*
draw_sprite_ext(sprJetski,0,x,y,scale,scale,img_angle+90,c_white,1);
draw_sprite_ext(spr_player_shoe,0,x,y,scale,scale,img_angle+90,c_white,1);
draw_sprite_ext(spr_player_shoe_tip,0,x,y,scale,scale,img_angle+90,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,x,y,scale,scale,img_angle+90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,x,y,scale,scale,img_angle+90,c_white,1);
draw_sprite_ext(spr_player_hands,0,x,y,scale,scale,img_angle+90,c_white,1);
draw_sprite_ext(spr_player_arm,0,x,y,scale,scale,img_angle+90,c_white,1);
draw_sprite_ext(spr_player_arm,1,x,y,scale,scale,img_angle+90,c_white,1);
draw_sprite_ext(spr_player_arm,2,x,y,scale,scale,img_angle+90,c_white,1);
draw_sprite_ext(spr_player_arm,3,x,y,scale,scale,img_angle+90,c_white,1);
draw_sprite_ext(spr_player_face,0,x,y,scale,scale,img_angle+90,c_white,1);
draw_sprite_ext(spr_player_band2,0,x,y,scale,scale,img_angle+90,c_white,1);
draw_sprite_ext(spr_player_glasses_band,0,x,y,scale,scale,img_angle+90,c_white,1);
draw_sprite_ext(spr_player_glasses,0,x,y,scale,scale,img_angle+90,c_white,1);
draw_sprite_ext(spr_player_hair,0,x,y,scale,scale,img_angle+90,c_white,1);
*/


//TUNDRA
if level =0 {

	
	//SNOWBOARD
	if vehicle=0{
	head_x=xx+lengthdir_x(20*scale,img_angle);
	head_y=yy +lengthdir_y(20*scale,img_angle);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(50*scale,img_angle-180);
	armR_y=yy +lengthdir_y(50*scale,img_angle-180);
	handR_x=armR_x+lengthdir_x(40*scale,body_angle-105);
	handR_y=armR_y+lengthdir_y(40*scale,body_angle-105);
	
	armL_x=xx+lengthdir_x(65*scale,img_angle+45);
	armL_y=yy +lengthdir_y(65*scale,img_angle+45);
	handL_x=armL_x+lengthdir_x(222*scale,body_angle-2);
	handL_y=armL_y+lengthdir_y(222*scale,body_angle-2);
	
	shoes_x=xx+lengthdir_x(110*scale,img_angle-90);
	shoes_y=yy +lengthdir_y(110*scale,img_angle-90);
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,img_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,img_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,img_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,img_angle+180);
	
draw_sprite_ext(spr_sb,0,xx,yy,scale,scale,img_angle,c_white,1);
//SHOES
draw_sprite_ext(spr_player_shoe,0,shoes_x,shoes_y,scale,scale,img_angle-90,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoes_tip_x,shoes_tip_y,scale,scale,img_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoes_laces_x,shoes_laces_y,scale,scale,img_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoes_laces_x,shoes_laces_y,scale,scale,img_angle-90,shoe_color_3,1);
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
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,img_angle),y+lengthdir_y(0,img_angle),scale,scale,img_angle,c_white,1);

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
		
	var skiR_x = xx+lengthdir_x(50*scale,img_angle);
	var skiR_y = yy +lengthdir_y(50*scale,img_angle);
	var skiL_x = xx+lengthdir_x(50*scale,img_angle+180);
	var skiL_y = yy +lengthdir_y(50*scale,img_angle+180);
	
	head_x=xx+lengthdir_x(20*scale,img_angle);
	head_y=yy +lengthdir_y(20*scale,img_angle);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(100*scale,body_angle-135);
	armR_y=yy +lengthdir_y(100*scale,body_angle-135);
	handR_x=armR_x+lengthdir_x(40*scale,body_angle-105);
	handR_y=armR_y+lengthdir_y(40*scale,body_angle-105);
	
	armL_x=xx+lengthdir_x(100*scale,body_angle+135);
	armL_y=yy +lengthdir_y(100*scale,body_angle+135);
	handL_x=armL_x+lengthdir_x(60*scale,body_angle+105);
	handL_y=armL_y+lengthdir_y(60*scale,body_angle+105);
	
	shoes_x=xx+lengthdir_x(110*scale,img_angle-90);
	shoes_y=yy +lengthdir_y(110*scale,img_angle-90);
	
	var shoesR_x = xx+lengthdir_x(70*scale,img_angle);
	var shoesR_y = yy +lengthdir_y(70*scale,img_angle);
	var shoesL_x = xx+lengthdir_x(70*scale,img_angle-180);
	var shoesL_y = yy +lengthdir_y(70*scale,img_angle-180);
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,img_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,img_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,img_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,img_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,img_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,img_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,img_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,img_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,img_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,img_angle+180);
	
		//BOARD
	draw_sprite_ext(spr_sb,0,skiL_x,skiL_y,scale/2,scale*1.2,img_angle,c_white,1);
	draw_sprite_ext(spr_sb,0,skiR_x,skiR_y,scale/2,scale*1.2,img_angle,c_white,1);
	//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,img_angle-90,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,img_angle-90,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,img_angle-90,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,img_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,img_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,img_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,img_angle-90,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,img_angle-90,shoe_color_3,1);
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
	var jetski_x = xx+lengthdir_x(110*scale,img_angle-90);
	var jetski_y = yy +lengthdir_y(110*scale,img_angle-90);
	
	var skiR_x = jetski_x+lengthdir_x(125*scale,img_angle-235);
	var skiR_y = jetski_y+lengthdir_y(125*scale,img_angle-235);
	var skiL_x = jetski_x+lengthdir_x(125*scale,img_angle+55);
	var skiL_y = jetski_y+lengthdir_y(125*scale,img_angle+55);
	

	
	head_x=xx+lengthdir_x(80*scale,img_angle+90);
	head_y=yy +lengthdir_y(80*scale,img_angle+90);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(200*scale,img_angle-255);
	armR_y=yy +lengthdir_y(200*scale,img_angle-255);
	handR_x=armR_x+lengthdir_x(225*scale,img_angle-105);
	handR_y=armR_y+lengthdir_y(225*scale,img_angle-105);
	
	armL_x=xx+lengthdir_x(200*scale,img_angle+75);
	armL_y=yy +lengthdir_y(200*scale,img_angle+75);
	handL_x=armL_x+lengthdir_x(225*scale,img_angle-75);
	handL_y=armL_y+lengthdir_y(225*scale,img_angle-75);
	
	shoes_x=xx+lengthdir_x(70*scale,img_angle);
	shoes_y=yy +lengthdir_y(70*scale,img_angle);
	
	var shoesR_x = xx+lengthdir_x(120*scale,img_angle-225);
	var shoesR_y = yy +lengthdir_y(120*scale,img_angle-225);
	var shoesL_x = xx+lengthdir_x(120*scale,img_angle+45);
	var shoesL_y = yy +lengthdir_y(120*scale,img_angle+45);
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,img_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,img_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,img_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,img_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,img_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,img_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,img_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,img_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,img_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,img_angle+180);
		
//SKI Mobile	
draw_sprite_ext(spr_sb,0,skiL_x,skiL_y,scale/2,scale*1.2,img_angle,c_white,1);
draw_sprite_ext(spr_sb,0,skiR_x,skiR_y,scale/2,scale*1.2,img_angle,c_white,1);

draw_sprite_ext(sprJetski,1,jetski_x,jetski_y,scale,scale,img_angle-90,c_vehicle1,1);

draw_sprite_ext(sprJetski,2,jetski_x,jetski_y,scale,scale,img_angle-90,c_vehicle2,1);

draw_sprite_ext(sprJetski,3,jetski_x,jetski_y,scale,scale,img_angle-90+phy_speed_x/3,c_vehicle1,1);

	//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,img_angle-90,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,img_angle-90,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,img_angle-90,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,img_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,img_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,img_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,img_angle-90,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,img_angle-90,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,img_angle-108+phy_speed_x/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,img_angle-72+phy_speed_x/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,img_angle-108,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,img_angle-72,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,img_angle-108,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,img_angle+-72,arm_color_2,1); //LEFT
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
	head_x=xx+lengthdir_x(20*scale,img_angle);
	head_y=yy +lengthdir_y(20*scale,img_angle);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(50*scale,img_angle-180);
	armR_y=yy +lengthdir_y(50*scale,img_angle-180);
	handR_x=armR_x+lengthdir_x(40*scale,body_angle-105);
	handR_y=armR_y+lengthdir_y(40*scale,body_angle-105);
	
	armL_x=xx+lengthdir_x(65*scale,img_angle+45);
	armL_y=yy +lengthdir_y(65*scale,img_angle+45);
	handL_x=armL_x+lengthdir_x(222*scale,body_angle-2);
	handL_y=armL_y+lengthdir_y(222*scale,body_angle-2);
	
	shoes_x=xx+lengthdir_x(110*scale,img_angle-90);
	shoes_y=yy +lengthdir_y(110*scale,img_angle-90);
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,img_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,img_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,img_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,img_angle+180);
	
draw_sprite_ext(spr_sb,0,xx,yy,scale,scale,img_angle,c_white,1);
//SHOES
draw_sprite_ext(spr_player_shoe,0,shoes_x,shoes_y,scale,scale,img_angle-90,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoes_tip_x,shoes_tip_y,scale,scale,img_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoes_laces_x,shoes_laces_y,scale,scale,img_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoes_laces_x,shoes_laces_y,scale,scale,img_angle-90,shoe_color_3,1);
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
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,img_angle),y+lengthdir_y(0,img_angle),scale,scale,img_angle,c_white,1);

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
	var bike_x = xx+lengthdir_x(55*scale,img_angle-90);
	var bike_y = yy +lengthdir_y(55*scale,img_angle-90);
	
	var pedals_x = xx+lengthdir_x(15*scale,img_angle-90);
	var pedals_y = yy +lengthdir_y(15*scale,img_angle-90);
	
	var wheelsF_x = bike_x+lengthdir_x(15*scale,img_angle-90);
	var wheelsF_y = bike_y+lengthdir_y(15*scale,img_angle-90);
	var wheelsR_x = bike_x+lengthdir_x(15*scale,img_angle-90);
	var wheelsR_y = bike_y+lengthdir_y(15*scale,img_angle-90);
	

	
	head_x=xx+lengthdir_x(80*scale,vehicle_pre_angle);
	head_y=yy +lengthdir_y(80*scale,vehicle_pre_angle);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(100*scale,img_angle-255);
	armR_y=yy +lengthdir_y(100*scale,img_angle-255)+phy_speed_x;
	handR_x=armR_x+lengthdir_x(230*scale,img_angle-140);
	handR_y=armR_y+lengthdir_y(230*scale,img_angle-140);
	
	armL_x=xx+lengthdir_x((100)*scale,img_angle+75);
	armL_y=yy +lengthdir_y((100+phy_speed_x)*scale,img_angle+75+phy_speed_x);
	handL_x=armL_x+lengthdir_x(230*scale,img_angle-40);
	handL_y=armL_y+lengthdir_y(230*scale,img_angle-40);

	shoes_x=xx+lengthdir_x(70*scale,vehicle_pre_angle-90);
	shoes_y=yy +lengthdir_y(70*scale,vehicle_pre_angle-90);
	
	var shoesR_x = xx+lengthdir_x((360 - pedals_offset * 10)*scale,vehicle_pre_angle+23);
	var shoesR_y = yy +lengthdir_y((360 - pedals_offset * 10)*scale,vehicle_pre_angle+24);
	var shoesL_x = xx+lengthdir_x((260 + pedals_offset * 10)*scale,vehicle_pre_angle-20);
	var shoesL_y = yy +lengthdir_y((260 + pedals_offset * 10)*scale,vehicle_pre_angle-20);
	
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,img_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,img_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,img_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,img_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,img_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,img_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,img_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,img_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,img_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,img_angle+180);

//pedals
draw_sprite_ext(sprBike,pedals,pedals_x,pedals_y,scale,scale,vehicle_pre_angle-90,c_white,1);
//wheels
draw_sprite_ext(sprBike,2,wheelsF_x,wheelsF_y,scale,scale,img_angle_alt-90+phy_speed_x,c_white,1);
draw_sprite_ext(sprBike,3,wheelsR_x,wheelsR_y,scale,scale,vehicle_pre_angle-90,c_white,1);
//BODY
draw_sprite_ext(sprBike,1,bike_x,bike_y,scale,scale,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(sprBike,14,bike_x,bike_y,scale,scale,vehicle_pre_angle-90,c_vehicle1,1);
//Handlebars
draw_sprite_ext(sprBike,0,bike_x,bike_y,scale,scale,img_angle_alt-90+phy_speed_x,c_white,1);
draw_sprite_ext(sprBike,15,bike_x,bike_y,scale,scale,img_angle_alt-90+phy_speed_x,c_vehicle1,1);

//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle-15,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle+15,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,img_angle-145+phy_speed_x/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,img_angle-35+phy_speed_x/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,img_angle-145+phy_speed_x/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,img_angle-35+phy_speed_x/5,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,img_angle-145+phy_speed_x/5,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,img_angle-35+phy_speed_x/5,arm_color_2,1); //LEFT
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
	var bike_x = xx+lengthdir_x(55*scale,img_angle-90);
	var bike_y = yy +lengthdir_y(55*scale,img_angle-90);
	
	var pedals_x = xx+lengthdir_x(15*scale,img_angle-90);
	var pedals_y = yy +lengthdir_y(15*scale,img_angle-90);
	
	var wheelsF_x = bike_x+lengthdir_x(15*scale,img_angle-90);
	var wheelsF_y = bike_y+lengthdir_y(15*scale,img_angle-90);
	var wheelsR_x = bike_x+lengthdir_x(15*scale,img_angle-90);
	var wheelsR_y = bike_y+lengthdir_y(15*scale,img_angle-90);
	

	
	head_x=xx+lengthdir_x(80*scale,vehicle_pre_angle);
	head_y=yy +lengthdir_y(80*scale,vehicle_pre_angle);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(100*scale,img_angle-255);
	armR_y=yy +lengthdir_y(100*scale,img_angle-255)+phy_speed_x;
	handR_x=armR_x+lengthdir_x(230*scale,img_angle-140);
	handR_y=armR_y+lengthdir_y(230*scale,img_angle-140);
	
	armL_x=xx+lengthdir_x((100)*scale,img_angle+75);
	armL_y=yy +lengthdir_y((100+phy_speed_x)*scale,img_angle+75+phy_speed_x);
	handL_x=armL_x+lengthdir_x(230*scale,img_angle-40);
	handL_y=armL_y+lengthdir_y(230*scale,img_angle-40);

	shoes_x=xx+lengthdir_x(70*scale,vehicle_pre_angle-90);
	shoes_y=yy +lengthdir_y(70*scale,vehicle_pre_angle-90);
	
	var shoesR_x = xx+lengthdir_x((360 - pedals_offset * 10)*scale,vehicle_pre_angle+23);
	var shoesR_y = yy +lengthdir_y((360 - pedals_offset * 10)*scale,vehicle_pre_angle+24);
	var shoesL_x = xx+lengthdir_x((260 + pedals_offset * 10)*scale,vehicle_pre_angle-20);
	var shoesL_y = yy +lengthdir_y((260 + pedals_offset * 10)*scale,vehicle_pre_angle-20);
	
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,img_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,img_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,img_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,img_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,img_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,img_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,img_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,img_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,img_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,img_angle+180);

//pedals
draw_sprite_ext(sprBike,pedals,pedals_x,pedals_y,scale,scale,vehicle_pre_angle-90,c_white,1);
//wheels
draw_sprite_ext(sprBike,2,wheelsF_x,wheelsF_y,scale,scale,img_angle_alt-90+phy_speed_x,c_white,1);
draw_sprite_ext(sprBike,3,wheelsR_x,wheelsR_y,scale,scale,vehicle_pre_angle-90,c_white,1);
//BODY
draw_sprite_ext(sprBike,1,bike_x,bike_y,scale,scale,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(sprBike,14,bike_x,bike_y,scale,scale,vehicle_pre_angle-90,c_vehicle1,1);
//Handlebars
draw_sprite_ext(sprBike,0,bike_x,bike_y,scale,scale,img_angle_alt-90+phy_speed_x,c_white,1);
draw_sprite_ext(sprBike,15,bike_x,bike_y,scale,scale,img_angle_alt-90+phy_speed_x,c_vehicle1,1);

//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle-15,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle+15,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,img_angle-145+phy_speed_x/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,img_angle-35+phy_speed_x/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,img_angle-145+phy_speed_x/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,img_angle-35+phy_speed_x/5,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,img_angle-145+phy_speed_x/5,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,img_angle-35+phy_speed_x/5,arm_color_2,1); //LEFT
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
		
	var atv_x = xx+lengthdir_x(150*scale,img_angle-90)
	var atv_y = yy +lengthdir_y(150*scale,img_angle-90);

	
	var wheelsF_x = atv_x+lengthdir_x(15*scale,img_angle-90);
	var wheelsF_y = atv_y+lengthdir_y(15*scale,img_angle-90);
	var wheelsR_x = atv_x+lengthdir_x(15*scale,img_angle-90);
	var wheelsR_y = atv_y+lengthdir_y(15*scale,img_angle-90);
	

	
	head_x=xx+lengthdir_x(80*scale,vehicle_pre_angle);
	head_y=yy +lengthdir_y(80*scale,vehicle_pre_angle);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(100*scale,img_angle-265);
	armR_y=yy +lengthdir_y(100*scale,img_angle-265+phy_speed_x/5);
	handR_x=armR_x+lengthdir_x(100*scale,img_angle-160+phy_speed_x/5);
	handR_y=armR_y+lengthdir_y(100*scale,img_angle-160+phy_speed_x/5);
	
	armL_x=xx+lengthdir_x(100*scale,img_angle+85);
	armL_y=yy +lengthdir_y(100*scale,img_angle+85+phy_speed_x/5);
	handL_x=armL_x+lengthdir_x(105*scale,img_angle-20+phy_speed_x/5);
	handL_y=armL_y+lengthdir_y(105*scale,img_angle-20+phy_speed_x/5);

	
	var shoesR_x = atv_x+lengthdir_x(320*scale,vehicle_pre_angle+35);
	var shoesR_y = atv_y +lengthdir_y(320*scale,vehicle_pre_angle+35);
	var shoesL_x = atv_x+lengthdir_x(320*scale,vehicle_pre_angle-35);
	var shoesL_y = atv_y +lengthdir_y(320*scale,vehicle_pre_angle-35);
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,img_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,img_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,img_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,img_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,img_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,img_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,img_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,img_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,img_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,img_angle+180);
	
		
//WHEELS
draw_sprite_ext(sprATV,wheels_atv+1,atv_x,atv_y,scale-.03,scale-.03,vehicle_pre_angle-270,c_white,1);

draw_sprite_ext(sprATV,wheels_atv+7,atv_x,atv_y,scale-.03,scale-.03,img_angle_alt+90+phy_speed_x/5,c_white,1);
draw_sprite_ext(sprATV,6,atv_x,atv_y,scale-.03,scale-.03,img_angle_alt+90+phy_speed_x/5,c_vehicle1,1);


//BODY
draw_sprite_ext(sprATV,0,atv_x,atv_y,scale-.03,scale-.03,vehicle_pre_angle-270,c_vehicle1,1);
//HANDLEBARS
draw_sprite_ext(sprATV,5,atv_x,atv_y,scale-.03,scale-.03,img_angle_alt+90+phy_speed_x/5,c_white,1);


	//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,vehicle_pre_angle-190,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_hands,1,handL_x,handL_y,scale,scale,img_angle-85+phy_speed_x*5,skin_color,1);
draw_sprite_ext(spr_player_hands,2,handR_x,handR_y,scale,scale,img_angle-105+phy_speed_x*5,skin_color,1);

if shirt_type=1 {
draw_sprite_ext(spr_player_arm,4,armL_x,armL_y,scale,scale,img_angle-50+phy_speed_x*4,arm_color,1);
draw_sprite_ext(spr_player_arm,5,armR_x,armL_y,scale,scale,img_angle-130+phy_speed_x*4,arm_color,1);

}
if shirt_type=2 {
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,img_angle),y+lengthdir_y(0,img_angle),scale,scale,img_angle,c_white,1);
draw_sprite_ext(spr_player_arm,8,armL_x,armL_y,scale,scale,img_angle-60+phy_speed_x*4,arm_color_2,1);
draw_sprite_ext(spr_player_arm,9,armR_x,armL_y,scale,scale,img_angle-130+phy_speed_x*4,arm_color_2,1);

draw_sprite_ext(spr_player_arm,10,armL_x,armL_y,scale,scale,img_angle-50+phy_speed_x*4,arm_color_3,1);
draw_sprite_ext(spr_player_arm,11,armR_x,armL_y,scale,scale,img_angle-130+phy_speed_x*4,arm_color_3,1);
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
	var bike_x = xx+lengthdir_x(55*scale,img_angle-90);
	var bike_y = yy +lengthdir_y(55*scale,img_angle-90);
	
	var pedals_x = xx+lengthdir_x(15*scale,img_angle-90);
	var pedals_y = yy +lengthdir_y(15*scale,img_angle-90);
	
	var wheelsF_x = bike_x+lengthdir_x(15*scale,img_angle-90);
	var wheelsF_y = bike_y+lengthdir_y(15*scale,img_angle-90);
	var wheelsR_x = bike_x+lengthdir_x(15*scale,img_angle-90);
	var wheelsR_y = bike_y+lengthdir_y(15*scale,img_angle-90);
	

	
	head_x=xx+lengthdir_x(80*scale,vehicle_pre_angle);
	head_y=yy +lengthdir_y(80*scale,vehicle_pre_angle);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(100*scale,img_angle-255);
	armR_y=yy +lengthdir_y(100*scale,img_angle-255)+phy_speed_x;
	handR_x=armR_x+lengthdir_x(230*scale,img_angle-140);
	handR_y=armR_y+lengthdir_y(230*scale,img_angle-140);
	
	armL_x=xx+lengthdir_x((100)*scale,img_angle+75);
	armL_y=yy +lengthdir_y((100+phy_speed_x)*scale,img_angle+75+phy_speed_x);
	handL_x=armL_x+lengthdir_x(230*scale,img_angle-40);
	handL_y=armL_y+lengthdir_y(230*scale,img_angle-40);

	shoes_x=xx+lengthdir_x(70*scale,vehicle_pre_angle-90);
	shoes_y=yy +lengthdir_y(70*scale,vehicle_pre_angle-90);
	
	var shoesR_x = xx+lengthdir_x((360 - pedals_offset * 10)*scale,vehicle_pre_angle+23);
	var shoesR_y = yy +lengthdir_y((360 - pedals_offset * 10)*scale,vehicle_pre_angle+24);
	var shoesL_x = xx+lengthdir_x((260 + pedals_offset * 10)*scale,vehicle_pre_angle-20);
	var shoesL_y = yy +lengthdir_y((260 + pedals_offset * 10)*scale,vehicle_pre_angle-20);
	
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,img_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,img_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,img_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,img_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,img_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,img_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,img_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,img_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,img_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,img_angle+180);

//pedals
draw_sprite_ext(sprBike,pedals,pedals_x,pedals_y,scale,scale,vehicle_pre_angle-90,c_white,1);
//wheels
draw_sprite_ext(sprBike,2,wheelsF_x,wheelsF_y,scale,scale,img_angle_alt-90+phy_speed_x,c_white,1);
draw_sprite_ext(sprBike,3,wheelsR_x,wheelsR_y,scale,scale,vehicle_pre_angle-90,c_white,1);
//BODY
draw_sprite_ext(sprBike,1,bike_x,bike_y,scale,scale,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(sprBike,14,bike_x,bike_y,scale,scale,vehicle_pre_angle-90,c_vehicle1,1);
//Handlebars
draw_sprite_ext(sprBike,0,bike_x,bike_y,scale,scale,img_angle_alt-90+phy_speed_x,c_white,1);
draw_sprite_ext(sprBike,15,bike_x,bike_y,scale,scale,img_angle_alt-90+phy_speed_x,c_vehicle1,1);

//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle-15,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle+15,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,img_angle-145+phy_speed_x/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,img_angle-35+phy_speed_x/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,img_angle-145+phy_speed_x/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,img_angle-35+phy_speed_x/5,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,img_angle-145+phy_speed_x/5,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,img_angle-35+phy_speed_x/5,arm_color_2,1); //LEFT
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

	head_x=xx+lengthdir_x(20*scale,img_angle-90);
	head_y=yy +lengthdir_y(20*scale,img_angle-90);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(50*scale,img_angle-180);
	armR_y=yy +lengthdir_y(50*scale,img_angle-180);
	handR_x=armR_x+lengthdir_x(40*scale,body_angle-105);
	handR_y=armR_y+lengthdir_y(40*scale,body_angle-105);
	
	armL_x=xx+lengthdir_x(65*scale,img_angle+45);
	armL_y=yy +lengthdir_y(65*scale,img_angle+45);
	handL_x=armL_x+lengthdir_x(222*scale,body_angle-2);
	handL_y=armL_y+lengthdir_y(222*scale,body_angle-2);
	
	shoes_x=xx+lengthdir_x(110*scale,img_angle-90);
	shoes_y=yy +lengthdir_y(110*scale,img_angle-90);
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,img_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,img_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,img_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,img_angle+180);
	
draw_sprite_ext(sprSurfboard,0,x,y,scale*.9,scale*.9,img_angle_alt+90,c_white,1);
//SHOES
draw_sprite_ext(spr_player_shoe,0,shoes_x,shoes_y,scale,scale,img_angle-90,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoes_tip_x,shoes_tip_y,scale,scale,img_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoes_laces_x,shoes_laces_y,scale,scale,img_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoes_laces_x,shoes_laces_y,scale,scale,img_angle-90,shoe_color_3,1);
}

//arms
draw_sprite_ext(spr_player_handsLR,3,handR_x,handR_y,scale,scale,body_angle,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,4,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT
}
if shirt_type=2 {
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
		
		
	var skiR_x = xx+lengthdir_x(50*scale,img_angle-180);
	var skiR_y = yy +lengthdir_y(50*scale,img_angle-180);
	var skiL_x = xx+lengthdir_x(50*scale,img_angle);
	var skiL_y = yy +lengthdir_y(50*scale,img_angle);
	var handle_x = xx+lengthdir_x(310*scale,body_angle);
	var handle_y = yy +lengthdir_y(310*scale,body_angle);
	head_x=xx+lengthdir_x(20*scale,img_angle);
	head_y=yy +lengthdir_y(20*scale,img_angle);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(100*scale,body_angle-115);
	armR_y=yy +lengthdir_y(100*scale,body_angle-115);
	handR_x=armR_x+lengthdir_x(285*scale,body_angle+36);
	handR_y=armR_y+lengthdir_y(285*scale,body_angle+36);
	
	armL_x=xx+lengthdir_x(100*scale,body_angle+115);
	armL_y=yy +lengthdir_y(100*scale,body_angle+115);
	handL_x=armL_x+lengthdir_x(285*scale,body_angle-36);
	handL_y=armL_y+lengthdir_y(285*scale,body_angle-36);
	
	shoes_x=xx+lengthdir_x(110*scale,img_angle);
	shoes_y=yy +lengthdir_y(110*scale,img_angle);
	
	var shoesR_x = xx+lengthdir_x(70*scale,img_angle);
	var shoesR_y = yy +lengthdir_y(70*scale,img_angle);
	var shoesL_x = xx+lengthdir_x(70*scale,img_angle-180);
	var shoesL_y = yy +lengthdir_y(70*scale,img_angle-180);
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,img_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,img_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,img_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,img_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,img_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,img_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,img_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,img_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,img_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,img_angle+180);
	
		//BOARD
	draw_sprite_ext(spr_sb,0,skiL_x,skiL_y,scale/2,scale*1.2,img_angle,c_white,1);
	draw_sprite_ext(spr_sb,0,skiR_x,skiR_y,scale/2,scale*1.2,img_angle,c_white,1);
	//HANDLE
	draw_sprite_ext(sprSurfHandle,0,handle_x,handle_y,scale*1.2,scale*1.2,img_angle+phy_speed_x/5,c_white,1);
	
	draw_line_width_color(handle_x,handle_y,room_width/3,room_height,3,c_dkgray,c_ltgray);
	draw_line_width_color(handle_x,handle_y,room_width/3,room_height,1,c_white,c_white);

	//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,img_angle-90,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,img_angle-90,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,body_angle-90,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,body_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,body_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,body_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,body_angle-90,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,body_angle-90,shoe_color_3,1);
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
	
	//JETSKI
	if vehicle=2{
	var jetski_x = xx+lengthdir_x(110*scale,img_angle-90);
	var jetski_y = yy +lengthdir_y(110*scale,img_angle-90);
	
	var skiR_x = jetski_x+lengthdir_x(125*scale,img_angle-235);
	var skiR_y = jetski_y+lengthdir_y(125*scale,img_angle-235);
	var skiL_x = jetski_x+lengthdir_x(125*scale,img_angle+55);
	var skiL_y = jetski_y+lengthdir_y(125*scale,img_angle+55);
	

	
	head_x=xx+lengthdir_x(80*scale,img_angle+90);
	head_y=yy +lengthdir_y(80*scale,img_angle+90);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(200*scale,img_angle-255);
	armR_y=yy +lengthdir_y(200*scale,img_angle-255);
	handR_x=armR_x+lengthdir_x(225*scale,img_angle-105);
	handR_y=armR_y+lengthdir_y(225*scale,img_angle-105);
	
	armL_x=xx+lengthdir_x(200*scale,img_angle+75);
	armL_y=yy +lengthdir_y(200*scale,img_angle+75);
	handL_x=armL_x+lengthdir_x(225*scale,img_angle-75);
	handL_y=armL_y+lengthdir_y(225*scale,img_angle-75);
	
	shoes_x=xx+lengthdir_x(70*scale,img_angle);
	shoes_y=yy +lengthdir_y(70*scale,img_angle);
	
	var shoesR_x = xx+lengthdir_x(120*scale,img_angle-225);
	var shoesR_y = yy +lengthdir_y(120*scale,img_angle-225);
	var shoesL_x = xx+lengthdir_x(120*scale,img_angle+45);
	var shoesL_y = yy +lengthdir_y(120*scale,img_angle+45);
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,img_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,img_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,img_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,img_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,img_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,img_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,img_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,img_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,img_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,img_angle+180);
		
//JETSKI Mobile	

draw_sprite_ext(sprJetski,1,jetski_x,jetski_y,scale,scale,img_angle-90,c_vehicle1,1);

draw_sprite_ext(sprJetski,2,jetski_x,jetski_y,scale,scale,img_angle-90,c_vehicle2,1);

draw_sprite_ext(sprJetski,3,jetski_x,jetski_y,scale,scale,img_angle-90+phy_speed_x/3,c_vehicle1,1);

	//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,img_angle-90,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,img_angle-90,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,img_angle-90,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,img_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,img_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,img_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,img_angle-90,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,img_angle-90,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,img_angle-108+phy_speed_x/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,img_angle-72+phy_speed_x/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,img_angle-108,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,img_angle-72,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,img_angle-108,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,img_angle-72,arm_color_2,1); //LEFT
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
	var skate_x = xx+lengthdir_x(0*scale,img_angle-90);
	var skate_y = yy+lengthdir_x(0*scale,img_angle-90);
	head_x=xx+lengthdir_x(20*scale,img_angle-90);
	head_y=yy +lengthdir_y(20*scale,img_angle-90);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(50*scale,img_angle-90);
	armR_y=yy +lengthdir_y(50*scale,img_angle-90);
	handR_x=armR_x+lengthdir_x(40*scale,body_angle-105);
	handR_y=armR_y+lengthdir_y(40*scale,body_angle-105);
	
	armL_x=xx+lengthdir_x(65*scale,img_angle+45);
	armL_y=yy +lengthdir_y(65*scale,img_angle+45);
	handL_x=armL_x+lengthdir_x(222*scale,body_angle-2);
	handL_y=armL_y+lengthdir_y(222*scale,body_angle-2);
	
	shoes_x=xx+lengthdir_x(110*scale,img_angle);
	shoes_y=yy +lengthdir_y(110*scale,img_angle);
	
	shoesL_x=xx+lengthdir_x(110*scale,img_angle-90);
	shoesL_y=yy +lengthdir_y(110*scale,img_angle-90);
	shoesR_x=xx+lengthdir_x(110*scale,img_angle+90);
	shoesR_y=yy +lengthdir_y(110*scale,img_angle+90);
	
	shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,img_angle);
	shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,img_angle);
	shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,img_angle+180);
	shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,img_angle+180);
	
	shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,img_angle);
	shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,img_angle);
	shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,img_angle+180);
	shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,img_angle+180);
	
draw_sprite_ext(sprSkateboard_Ride,0,skate_x,skate_y,2.3*scale,2.3*scale,img_angle_alt-90,c_white,1);
//SHOES
draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale,scale,img_angle-125,shoe_color,1);
draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale,scale,img_angle-215,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale,scale,img_angle-125,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale,scale,img_angle-125,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale,scale,img_angle-125,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale,scale,img_angle-125,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale,scale,img_angle-125,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale,scale,img_angle-125,shoe_color_3,1);
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
//draw_sprite_ext(spr_player_arm,1,x+lengthdir_x(0,img_angle),y+lengthdir_y(0,img_angle),scale,scale,img_angle,c_white,1);

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
		
	var scooter_x = xx+lengthdir_x(160*scale,img_angle-90);
	var scooter_y = yy +lengthdir_y(160*scale,img_angle-90);
	var wheelsF_x =	scooter_x+lengthdir_x(35*scale,img_angle-90);
	var wheelsF_y = scooter_y+lengthdir_y(35*scale,img_angle-90);
	var wheelsR_x = scooter_x+lengthdir_x(20*scale,img_angle-90);
	var wheelsR_y = scooter_y+lengthdir_y(20*scale,img_angle-90);
	
	head_x=xx+lengthdir_x(80*scale,vehicle_pre_angle);
	head_y=yy +lengthdir_y(80*scale,vehicle_pre_angle);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=head_x+lengthdir_x(30*scale,img_angle-180);
	armR_y=head_y+lengthdir_y(30*scale,img_angle-180+phy_speed_x*5);
	handR_x=armR_x+lengthdir_x(220*scale,img_angle-116);
	handR_y=armR_y+lengthdir_y(220*scale,img_angle-116);
	
	armL_x=head_x+lengthdir_x(30*scale,img_angle);
	armL_y=head_y+lengthdir_y(30*scale,img_angle+phy_speed_x*5);
	handL_x=armL_x+lengthdir_x(220*scale,img_angle-66);
	handL_y=armL_y+lengthdir_y(220*scale,img_angle-66);

	
	
	shoesL_x=scooter_x+lengthdir_x(155*scale,vehicle_pre_angle);
	shoesL_y=scooter_y+lengthdir_y(155*scale,vehicle_pre_angle);
	shoesR_x=scooter_x+lengthdir_x(350*scale,vehicle_pre_angle);
	shoesR_y=scooter_y+lengthdir_y(350*scale,vehicle_pre_angle);
	
	shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,vehicle_pre_angle);
	shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,vehicle_pre_angle);
	shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,vehicle_pre_angle+180);
	shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,vehicle_pre_angle+180);
	
	shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,vehicle_pre_angle);
	shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,vehicle_pre_angle);
	shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,vehicle_pre_angle+180);
	shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,vehicle_pre_angle+180);
	

	
		//wheel
		draw_sprite_ext(sprScooter,5,wheelsF_x,wheelsF_y, scale+.1,scale+.1,img_angle_alt-270+phy_speed_x/5,c_vehicle1,1); //FRONT
		draw_sprite_ext(sprScooter,6,wheelsR_x,wheelsR_y,scale+.1,scale+.1,vehicle_pre_angle-270,c_vehicle1,1); //REAR
		draw_sprite_ext(sprScooter,4,wheelsR_x,wheelsR_y,scale+.1,scale+.1,img_angle_alt-270,c_white,1); //FRONT
//base
draw_sprite_ext(sprScooter,1,scooter_x, scooter_y,scale+.1,scale+.1,vehicle_pre_angle-270,c_vehicle1,1);
	
//handlebar
draw_sprite_ext(sprScooter,2,scooter_x, scooter_y,scale+.1,scale+.1,img_angle_alt-270+phy_speed_x/5,c_white,1);


//SHOES
draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale,scale,img_angle-125,shoe_color,1);
draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale,scale,img_angle-215,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale,scale,img_angle-125,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale,scale,img_angle-215,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale,scale,img_angle-125,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale,scale,img_angle-125,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale,scale,img_angle-215,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale,scale,img_angle-215,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle-15,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle+15,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,img_angle-115+phy_speed_x/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,img_angle-65+phy_speed_x/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,img_angle-115+phy_speed_x/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,img_angle-65+phy_speed_x/5,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,img_angle-115+phy_speed_x/5,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,img_angle-65+phy_speed_x/5,arm_color_2,1); //LEFT
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
	var bike_x = xx+lengthdir_x(55*scale,img_angle-90);
	var bike_y = yy +lengthdir_y(55*scale,img_angle-90);
	
	var pedals_x = xx+lengthdir_x(15*scale,img_angle-90);
	var pedals_y = yy +lengthdir_y(15*scale,img_angle-90);
	
	var wheelsF_x = bike_x+lengthdir_x(15*scale,img_angle-90);
	var wheelsF_y = bike_y+lengthdir_y(15*scale,img_angle-90);
	var wheelsR_x = bike_x+lengthdir_x(15*scale,img_angle-90);
	var wheelsR_y = bike_y+lengthdir_y(15*scale,img_angle-90);
	

	
	head_x=xx+lengthdir_x(80*scale,vehicle_pre_angle);
	head_y=yy +lengthdir_y(80*scale,vehicle_pre_angle);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(100*scale,img_angle-255);
	armR_y=yy +lengthdir_y(100*scale,img_angle-255)+phy_speed_x;
	handR_x=armR_x+lengthdir_x(230*scale,img_angle-140);
	handR_y=armR_y+lengthdir_y(230*scale,img_angle-140);
	
	armL_x=xx+lengthdir_x((100)*scale,img_angle+75);
	armL_y=yy +lengthdir_y((100+phy_speed_x)*scale,img_angle+75+phy_speed_x);
	handL_x=armL_x+lengthdir_x(230*scale,img_angle-40);
	handL_y=armL_y+lengthdir_y(230*scale,img_angle-40);

	shoes_x=xx+lengthdir_x(70*scale,vehicle_pre_angle-90);
	shoes_y=yy +lengthdir_y(70*scale,vehicle_pre_angle-90);
	
	var shoesR_x = xx+lengthdir_x((360 - pedals_offset * 10)*scale,vehicle_pre_angle+23);
	var shoesR_y = yy +lengthdir_y((360 - pedals_offset * 10)*scale,vehicle_pre_angle+24);
	var shoesL_x = xx+lengthdir_x((260 + pedals_offset * 10)*scale,vehicle_pre_angle-20);
	var shoesL_y = yy +lengthdir_y((260 + pedals_offset * 10)*scale,vehicle_pre_angle-20);
	
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,img_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,img_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,img_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,img_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,img_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,img_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,img_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,img_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,img_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,img_angle+180);

//pedals
draw_sprite_ext(sprBike,pedals,pedals_x,pedals_y,scale,scale,vehicle_pre_angle-90,c_white,1);
//wheels
draw_sprite_ext(sprBike,2,wheelsF_x,wheelsF_y,scale,scale,img_angle_alt-90+phy_speed_x,c_white,1);
draw_sprite_ext(sprBike,3,wheelsR_x,wheelsR_y,scale,scale,vehicle_pre_angle-90,c_white,1);
//BODY
draw_sprite_ext(sprBike,1,bike_x,bike_y,scale,scale,vehicle_pre_angle-90,c_white,1);
draw_sprite_ext(sprBike,14,bike_x,bike_y,scale,scale,vehicle_pre_angle-90,c_vehicle1,1);
//Handlebars
draw_sprite_ext(sprBike,0,bike_x,bike_y,scale,scale,img_angle_alt-90+phy_speed_x,c_white,1);
draw_sprite_ext(sprBike,15,bike_x,bike_y,scale,scale,img_angle_alt-90+phy_speed_x,c_vehicle1,1);

//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle-15,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle+15,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,img_angle-145+phy_speed_x/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,img_angle-35+phy_speed_x/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,img_angle-145+phy_speed_x/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,img_angle-35+phy_speed_x/5,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,img_angle-145+phy_speed_x/5,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,img_angle-35+phy_speed_x/5,arm_color_2,1); //LEFT
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
var bike_x = xx+lengthdir_x(95*scale,img_angle-90);
	var bike_y = yy +lengthdir_y(95*scale,img_angle-90);
	
	var pedals_x = xx+lengthdir_x(15*scale,img_angle-90);
	var pedals_y = yy +lengthdir_y(15*scale,img_angle-90);
	
	var wheelsF_x = bike_x+lengthdir_x(15*scale,img_angle-90);
	var wheelsF_y = bike_y+lengthdir_y(15*scale,img_angle-90);
	var wheelsR_x = bike_x+lengthdir_x(15*scale,img_angle-90);
	var wheelsR_y = bike_y+lengthdir_y(15*scale,img_angle-90);
	

	
	head_x=xx+lengthdir_x(80*scale,vehicle_pre_angle);
	head_y=yy +lengthdir_y(80*scale,vehicle_pre_angle);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(100*scale,img_angle-255);
	armR_y=yy +lengthdir_y(100*scale,img_angle-255+phy_speed_x);
	handR_x=armR_x+lengthdir_x(230*scale,img_angle-140);
	handR_y=armR_y+lengthdir_y(230*scale,img_angle-140);
	
	armL_x=xx+lengthdir_x((100)*scale,img_angle+75);
	armL_y=yy +lengthdir_y((100+phy_speed_x)*scale,img_angle+75+phy_speed_x);
	handL_x=armL_x+lengthdir_x(230*scale,img_angle-40);
	handL_y=armL_y+lengthdir_y(230*scale,img_angle-40);

	shoes_x=bike_x+lengthdir_x(70*scale,vehicle_pre_angle);
	shoes_y=bike_y +lengthdir_y(70*scale,vehicle_pre_angle);
	
	var shoesR_x = bike_x+lengthdir_x((310)*scale,vehicle_pre_angle+33);
	var shoesR_y = bike_y +lengthdir_y((310)*scale,vehicle_pre_angle+34);
	var shoesL_x = bike_x+lengthdir_x((310)*scale,vehicle_pre_angle-30);
	var shoesL_y = bike_y +lengthdir_y((310)*scale,vehicle_pre_angle-30);
	
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,img_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,img_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,img_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,img_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,img_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,img_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,img_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,img_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,img_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,img_angle+180);
	
//wheels
draw_sprite_ext(sprMotorcycle,wheels_m+5,bike_x,bike_y,scale*.5,scale*.5,img_angle_alt+90+phy_speed_x,c_white,1);
draw_sprite_ext(sprMotorcycle,wheels_m+2,bike_x,bike_y,scale*.5,scale*.5,vehicle_pre_angle+90,c_white,1);
//BODY
draw_sprite_ext(sprMotorcycle,10,bike_x,bike_y,scale*.5,scale*.5,vehicle_pre_angle+90,c_vehicle2,1);
draw_sprite_ext(sprMotorcycle,11,bike_x,bike_y,scale*.5,scale*.5,vehicle_pre_angle+90,c_white,1);
draw_sprite_ext(sprMotorcycle,12,bike_x,bike_y,scale*.5,scale*.5,vehicle_pre_angle+90,c_vehicle2,1);
draw_sprite_ext(sprMotorcycle,13,bike_x,bike_y,scale*.5,scale*.5,vehicle_pre_angle+90,c_vehicle1,1);
draw_sprite_ext(sprMotorcycle,14,bike_x,bike_y,scale*.5,scale*.5,vehicle_pre_angle+90,c_white,1);
draw_sprite_ext(sprMotorcycle,15,bike_x,bike_y,scale*.5,scale*.5,vehicle_pre_angle+90,c_vehicle1,1);
draw_sprite_ext(sprMotorcycle,16,bike_x,bike_y,scale*.5,scale*.5,vehicle_pre_angle+90,c_white,1);
//Handlebars
//draw_sprite_ext(sprMotorcycle,1,bike_x,bike_y,scale*.5,scale*.5,img_angle_alt+phy_speed_x+90,c_white,1);
draw_sprite_ext(sprMotorcycle,17,bike_x,bike_y,scale*.5,scale*.5,img_angle_alt+phy_speed_x+90,c_vehicle1,1);
draw_sprite_ext(sprMotorcycle,18,bike_x,bike_y,scale*.5,scale*.5,img_angle_alt+phy_speed_x+90,c_white,1);


//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,vehicle_pre_angle-180,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle-15,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle+15,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,img_angle-145+phy_speed_x/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,img_angle-45+phy_speed_x/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,img_angle-145+phy_speed_x/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,img_angle-45+phy_speed_x/5,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,img_angle-145+phy_speed_x/5,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,img_angle-45+phy_speed_x/5,arm_color_2,1); //LEFT
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
	
	//SPACE BOARD
	if vehicle=0{

	head_x=xx+lengthdir_x(20*scale,img_angle-90);
	head_y=yy +lengthdir_y(20*scale,img_angle-90);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(50*scale,img_angle-180);
	armR_y=yy +lengthdir_y(50*scale,img_angle-180);
	handR_x=armR_x+lengthdir_x(40*scale,body_angle-105);
	handR_y=armR_y+lengthdir_y(40*scale,body_angle-105);
	
	armL_x=xx+lengthdir_x(65*scale,img_angle+45);
	armL_y=yy +lengthdir_y(65*scale,img_angle+45);
	handL_x=armL_x+lengthdir_x(222*scale,body_angle-2);
	handL_y=armL_y+lengthdir_y(222*scale,body_angle-2);
	
	shoes_x=xx+lengthdir_x(110*scale,img_angle-90);
	shoes_y=yy +lengthdir_y(110*scale,img_angle-90);
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,img_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,img_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,img_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,img_angle+180);
	
draw_sprite_ext(sprSurfboard,0,x,y,scale*.9,scale*.9,img_angle_alt+90,c_white,1);
//SHOES
draw_sprite_ext(spr_player_shoe,0,shoes_x,shoes_y,scale,scale,img_angle-90,shoe_color,1);
if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoes_tip_x,shoes_tip_y,scale,scale,img_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoes_laces_x,shoes_laces_y,scale,scale,img_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoes_laces_x,shoes_laces_y,scale,scale,img_angle-90,shoe_color_3,1);
}

//arms
draw_sprite_ext(spr_player_handsLR,3,handR_x,handR_y,scale,scale,body_angle,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,4,armR_x,armR_y,scale,scale,body_angle,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,body_angle,arm_color,1); //LEFT
}
if shirt_type=2 {
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
	
	

	//JET SPACE
	if vehicle=1{
	var jetski_x = xx+lengthdir_x(110*scale,img_angle-90);
	var jetski_y = yy +lengthdir_y(110*scale,img_angle-90);
	
	var skiR_x = jetski_x+lengthdir_x(125*scale,img_angle-235);
	var skiR_y = jetski_y+lengthdir_y(125*scale,img_angle-235);
	var skiL_x = jetski_x+lengthdir_x(125*scale,img_angle+55);
	var skiL_y = jetski_y+lengthdir_y(125*scale,img_angle+55);
	

	
	head_x=xx+lengthdir_x(80*scale,img_angle+90);
	head_y=yy +lengthdir_y(80*scale,img_angle+90);
	hair_x=head_x+lengthdir_x(180*scale,head_angle+180);
	hair_y=head_y+lengthdir_y(180*scale,head_angle+180);
	goggles_x=head_x+lengthdir_x(15*scale,head_angle+180);
	goggles_y=head_y+lengthdir_y(15*scale,head_angle+180);
	glasses_x=head_x+lengthdir_x(15*scale,head_angle);
	glasses_y=head_y+lengthdir_y(15*scale,head_angle);
	
	armR_x=xx+lengthdir_x(200*scale,img_angle-255);
	armR_y=yy +lengthdir_y(200*scale,img_angle-255);
	handR_x=armR_x+lengthdir_x(225*scale,img_angle-105);
	handR_y=armR_y+lengthdir_y(225*scale,img_angle-105);
	
	armL_x=xx+lengthdir_x(200*scale,img_angle+75);
	armL_y=yy +lengthdir_y(200*scale,img_angle+75);
	handL_x=armL_x+lengthdir_x(225*scale,img_angle-75);
	handL_y=armL_y+lengthdir_y(225*scale,img_angle-75);
	
	shoes_x=xx+lengthdir_x(70*scale,img_angle);
	shoes_y=yy +lengthdir_y(70*scale,img_angle);
	
	var shoesR_x = xx+lengthdir_x(120*scale,img_angle-225);
	var shoesR_y = yy +lengthdir_y(120*scale,img_angle-225);
	var shoesL_x = xx+lengthdir_x(120*scale,img_angle+45);
	var shoesL_y = yy +lengthdir_y(120*scale,img_angle+45);
	
	shoes_tip_x=shoes_x+lengthdir_x(0*scale,img_angle);
	shoes_tip_y=shoes_y+lengthdir_y(0*scale,img_angle);
	shoes_laces_x=shoes_x+lengthdir_x(0*scale,img_angle+180);
	shoes_laces_y=shoes_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesR_tip_x=shoesR_x+lengthdir_x(0*scale,img_angle);
	var shoesR_tip_y=shoesR_y+lengthdir_y(0*scale,img_angle);
	var shoesR_laces_x=shoesR_x+lengthdir_x(0*scale,img_angle+180);
	var shoesR_laces_y=shoesR_y+lengthdir_y(0*scale,img_angle+180);
	
	var shoesL_tip_x=shoesL_x+lengthdir_x(0*scale,img_angle);
	var shoesL_tip_y=shoesL_y+lengthdir_y(0*scale,img_angle);
	var shoesL_laces_x=shoesL_x+lengthdir_x(0*scale,img_angle+180);
	var shoesL_laces_y=shoesL_y+lengthdir_y(0*scale,img_angle+180);
		
//JETSKI Mobile	

draw_sprite_ext(sprJetski,1,jetski_x,jetski_y,scale,scale,img_angle-90,c_vehicle1,1);

draw_sprite_ext(sprJetski,2,jetski_x,jetski_y,scale,scale,img_angle-90,c_vehicle2,1);

draw_sprite_ext(sprJetski,3,jetski_x,jetski_y,scale,scale,img_angle-90+phy_speed_x/3,c_vehicle1,1);

	//SHOES
	draw_sprite_ext(spr_player_shoe,0,shoesL_x,shoesL_y,scale-.03,scale-.03,img_angle-90,shoe_color,1);
	draw_sprite_ext(spr_player_shoe,0,shoesR_x,shoesR_y,scale-.03,scale-.03,img_angle-90,shoe_color,1);

if shoe_type=2||shoe_type=3 {
draw_sprite_ext(spr_player_shoe_tip,0,shoesL_tip_x,shoesL_tip_y,scale-.03,scale-.03,img_angle-90,shoe_color_2,1);
draw_sprite_ext(spr_player_shoe_tip,0,shoesR_tip_x,shoesR_tip_y,scale-.03,scale-.03,img_angle-90,shoe_color_2,1);
}
if shoe_type=2 {
draw_sprite_ext(spr_player_shoe_holes,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,img_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_holes,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,img_angle-90,c_white,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesL_laces_x,shoesL_laces_y,scale-.03,scale-.03,img_angle-90,shoe_color_3,1);
draw_sprite_ext(spr_player_shoe_lace,0,shoesR_laces_x,shoesR_laces_y,scale-.03,scale-.03,img_angle-90,shoe_color_3,1);
}
	

//arms
draw_sprite_ext(spr_player_handsLR,2,handR_x,handR_y,scale,scale,body_angle,skin_color,1); //RIGHT
draw_sprite_ext(spr_player_handsLR,0,handL_x,handL_y,scale,scale,body_angle,skin_color,1); //LEFT
if shirt_type=1 {
draw_sprite_ext(spr_player_armR,0,armR_x,armR_y,scale,scale,img_angle-108+phy_speed_x/5,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,0,armL_x,armL_y,scale,scale,img_angle-72+phy_speed_x/5,arm_color,1); //LEFT
}
if shirt_type=2 {
draw_sprite_ext(spr_player_armR,2,armR_x,armR_y,scale,scale,img_angle-108,arm_color,1); //RIGHT
draw_sprite_ext(spr_player_armL,2,armL_x,armL_y,scale,scale,img_angle-72,arm_color,1); //LEFT
draw_sprite_ext(spr_player_armR,3,armR_x,armR_y,scale,scale,img_angle-108,arm_color_2,1); //RIGHT
draw_sprite_ext(spr_player_armL,3,armL_x,armL_y,scale,scale,img_angle-72,arm_color_2,1); //LEFT
}

//Face
draw_sprite_ext(spr_player_face,0,head_x,head_y,scale,scale,(head_angle),skin_color,1);
draw_sprite_ext(spr_player_band2,0,goggles_x,goggles_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses_band,0,glasses_x,glasses_y,scale,scale,(head_angle),goggles_color,1);
draw_sprite_ext(spr_player_glasses,0,glasses_x,glasses_y,scale,scale,(head_angle),glasses_color,1);
draw_sprite_ext(spr_player_hair,hair_frame,hair_x,hair_y,scale,scale,(head_angle),hair_color,1);
	
	
	}

	
}











