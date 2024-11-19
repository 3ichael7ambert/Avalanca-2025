function setup_spawn_object(spread = 16){
	/// create event of spawn object
	var xrange1 = [spread, room_width/3 - 158 - spread];
	var xrange2 = [room_width/3 + 142 + spread, room_width - spread];
	var ystart1 = room_height + 208;

	/// fill array with positions that objects can spawn in
	spawn_list = [];

	/// where all spawning will take place
	spawn_box = {
		x1: xrange1[0],
		y1: ystart1 - spread/2,
		x2: xrange2[1],
		y2: ystart1 + spread/2,
	}

	/// fill from range 1, add struct containing x,y
	for(var i = xrange1[0]; i < xrange1[1]; i+=spread){
		array_push(spawn_list, {x: i, y: ystart1});
	}

	/// fill from range 2, add struct containing x,y
	for(var i = xrange2[0]; i < xrange2[1]; i+=spread){
		array_push(spawn_list, {x: i, y: ystart1});
	}
}