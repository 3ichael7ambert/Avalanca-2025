/// @description move
/*
calculate_height_vector(sprite_array_pole1, x - 34, y);
calculate_height_vector(sprite_array_pole2, x + 34, y);
calculate_height_vector(sprite_array_base);
*/

/// @description Move and update vectors
//TUNDRA
if level =0 {
	
	
	//SNOWBOARD
	if vehicle=0{
		
calculate_height_vector(sprite_array_snowboard, x, y);
calculate_height_vector(sprite_array_shoes, x+lengthdir_x(20,image_angle), y+lengthdir_y(20,image_angle));
if shoe_type=2||shoe_type=3 {
calculate_height_vector(sprite_array_shoes_tip, x+lengthdir_x(30,image_angle),y+lengthdir_y(30,image_angle));
}
if shoe_type=2 {
calculate_height_vector(sprite_array_shoes_holes, x+lengthdir_x(20,image_angle), y+lengthdir_y(20,image_angle));
calculate_height_vector(sprite_array_shoes_lace, x+lengthdir_x(20,image_angle), y+lengthdir_y(20,image_angle));
}
calculate_height_vector(sprite_array_hands, x+lengthdir_x(12,image_angle-25), y+lengthdir_y(12,image_angle-25));
if shirt_type=1 {
calculate_height_vector(sprite_array_shirt1, x+lengthdir_x(15,image_angle-180), y+lengthdir_y(15,image_angle-180));
}
if shirt_type=2 {
//calculate_height_vector(sprite_array_shirt2a, x+lengthdir_x(15,image_angle-180), y+lengthdir_y(15,image_angle-180));
calculate_height_vector(sprite_array_shirt2b, x+lengthdir_x(15,image_angle-180), y+lengthdir_y(15,image_angle-180));
calculate_height_vector(sprite_array_shirt3, x+lengthdir_x(15,image_angle-180), y+lengthdir_y(15,image_angle-180));
}

calculate_height_vector(sprite_array_face_skin, x+lengthdir_x(0,image_angle-180), y+lengthdir_y(0,image_angle-180));
calculate_height_vector(sprite_array_face_band2, x+lengthdir_x(0,image_angle-180), y+lengthdir_y(0,image_angle-180));
calculate_height_vector(sprite_array_face_glasses_band, x+lengthdir_x(0,image_angle-180), y+lengthdir_y(0,image_angle-180));
calculate_height_vector(sprite_array_face_glasses, x+lengthdir_x(0,image_angle-180), y+lengthdir_y(0,image_angle-180));
calculate_height_vector(sprite_array_hair, x+lengthdir_x(40,image_angle-180), y+lengthdir_y(40,image_angle-180));
		/*
calculate_height_vector(sprite_array_snowboard, x + 20, y);
calculate_height_vector(sprite_array_shoes, x, y + 5);
calculate_height_vector(sprite_array_hair, x, y - 10);
*/

	}
}