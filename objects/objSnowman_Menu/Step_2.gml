/// @description move

calculate_height_vector(sprite_array_body);
calculate_height_vector(sprite_array_btns,x +lengthdir_x((170*_scale),dir),y +lengthdir_y((170*_scale),dir));
calculate_height_vector(sprite_array_arm_l,x +  lengthdir_x((120*_scale),dir-90),y+ lengthdir_y((120*_scale),dir-90));
calculate_height_vector(sprite_array_arm_r,x + lengthdir_x((120*_scale),dir+90),y +lengthdir_y((120*_scale),dir+90));
//calculate_height_vector(sprite_array_face,x + lengthdir_x((150*_scale),dir), y + lengthdir_x((150*_scale),dir));
//calculate_height_vector(sprite_array_hat);