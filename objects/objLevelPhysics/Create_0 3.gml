/// @description Create objects

//target=obj_car;

with (instance_create(0, 0, objCamera))
{
	if instance_exists(obj_player_physics) {
		target=obj_player_physics;
	}else{
    target = instance_create(__view_get( e__VW.WView, 0 )/2, __view_get( e__VW.HView, 0 )/2, obj_player_physics);
	}
}


create_parallax_layer(snowBG, 0, 0, 0, 0, 1000, c_white, 1);
create_parallax_layer(sprCloudBG, -0.4, -0.4, 0.1, 0, -510, c_white, .5);
create_parallax_layer(sprCloudBG, -.8, -.8, 0.1, 0, -1010, c_white, 1);



///BALL

scale_ball=.5;

// Create a new physics fixture
fix = physics_fixture_create();
// Set the shape of the fixture to a circle based on the sprite width of 'spr_snowball'
physics_fixture_set_circle_shape(fix, sprite_get_width(spr_snowball)/2*scale_ball);
// Set the density of the fixture
physics_fixture_set_density(fix, .5);
physics_fixture_set_collision_group(fix, 1);
// Create an instance of 'o_ball_phy' and set its position to (x, y)
inst = instance_create_layer(x, y, "Instances", o_ball_phy);
// Bind the physics fixture to the instance of 'o_ball_phy'
my_fix = physics_fixture_bind(fix, inst);

// You can uncomment the line below if you want to delete the original fixture
 physics_fixture_delete(fix);
