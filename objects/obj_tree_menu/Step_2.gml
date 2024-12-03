/// @description NEW 3D

if level=0 {sprite_index=spr_tree_menu;
	calculate_height_vector(sprite_array);
	//calculate_height_vector_shadow(sprite_array_shadow);
	update_shadow_vector(sprite_array_shadow,x,y)
	}
if level=1 {sprite_index=sprPalmTree;
	calculate_height_vector(sprite_array);
	calculate_height_vector(sprite_array_leaves);
	update_shadow_vector(sprite_array_shadow,x,y)}
if level=2 {sprite_index=sprTreeJungle;
	calculate_height_vector(sprite_array);
	update_shadow_vector(sprite_array_shadow,x,y)
	}
if level=3 {sprite_index=spr_tree_menu;
	calculate_height_vector(sprite_array);
	calculate_height_vector(sprite_array_leaves);
	update_shadow_vector(sprite_array_shadow,x,y)}
if level=4 {sprite_index=spr_tree_menu;
	calculate_height_vector(sprite_array);
	calculate_height_vector(sprite_array_leaves);
	update_shadow_vector(sprite_array_shadow,x,y)}

