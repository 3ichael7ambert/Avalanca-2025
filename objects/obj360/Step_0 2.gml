/// @description Insert description here
// You can write your code in this editor
if instance_exists(objPlayer) {
	x=objPlayer.x;
	y=objPlayer.y;
}

/*
if (surface == -1) {
    surface = -100; // Choose a unique identifier for your surface
    surface_set_target(surface);
    draw_clear_alpha(c_white, 0);
    surface_reset_target();
}
*/


// Emit snow particles
part_particles_create(_ps, x, y, _ptype1, 1);

// Update the particle system
part_system_update(_ps);












