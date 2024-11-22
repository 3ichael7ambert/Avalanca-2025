/// @description Draw eCloudShader

var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

switch(current_shader) {
	case eCloudShader.clouds:
		shader_set(shd_clouds);
			shader_set_uniform_f(shader_get_uniform(shd_clouds, "u_time"), current_time / 20000);
			draw_self();
		shader_reset();
		shader_display_name = "White clouds";
		current_shader_is_pixelated = false;
		break;
	case eCloudShader.clouds_pixel: // Simple clouds with pixelation
		shader_set(shd_clouds_pixel);
			shader_set_uniform_f(shader_get_uniform(shd_clouds_pixel, "u_time"), current_time / 30000);
			shader_set_uniform_f(shader_get_uniform(shd_clouds_pixel, "u_resolution"), vw, vh);
			shader_set_uniform_f(shader_get_uniform(shd_clouds_pixel, "u_pixel_amount"), var_pixel_amount);
			draw_self();
		shader_reset();
		shader_display_name = "Pixelated clouds";
		current_shader_is_pixelated = true;
		break;
	case eCloudShader.clouds_puffy_pixel:
		shader_set(shd_clouds_puffy_pixel);
			shader_set_uniform_f(shader_get_uniform(shd_clouds_puffy_pixel, "u_time"), current_time / 1000);
			shader_set_uniform_f(shader_get_uniform(shd_clouds_puffy_pixel, "u_resolution"), vw, vh);
			shader_set_uniform_f(shader_get_uniform(shd_clouds_puffy_pixel, "u_pixel_amount"), var_pixel_amount);
			draw_self();
		shader_reset();
		shader_display_name = "Puffy, pixelated clouds";
		current_shader_is_pixelated = true;
		break;
	case eCloudShader.clouds_rainbow:
		var uv = sprite_get_uvs(sprite_index, 0);
	    shader_set(shd_clouds_rainbow);
	        shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow, "u_uv"), uv[0], uv[2]);
	        shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow, "u_speed"), rb_speed);
	        shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow, "u_time"), current_time / 2000);
	        shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow, "u_saturation"), rb_saturation);
	        shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow, "u_brightness"), rb_brightness);
	        shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow, "u_section"), rb_section);
	        shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow, "u_mix"), rb_mix);
			draw_self();
	    shader_reset();
		shader_display_name = "Rainbow clouds";
		current_shader_is_pixelated = false;
		break;
	case eCloudShader.clouds_rainbow_pixel:
		var uv = sprite_get_uvs(sprite_index, 0);
		shader_set(shd_clouds_rainbow_pixel);
	        shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow_pixel, "u_uv"), uv[0], uv[2]);
	        shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow_pixel, "u_speed"), rb_speed);
	        shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow_pixel, "u_time"), current_time / 2000);
	        shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow_pixel, "u_saturation"), rb_saturation);
	        shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow_pixel, "u_brightness"), rb_brightness);
	        shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow_pixel, "u_section"), rb_section);
	        shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow_pixel, "u_mix"), rb_mix);
			shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow_pixel, "u_resolution"), vw, vh);
			shader_set_uniform_f(shader_get_uniform(shd_clouds_rainbow_pixel, "u_pixel_amount"), var_pixel_amount);
			draw_self();
	    shader_reset();
		shader_display_name = "Pixelated, rainbow clouds";
		current_shader_is_pixelated = true;
		break;
	default:
		throw "Undefined shader enum found: " + string(current_shader);
}