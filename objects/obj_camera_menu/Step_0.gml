/// @description set motion

motion.x = mouse_x - x;
motion.y = mouse_y - y;

if(motion.length() > 16 && mouse_check_button(mb_left)){
	motion.set_length(4);	
	move_and_collide(motion.x, motion.y, obj_tree_test);
}

