/// step event of spawn object
function spawn_object(obj_id, count){
	var _collision = collision_rectangle(spawn_box.x1, spawn_box.y1, spawn_box.x2, spawn_box.y2, obj_id, 0, 1);
	if(!instance_exists(_collision)){
		/// copy array
		var _len = array_length(spawn_list);
		var _spawn_array = [];
		/// copy
		array_copy(_spawn_array, 0, spawn_list, 0, _len);
		
		/// shuffle
		_spawn_array = array_shuffle(_spawn_array);
		
		/// spawn trees
		repeat(count){
			var pos = array_pop(_spawn_array);
			
			instance_create_depth(pos.x, pos.y, -900, obj_id);
		}
	}
}