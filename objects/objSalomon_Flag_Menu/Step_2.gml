/// @description move

calculate_height_vector(sprite_array_pole1, x - 34, y);
calculate_height_vector(sprite_array_pole2, x + 34, y);
calculate_height_vector(sprite_array_base);

update_shadow_vector(sprite_array_shadow_pole1,x-34,y);
update_shadow_vector(sprite_array_shadow_pole2,x+34,y);
update_shadow_vector(sprite_array_shadow_flag,x,y);