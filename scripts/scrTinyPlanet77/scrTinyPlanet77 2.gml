// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @function layer_shader_start();
function layer_tinyplanet_begin()
{
    if event_type == ev_draw
    {
        if event_number == ev_draw_normal
        {
	shader_set_uniform_f(shader_get_uniform(FishEye, "apertureAngle"), 200);
    shader_set_uniform_f(shader_get_uniform(FishEye, "lensSize"), 1);
	shader_set_uniform_f(shader_get_uniform(FishEye, "aspectRatio"), display_get_width()/display_get_height());
	
	
	
	
	if !surface_exists(surf) {
    surf = surface_create(500, 500);
}
surface_set_target(surf);
draw_clear_alpha(c_white, 0);

surface_reset_target();

shader_set(FishEye);
draw_surface(surf,0,0);



        }
    }
}
