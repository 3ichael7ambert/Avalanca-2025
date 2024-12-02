/// @description move
z+=10;
dir=point_direction(x,y,target_x,target_y)+100;

calculate_height_vector(sprite_array_string);
//calculate_height_vector(sprite_array_balloon);
calculate_height_vector_rotate(sprite_array_balloon,,,dir);
calculate_height_vector(sprite_array_reflection,x-10,y+10);