/// @description Insert description here
// You can write your code in this editor


   shader_set(FishEye);
	//var lay_id = layer_get_id("InstancesBG");
	//layer_shader(lay_id, FishEye);
    shader_set_uniform_f(shader_get_uniform(FishEyeOG, "apertureAngle"), 225);
    shader_set_uniform_f(shader_get_uniform(FishEyeOG, "lensSize"), 1.73);
	shader_set_uniform_f(shader_get_uniform(FishEyeOG, "aspectRatio"), display_get_width()/display_get_height());
	draw_surface(application_surface,-10,-25);
	shader_reset();










