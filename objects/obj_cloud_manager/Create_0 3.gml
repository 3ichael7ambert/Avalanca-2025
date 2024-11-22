/// @description Handle cloud/cloud shaders

enum eCloudShader {
	clouds,
	clouds_pixel,
	clouds_rainbow,
	clouds_puffy_pixel,
	clouds_rainbow_pixel,
	num // Last to give the number of shaders, add any new types above this
}
current_shader = eCloudShader.clouds_pixel;
current_shader_is_pixelated = false;
shader_display_name = ""; // for drawing shader name in GUI
show_gui = true;

// Set textures to repeat
gpu_set_tex_repeat(true);

texture_prefetch("Default");

// Variables for rainbow shader
rb_speed      = 1.0;
rb_section    = 0.2;
rb_saturation = 0.7;
rb_brightness = 0.9;
rb_mix        = 1.0; // how much to mix sprite color and rainbow (0 is all white, 1 is all rainbow)

var_pixel_amount = 200; // defines how pixelated to make shaders with this option

// Gif recording
gif_number = irandom(999); // used for unique name for saving gifs
gif_recording = false;
gif = undefined;