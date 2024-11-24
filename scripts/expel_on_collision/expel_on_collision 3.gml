// This function moves the calling object away from 'other' upon collision.
// This does not effect the object it is colliding with
function expel_on_collision(knockback_speed=0){
	
	// get midpoint of objects so we can calculate direction of force
	var x1 = (bbox_left + bbox_right)/2;	// source object x
	var y1 = (bbox_top + bbox_bottom)/2;	// source object y
	var x2 = (other.bbox_left + other.bbox_right)/2; // dest object x
	var y2 = (other.bbox_top + other.bbox_bottom)/2; // dest object y
	
    // Calculate the direction away from the 'other' object.
    // If the positions are the same, choose a random direction.
    var dir = (x1 == x2 && y1 == y2) ? irandom(360) :
              point_direction(x1, y1, x2, y2);

    // Calculate the unit vector components in the direction away from 'other'.
    var dx = lengthdir_x(1, dir);
    var dy = lengthdir_y(1, dir);

    // Define a maximum number of steps to move to prevent infinite loops.
    var maxSteps = sprite_width; // or another appropriate limit based on your game's needs

    // Continue moving the object away from 'other' until they no longer collide
    // or until the maximum number of steps is reached to avoid infinite loops.
    for(var steps = 0; place_meeting(x, y, other) && steps < maxSteps; steps++){
        x += dx;
        y += dy;
    }
	
	// add knockback speed to object(optional)
	if(knockback != 0){
		hspeed += dx * knockback_speed;
		vspeed += dy * knockback_speed;
	}

    // If the object couldn't be expelled after the maximum steps, you might want to handle it,
    // for example logging an error or trying a different strategy.
    if(steps >= maxSteps) {
        // Handle the failed expulsion here (e.g., log an error or try a different strategy).
		show_debug_message($"Failed to push {object_get_name(id)} out of collision");
    }
}


/*
if you use physics, you will need to replace the hspeed and vspeed with the physics_apply_impulse(xpos, ypos, ximpulse, yimpulse)
Rayu
and the x,y, with phy_position_x, phy_position_y
Rayu
Rayu Johnson
(you shouldn't need to push out objects in physics collisions, but the impulse will push the player back)
*/